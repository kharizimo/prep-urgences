import Dexie from 'dexie';

const fixtures = Object.values(import.meta.glob('./fixture/*.json', {
    eager: true,
    import: 'default'
}));

const db = new Dexie('prep-urgences-1709');

// ---------------------------------------------------------------
// AUDIT + SYNCHRONISATION — règles centralisées appliquées à TOUTES
// les tables via les hooks Dexie natifs (creating/updating).
//
//  create_at  : datetime GMT (UTC) à l'insertion
//  update_at  : datetime GMT (UTC) à l'insertion ET à chaque modification
//  sync_status: 'pending_insert' (nouvel enregistrement jamais transmis)
//             | 'pending_update' (enregistrement existant modifié)
//             | 'synced' (déjà transmis/confirmé par l'API)
//  deleted    : SOFT-DELETE — true = à supprimer côté serveur.
//               Les suppressions sont TOUJOURS logiques, jamais physiques.
// ---------------------------------------------------------------
const nowUTC = () => new Date().toISOString().slice(0, 19) + 'Z';

// Nouvel enregistrement : plein INSERT à transmettre.
const stampOnCreate = obj => {
    obj.create_at ??= nowUTC();
    obj.update_at = nowUTC();
    obj.sync_status = 'pending_insert';
    obj.deleted = obj.deleted === true;
    return obj;
};

// Mise à jour : on reste 'pending_insert' tant que jamais envoyé
// (l'API fera un INSERT complet), sinon on passe en 'pending_update'.
const stampOnUpdate = (obj, modifications) => {
    if (!modifications.update_at) modifications.update_at = nowUTC();
    if (obj.sync_status !== 'pending_insert') modifications.sync_status = 'pending_update';
    if (modifications.deleted !== true) modifications.deleted = false;
    return modifications;
};

// Branche les hooks d'audit sur une table.
const withAudit = table => {
    table.hook('creating', (_, obj) => stampOnCreate(obj));
    table.hook('updating', (modifications, _, obj) => stampOnUpdate(obj, modifications));
    return table;
};

const auditables = [
    'menaces', 'piliers', 'exigences', 'evaluations', 'evaluation_piliers', 'evaluation_exigences'
];
auditables.forEach(name => withAudit(db.table(name)));

// Ne déclarer QUE la clé primaire et les champs utilisés dans des requêtes
// (.where, .equals, .orderBy, .filter). Les champs d'audit servent aux .where
// de la synchro (sync_status, deleted).
db.version(2).stores({
    menaces: 'id, groupe, axe,create_at,update_at,sync_status,deleted',
    piliers: 'id, menace_id,niveau,create_at,update_at,sync_status,deleted',
    exigences: 'id, pilier_id,create_at,update_at,sync_status,deleted',
    evaluations: 'id, create_at, axe, menace_id, menace_lib, niveau, province, entite, periode,participants,commentaires,etat,is_current,create_at,update_at,sync_status,deleted',
    evaluation_piliers: 'id, evaluation_id, pilier_id, code, score,create_at,update_at,sync_status,deleted',
    evaluation_exigences: 'id, evaluation_pilier_id, exigence_id, code, lib, statut, cote, argument,create_at,update_at,sync_status,deleted'
});

// Evaluations antérieures au champ 'deleted' : on l'initialise.
db.version(3).stores({
    evaluation_exigences: 'id, evaluation_pilier_id, exigence_id, code, lib, statut'
}).upgrade(transaction => {
    return transaction.table('evaluation_exigences').toCollection().modify(exigence => {
        exigence.cote ??= null;
        exigence.argument ??= '';
    });
});

// Supprime TOUJOURS logiquement (soft-delete) : on passe deleted=true et
// sync_status='pending_update' ; l'API transmettra la suppression au serveur.
// NB : jamais de db.*.delete() physique dans le code applicatif.
const softDelete = async (table, id, extra = {}) => {
    const key = await db.table(table).update(id, {
        deleted: true,
        sync_status: 'pending_update',
        update_at: nowUTC(),
        ...extra
    });
    return key;
};

const loadFixtures = async transaction => {
    const menaces = fixtures.map(({ menace }) => menace);
    const piliers = fixtures.flatMap(({ piliers }) => piliers);
    const exigences = fixtures.flatMap(({ exigences }) => exigences);


    await transaction.table('menaces').bulkPut(menaces);
    await transaction.table('piliers').bulkPut(piliers);
    await transaction.table('exigences').bulkPut(exigences);


    await transaction.table('evaluations').clear();
    await transaction.table('evaluation_piliers').clear();
    await transaction.table('evaluation_exigences').clear();
};

// Charge aussi les fixtures dans les bases déjà créées.
db.version(4).stores({}).upgrade(loadFixtures);

db.on('populate', loadFixtures);

export { db, softDelete, nowUTC };
