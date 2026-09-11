import Dexie from 'dexie';

const fixtures = Object.values(import.meta.glob('./fixture/mve.json', {
    eager: true,
    import: 'default'
}));

const db = new Dexie('prep-urgences');

// Ne déclarer QUE la clé primaire et les champs utilisés dans des requêtes (.where, .equals, .orderBy)
db.version(2).stores({
    menaces: 'id, groupe, axe',
    piliers: 'id, menace_id,niveau',
    exigences: 'id, pilier_id',
    evaluations: 'id, create_at, axe, menace_id, menace_lib, niveau, province, entite,periode,participants,commentaires,etat',
    evaluation_piliers: 'id, evaluation_id, pilier_id,score',
    evaluation_exigences: 'id, evaluation_pilier_id, exigence_id, lib, statut',
    
});

db.on('populate', async () => {
    const menaces = fixtures.map(({ menace }) => menace);
    const piliers = fixtures.flatMap(({ piliers }) => piliers);
    const exigences = fixtures.flatMap(({ exigences }) => exigences);

    await db.transaction('rw', [db.menaces, db.piliers, db.exigences], async () => {
        await db.menaces.bulkAdd(menaces);
        await db.piliers.bulkAdd(piliers);
        await db.exigences.bulkAdd(exigences);
    });
});

export { db };