drop view if exists v_evaluation_items;
drop view if exists v_evaluations;
drop view if exists v_exigences;
drop view if exists v_piliers;

drop table if exists evaluation_items;
drop table if exists evaluations;
drop table if exists exigences;
drop table if exists piliers;
drop table if exists menaces;
drop table if exists users;
drop table if exists provinces;

create table provinces (
    id bigint unsigned not null auto_increment,
    lib varchar(100) not null,
    primary key (id),
    unique key uq_provinces_lib (lib)
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table users (
    id varchar(36) not null,
    nom varchar(100) not null,
    email varchar(150) not null,
    pwd varchar(255) not null,
    province varchar(100) null,
    role enum('Administrateur','Superviseur','Evaluateur','Lecteur') not null default 'Lecteur',
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    unique key uq_users_email (email),
    key idx_users_province (province),
    key idx_users_sync (updated_at, is_deleted, sync_status)
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table menaces (
    id varchar(36) not null,
    lib varchar(100) not null,
    categorie varchar(100) not null,
    axe enum('Global','Hopitaux','Rapide') not null default 'Global',
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    key idx_menaces_sync (updated_at, is_deleted, sync_status)
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table piliers (
    id varchar(36) not null,
    lib text not null,
    menace_id varchar(36) not null,
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    key idx_piliers_menace (menace_id),
    key idx_piliers_sync (updated_at, is_deleted, sync_status),
    constraint fk_piliers_menace
        foreign key (menace_id) references menaces (id)
        on update cascade
        on delete restrict
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table exigences (
    id varchar(36) not null,
    lib text not null,
    description text null,
    pilier_id varchar(36) not null,
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    key idx_exigences_pilier (pilier_id),
    key idx_exigences_sync (updated_at, is_deleted, sync_status),
    constraint fk_exigences_pilier
        foreign key (pilier_id) references piliers (id)
        on update cascade
        on delete restrict
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table evaluations (
    id varchar(36) not null,
    axe_id enum('global','hopitaux','rapide') not null default 'global',
    menace_id varchar(36) not null,
    user_id varchar(36) null,
    niveau enum('Province','Zone de sante','Point d''entree') not null default 'Province',
    province varchar(100) not null,
    entite varchar(150) not null default '',
    periode char(7) not null default '',
    participants int unsigned not null default 0,
    commentaire text null,
    score tinyint unsigned not null default 0,
    etat enum('En cours','Valide','Archive') not null default 'En cours',
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    key idx_evaluations_menace (menace_id),
    key idx_evaluations_user (user_id),
    key idx_evaluations_scope (axe_id, niveau, province, entite),
    key idx_evaluations_sync (updated_at, is_deleted, sync_status),
    constraint fk_evaluations_menace
        foreign key (menace_id) references menaces (id)
        on update cascade
        on delete restrict,
    constraint fk_evaluations_user
        foreign key (user_id) references users (id)
        on update cascade
        on delete set null,
    constraint chk_evaluations_score
        check (score between 0 and 100)
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create table evaluation_items (
    id varchar(36) not null,
    evaluation_id varchar(36) not null,
    exigence_id varchar(36) not null,
    etat enum('OUI','NON','N/A') not null default 'NON',
    preuve text null,
    lacunes text null,
    point_action text null,
    responsables text null,
    delai date null,
    ressources text null,
    partenaires text null,
    observation text null,
    created_at datetime not null default (utc_timestamp()),
    updated_at datetime not null default (utc_timestamp()),
    is_deleted boolean not null default false,
    sync_status enum('synced','pending_insert','pending_update','conflict') not null default 'synced',
    primary key (id),
    unique key uq_evaluation_items_evaluation_exigence (evaluation_id, exigence_id),
    key idx_evaluation_items_exigence (exigence_id),
    key idx_evaluation_items_sync (updated_at, is_deleted, sync_status),
    constraint fk_evaluation_items_evaluation
        foreign key (evaluation_id) references evaluations (id)
        on update cascade
        on delete cascade,
    constraint fk_evaluation_items_exigence
        foreign key (exigence_id) references exigences (id)
        on update cascade
        on delete restrict
) engine=InnoDB default charset=utf8mb4 collate=utf8mb4_unicode_ci;

create or replace view v_piliers as
select
    p.*,
    m.lib as menace_lib,
    m.categorie as menace_categorie
from piliers p
join menaces m on p.menace_id = m.id;

create or replace view v_exigences as
select
    e.*,
    p.lib as pilier_lib,
    m.id as menace_id,
    m.lib as menace_lib,
    m.categorie as menace_categorie
from exigences e
join piliers p on e.pilier_id = p.id
join menaces m on p.menace_id = m.id;

create or replace view v_evaluations as
select
    e.*,
    m.lib as menace_lib,
    m.categorie as menace_categorie,
    u.nom as user_nom
from evaluations e
join menaces m on e.menace_id = m.id
left join users u on e.user_id = u.id;

create or replace view v_evaluation_items as
select
    ei.*,
    ex.lib as exigence_lib,
    p.id as pilier_id,
    p.lib as pilier_lib,
    m.id as menace_id,
    m.lib as menace_lib
from evaluation_items ei
join exigences ex on ei.exigence_id = ex.id
join piliers p on ex.pilier_id = p.id
join menaces m on p.menace_id = m.id;
