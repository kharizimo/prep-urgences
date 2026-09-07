import Dexie from 'dexie';

const db = new Dexie('prep-urgences');

// Ne déclarer QUE la clé primaire et les champs utilisés dans des requêtes (.where, .equals, .orderBy)
db.version(1).stores({
    menaces: 'id, groupe, axe',
    piliers: 'id, menace_id',
    exigences: 'id, pilier_id',
    evaluations: 'id, create_at, axe, menace_id, menace_lib, niveau, province, entite,periode,participants,commentaires',
    evaluation_piliers: 'id, evaluation_id, pilier_id',
    evaluation_exigences: 'id, evaluation_pilier_id, exigence_id'
});

db.on('populate', async () => {
    const menaces = [
        { id: 1, lib: 'MVE Ebola', groupe: 'Epidemie', axe: 'Sante publique' },
        { id: 2, lib: 'Cholera', groupe: 'Epidemie', axe: 'Sante publique' },
        { id: 3, lib: 'Inondation', groupe: 'Catastrophe naturelle', axe: 'Urgence humanitaire' },
        { id: 4, lib: 'Conflits armes', groupe: 'Crise securitaire', axe: 'Urgence humanitaire' },
        { id: 5, lib: 'Risque technologique', groupe: 'Incident technologique', axe: 'Protection civile' }
    ];

    const piliers = [
        { id: 1, lib: 'Coordination', menace_id: 1 },
        { id: 2, lib: 'Surveillance epidemiologique', menace_id: 1 },
        { id: 3, lib: "Equipe d'intervention rapide", menace_id: 1 },
        { id: 4, lib: 'Prise en charge', menace_id: 2 },
        { id: 5, lib: 'Eau, hygiene et assainissement', menace_id: 2 },
        { id: 6, lib: 'Alerte et evacuation', menace_id: 3 },
        { id: 7, lib: 'Securite et acces', menace_id: 4 },
        { id: 8, lib: 'Gestion des incidents', menace_id: 5 }
    ];

    const exigences = [
        { id: 1, lib: 'Plan de coordination disponible', pilier_id: 1 },
        { id: 2, lib: 'Reunions de coordination regulieres', pilier_id: 1 },
        { id: 3, lib: 'Systeme de notification fonctionnel', pilier_id: 2 },
        { id: 4, lib: 'EIR formee et prepositionnee', pilier_id: 3 },
        { id: 5, lib: 'Circuit de reference des cas disponible', pilier_id: 4 },
        { id: 6, lib: 'Stocks WASH minimum disponibles', pilier_id: 5 },
        { id: 7, lib: 'Plan evacuation et hebergement disponible', pilier_id: 6 },
        { id: 8, lib: 'Cartographie des zones a acces limite disponible', pilier_id: 7 },
        { id: 9, lib: 'Procedure de confinement et communication disponible', pilier_id: 8 }
    ];

    // Syntaxe de transaction recommandée par Dexie pour les fonctions async
    await db.transaction('rw', [db.menaces, db.piliers, db.exigences], async () => {
        await db.menaces.bulkAdd(menaces);
        await db.piliers.bulkAdd(piliers);
        await db.exigences.bulkAdd(exigences);
    });
});

export { db };