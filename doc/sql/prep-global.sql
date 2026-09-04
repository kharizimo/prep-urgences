INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'd2835c31-d119-4380-a5f9-70e8c5cd9059',
    'Etat de préparation à faire face à la maladie à virus Ebola (MVE)',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '81374c76-6139-419c-bc18-43e2061755c0',
    'Coordination',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8bd77289-37ed-4a28-8887-0d948c3301c9',
    'Mettre en place des plans et des procédures cohérents pour la coordination et la gestion des incidents, y compris des liens entre le centre des opérations sanitaires d’urgence (EOC) et les structures nationales de gestion des catastrophes. Au minimum, cela devrait recouvrir : les mandats et les organigrammes aux niveaux stratégique, opérationnel et tactique de la coordination et de la gestion ; les voies de communication au sein de l’EOC/IMS, et entre l’EOC/IMS, les partenaires et le public ; la coordination du soutien des donateurs au niveau national.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c954f2b-b027-4d74-8c15-de9eabe0c1a0',
    'Tester la coordination et les aspects opérationnels au moyen d’exercices de simulation et de tests de compétences.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '272d1b53-7559-4f51-965b-5de7f5232d95',
    'Veiller à ce que des plans d’urgence existent et soient pleinement budgétés.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '679a6f84-f461-40e8-95bf-9bd77123400b',
    'Examiner les politiques et la législation en vigueur afin de s’assurer qu’elles autoriseront les mesures de préparation proposées.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9981a95e-9667-4cdc-bdf3-6386d9b3c616',
    'Identifier les membres du Comité/groupe spécial Ebola au niveau national/provincial et dans les zones de santé et les informer de leurs fonctions.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '537061c5-3a3a-4f4c-bf01-bea243bad291',
    'Identifier, former et désigner des responsables des incidents/responsables opérationnels habilités à prendre les décisions opérationnelles.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'df833f8e-4ef2-429d-9152-1e8face2dced',
    'Mettre en place du personnel COUSP/IMS au niveau infranational ou dans les zones de santé pour assurer une coordination et une gestion localisées',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a4bbb000-b767-4cba-bd79-ac7e50aa1435',
    'Mettre en place un comité/un groupe spécial Ebola multisectoriel et opérationnel au niveaux national et infranational et dans les zones de santé.',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '921d2e87-bc7d-4f5d-98db-3d6f25ad9fbf',
    'Trouver un site physique pour le centre des opérations sanitaires d’urgence (COUSP).',
    '81374c76-6139-419c-bc18-43e2061755c0'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c1867818-9506-40ae-aec9-50a22863f07a',
    'Equipe d''intervention rapide',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0fce140b-9a23-4838-9730-3b9b5a4c3d13',
    'Désigner et affecter un(des) chef(s) et des membres appartenant à différentes disciplines. Fournir le matériel à l’Equipe, y compris une ambulance pouvant être déployée sous 24 heures.',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4ac61218-b0ef-427c-92bf-f606d4144ad5',
    'Définir clairement les responsabilités pour l’activation et la coordination de l’EIR face à des cas de MVE potentiels',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd0c21e59-cc7b-4104-8f5f-8ca1466b385c',
    'Former comme il convient les EIR, y compris pour la prise en charge des cas, le prélèvement et le transport des échantillons, la recherche des contacts, la décontamination, les investigations sur les flambées et la mobilisation sociale.',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f88297a6-68fe-4fa3-9239-972ba0b6627a',
    'Former l’EIR infranationale à la surveillance et à la recherche des contacts.',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '946909d6-ca1d-47ed-aa02-0bde99637871',
    'Recenser les établissements de santé du district qui sont prêts à la survenue éventuelle de cas de MVE.',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9370668d-fc25-45ac-ad16-d3d90ffb4152',
    'Si 60 jours sont passés sans cas de MVE dans le pays, mener au moins un exercice de simulation en vue de maintenir la capacité des EIR à répondre rapidement.',
    'c1867818-9506-40ae-aec9-50a22863f07a'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ca3e382c-222b-4386-9d80-8bebf61a187b',
    'Sensibilisation du public et mobilisation communautaire',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e3f8f9e1-fe97-4c9d-a4a1-638279e5bf77',
    'Élaborer une stratégie, un plan et un budget complets pour la collaboration avec les médias et le public (y compris une approche renforcée). Recenser les principaux canaux de communication et les principales rumeurs et en assurer un suivi.',
    'ca3e382c-222b-4386-9d80-8bebf61a187b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8b71d661-3758-4d20-a26c-3d66fb7ae6f7',
    'Mettre en place un mécanisme opérationnel de coordination de la communication en vue de mobiliser l’ensemble des parties prenantes, y compris les organisations de la société civile, les ONG et la communauté. Recenser et former les porte-paroles/ acteurs clé/mobilisateurs, par exemple les chefs religieux, les politiciens ou les guérisseurs traditionnels, ainsi que les médias, en zone urbaine et en zone rurale.',
    'ca3e382c-222b-4386-9d80-8bebf61a187b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '27c82e51-d850-4c31-b7ab-edaa6194bcc3',
    'Élaborer une stratégie et un plan de communication sur les risques. Recenser les capacités de communication et les compétences en la matière, dans le secteur de la santé publique et dans les autres secteurs.',
    'ca3e382c-222b-4386-9d80-8bebf61a187b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c7640291-51c9-488f-890e-affe78df46b5',
    'Mettre au point ou adapter, revoir, traduire dans les langues locales et diffuser des messages ciblés à l’intention des médias, du personnel soignant, des dirigeants locaux et chefs traditionnels, des églises, des écoles, des tradipraticiens et d’autres parties prenantes dans la communauté',
    'ca3e382c-222b-4386-9d80-8bebf61a187b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '369d1b04-a245-4307-9fef-719d340e3da3',
    'Prévention et lutte contre l''infection',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7e7adf13-7103-4b80-84fb-c4071d128df5',
    'Renforcer la présence de lignes directrices et modes opératoires normalisés sur la prévention et la lutte contre l’infection dans tous les établissements de santé',
    '369d1b04-a245-4307-9fef-719d340e3da3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c73afbf6-0f4e-4175-b4f7-0e735759bef1',
    'Fournir aux établissements de santé des moyens en matière d’hygiène de base, d’assainissement, de désinfection, d’EPI, ainsi que des services comme l’eau courante et l’électricité. La priorité doit être donnée aux hôpitaux, puis aux centres de santé des districts prioritaires.',
    '369d1b04-a245-4307-9fef-719d340e3da3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '411b4146-ae3c-4071-a5fc-7ff749d9d6d5',
    'Equiper et former convenablement le personnel soignant, y compris le personnel chargé de la santé environnementale, les hygiénistes et le personnel de nettoyage, en leur présentant les mesures d’IPC et procédures de gestion des déchets supplémentaires, priorité étant donnée à ceux qui entrent les premiers en contact avec les malades',
    '369d1b04-a245-4307-9fef-719d340e3da3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ba0e180c-9a76-4dd7-9266-6b9edb111541',
    'Identifier et Equiper des structures de soins afin de mettre en place des unités d’isolement de base (2 lits) pour les cas de MVE potentiels, dans les hôpitaux régionaux et de district et dans tous les points d’entrée désignés.',
    '369d1b04-a245-4307-9fef-719d340e3da3'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e05483e4-bf52-405e-8137-3ec27d279783',
    'Prise en charge des cas',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '56957eec-4bde-416c-8da1-dcf2c71406b1',
    'Désigner et mettre sur pied au moins un établissement disposant de fournitures suffisantes et d’une ou plusieurs salles d’isolement qui soit prêt à dispenser des soins à un cas ou un groupe de cas suspects de MVE.',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '29a9f0a0-8775-426a-aa42-8ce88154429f',
    'Recenser et faire appliquer tous les modes opératoires normalisés (MON) relatifs à la logistique (achats, mobilisation des stocks, transport des échantillons, utilisation des télécommunications, assistance et maintenance des structures, mobilisation des ressources pour le transport et gestion de la sécurité).',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '502824e7-78cd-4afb-ae15-4a3138cedb22',
    'Recenser le personnel clinique et le former à la prise en charge des cas de MVE et aux mesures d’IPC supplémentaires, si possible en faisant appel à des cliniciens expérimentés.',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f55354b9-df44-4922-8e17-26565728a0f8',
    'Equiper et former convenablement les Equipes d’ambulanciers pour le transport des cas suspects de MVE',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f26252a0-85c0-49cd-9e87-3c81c0147a42',
    'Recenser les établissements de soins au niveau du district pouvant être transformés en peu de temps en CTE.',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a08d2a74-b67c-49f4-9fc3-7a117794c824',
    'Recenser les établissements de soins au niveau local pouvant être transformés en peu de temps en CTE.',
    'e05483e4-bf52-405e-8137-3ec27d279783'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e',
    'Prise en charge des cas: inhumations sans danger dans la dignité',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8f82c4a7-ae77-4ca6-ab40-023c301ce4f4',
    'Mettre au point des MON pour l’inhumation sans risque et dans la dignité, et pour la décontamination.',
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b7ff7bbe-2a9a-436f-912b-4f5d2d205db4',
    'Equiper et former au moins une Equipe d’inhumation (4 personnes pour transporter les corps, 1 agent de désinfection, 1 personne chargée de la communication avec la communauté, 1 superviseur, 1 chauffeur).',
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6172cb79-4ab1-46ca-8989-3bf58be79d6d',
    'S’assurer de l’existence d’une procédure de transport spéciale pour inhumer sans risque les restes humains.',
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99c09d96-c752-4172-a028-921952a514b7',
    'S’assurer que, pendant l’enterrement, les Equipes d’inhumation reçoivent l’aide de creuseurs de tombe et bénéficient d’un appui sur le plan de la sécurité.',
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7e8e4e76-a90e-4fd6-a83f-42374cacefbf',
    'Identifier un lieu d’inhumation sûr et approprié avec l’accord de la communauté.',
    '5dfa8266-6cbc-45e2-9e19-fcf324c0aa7e'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335',
    'Surveillance épidémiologique',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5663d9a2-6c14-4723-b81a-70f371e25e25',
    'Mettre en place une ligne 24h/24, 7j/7 ou s’assurer que les numéros d’urgence existants peuvent prendre en charge les alertes. Former le personnel aux processus d’alerte et aux demandes d’information relatives à la MVE. Veiller à ce qu’un personnel suffisant soit disponible pour le travail posté, et avoir un plan pour le renforcer si besoin.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'df59ca65-0351-45d4-a47f-0fdcbd1031a7',
    'Fournir des orientations (lignes directrices, définitions de cas et formulaires d’investigation) à tous les niveaux du système de soins, en les adaptant aux besoins.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1f22ecbf-5f71-45e6-87e7-24d83adb55fb',
    'Dispenser une formation spéciale sur l’utilisation des définitions de cas de MVE et des formulaires d’investigation.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e35a3268-071d-438d-834b-ff533a033b38',
    'Veiller à ce qu’un système de surveillance fondé sur les événements soit en place et permette de suivre en temps opportun les informations/rumeurs de toutes origines (communauté, médias, etc.).',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '013bc5b4-8ace-4f76-be1f-7a4ab6d863f6',
    'Mettre en place des lignes de notification immédiate pour les cas potentiels de MVE (vivants ou décédés), avec une définition claire des responsabilités pour ces actions.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a4e243bd-1746-436e-b778-8af9473ef181',
    'Tester les systèmes de surveillance de la MVE existants, recenser les lacunes et prendre des mesures correctives le cas échéant.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bb0c0c13-bbfd-4e57-96f2-9fa3e0917e97',
    'Identifier les ressources humaines pour la surveillance communautaire (agents de santé communautaires, bénévoles, ONG, tradipraticiens, chefs communautaires, etc.).',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7091c663-0273-4b76-9fdf-f66fac8deb84',
    'Diffuser des définitions de cas simplifiées à l’usage des communautés.',
    '3fe54a0d-0254-4aa3-bf82-e49f74d73335'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a974e680-3895-4509-a5b3-33cf4205c3e1',
    'Recherche de contacts',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '429ea7e5-0506-4a8e-b739-9d013e427ff0',
    'Diffuser les lignes directrices et les MON sur la recherche des contacts aux niveaux national et infranational.',
    'a974e680-3895-4509-a5b3-33cf4205c3e1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e193134c-510d-401a-81a0-a1cc120c729e',
    'Former au moins une Equipe nationale à la recherche des contacts et la gestion des données.',
    'a974e680-3895-4509-a5b3-33cf4205c3e1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e1465ead-e812-4b29-b8da-05a29d86edbb',
    'Mettre en place/renforcer le système de gestion de données pour la recherche des contacts des cas de MVE aux niveaux national et infranational.',
    'a974e680-3895-4509-a5b3-33cf4205c3e1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '98e3d2c3-0ed7-4146-a7b1-e8d9509feca9',
    'Former le personnel de district à la recherche des contacts.',
    'a974e680-3895-4509-a5b3-33cf4205c3e1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '67b9358f-b05e-427c-9fe6-e05e8292f926',
    'Former le personnel des sous-districts et le personnel communautaire à la recherche des contacts et trouver pour chaque zone un vivier local de chercheurs de contacts.',
    'a974e680-3895-4509-a5b3-33cf4205c3e1'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e19c30ac-bf7c-4b45-949b-7b54d89c87aa',
    'Laboratoire',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '009bb73c-b3d3-48c0-9d95-23e1205e9943',
    'Mettre en place un laboratoire de référence national pour l’analyse ou la manipulation des échantillons biologiques et s’assurer que les procédures de transfert vers ces structures sont connues au niveau infranational.',
    'e19c30ac-bf7c-4b45-949b-7b54d89c87aa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6ff0aace-4c55-48a0-99a5-a0d278d75f16',
    'Élaborer des protocoles pour la collecte d’échantillons sur des cas de MVE potentiels et leur expédition vers un laboratoire de référence désigné, pour confirmation au niveau national ou international. Distribuer le triple emballage et en reconstituer les stocks.',
    'e19c30ac-bf7c-4b45-949b-7b54d89c87aa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ec2bba1d-19db-4e99-8ef2-5b9a05abe7f3',
    'Veiller à ce que le personnel de laboratoire soit formé aux procédures de sécurité et à l’IPC en ce qui concerne la collecte des échantillons, l’emballage, l’étiquetage, le transfert et l’expédition, y compris à la certification pour la manipulation des matières infectieuses.',
    'e19c30ac-bf7c-4b45-949b-7b54d89c87aa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a778581d-c366-46e7-8cba-0ef46f84c979',
    'Mettre en place des arrangements prévisionnels et veiller à ce que des accords soient en place avec les centres collaborateurs de l’OMS, pour les tests de confirmation, et avec les compagnies aériennes concernées, pour l’expédition internationale des échantillons.',
    'e19c30ac-bf7c-4b45-949b-7b54d89c87aa'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79',
    'Voyage / Points d’entrée',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '379fca13-23a6-4f0d-9a00-ecc968ce2e61',
    'S’assurer qu’un plan d’urgence soit en place au point d’entrée désigné (aéroports, ports et postes-frontières).',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fa457be2-560a-494d-a176-306b689fedb4',
    'Recenser des établissements de soins de référence pour chaque point d’entrée et élaborer un MON pour identifier, prendre en charge et aiguiller en toute sécurité les cas de MVE potentiels depuis le point d’entrée vers un hôpital ou un site d’isolement désigné, en identifiant les services d’ambulance.',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5f16c10e-3987-410f-b4f9-f31de081616a',
    'Désigner des Equipes qualifiées, proportionnelles au volume et à la fréquence des voyageurs, chargées de détecter, d’évaluer et de prendre correctement en charge les cas potentiels de MVE en suivant les procédures adaptées en matière d’IPC.',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c343c46a-7d5e-48b9-b959-2f25839c43d9',
    'Élaborer un MON pour la mise en place d’un dépistage à la sortie dans l’éventualité d’un cas confirmé de MVE.',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '09f1e0a9-2d0c-48a7-b9f8-76b198446f73',
    'Veiller à ce que chaque point d’entrée ait immédiatement accès au matériel et aux fournitures (EPI, thermomètres infrarouge, produits de désinfection et de nettoyage, structures d’observation/d’isolement et ambulance, selon la localisation).',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ba1d294c-544b-403f-a745-6941282d5926',
    'Examiner et tester les systèmes de communication actuels entre les autorités sanitaires au point d’entrée et les opérateurs de transport, et entre ces autorités et les systèmes de surveillance sanitaire nationaux.',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '53f46f3a-f986-478b-a0ad-369359c05e82',
    'Sensibiliser à la MVE les autorités de santé publique et les parties prenantes au point d’entrée, examiner leurs rôles et leurs procédures de gestion des cas de MVE potentiels, et souligner que les opérateurs de transport doivent immédiatement notifier les cas suspects de MVE aux autorités sanitaires du point d’entrée.',
    'b6ac0878-2096-46f3-82e3-eea7b0aeeb79'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6908472f-f2fb-45ce-8d60-94e8a89670b7',
    'Budget',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '167306c0-8475-4198-81fa-cc94f4fd3cb3',
    'Définir un budget opérationnel pour les activités (communication, surveillance renforcée, investigation, etc.), le dépistage pré-épidémique et les premières étapes de la riposte.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1c68a92c-bf65-4253-95e6-9bd0372ad1f3',
    'Mettre en place, ou rendre facilement accessible, un fonds de réserve pour la riposte immédiate à la flambée au niveau national et en d’autres sites appropriés.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '13e62a86-d195-40ac-bb1e-49a06cf42737',
    'Déterminer le cadre juridique permettant de dépenser les fonds d’urgence et de les transférer du niveau central vers tous les sites identifiés en vue de leur usage en situation d’urgence.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ef3ee6eb-d7d1-4688-bc7d-411d3f9aba14',
    'Faire bénéficier tous les travailleurs à risque d’un régime de rémunération et d’avantages recouvrant le traitement et des mesures incitatives pour les missions à haut risque ainsi que des indemnités en cas d’infection ou de décès.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9793a270-4725-4341-b761-963aa6f8c950',
    'Trouver des sources de financement, y compris l’allocation de ressources nationales et des mécanismes pour mobiliser des ressources supplémentaires si nécessaire, et s’assurer que les mécanismes d’accès aux sources de financement sont connus.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c2ee3b89-fcbc-4d06-93f3-589307089998',
    'Élaborer des modèles pour la mobilisation des ressources et pour les rapports aux pays et aux donateurs, notamment des mécanismes pour suivre l’emploi des fonds.',
    '6908472f-f2fb-45ce-8d60-94e8a89670b7'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '45520007-15d0-45f9-a770-c67d4c37d4fd',
    'Logistique',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '85bd4077-e494-4996-96a7-4ea6d59a9a7a',
    'Mettre en oeuvre la composante logistique au niveau de la coordination nationale et infranationale de l’IMS, en vue de définir et de mettre en place tous les moyens demandés en se conformant au calendrier et aux normes de qualité stipulés.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b7625fe0-8895-44c7-ad86-f17c6e549c47',
    'Évaluer les capacités de stockage et le système de gestion des stocks en place, déterminer les stocks nécessaires pour toutes les composantes, et mettre en place si nécessaire un système de gestion des stocks efficient au niveau national et dans les districts.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c1e974ca-603e-4d95-af7e-d4a8f7a0aaa6',
    'Identifier tous les moyens de transport nécessaires pour les biens et les personnes et veiller à ce qu’ils soient disponibles, en fonction des besoins et des exigences de sécurité, pour toutes les composantes. Au moins une ambulance doit être disponible et correctement préparée pour le transport des cas d’Ebola (le conducteur doit être formé aux spécificités de cette opération).',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5d53f38e-f6ed-4f8a-8fd5-8d8bb821d47a',
    'Évaluer si le mécanisme existant de transport d’échantillons est fiable et opérationnel et, sinon, déterminer et mettre en place un système adapté et fiable dans ce domaine, aux niveaux national et international, depuis le point de départ jusqu’au laboratoire de référence, y compris les ressources financières nécessaires pour ces activités.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd7db3225-d063-4695-941e-e0c2af7b047e',
    'Recenser les structures d’isolement potentielles et les évaluer au regard des aspects suivants : lutte anti-infectieuse et possibilités d’isolement adéquates, gestion des déchets, eau et électricité.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1c9c2ee7-b1d7-4bd9-b8f5-7bcfa330b231',
    'Identifier et former les ressources humaines nécessaires pour que toutes les activités puissent être mises en oeuvre (logistique, conducteurs, Equipes d’inhumation, sécurité, administration, achats, magasiniers, etc.).',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8e667cde-7441-4ef2-b836-a7766e2d48a9',
    'Recenser toutes les ressources disponibles, y compris les sites potentiellement utiles pour la riposte à Ebola du fait de possibilités d’entreposage ou d’autres usages logistiques.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '51280832-958f-41a7-a642-fd26e4e41ba1',
    'Recenser les fournisseurs d’articles essentiels standard pour l’intervention d’urgence, au niveau local/international. Évaluer leurs capacités/délais de livraison. Étudier les possibilités d’accords préalables.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '01872eca-356f-4d7c-b672-81ec21971e0c',
    'Déterminer les besoins d’approvisionnement (23 articles essentiels), optimiser les chaînes d’approvisionnement, définir et mettre en oeuvre des MON sur l’approvisionnement, en vue de réduire les délais de livraison et d’améliorer la reconstitution des stocks.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e6348cd3-c891-4751-bdfc-c47133c38949',
    'Évaluer les capacités du réseau de communication et, si nécessaire, mettre en place un système de télécommunications couvrant l’ensemble des opérations.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '08a23cd6-234e-49c0-a964-5b07aa531cc7',
    'S’assurer que les structures médicales désignées appliquent les lignes directrices sur la lutte anti-infectieuse, sont correctement isolées, disposent d’un système de gestion des déchets, aient l’eau courante et l’électricité, reconstituent leurs stocks et bénéficient d’une maintenance.',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a423a095-7d37-4f94-beaa-073cfe3a96a4',
    'Définir et mettre en œuvre tous les MON relatifs à la composante logistique (achats, mobilisation des stocks, transport des échantillons, usages des télécommunications, appui et maintenance pour les structures, mobilisation des ressources de transport, gestion de la sécurité).',
    '45520007-15d0-45f9-a770-c67d4c37d4fd'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'd75d76d1-bf3a-4b53-910f-6e99917e9876',
    'Prévention de l’exploitation, des abus et du harcèlement sexuels (EAS/HS) et violences basées sur le genre',
    'd2835c31-d119-4380-a5f9-70e8c5cd9059'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ec205a4d-e808-4f8e-9298-a50d9aea06cc',
    'Cartographie et mécanisme de référencement : L’entité dispose d’une cartographie actualisée des acteurs PSEAH/VBG, des points focaux sectoriels et des services de prise en charge médicale, psychosociale, juridique, sécuritaire et socio-économique disponibles pour les survivantes, avec des procédures documentées de référencement rapide et confidentiel.',
    'd75d76d1-bf3a-4b53-910f-6e99917e9876'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0ce91aab-3bb5-4229-a7dc-11bcbd93b8d2',
    'Gouvernance, personnel et partenaires : Tous les agents, volontaires, consultants, prestataires, équipes d’intervention rapide, ReCo et partenaires ont reçu une formation PSEAH/VBG, signé un Code de conduite et font l’objet d’un contrôle préalable de références et d’antécédents conformément aux procédures nationales.',
    'd75d76d1-bf3a-4b53-910f-6e99917e9876'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '52e6c357-67df-4370-87b1-37fdb1827e30',
    'Mécanismes sûrs de plainte et de signalement : L’entité dispose de mécanismes de plainte confidentiels, accessibles, adaptés au genre, à l’âge et au handicap, permettant le signalement sécurisé des cas d’EAS/HS et de VBG, avec protection contre les représailles et gestion sécurisée des données.',
    'd75d76d1-bf3a-4b53-910f-6e99917e9876'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e61a5c37-6668-4f60-ad48-a49d13aac544',
    'Gestion des risques et redevabilité des partenaires : Des analyses périodiques des risques d’EAS/HS et de VBG sont réalisées dans les activités à haut risque (recrutement, distributions, transport, hébergement, isolement, recherche des contacts, équipes mobiles). Les accords de partenariat, contrats et mécanismes de financement intègrent des clauses PSEAH obligatoires et une évaluation des capacités des partenaires est réalisée avant tout engagement..',
    'd75d76d1-bf3a-4b53-910f-6e99917e9876'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dc9e4f09-33ca-45c6-af72-1eb6c532b72c',
    'Intégration du genre et suivi des inégalités : L’entité réalise une analyse des inégalités de genre liées à la préparation et à la riposte MVE, élabore un plan d’action financé pour réduire les risques et vulnérabilités différenciés entre femmes, hommes, filles et garçons, et assure le suivi régulier des indicateurs de genre, VBG et PSEAH',
    'd75d76d1-bf3a-4b53-910f-6e99917e9876'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'b322ca09-0438-4432-9ce6-d16f40cd3d42',
    'Etat de préparation à faire face à la COVID-19',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '044799f8-3b20-40e3-a920-041c5e03b544',
    'Coordination',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '134d8133-b581-492d-8d9b-84dce946dca7',
    'Mettre en place des plans et des procédures cohérents pour la coordination et la gestion des incidents liés à la COVID-19, y compris les liens entre le centre des opérations sanitaires d’urgence (COUSP), les structures nationales de gestion des catastrophes, les services cliniques, les laboratoires et les points d’entrée. Au minimum, cela doit couvrir les mandats, les organigrammes, les voies de communication, la coordination multisectorielle et la gestion de l’appui des partenaires.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4ac09aec-1f7f-46da-b621-61bc513eefe4',
    'Tester régulièrement la coordination, les circuits de triage, le référencement, l’alerte, le transport, la prise en charge clinique et les aspects opérationnels au moyen d’exercices de simulation et de tests de compétences relatifs à la COVID-19.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1c8659a6-aa0f-4474-8cb9-9bc840b4e342',
    'Veiller à ce que des plans de préparation et de riposte à la COVID-19 existent, soient actualisés et pleinement budgétés aux niveaux national, provincial, de la zone de santé et des établissements de soins.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd8c549b8-ecfd-4f75-9519-0ee856eb9564',
    'Examiner les politiques, directives et dispositions réglementaires en vigueur afin de s’assurer qu’elles autorisent les mesures de santé publique proposées pour la COVID-19, y compris le dépistage, l’isolement, la notification, la quarantaine et la protection du personnel.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '142c477b-679b-4780-8cab-0503db19a670',
    'Identifier les membres du comité ou groupe spécial COVID-19 aux niveaux national, provincial, des zones de santé et des établissements de soins, et les informer clairement de leurs rôles et responsabilités.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f688b2fb-9c15-42e7-8577-6150ea89576f',
    'Identifier, former et désigner des responsables des incidents et responsables opérationnels habilités à prendre rapidement les décisions relatives à la surveillance, au triage, à la prise en charge clinique, à l’oxygénothérapie, à la PCI et à la logistique COVID-19.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5d02ffda-19b0-4dc4-b334-2422a64e159a',
    'Mettre en place du personnel COUSP ou un mécanisme équivalent au niveau infranational et dans les zones de santé afin d’assurer une coordination localisée de la préparation et de la riposte à la COVID-19.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'abb85d95-ac9c-4f55-bfb3-2065c2975d7c',
    'Mettre en place un comité ou groupe spécial COVID-19 multisectoriel et opérationnel aux niveaux national et infranational ainsi que dans les zones de santé, avec des liens fonctionnels vers les établissements de soins et les points d’entrée.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '542fcbdf-a7c2-477a-a356-119508c8c797',
    'Identifier un espace physique fonctionnel pour le centre des opérations sanitaires d’urgence (COUSP) ou une cellule de coordination COVID-19, doté de moyens de communication, de suivi des données et de coordination des partenaires.',
    '044799f8-3b20-40e3-a920-041c5e03b544'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '78182394-3fde-4ef3-a733-abf21219c912',
    'Equipe d''intervention rapide',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c5061505-4bb0-4a52-91bb-a761af81d6d9',
    'Désigner et affecter une Equipe d’intervention rapide pluridisciplinaire pour la COVID-19, avec chef d’Equipe, clinicien, épidémiologiste, agent de laboratoire, spécialiste PCI, communicateur et logisticien, et prévoir un moyen de transport médicalisable mobilisable sous 24 heures.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b88bde04-dab2-480a-b03b-3c0941b296be',
    'Définir clairement les responsabilités pour l’activation, le déploiement et la coordination de l’EIR face à tout signal, cas suspect, cluster ou flambée de COVID-19.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0774e808-ca7a-44bc-a5bb-cbd9066b0ccf',
    'Former convenablement les EIR pour l’investigation des cas et des clusters de COVID-19, le prélèvement et le transport des échantillons, la recherche et le suivi des contacts, la supervision du triage, l’appui à l’oxygénothérapie, la PCI et la mobilisation sociale.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8a1c3e58-59c2-40b9-8fde-1feca7b38a7d',
    'Former l’EIR infranationale à la surveillance des cas et décès, à l’investigation des flambées locales et au suivi des contacts liés à la COVID-19.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '29f3ea52-6e6a-4ea8-bfbd-2765d7ab9605',
    'Recenser les établissements de santé du district capables d’assurer le triage, l’isolement, la référence et la prise en charge initiale des cas suspects ou confirmés de COVID-19.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3c05ff97-16fc-4a22-8053-02882b8d90cc',
    'Mener périodiquement des exercices de simulation afin de maintenir la capacité des EIR à répondre rapidement à des alertes, flambées ou résurgences de COVID-19.',
    '78182394-3fde-4ef3-a733-abf21219c912'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '2e42fe40-e681-469a-9c36-e6cdcd8c05ee',
    'Sensibilisation du public et mobilisation communautaire',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0f3110a6-68aa-4a77-a38d-9fb5e0c071b0',
    'Élaborer une stratégie, un plan et un budget complets de communication sur les risques et d’engagement communautaire pour la COVID-19, recenser les principaux canaux de communication, surveiller les rumeurs, la désinformation et les perceptions communautaires, et y répondre rapidement.',
    '2e42fe40-e681-469a-9c36-e6cdcd8c05ee'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c9a895e-7bbc-4400-9f98-86e857e95a5e',
    'Mettre en place un mécanisme opérationnel de coordination de la communication pour mobiliser l’ensemble des parties prenantes, y compris la société civile, les ONG, les relais communautaires, les médias, les écoles, les leaders religieux et traditionnels, en milieu urbain comme rural, autour de la prévention et de la riposte à la COVID-19.',
    '2e42fe40-e681-469a-9c36-e6cdcd8c05ee'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'eeb9f23e-75b8-489a-bc21-f130a830f380',
    'Élaborer une stratégie et un plan de communication sur les risques liés à la COVID-19, incluant les mesures de prévention, la recherche de soins précoces, la vaccination selon le contexte national, la protection des personnes à risque et le maintien des services essentiels.',
    '2e42fe40-e681-469a-9c36-e6cdcd8c05ee'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2a5ac78b-c9c8-43a8-a42c-9ab3ed06f85f',
    'Mettre au point ou adapter, traduire dans les langues locales et diffuser des messages ciblés sur la COVID-19 à l’intention des médias, du personnel soignant, des dirigeants locaux, des églises, des écoles, des tradipraticiens, des transporteurs, des voyageurs et des autres parties prenantes communautaires.',
    '2e42fe40-e681-469a-9c36-e6cdcd8c05ee'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '387df67b-98b6-46a0-8c61-cca5e17ce7a5',
    'Prévention et lutte contre l''infection',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5ad4cddc-b099-445f-b85f-b07cd06cb8cc',
    'Renforcer la disponibilité et l’application des lignes directrices et modes opératoires normalisés de prévention et contrôle de l’infection pour la COVID-19 dans tous les établissements de santé.',
    '387df67b-98b6-46a0-8c61-cca5e17ce7a5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3a0e3b2d-72de-44cd-8a6d-be41c09324e9',
    'Fournir aux établissements de santé les moyens nécessaires en matière d’hygiène de base, d’assainissement, de ventilation, de désinfection, d’EPI, ainsi que des services essentiels comme l’eau courante, l’électricité et l’oxygène médical, en priorité dans les hôpitaux et centres de santé de référence.',
    '387df67b-98b6-46a0-8c61-cca5e17ce7a5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9acd6f89-a6dd-4622-bfbc-c39bc98ab163',
    'Equiper et former convenablement le personnel soignant, les hygiénistes, les agents de santé environnementale et le personnel de nettoyage aux mesures de PCI liées à la COVID-19, y compris le triage, l’hygiène des mains, le port approprié des EPI, le nettoyage-désinfection, la gestion des déchets et la prévention des infections respiratoires.',
    '387df67b-98b6-46a0-8c61-cca5e17ce7a5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5cea16c5-cd25-4b5d-9157-7a32a0adf3d1',
    'Identifier et Equiper des structures de soins pour mettre en place des espaces de triage, d’isolement et d’observation temporaires pour les cas suspects de COVID-19 dans les hôpitaux, centres de santé de référence et points d’entrée désignés.',
    '387df67b-98b6-46a0-8c61-cca5e17ce7a5'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede',
    'Prise en charge des cas',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f611fd0a-14c2-4b06-8d71-0712de51ea2a',
    'Désigner au moins un établissement disposant de fournitures suffisantes, d’un circuit de triage et d’espaces d’isolement ou d’hospitalisation capables d’assurer la prise en charge des cas suspects ou confirmés de COVID-19.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6a80dd2b-0d50-456f-b529-2a75485f5174',
    'Recenser et faire appliquer tous les modes opératoires normalisés relatifs à la logistique clinique COVID-19, notamment les achats, la mobilisation des stocks, l’approvisionnement en oxygène, le transport des échantillons, l’utilisation des télécommunications, l’appui aux structures et la sécurité.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1283d5c1-2735-49ec-bfa0-6ef101a11f29',
    'Recenser le personnel clinique et le former à la prise en charge des cas de COVID-19, y compris l’évaluation clinique, l’oxygénothérapie, la surveillance des signes de gravité et l’application stricte des mesures de PCI.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '096fd62a-9970-4f04-855c-35eb766d622d',
    'Equiper et former convenablement les Equipes d’ambulanciers pour le transport sécurisé des cas suspects ou confirmés de COVID-19, avec application des mesures de PCI et de désinfection du véhicule.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2b2b2dc0-6463-4071-8c23-87202cb4d1f5',
    'Recenser les établissements de soins au niveau du district pouvant être rapidement convertis en unités de prise en charge, d’hospitalisation ou de traitement de la COVID-19 en cas d’afflux de patients.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '75a9e47d-e858-4389-9c7d-7799b68c7640',
    'Recenser les établissements de soins au niveau local pouvant être temporairement convertis en espaces d’isolement, d’observation ou de prise en charge de la COVID-19 selon l’évolution de la situation épidémiologique.',
    'dfefd6cf-8050-42cf-b5d4-e643fc564ede'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '73a631db-130c-41ce-8505-e58097035649',
    'Continuité des services essentiels, ressources humaines, protection du personnel, vaccination et pharmacovigilance',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f6bc3c79-1937-40f0-9eb4-db2f2de9aaf7',
    'Définir, actualiser et diffuser un plan de continuité des services de santé essentiels précisant les services prioritaires à maintenir pendant les vagues de COVID-19, les circuits séparés pour patients respiratoires et non respiratoires, et les modalités d’adaptation en cas de surcharge.',
    '73a631db-130c-41ce-8505-e58097035649'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f0ac405a-4610-410d-84eb-ff224dd34f4b',
    'Mettre en place un suivi régulier de la disponibilité et de l’utilisation des services essentiels, notamment vaccination de routine, santé maternelle et néonatale, urgences, maladies chroniques, VIH, tuberculose, paludisme et nutrition, afin de détecter rapidement les ruptures et d’organiser des actions de rattrapage.',
    '73a631db-130c-41ce-8505-e58097035649'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '50bb31fe-c805-45cf-b248-0b0c8517c803',
    'Élaborer un plan de gestion des ressources humaines pour la COVID-19 incluant redéploiement du personnel, remplacement des absents, renforcement des compétences, prévention de l’épuisement professionnel, soutien psychosocial, vaccination du personnel et mécanismes de protection pour les agents exposés.',
    '73a631db-130c-41ce-8505-e58097035649'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0312070e-c8c5-4962-9721-d0199f55830a',
    'Garantir des mesures de protection du personnel de santé et de soutien, notamment disponibilité continue des EPI, triage sécurisé, ventilation adéquate, accès à l’hygiène des mains, surveillance des expositions professionnelles, conduite à tenir après exposition et accès à la prise en charge médicale en cas d’infection liée au travail.',
    '73a631db-130c-41ce-8505-e58097035649'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e8fa1551-0e2f-4e7f-ac59-469ba9c1ef33',
    'Mettre en place ou renforcer l’organisation de la vaccination contre la COVID-19 et de la pharmacovigilance, en assurant la disponibilité des vaccins et consommables, la chaîne du froid, la formation des vaccinateurs, la surveillance des manifestations post-vaccinales indésirables, la notification rapide des événements et la communication avec les communautés.',
    '73a631db-130c-41ce-8505-e58097035649'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e',
    'Surveillance épidémiologique',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4045ae95-7066-4bd2-aadb-568ea90a381a',
    'Mettre en place une ligne d’alerte fonctionnelle 24h/24, 7j/7 ou s’assurer que les numéros d’urgence existants prennent correctement en charge les alertes relatives à la COVID-19, et former le personnel à la réception, au triage et à l’orientation des signalements.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd9f33b02-7457-4893-89dd-5050942a175d',
    'Fournir des orientations, définitions de cas et formulaires d’investigation pour la COVID-19 à tous les niveaux du système de santé, en les adaptant à l’évolution des directives nationales et de la situation épidémiologique.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7136d3ab-4a13-4e00-abae-dc58549f44c6',
    'Dispenser une formation spécifique sur l’utilisation des définitions de cas COVID-19, des outils d’investigation, des fiches de notification et des systèmes de remontée des données.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fa6fa087-5bc4-4aee-a56e-b147790c8f5b',
    'Veiller à ce qu’un système de surveillance fondé sur les événements soit en place pour détecter rapidement les signaux, rumeurs, flambées et décès inhabituels liés à la COVID-19 au niveau communautaire, médiatique et institutionnel.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '827cdf83-130a-4416-866a-ae3f2070b23a',
    'Mettre en place des lignes de notification immédiate pour les cas suspects, probables ou confirmés de COVID-19 et définir clairement les responsabilités de notification, validation, investigation et riposte.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f8fe8459-ffc1-4b44-85a3-f8ffb045e191',
    'Tester régulièrement les systèmes de surveillance de la COVID-19, recenser les lacunes en matière d’alerte, d’investigation, de notification et d’analyse, puis mettre en œuvre les mesures correctives nécessaires.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '56f7a1ff-f263-4b89-a9fa-dd4dd96bbb7e',
    'Identifier les ressources humaines pour la surveillance communautaire de la COVID-19, y compris les agents de santé communautaires, bénévoles, ONG, leaders communautaires et autres relais de proximité.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '222ead01-f4ce-47b4-b457-ee08fdb57968',
    'Diffuser des définitions de cas simplifiées, des signes d’alerte et des consignes de notification communautaire pour la COVID-19.',
    '05cdfe15-09c9-4b9f-b3fd-2be1c93db20e'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '471fc1ba-b67f-415c-9995-ffb667d318d8',
    'Recherche de contacts',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0cad111a-3b01-4328-a866-bf8792ff48d3',
    'Diffuser les lignes directrices et les modes opératoires normalisés sur la recherche et le suivi des contacts de COVID-19 aux niveaux national, provincial et local.',
    '471fc1ba-b67f-415c-9995-ffb667d318d8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '78ee9ba6-8a5b-4c9c-a91b-efffa13dbad2',
    'Former au moins une Equipe nationale à la recherche, au suivi des contacts et à la gestion des données relatives à la COVID-19.',
    '471fc1ba-b67f-415c-9995-ffb667d318d8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3aa15fc5-8509-4e58-9155-7e497434477b',
    'Mettre en place ou renforcer le système de gestion des données pour la recherche et le suivi des contacts de COVID-19 aux niveaux national et infranational.',
    '471fc1ba-b67f-415c-9995-ffb667d318d8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '60ecb957-a49b-47b6-99fe-e308bcf9907f',
    'Former le personnel de district à la recherche, au suivi quotidien et à l’orientation des contacts exposés à la COVID-19.',
    '471fc1ba-b67f-415c-9995-ffb667d318d8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ab654174-e480-4a1f-b399-278b54c0bd99',
    'Former le personnel des sous-districts et les relais communautaires au repérage, au suivi et à la notification des contacts de COVID-19, et constituer pour chaque aire de santé un vivier local de traceurs communautaires.',
    '471fc1ba-b67f-415c-9995-ffb667d318d8'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '64b5a1e7-3344-4ced-9f2f-85455ad32184',
    'Laboratoire',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2f77566e-bb70-4ed6-87e9-b4003c948248',
    'Mettre en place ou renforcer un laboratoire de référence national pour le diagnostic de la COVID-19 et s’assurer que les procédures de collecte, de conservation et de transfert des échantillons sont connues à tous les niveaux.',
    '64b5a1e7-3344-4ced-9f2f-85455ad32184'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '44dda51e-190a-499e-b08d-1f763e0afcf1',
    'Élaborer des protocoles pour la collecte, le conditionnement, le transport et l’acheminement des échantillons pour le diagnostic du SARS-CoV-2, et distribuer le matériel nécessaire de prélèvement, d’emballage et de biosécurité.',
    '64b5a1e7-3344-4ced-9f2f-85455ad32184'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f9b9d2d5-a3cc-49f3-8edd-24b9e2d71c22',
    'Veiller à ce que le personnel de laboratoire soit formé aux procédures de biosécurité et de PCI relatives à la COVID-19, y compris le prélèvement, l’emballage, l’étiquetage, le transport, l’analyse et l’élimination sécurisée des déchets biologiques.',
    '64b5a1e7-3344-4ced-9f2f-85455ad32184'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '50e8982f-27da-4850-911a-10a571e5ec9a',
    'Mettre en place des arrangements prévisionnels pour l’approvisionnement en réactifs, consommables, Equipements et services de maintenance nécessaires au diagnostic de la COVID-19, y compris des mécanismes de confirmation et de référence si besoin.',
    '64b5a1e7-3344-4ced-9f2f-85455ad32184'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d',
    'Voyage / Points d’entrée',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99574af7-60b9-41ff-89ea-8decc4a946b5',
    'S’assurer qu’un plan d’urgence COVID-19 soit en place dans chaque point d’entrée désigné, notamment les aéroports, ports et postes-frontières prioritaires.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '30548d4e-67c1-47d8-b52b-ba6076c6958f',
    'Recenser des établissements de soins de référence pour chaque point d’entrée et élaborer un MON pour identifier, isoler, évaluer et aiguiller en toute sécurité les voyageurs présentant des signes évocateurs de COVID-19 vers un établissement désigné.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4d827879-e7d6-45fe-9268-34caeb3eff9c',
    'Désigner des Equipes qualifiées, proportionnelles au volume des voyageurs, chargées de détecter, d’évaluer et de prendre correctement en charge les cas potentiels de COVID-19 dans le respect des procédures de PCI.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8ce3fbfe-847d-4779-8e9d-59c894d5f423',
    'Élaborer un MON pour la gestion des voyageurs malades, des alertes sanitaires, du dépistage ciblé lorsque requis et de la notification des événements liés à la COVID-19 aux points d’entrée.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '218ce445-8beb-4041-98dd-03b4f050fe68',
    'Veiller à ce que chaque point d’entrée ait immédiatement accès au matériel et aux fournitures nécessaires pour la COVID-19, notamment EPI, thermomètres, dispositifs d’hygiène des mains, produits de nettoyage, espace d’isolement temporaire et moyen de référence sécurisé.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ec459ee3-60b5-4b01-9ebc-9accbb036baa',
    'Examiner et tester les systèmes de communication entre les autorités sanitaires aux points d’entrée, les opérateurs de transport et les systèmes nationaux de surveillance pour la notification rapide des événements liés à la COVID-19.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '65329e14-8c36-44c6-9f92-178c70d58e77',
    'Sensibiliser les autorités de santé publique et les parties prenantes aux points d’entrée aux procédures de gestion des événements liés à la COVID-19 et rappeler aux opérateurs de transport leur obligation de notifier immédiatement tout voyageur malade ou événement sanitaire suspect.',
    '7b5bfdbe-19ac-4f9a-a8e3-a82c8cf1258d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9',
    'Budget',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b319696c-2acf-42b7-b678-ccbeed18bfff',
    'Définir un budget opérationnel pour les activités de préparation et de riposte à la COVID-19, y compris la surveillance renforcée, le laboratoire, la communication, la PCI, la prise en charge clinique, les points d’entrée et la continuité des services essentiels.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dbee2dc5-dd6a-49f9-b6c5-9f25b8aa4122',
    'Mettre en place, ou rendre facilement accessible, un fonds de réserve pour la riposte immédiate à des flambées ou résurgences de COVID-19 au niveau national et infranational.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8886a4fc-1bed-40be-9e6a-7f698502c923',
    'Déterminer le cadre juridique permettant de mobiliser, décaisser et transférer rapidement les fonds d’urgence liés à la COVID-19 vers tous les niveaux identifiés pour la riposte.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a5350d8c-7641-458f-8d1e-779c5f8fdda8',
    'Faire bénéficier les travailleurs exposés à la COVID-19 de mécanismes appropriés de rémunération, d’assurance, de protection sociale, de prise en charge médicale et d’incitations pour les missions à haut risque.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8450e9a1-c4e2-4716-89a1-ad24948a7ecb',
    'Trouver des sources de financement pour la préparation et la riposte à la COVID-19, y compris des ressources nationales et des mécanismes permettant de mobiliser rapidement des appuis supplémentaires si nécessaire.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5c96cd92-f00e-4da8-bd0a-59ef7d24107e',
    'Élaborer des modèles pour la mobilisation des ressources et pour les rapports destinés aux autorités et partenaires concernant l’utilisation des fonds alloués à la COVID-19.',
    '74dcdffc-b9ff-4077-937c-a4f89999b1d9'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'cc8db167-b10d-42e4-9b05-dd87c058da0a',
    'Logistique',
    'b322ca09-0438-4432-9ce6-d16f40cd3d42'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7aa8a18f-049f-4c2e-b68a-10e271aeaa1e',
    'Mettre en œuvre la composante logistique de la coordination nationale et infranationale pour la COVID-19 afin de garantir la disponibilité et la distribution à temps des intrants, Equipements et moyens opérationnels requis.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '05891063-d232-4c88-be15-25fa4aa32b96',
    'Évaluer les capacités de stockage et le système de gestion des stocks, déterminer les besoins en intrants COVID-19 pour toutes les composantes et mettre en place un système efficient de gestion des approvisionnements au niveau national et décentralisé.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c3d2914-3f57-41ae-be36-c83eab6c4512',
    'Identifier tous les moyens de transport nécessaires pour les biens, les échantillons, les Equipes et les patients, et veiller à la disponibilité d’ambulances et de véhicules adaptés pour la référence sécurisée des cas de COVID-19.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ffe52f29-30fd-4735-b505-dba4ed4aa367',
    'Évaluer si le mécanisme existant de transport des échantillons pour la COVID-19 est fiable et opérationnel et, sinon, mettre en place un système adapté depuis le site de prélèvement jusqu’au laboratoire de référence.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6c4e0724-dab4-4d5f-a348-5043428189f0',
    'Recenser les structures potentielles d’isolement, d’observation ou de prise en charge de la COVID-19 et les évaluer au regard de la PCI, de la ventilation, de la gestion des déchets, de l’eau, de l’électricité et de l’oxygène.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f0e4f8cb-b735-4c22-8078-1d5e37091c80',
    'Identifier et former les ressources humaines nécessaires à la mise en œuvre des activités logistiques liées à la COVID-19, notamment logisticiens, chauffeurs, magasiniers, techniciens biomédicaux, agents d’approvisionnement et Equipes d’appui.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '047a7ba2-a7a0-404d-878d-706f53dd759b',
    'Recenser toutes les ressources disponibles pouvant être mobilisées pour la riposte à la COVID-19, y compris les sites d’entreposage, les espaces temporaires, les plateformes logistiques et les infrastructures de soutien.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ce6c7569-4fd5-4e72-b273-04854c8071d2',
    'Recenser les fournisseurs d’articles essentiels pour la COVID-19 au niveau local et international, évaluer leurs capacités et délais de livraison et étudier les possibilités d’accords préalables d’approvisionnement.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4d3ffc14-da95-460c-bb27-093685050eca',
    'Déterminer les besoins d’approvisionnement (23 articles essentiels), optimiser les chaînes d’approvisionnement, définir et mettre en œuvre des MON sur l’approvisionnement, en vue de réduire les délais de livraison et d’améliorer la reconstitution des stocks.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '44fd6159-f1bb-4a10-a6c0-4b2cb433084d',
    'Évaluer les capacités du réseau de communication et, si nécessaire, mettre en place un système de télécommunications couvrant l’ensemble des opérations.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '068a743e-9cbf-4548-84d2-5bfa1f885644',
    'S’assurer que les structures médicales désignées appliquent les lignes directrices sur la lutte anti-infectieuse, sont correctement isolées, disposent d’un système de gestion des déchets, aient l’eau courante et l’électricité, reconstituent leurs stocks et bénéficient d’une maintenance.',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5e653285-5960-48f1-be40-33be785e16ef',
    'Définir et mettre en œuvre tous les MON relatifs à la composante logistique (achats, mobilisation des stocks, transport des échantillons, usages des télécommunications, appui et maintenance pour les structures, mobilisation des ressources de transport, gestion de la sécurité).',
    'cc8db167-b10d-42e4-9b05-dd87c058da0a'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'deebd1bb-8db2-4beb-8331-3b96182a100b',
    'Etat de préparation à faire face à la rage humaine',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bf340023-0983-4908-a0d8-586d9c08ee3d',
    'Coordination multisectorielle',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'caaac35c-a54c-4b6a-b5c2-9d3a2b737855',
    'Mettre en place un mécanisme de coordination One Health associant santé humaine, santé animale, laboratoires, autorités locales, communication et partenaires pour la prévention et la riposte à la rage.',
    'bf340023-0983-4908-a0d8-586d9c08ee3d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '19a82ea2-1f91-4f44-b997-a80bcdfee57c',
    'Disposer d’un plan de préparation et de riposte à la rage humaine actualisé, budgétisé et harmonisé entre les secteurs humain et animal.',
    'bf340023-0983-4908-a0d8-586d9c08ee3d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '06c3d930-e45a-40a2-86b9-d8ca0bf50169',
    'Définir les rôles, responsabilités, circuits de notification et mécanismes de coordination pour la gestion des morsures, des expositions et des cas suspects.',
    'bf340023-0983-4908-a0d8-586d9c08ee3d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '9528065a-5c1d-4dce-a462-70861c95c377',
    'Surveillance épidémiologique et notification des morsures / expositions',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3467bc73-c913-46a3-8137-7534e074df0e',
    'Mettre en place un système de notification immédiate des morsures, griffures, léchages sur peau lésée ou muqueuses, ainsi que des cas suspects de rage humaine.',
    '9528065a-5c1d-4dce-a462-70861c95c377'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '591b84ee-598f-4255-bbd1-5183f0268971',
    'Diffuser les définitions de cas, formulaires de notification et outils de suivi pour les expositions et les cas suspects de rage humaine à tous les niveaux.',
    '9528065a-5c1d-4dce-a462-70861c95c377'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9939d8c5-8012-4b2b-afce-daf52b10a204',
    'Assurer le lien entre les données de santé humaine et animale pour permettre l’investigation des animaux mordeurs et le suivi des personnes exposées.',
    '9528065a-5c1d-4dce-a462-70861c95c377'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cb2b21d6-5068-47dd-8bb4-be4afbecb6bb',
    'Former les prestataires et relais communautaires à la détection précoce des expositions, à la référence rapide et à la notification des événements suspects.',
    '9528065a-5c1d-4dce-a462-70861c95c377'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ad1d1d4b-7fca-45ce-8681-3b7f9c472209',
    'Prise en charge des expositions et prophylaxie post-exposition',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '294eabd0-d6f0-4669-9fa8-56aae58d0788',
    'Assurer dans tous les sites de prise en charge la capacité à réaliser immédiatement le lavage abondant des plaies à l’eau et au savon pendant au moins 15 minutes et l’application d’un antiseptique approprié.',
    'ad1d1d4b-7fca-45ce-8681-3b7f9c472209'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '502f0297-01a2-4b68-92fc-5a8ba5383fd4',
    'Rendre disponibles les protocoles nationaux/OMS d’évaluation du risque et de prophylaxie post-exposition selon les catégories d’exposition.',
    'ad1d1d4b-7fca-45ce-8681-3b7f9c472209'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8ccc0d7f-2283-4d36-b6b4-ad14a3f6bb0d',
    'Prépositionner les vaccins antirabiques, les immunoglobulines ou anticorps monoclonaux antirabiques selon disponibilité, ainsi que les consommables nécessaires à leur administration.',
    'ad1d1d4b-7fca-45ce-8681-3b7f9c472209'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f47fed15-b0f3-43f9-9315-a36170f74e28',
    'Former le personnel de santé à la classification des expositions, à la décision de PPE, au calendrier vaccinal, à l’infiltration des immunoglobulines si indiquée et au suivi de l’observance.',
    'ad1d1d4b-7fca-45ce-8681-3b7f9c472209'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b61dd5e8-772f-4fbd-967a-9ab0aaa094e3',
    'Laboratoire',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8027de54-a1d0-471c-b0bd-e9c7f658c3f5',
    'Renforcer les capacités de laboratoire pour la confirmation de la rage chez l’animal ou l’humain selon les procédures nationales et les capacités de référence disponibles.',
    'b61dd5e8-772f-4fbd-967a-9ab0aaa094e3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bc055439-955b-44c8-b2cb-b1163a9acee5',
    'Mettre en place des procédures de prélèvement, conservation, transport et biosécurité pour les échantillons suspects de rage.',
    'b61dd5e8-772f-4fbd-967a-9ab0aaa094e3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '314d5a59-ca2b-41ab-939d-ceb0dddaf5a9',
    'Assurer une transmission rapide des résultats entre laboratoire, santé humaine et santé animale pour orienter les décisions de prophylaxie et de riposte.',
    'b61dd5e8-772f-4fbd-967a-9ab0aaa094e3'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e3ac9507-0863-43cd-ae58-84012dfae657',
    'Gestion clinique des cas humains',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3838b48a-cf49-4696-b7b7-fa44332d2002',
    'Former les cliniciens à reconnaître les signes évocateurs de rage humaine, y compris hydrophobie, aérophobie, agitation, paralysie progressive et antécédent d’exposition animale.',
    'e3ac9507-0863-43cd-ae58-84012dfae657'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd50d13f2-c859-4bdb-afaf-58787615ffa1',
    'Prévoir des procédures de prise en charge palliative, de prévention des expositions nosocomiales, de soutien aux familles et de notification immédiate des cas probables ou confirmés.',
    'e3ac9507-0863-43cd-ae58-84012dfae657'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '34aa8534-36b7-4d3b-a554-a3b7db54745d',
    'Assurer l’existence de mesures de protection du personnel soignant lors de la prise en charge des cas suspects ou confirmés de rage humaine.',
    'e3ac9507-0863-43cd-ae58-84012dfae657'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '2f695bd4-d12a-48b3-b4a9-8819af21adb9',
    'Equipe d''intervention rapide / investigation',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '27b28c76-e93a-4adf-92cb-0ceb4d3a3db4',
    'Former et prépositionner des Equipes capables d’investiguer les morsures, d’évaluer l’animal mordeur, d’identifier d’autres personnes exposées et de coordonner la réponse entre santé humaine et animale.',
    '2f695bd4-d12a-48b3-b4a9-8819af21adb9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1529ec21-55b4-4b7c-9f40-01fc6a1f4c66',
    'Définir des procédures d’activation rapide pour l’investigation conjointe des cas humains suspects et des animaux impliqués.',
    '2f695bd4-d12a-48b3-b4a9-8819af21adb9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '46e82000-56f7-400f-aa99-8e91dad5997a',
    'Assurer la disponibilité des outils d’investigation, des moyens de transport, de communication et de collecte des données pour les Equipes de terrain.',
    '2f695bd4-d12a-48b3-b4a9-8819af21adb9'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4eff1afd-3926-48a4-9f0f-d5cebaf5c688',
    'Prévention communautaire et communication des risques',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f2d6fccb-1d8f-4695-bb86-aae3e68d709f',
    'Déployer une stratégie de communication sur la prévention des morsures, le lavage immédiat des plaies, la recherche rapide de soins et l’importance de compléter la prophylaxie post-exposition.',
    '4eff1afd-3926-48a4-9f0f-d5cebaf5c688'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '48a4036f-ddf5-4cfa-8b67-af653ad2928b',
    'Adapter et diffuser des messages dans les langues locales à l’intention des ménages, écoles, communautés rurales et urbaines, et groupes à risque élevé.',
    '4eff1afd-3926-48a4-9f0f-d5cebaf5c688'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c08e9962-982a-4cbd-8ef5-f4634a781624',
    'Impliquer les relais communautaires, enseignants, leaders locaux et médias dans la détection précoce des morsures et la promotion des comportements protecteurs.',
    '4eff1afd-3926-48a4-9f0f-d5cebaf5c688'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'befddffd-f653-4da3-9835-264d3d15930b',
    'Sante animale et vaccination canine',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e0d4cb63-f4ab-4de0-9efe-63a5c76fe7e2',
    'Mettre en place ou renforcer la surveillance de la rage animale, en particulier chez les chiens, et l’investigation des animaux mordeurs.',
    'befddffd-f653-4da3-9835-264d3d15930b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '23f085cf-d99f-473e-b439-da6196d10d22',
    'Définir des procédures pour l’observation, la quarantaine ou la gestion des animaux mordeurs et la communication rapide des résultats aux services de santé humaine.',
    'befddffd-f653-4da3-9835-264d3d15930b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4b1f031c-5ac3-4694-8d7e-3362d0ce81a5',
    'Points d''entrée / voyageurs / approvisionnement',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b1d00fea-5eba-4fa4-8803-5f886557d624',
    'Identifier les points d’entrée prioritaires et les zones de mobilité où l’accès rapide à la prophylaxie post-exposition doit être garanti.',
    '4b1f031c-5ac3-4694-8d7e-3362d0ce81a5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '872c8770-1f62-40b7-9050-98ac56fe94de',
    'Prévoir des mécanismes d’approvisionnement et de redistribution rapides des vaccins antirabiques et immunoglobulines vers les zones exposées, rurales ou enclavées.',
    '4b1f031c-5ac3-4694-8d7e-3362d0ce81a5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '30723eab-84e0-415e-9709-e446e6d4e8de',
    'Informer les voyageurs, travailleurs itinérants et populations mobiles sur les risques de morsure et les conduites à tenir après exposition.',
    '4b1f031c-5ac3-4694-8d7e-3362d0ce81a5'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f8fad657-e502-45d0-9c5d-a7688892a1e2',
    'Budget',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5383b5a5-dbbb-460c-88ad-c1a851666e9b',
    'Définir un budget opérationnel pour la prévention et la riposte à la rage humaine couvrant surveillance, PPE, laboratoire, communication, investigation et vaccination canine.',
    'f8fad657-e502-45d0-9c5d-a7688892a1e2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b98369ef-bfc8-4ca8-9e11-3d329698a602',
    'Prévoir un mécanisme de mobilisation rapide des ressources pour éviter les ruptures de vaccins, d’immunoglobulines et d’intrants essentiels.',
    'f8fad657-e502-45d0-9c5d-a7688892a1e2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'de55ea96-4e50-4708-88eb-9bddb33f4876',
    'Mettre en place des outils de suivi financier et de redevabilité pour les dépenses engagées dans l’approche One Health contre la rage.',
    'f8fad657-e502-45d0-9c5d-a7688892a1e2'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b351eddb-9295-41ab-a4e4-56fe2b822781',
    'Logistique',
    'deebd1bb-8db2-4beb-8331-3b96182a100b'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c485b037-f939-4e6a-a8e0-e6fec1ab0318',
    'Prévoir la logistique nécessaire pour l’approvisionnement, le stockage, la distribution et le suivi des vaccins antirabiques, immunoglobulines, consommables et outils d’investigation.',
    'b351eddb-9295-41ab-a4e4-56fe2b822781'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '49d9101e-d567-4adb-afb7-3682f14caae8',
    'Identifier les entrepôts, capacités de chaîne de froid, moyens de transport, ressources humaines et circuits de distribution mobilisables jusqu’au niveau périphérique.',
    'b351eddb-9295-41ab-a4e4-56fe2b822781'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f557f042-a362-42fc-9fb3-b1d8bd682cc0',
    'Mettre en place un système de gestion des stocks, de réapprovisionnement rapide et de suivi des ruptures pour les intrants antirabiques et les outils de terrain.',
    'b351eddb-9295-41ab-a4e4-56fe2b822781'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6',
    'Etat de préparation à faire face au choléra',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b0fbd55f-5042-42d1-90ed-323763adae13',
    'Check-list cholera : préparation générale',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7af09263-ec92-4c56-97c3-1d97dbe63a1f',
    'Mettre en place un mécanisme de coordination multisectorielle choléra aux niveaux national, provincial et zone de santé, incluant santé, eau-hygiène-assainissement, communication, logistique et autorités locales.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b49a9957-4392-4cb8-b479-ae6e12ee2f0e',
    'Disposer d’un plan de préparation et de riposte au choléra actualisé, budgétisé et adapté au contexte des provinces endémiques et non endémiques de la RDC.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '884fa3c1-97f9-47a3-9f0d-0326ea72554a',
    'Mettre en place un système de surveillance renforcée permettant la détection précoce des cas de diarrhée aqueuse aiguë, des décès communautaires et des foyers de transmission.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dc1b2f8d-3e51-468a-a004-2c798e15c7f0',
    'Assurer la disponibilité et la diffusion des définitions de cas, des outils de notification, des registres et des procédures d’alerte à tous les niveaux du système de santé.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fe1ef4f2-5a98-4c60-a5f4-6ec6de2f4ae9',
    'Former et prépositionner des Equipes d’intervention rapide capables de conduire l’investigation, la réponse communautaire, le quadrillage/CATI, la désinfection ciblée et la sensibilisation.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '40046e3e-aaad-43c2-bb7b-c94136ba3c28',
    'Identifier et rendre fonctionnels des points de réhydratation orale, unités de traitement du choléra et centres de traitement du choléra selon l’ampleur de la flambée.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b4471b4e-a4a7-4585-9777-95d26496b8e4',
    'Prépositionner les intrants essentiels de prise en charge, notamment SRO, fluides IV, antibiotiques selon protocole, consommables, Equipements de triage et matériels de PCI.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ce576f7a-4214-4b9a-b9b1-113d1108838c',
    'Renforcer les capacités de laboratoire pour le prélèvement, le transport, l’analyse et la confirmation des échantillons de choléra conformément aux procédures nationales.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3b5b64d3-2281-4621-bcd1-4506d0658f59',
    'Mettre en place des interventions EAH/WASH ciblées autour des cas et dans les zones à risque, incluant traitement de l’eau, chloration, hygiène, assainissement et gestion sécurisée des excreta.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c6de2fbc-c4dd-4b9a-bf62-f84b5e31c844',
    'Déployer une stratégie de communication des risques et d’engagement communautaire pour promouvoir le recours précoce aux soins, l’utilisation de l’eau sûre, l’hygiène des mains et la notification rapide des cas.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '632f73c7-ab19-4558-8ec8-08d0a80b0be9',
    'Identifier les zones de santé, sites à haut risque, axes de propagation et points d’entrée prioritaires pour orienter la prévention, la surveillance et la riposte rapide.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1fb1211f-95c6-432f-a43e-be401f3095b8',
    'Prévoir la logistique nécessaire pour le transport des Equipes, des échantillons, des patients, des intrants WASH et des médicaments vers les zones affectées ou enclavées.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9244b72b-d015-48bd-8256-7515f58e2dcb',
    'Prévoir un mécanisme de suivi des stocks, de reconstitution rapide et de mobilisation des ressources financières pour éviter les ruptures pendant la flambée.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '800f6ff9-1fbe-4905-b714-4f7af9a3fa12',
    'Évaluer périodiquement la préparation au choléra au moyen de supervisions, exercices de simulation et revues des performances afin de corriger rapidement les insuffisances.',
    'b0fbd55f-5042-42d1-90ed-323763adae13'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '8c9b2f53-b67d-4bca-bb98-4a8b4e6a88bd',
    'Coordination',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f523009c-a4eb-4f9c-9a60-8ede126a121e',
    'Mettre en place un mécanisme de coordination multisectorielle choléra aux niveaux national, provincial et zone de santé, avec des rôles et responsabilités clairement définis.',
    '8c9b2f53-b67d-4bca-bb98-4a8b4e6a88bd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b5e20ca8-baca-40bf-8453-28a162252f2b',
    'Disposer d’un plan de préparation et de riposte choléra actualisé, budgétisé et validé pour les zones à risque et les zones de flambée.',
    '8c9b2f53-b67d-4bca-bb98-4a8b4e6a88bd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '49f246c7-45a3-42b9-8dc2-6101e5965344',
    'Organiser régulièrement des réunions de coordination avec les secteurs santé, EAH/WASH, communication, laboratoire, logistique et autorités administratives.',
    '8c9b2f53-b67d-4bca-bb98-4a8b4e6a88bd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0ae39678-44ff-4c3a-ab42-12312bae4d10',
    'Prévoir un dispositif de coordination opérationnelle pour l’analyse de la situation, la prise de décision et le suivi des actions de riposte.',
    '8c9b2f53-b67d-4bca-bb98-4a8b4e6a88bd'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e3a8f9e6-8da2-4e24-9d2e-13ebe3b643e3',
    'Surveillance épidémiologique',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a6dbd5b1-de2f-4793-b736-76a1f1a4f504',
    'Mettre en place une surveillance renforcée des cas de diarrhée aqueuse aiguë, des décès communautaires et des alertes dans les zones à risque.',
    'e3a8f9e6-8da2-4e24-9d2e-13ebe3b643e3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '48e63764-7b33-49fb-b259-a7d81a04b905',
    'Diffuser les définitions de cas, outils de notification, registres et procédures d’alerte à tous les niveaux du système de santé.',
    'e3a8f9e6-8da2-4e24-9d2e-13ebe3b643e3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f767e40a-2446-4e42-a2ae-c174d63b02e7',
    'Former les prestataires et les Equipes de surveillance à la détection précoce, à l’investigation des cas et à l’analyse des données choléra.',
    'e3a8f9e6-8da2-4e24-9d2e-13ebe3b643e3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '36664dd3-8847-464f-934e-1c0b78c8c07c',
    'Mettre en place un système d’analyse et de diffusion régulière des données épidémiologiques pour orienter la riposte.',
    'e3a8f9e6-8da2-4e24-9d2e-13ebe3b643e3'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '8cb8f8c2-7b70-4caf-a513-033c30f7a158',
    'Equipe d''intervention rapide',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f0cd042e-5884-4136-a3bc-752554f4cd7c',
    'Former et prépositionner des Equipes d’intervention rapide capables de conduire l’investigation, le quadrillage/CATI, la désinfection ciblée et la sensibilisation communautaire.',
    '8cb8f8c2-7b70-4caf-a513-033c30f7a158'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f3168010-bb8f-45e9-ab41-43aab283bbed',
    'Définir des procédures claires pour l’activation, le déploiement et la coordination des Equipes d’intervention rapide en cas d’alerte.',
    '8cb8f8c2-7b70-4caf-a513-033c30f7a158'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '35183dc1-df68-4152-8d7e-cd126e71eb55',
    'Assurer la disponibilité des moyens de transport, de communication, des intrants de terrain et des outils de collecte des données pour les Equipes.',
    '8cb8f8c2-7b70-4caf-a513-033c30f7a158'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f4928cdf-7706-4ff2-ad51-f1925591e5dc',
    'Prise en charge des cas',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cb329bfb-b668-4720-a298-cbaf1ed76489',
    'Identifier et rendre fonctionnels des points de réhydratation orale, UTC et CTC selon le niveau de risque et l’ampleur de la flambée.',
    'f4928cdf-7706-4ff2-ad51-f1925591e5dc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '259dc726-ecdc-4be1-b0a8-8e8b7dd0b7b8',
    'Prépositionner les intrants essentiels de prise en charge, notamment SRO, fluides IV, antibiotiques selon protocole, consommables et matériels de triage.',
    'f4928cdf-7706-4ff2-ad51-f1925591e5dc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '727e1a53-999e-40e8-9349-61ab2745b0d8',
    'Former le personnel soignant au triage, à l’évaluation de la déshydratation, à la prise en charge standardisée et à la prévention des décès liés au choléra.',
    'f4928cdf-7706-4ff2-ad51-f1925591e5dc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9931d4ab-9aa8-4d14-a98c-f6adf9e8f9cb',
    'Prévoir des circuits de référence et contre-référence pour les cas graves et les zones éloignées.',
    'f4928cdf-7706-4ff2-ad51-f1925591e5dc'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6c7148c0-0e7d-46d1-a8a8-779292e48d33',
    'Laboratoire',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'add75b80-ada8-4b09-9774-73d4bffd078d',
    'Renforcer les capacités de laboratoire pour le prélèvement, le transport, l’analyse et la confirmation des échantillons de choléra conformément aux procédures nationales.',
    '6c7148c0-0e7d-46d1-a8a8-779292e48d33'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5e2a457b-05d3-41de-9756-aa752acd57b4',
    'Assurer la disponibilité des milieux, consommables, écouvillons, boîtes de transport et Equipements de protection nécessaires.',
    '6c7148c0-0e7d-46d1-a8a8-779292e48d33'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0edf1aa3-f20e-4131-b065-f742851e39b4',
    'Mettre en place des procédures fiables pour l’acheminement rapide des prélèvements et la transmission des résultats aux Equipes de surveillance et de riposte.',
    '6c7148c0-0e7d-46d1-a8a8-779292e48d33'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c4a8e704-3a7c-4898-a74b-0ae8488356cf',
    'EAH / WASH',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b71c3907-beea-433d-8ec4-eb24e3da413d',
    'Mettre en place des interventions EAH/WASH ciblées autour des cas, des ménages affectés et des sites à haut risque.',
    'c4a8e704-3a7c-4898-a74b-0ae8488356cf'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6e13cdb6-8089-4bd3-a6f5-336b10c16ca9',
    'Assurer la disponibilité du chlore, des dispositifs de traitement de l’eau, des kits d’hygiène, du matériel de désinfection et des intrants d’assainissement.',
    'c4a8e704-3a7c-4898-a74b-0ae8488356cf'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6eb686aa-ce17-4485-af19-13437747c51b',
    'Organiser la chloration des points d’eau, la gestion sécurisée des excreta et la promotion des bonnes pratiques d’hygiène dans les zones exposées.',
    'c4a8e704-3a7c-4898-a74b-0ae8488356cf'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '26496efe-e877-4d89-8cb0-09eba89b6600',
    'Identifier les sites communautaires prioritaires nécessitant des actions préventives : marchés, écoles, ports, sites de pêche, camps et zones de rassemblement.',
    'c4a8e704-3a7c-4898-a74b-0ae8488356cf'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a68b0e6e-2d58-4f68-84cd-40fa80c0ae99',
    'Communication et Engagement communautaire',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a25705a9-4688-4225-9689-a382f257ee4f',
    'Déployer une stratégie de communication des risques et d’engagement communautaire pour promouvoir le recours précoce aux soins et les mesures de prévention.',
    'a68b0e6e-2d58-4f68-84cd-40fa80c0ae99'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '967b2719-b3ed-4968-a654-e07888b0b617',
    'Adapter, traduire et diffuser des messages sur l’eau sûre, l’hygiène des mains, l’assainissement, les signes d’alerte et la conduite à tenir en cas de diarrhée aqueuse aiguë.',
    'a68b0e6e-2d58-4f68-84cd-40fa80c0ae99'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b9e2afeb-1d49-4717-a628-a1a90d527e67',
    'Impliquer les relais communautaires, leaders locaux, médias et structures communautaires dans la prévention, l’alerte et la réponse au choléra.',
    'a68b0e6e-2d58-4f68-84cd-40fa80c0ae99'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '2c92ed34-40cf-43ef-ab85-aa91562aa129',
    'Points d''entrée et zones à risque',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '62f77b9e-edc7-4a8b-9d06-ec482b874e1f',
    'Identifier les zones de santé, sites à haut risque, axes de propagation, sites de pêche, marchés, ports et points d’entrée prioritaires pour orienter la préparation.',
    '2c92ed34-40cf-43ef-ab85-aa91562aa129'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bea54607-77cd-4926-b99e-5855dac46b64',
    'Mettre en place des mesures de prévention, de surveillance et de sensibilisation dans les points d’entrée et sites de forte mobilité de population.',
    '2c92ed34-40cf-43ef-ab85-aa91562aa129'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fcacd190-7158-430d-9cef-0e71ff3114b1',
    'Prévoir des mécanismes d’alerte et de coordination transfrontalière ou interprovinciale dans les zones de circulation active du choléra.',
    '2c92ed34-40cf-43ef-ab85-aa91562aa129'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3cfa02f7-1ea4-4e51-89ab-5da0749798ce',
    'Budget',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5719ba59-e7c8-4d71-ab1f-643b24cb4c71',
    'Définir un budget opérationnel pour la préparation et la riposte choléra incluant surveillance, prise en charge, EAH/WASH, logistique et communication.',
    '3cfa02f7-1ea4-4e51-89ab-5da0749798ce'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd8b8c998-b98c-469d-b114-8a158e08bca5',
    'Prévoir un mécanisme de mobilisation rapide des ressources financières pour déclencher la réponse sans délai.',
    '3cfa02f7-1ea4-4e51-89ab-5da0749798ce'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2cc805f5-84a9-4119-bbae-c43e66e936e0',
    'Mettre en place des outils de suivi budgétaire et de redevabilité pour les dépenses liées à la préparation et à la riposte.',
    '3cfa02f7-1ea4-4e51-89ab-5da0749798ce'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5cad61d5-86e2-40dd-a14f-88e49736f873',
    'Logistique',
    '5fc19742-fa49-4e78-a0b0-a23a9b3724f6'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '155d4372-f894-4dd5-81d0-366720b544f5',
    'Prévoir la logistique nécessaire pour le transport des Equipes, des patients, des échantillons, des intrants WASH et des médicaments vers les zones affectées ou enclavées.',
    '5cad61d5-86e2-40dd-a14f-88e49736f873'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'de2ed61f-9e47-4b63-992a-32be5baf3b2e',
    'Mettre en place un mécanisme de gestion des stocks, de réapprovisionnement rapide et de distribution des intrants essentiels.',
    '5cad61d5-86e2-40dd-a14f-88e49736f873'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f2a7f9bd-6346-414a-badd-dabf69d104cd',
    'Identifier les entrepôts, fournisseurs, moyens de transport et capacités logistiques disponibles au niveau national, provincial et local.',
    '5cad61d5-86e2-40dd-a14f-88e49736f873'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e339c0f5-3142-4004-8af3-fbfbe56b9c93',
    'Assurer la disponibilité des Equipements, du carburant, des moyens de communication et des ressources humaines nécessaires aux opérations logistiques.',
    '5cad61d5-86e2-40dd-a14f-88e49736f873'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86',
    'Etat de préparation à faire face à maladie à virus du Mpox en RDC',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4',
    'Coordination d’urgence, gouvernance et gestion de l’incident',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '32f949c7-285d-4be7-8871-4f2dabf66b1b',
    'Mettre en place ou activer un mécanisme national et infranational de coordination Mpox sous incident management system, avec des termes de référence, des rôles clairement définis, des réunions régulières, un circuit de prise de décision rapide, un tableau de bord opérationnel et des liens fonctionnels entre le COUSP, l’INSP, les DPS, les zones de santé, les partenaires, les secteurs animal/environnement et les autorités administratives.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6196027a-b92d-4ba5-8328-c8b79ddc722b',
    'Organiser des exercices de simulation ou revues intra-action testant la détection d’un cas suspect de Mpox, l’alerte, l’investigation, le prélèvement, le transfert des échantillons, l’isolement, la recherche des contacts, la communication communautaire et la coordination transfrontalière.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9cbaa24e-6656-417e-85ae-ce629778276f',
    'Veiller à ce qu’un plan de préparation et de réponse Mpox actualisé, budgétisé et aligné sur les niveaux national, provincial et zone de santé soit disponible, incluant les scénarios d’extension, les zones prioritaires, les responsabilités, les ressources critiques et les modalités de mobilisation rapide des partenaires.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7b062aab-e92a-4e41-81f3-4855e0b31ac1',
    'Examiner les politiques et la législation en vigueur afin de s’assurer qu’elles autoriseront les mesures de préparation proposées.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8e56a9d3-3942-4b72-a475-826bf2b13886',
    'Identifier les membres du comité ou groupe de travail Mpox aux niveaux national, provincial et zone de santé, incluant surveillance, laboratoire, prise en charge, PCI/WASH, CREC, vaccination, logistique, PoE, One Health, sécurité et suivi-évaluation, et leur notifier leurs fonctions.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '522c886a-f66b-484d-bf52-32819f75f3e8',
    'Identifier, former et désigner des responsables des incidents/responsables opérationnels habilités à prendre les décisions opérationnelles.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99b7a570-8f6a-4446-9ec6-a007034e31a8',
    'Mettre en place du personnel COUSP/IMS au niveau infranational ou dans les zones de santé pour assurer une coordination et une gestion localisées',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e2e57b3a-18ba-4999-a414-9f6ab7825fd8',
    'Mettre en place un comité ou groupe technique Mpox multisectoriel et opérationnel aux niveaux national, provincial et zone de santé, aligné sur le SGI/COUSP et incluant les piliers surveillance, laboratoire, prise en charge, PCI/WASH, CREC, vaccination, logistique, PoE, One Health, planification, finances et redevabilité.',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7151695a-5d0b-47a9-a0e6-33689cd0dea6',
    'Trouver un site physique pour le centre des opérations sanitaires d’urgence (COUSP).',
    '398dc35a-cc5f-4010-97a9-7384b1fdfdc4'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '009f95e0-008f-4b11-b213-8e8e650d63b4',
    'Équipes d’intervention rapide et investigation des alertes Mpox',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4554d27d-7b51-42f0-af43-61d3666adeea',
    'Désigner et équiper des équipes d’intervention rapide multidisciplinaires Mpox capables d’être déployées dans les 24 heures, incluant au minimum épidémiologiste, clinicien, laboratoire/prélèvement, PCI/WASH, CREC, logistique, données et, si nécessaire, santé animale/environnement.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6c10e771-9c84-4f14-b5a8-abec16bc6f0f',
    'Définir les critères d’activation de l’EIR pour les alertes Mpox, les responsabilités de notification, le circuit de validation de l’alerte, la coordination avec le laboratoire et la transmission rapide des rapports d’investigation.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '740c6131-2cf5-4f7e-907b-1562b0c84019',
    'Former les EIR à la définition de cas Mpox, l’investigation épidémiologique, le prélèvement de lésions cutanées, l’emballage et le transport des échantillons, l’identification des contacts, l’orientation des cas, la PCI, la gestion des rumeurs et la mobilisation communautaire sans stigmatisation.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4d68f08b-00d0-466c-850b-f5d358c169dd',
    'Former l’EIR infranationale à la surveillance et à la recherche des contacts.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '14457300-cf66-4264-a563-08b78ce0dc06',
    'Recenser les établissements de santé, unités de triage, sites d’isolement et structures de référence prêts à détecter, isoler temporairement, prélever, notifier et orienter en sécurité les cas suspects de Mpox.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '62253913-2e4a-409b-9606-1189ee851bea',
    'Organiser au moins un exercice de simulation ou une revue intra-action Mpox pour tester la détection, l’alerte, l’investigation, le prélèvement, l’orientation des cas, la recherche des contacts, la CREC, la PCI/WASH et la coordination transfrontalière.',
    '009f95e0-008f-4b11-b213-8e8e650d63b4'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '252a6dd3-d819-4a02-b9fc-288416ea8bb8',
    'Communication sur les risques, engagement communautaire et protection communautaire',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f58b6473-c8d9-4c41-abd4-34061944b089',
    'Élaborer ou actualiser une stratégie CREC Mpox budgétisée, fondée sur les données sociales, les perceptions du risque, les rumeurs, les barrières d’accès aux soins, les dynamiques de transmission et les besoins des populations vulnérables, notamment enfants, femmes enceintes, personnes vivant avec le VIH, personnes déplacées, contacts des cas et travailleurs de santé.',
    '252a6dd3-d819-4a02-b9fc-288416ea8bb8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a70cfe03-6d04-40ca-b66b-6c10f978487b',
    'Mettre en place un mécanisme opérationnel de dialogue communautaire incluant leaders communautaires, relais communautaires, organisations de femmes et de jeunes, OSC, écoles, structures confessionnelles, médias, associations de personnes affectées et acteurs intervenant dans les camps de déplacés ou autres milieux de rassemblement.',
    '252a6dd3-d819-4a02-b9fc-288416ea8bb8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6475d145-2311-430c-9fa2-84d519f5e708',
    'Développer des messages adaptés sur les signes et symptômes du Mpox, les modes de transmission, la recherche précoce de soins, l’isolement à domicile lorsque recommandé, la réduction des contacts rapprochés, la protection des ménages, la lutte contre la stigmatisation et les mesures de prévention en contexte communautaire.',
    '252a6dd3-d819-4a02-b9fc-288416ea8bb8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '255c3f88-2d7e-472b-b530-d49d986f35c9',
    'Mettre au point ou adapter, revoir, traduire dans les langues locales et diffuser des messages ciblés à l’intention des médias, du personnel soignant, des dirigeants locaux et chefs traditionnels, des églises, des écoles, des tradipraticiens et d’autres parties prenantes dans la communauté',
    '252a6dd3-d819-4a02-b9fc-288416ea8bb8'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '7c06684b-6ba1-4862-a838-2fb1c70b7e30',
    'Prévention et contrôle de l’infection, WASH et sécurité des soins',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f572a3af-8eb7-4586-b5e6-896e875dee1a',
    'Disponibiliser et appliquer des lignes directrices et MON Mpox sur le triage, l’isolement, l’utilisation rationnelle des EPI, l’hygiène des mains, la désinfection des surfaces, la gestion du linge, la gestion des déchets infectieux, la protection du personnel et la prévention de la transmission dans les formations sanitaires.',
    '7c06684b-6ba1-4862-a838-2fb1c70b7e30'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '521a6cb8-6ffa-430e-82d3-14bd8d82d2ae',
    'Assurer dans les structures prioritaires et les sites communautaires à risque la disponibilité d’eau sûre, de stations d’hygiène des mains, de produits de nettoyage et désinfection, d’EPI adaptés, de dispositifs de gestion des déchets et d’électricité, avec un plan de réapprovisionnement régulier.',
    '7c06684b-6ba1-4862-a838-2fb1c70b7e30'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'da77c193-0418-45b3-bbb3-720068905008',
    'Equiper et former convenablement le personnel soignant, y compris le personnel chargé de la santé environnementale, les hygiénistes et le personnel de nettoyage, en leur présentant les mesures d’IPC et procédures de gestion des déchets supplémentaires, priorité étant donnée à ceux qui entrent les premiers en contact avec les malades',
    '7c06684b-6ba1-4862-a838-2fb1c70b7e30'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a93273e6-c4d1-434d-b5b3-5d1e826f3a11',
    'Identifier et équiper des structures de soins afin de mettre en place des zones de triage, d’isolement temporaire et de prise en charge Mpox, y compris aux points d’entrée désignés, avec EPI, hygiène des mains, désinfection, gestion du linge et circuit de référence.',
    '7c06684b-6ba1-4862-a838-2fb1c70b7e30'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'd044f645-085d-4d6e-be2f-5164ba94ae15',
    'Prise en charge sûre et évolutive des cas Mpox',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8abfa4a4-a28d-4680-8739-b134e3634f45',
    'Désigner des structures de prise en charge Mpox disposant de zones de triage, d’isolement, de soins de soutien, de protocoles cliniques adaptés à l’âge et au genre, d’un circuit de référence, de capacités PCI/WASH et de mécanismes de protection des patients et du personnel.',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6a0d28dd-191a-4a4d-a104-065eb785eab0',
    'Recenser et faire appliquer tous les modes opératoires normalisés (MON) relatifs à la logistique (achats, mobilisation des stocks, transport des échantillons, utilisation des télécommunications, assistance et maintenance des structures, mobilisation des ressources pour le transport et gestion de la sécurité).',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '05b74457-3dc3-4f4b-9fea-4a77a4d9dfb1',
    'Recenser et former le personnel clinique à la prise en charge du Mpox, y compris l’évaluation de la gravité, la prise en charge des douleurs et complications, le dépistage VIH lorsque pertinent, la prise en charge pédiatrique et maternelle, l’appui psychosocial, la collecte standardisée des données cliniques et la notification des décès.',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '782e88df-aa76-424c-8368-a1521f7c28eb',
    'Équiper et former les équipes d’ambulanciers et de transport sanitaire sécurisé pour le transfert des cas suspects, probables ou confirmés de Mpox, en appliquant les précautions standard, contact et gouttelettes selon le risque.',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '198ecbe1-f08e-428e-a714-32103d91e203',
    'Recenser les établissements de soins au niveau provincial et zone de santé pouvant être rapidement organisés en unités de prise en charge Mpox ou CTMpox selon la catégorisation des cas et les besoins de réfréence.',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6cb905cb-71fa-44cf-a4a9-01650b8d1506',
    'Recenser les structures locales pouvant être adaptées rapidement en unités de triage, d’isolement temporaire, de soins de soutien ou de référence Mpox, y compris pour les enfants, femmes enceintes et personnes immunodéprimées.',
    'd044f645-085d-4d6e-be2f-5164ba94ae15'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '9621c38d-b607-491f-8610-478dd2030fbb',
    'Gestion sécurisée et digne des décès liés au Mpox',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '919f2761-bac6-4524-9de4-0d18971c84f3',
    'Mettre au point des MON pour la gestion sécurisée et digne des décès liés au Mpox, incluant l’information de la famille, l’utilisation appropriée des EPI, la limitation des contacts directs avec les lésions, fluides ou matériels contaminés, la désinfection et le respect des pratiques culturelles compatibles avec la sécurité.',
    '9621c38d-b607-491f-8610-478dd2030fbb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '486577ae-445e-4909-a84b-8beb3b219568',
    'Former une équipe de gestion des décès Mpox comprenant personnel clinique ou hygiéniste, agent de désinfection, relais communautaire ou communicateur, superviseur et transporteur, avec des rôles clairement définis.',
    '9621c38d-b607-491f-8610-478dd2030fbb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd77f09f9-6b4e-4599-973b-9db288a78306',
    'S’assurer de l’existence d’une procédure de transport sécurisé du corps lorsque nécessaire, avec emballage approprié, désinfection, traçabilité, respect de la dignité de la personne décédée et communication préalable avec la famille.',
    '9621c38d-b607-491f-8610-478dd2030fbb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '289009d1-6505-428f-bdbb-289fe3d642ce',
    'S’assurer que toute manipulation du corps est réalisée avec les précautions standard et contact, sans exposition directe aux lésions ou fluides, avec disponibilité des EPI, solution de désinfection, sacs ou draps appropriés et gestion sécurisée des déchets.',
    '9621c38d-b607-491f-8610-478dd2030fbb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '20f1a856-810e-402a-9591-9842c3dc420d',
    'Identifier avec la famille et les autorités locales les modalités de funérailles sûres, dignes et culturellement acceptables, en évitant toute stigmatisation et en maintenant l’accès à l’information et au soutien psychosocial.',
    '9621c38d-b607-491f-8610-478dd2030fbb'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d',
    'Surveillance épidémiologique, alerte précoce et analyse des données',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd90060d6-36b1-4cf9-9633-7b5e733377e1',
    'Assurer un système d’alerte Mpox disponible 24h/24 et 7j/7, intégré à la surveillance IDSR/SIMS, capable de recevoir, vérifier, notifier et suivre les alertes communautaires, sanitaires, transfrontalières et médiatiques, avec des délais de notification clairement définis.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '283cd149-9067-48c1-a2b2-b80b2d1265fa',
    'Diffuser à tous les niveaux les définitions de cas Mpox, les formulaires d’investigation, les outils de liste linéaire, les fiches de notification, les procédures de recherche active des cas et les directives de collecte des données désagrégées par âge, sexe, lieu, statut de vulnérabilité et lien épidémiologique.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cc79a649-cb6a-4143-a1c2-e21363eac3ee',
    'Former les acteurs de surveillance à l’utilisation des définitions de cas Mpox, des formulaires d’investigation, des listes linéaires, des outils de notification, de recherche active et de suivi des contacts, avec intégration des données dans le système national.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5fec519b-1ab8-46ea-982d-7ca20cea3369',
    'Mettre en place une surveillance fondée sur les événements et une surveillance communautaire fonctionnelles pour détecter rapidement les rumeurs, regroupements de cas, lésions cutanées évocatrices, décès inhabituels, cas dans les ménages, écoles, prisons, camps de déplacés, zones minières, marchés et autres milieux à risque.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '37906678-50a9-4610-83db-7631403c23fb',
    'Mettre en place des lignes de notification immédiate pour les cas suspects, probables ou confirmés de Mpox, y compris les décès suspects, avec responsabilités clairement définies pour la vérification, l’investigation, le prélèvement et la remontée des données.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '16069d48-da92-4c3a-aa19-34da75a903a9',
    'Tester les systèmes de surveillance Mpox existants, y compris la surveillance communautaire, événementielle, sanitaire, transfrontalière et numérique, recenser les lacunes et mettre en œuvre des actions correctives selon l’approche 7-1-7.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7e5ef631-6548-4629-836b-ddc8b4cb7e70',
    'Identifier les ressources humaines pour la surveillance communautaire (agents de santé communautaires, bénévoles, ONG, tradipraticiens, chefs communautaires, etc.).',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd7f05a6d-ce5c-45a1-b4b0-1746c37a25c6',
    'Diffuser des définitions de cas simplifiées à l’usage des communautés.',
    'fe4fba73-ebb3-41a7-9bf9-15ae1d3dbf5d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5d9ea959-c142-45d0-804e-7e430a975dfa',
    'Recherche des contacts, suivi et rupture des chaînes de transmission',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c20f9e8b-6999-413d-b546-e8abf5b6e3e9',
    'Diffuser et appliquer les lignes directrices Mpox sur l’identification, l’enregistrement, la classification, le suivi quotidien et la libération des contacts, incluant contacts familiaux, sexuels, communautaires, de soins, scolaires, professionnels et contacts exposés aux animaux ou produits animaux.',
    '5d9ea959-c142-45d0-804e-7e430a975dfa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '80669f6c-a52d-47ad-af06-6af582444461',
    'Former des équipes de recherche des contacts à la conduite d’entretiens confidentiels et non stigmatisants, au suivi sécurisé des contacts, à la référence rapide des contacts symptomatiques, à la gestion des données, à la protection de la confidentialité et à l’orientation vers la vaccination post-exposition lorsque disponible et recommandée.',
    '5d9ea959-c142-45d0-804e-7e430a975dfa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd7dc0b65-5aad-4b52-91b1-550333c268ce',
    'Mettre en place ou renforcer un système de gestion des données pour la recherche des contacts Mpox aux niveaux national, provincial et zone de santé, garantissant la confidentialité, l’analyse rapide et l’orientation des contacts symptomatiques vers les soins et le prélèvement.',
    '5d9ea959-c142-45d0-804e-7e430a975dfa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '20d8053e-2f49-46f2-b866-79a341a93d44',
    'Former le personnel de district à la recherche des contacts.',
    '5d9ea959-c142-45d0-804e-7e430a975dfa'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a8b9cfb4-e808-48a9-af70-1357411065dd',
    'Former le personnel des sous-districts et le personnel communautaire à la recherche des contacts et trouver pour chaque zone un vivier local de chercheurs de contacts.',
    '5d9ea959-c142-45d0-804e-7e430a975dfa'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1905d65b-7067-492b-9e9e-bff11b13810d',
    'Laboratoire, diagnostic et surveillance génomique',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '00aff141-4121-4eb4-ba4a-724b4c7d13b4',
    'Identifier les laboratoires nationaux et provinciaux capables de réaliser ou référer le diagnostic Mpox par PCR, avec procédures connues de prélèvement sur lésions, biosécurité, conservation, transport, réception des échantillons, rendu rapide des résultats et intégration des résultats dans le système national de surveillance.',
    '1905d65b-7067-492b-9e9e-bff11b13810d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3eca0060-8bd9-4631-bd9a-109c909bffda',
    'Disponibiliser les protocoles de collecte des échantillons Mpox, les écouvillons adaptés, milieux de transport lorsque requis, triple emballage, fiches de demande d’analyse, procédures de transport sécurisé et mécanismes de reconstitution des stocks dans les zones prioritaires.',
    '1905d65b-7067-492b-9e9e-bff11b13810d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '923f5757-0dd0-4506-b5b2-6ae92e8efb71',
    'Veiller à ce que le personnel de laboratoire soit formé aux procédures de sécurité et à l’IPC en ce qui concerne la collecte des échantillons, l’emballage, l’étiquetage, le transfert et l’expédition, y compris à la certification pour la manipulation des matières infectieuses.',
    '1905d65b-7067-492b-9e9e-bff11b13810d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '13ecb5c4-24fe-415a-938f-a61b46c34927',
    'Mettre en place des arrangements prévisionnels et veiller à ce que des accords soient en place avec les centres collaborateurs de l’OMS, pour les tests de confirmation, et avec les compagnies aériennes concernées, pour l’expédition internationale des échantillons.',
    '1905d65b-7067-492b-9e9e-bff11b13810d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ce07347d-342f-4ee2-9e5b-9b402763deef',
    'Voyage, points d’entrée et collaboration transfrontalière',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a39005d6-dc95-4c32-b596-a3db4fdb23cb',
    'S’assurer que chaque point d’entrée prioritaire dispose d’un plan de contingence Mpox fondé sur le risque, incluant surveillance des voyageurs malades, notification des cas suspects, orientation sûre vers une structure désignée, PCI, communication aux voyageurs et coordination avec les autorités frontalières, sans recours à des restrictions générales injustifiées de voyage ou de commerce.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '777b815f-ad8e-45b8-8cb9-2bce86b7aca5',
    'Identifier pour chaque PoE les structures de référence, les circuits de transfert, les équipes formées, les ambulances ou moyens de transport adaptés, les modalités de prélèvement ou de référence des échantillons, et les contacts opérationnels avec les zones de santé et provinces frontalières.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd3a28686-f622-4fdb-9cfb-2f6c80a48332',
    'Désigner des équipes qualifiées, proportionnelles au volume et à la fréquence des voyageurs, chargées de détecter, évaluer, notifier et orienter correctement les voyageurs présentant des signes compatibles avec le Mpox, selon les procédures de PCI et de référence adaptées.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99741346-e743-4439-af2d-87c9fd9b1147',
    'Élaborer un MON de surveillance sanitaire fondée sur le risque aux points d’entrée, incluant information des voyageurs, notification des voyageurs malades, orientation sûre des cas suspects, coordination transfrontalière et absence de restrictions générales injustifiées de voyage ou de commerce.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e01d5647-394a-41a4-8bbc-21948276adfd',
    'Veiller à ce que chaque point d’entrée ait immédiatement accès au matériel et aux fournitures (EPI, thermomètres infrarouge, produits de désinfection et de nettoyage, structures d’observation/d’isolement et ambulance, selon la localisation).',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '47fe931d-d055-414d-b57d-de1560173bc5',
    'Examiner et tester les systèmes de communication actuels entre les autorités sanitaires au point d’entrée et les opérateurs de transport, et entre ces autorités et les systèmes de surveillance sanitaire nationaux.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '298f835b-ed9c-4171-b74f-87b584b49355',
    'Sensibiliser les autorités de santé publique, services frontaliers, opérateurs de transport et parties prenantes des points d’entrée au Mpox, à leurs rôles respectifs, aux procédures de notification des voyageurs malades, à la communication sans stigmatisation et à l’orientation vers les structures désignées.',
    'ce07347d-342f-4ee2-9e5b-9b402763deef'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '26694100-e8b6-4be9-95a1-64bc561d7087',
    'Budget, financement et mobilisation des ressources',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '002851ed-f799-4e60-b36b-0b61c0b3df85',
    'Définir un budget opérationnel pour les activités (communication, surveillance renforcée, investigation, etc.), le dépistage pré-épidémique et les premières étapes de la riposte.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '182279c7-d433-4825-a18a-20b6436e4e28',
    'Mettre en place, ou rendre facilement accessible, un fonds de réserve pour la riposte immédiate à la flambée au niveau national et en d’autres sites appropriés.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99a038e3-869f-4d3e-bd91-737adb1687db',
    'Déterminer le cadre juridique permettant de dépenser les fonds d’urgence et de les transférer du niveau central vers tous les sites identifiés en vue de leur usage en situation d’urgence.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f12b776e-c291-41be-b89e-5aae8fa5afec',
    'Faire bénéficier tous les travailleurs à risque d’un régime de rémunération et d’avantages recouvrant le traitement et des mesures incitatives pour les missions à haut risque ainsi que des indemnités en cas d’infection ou de décès.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bb6cafec-c8bc-4a1c-a7d1-763f7303ce87',
    'Trouver des sources de financement, y compris l’allocation de ressources nationales et des mécanismes pour mobiliser des ressources supplémentaires si nécessaire, et s’assurer que les mécanismes d’accès aux sources de financement sont connus.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'abfe4d93-27ae-49c5-9960-8a3c81fbc275',
    'Élaborer des modèles pour la mobilisation des ressources et pour les rapports aux pays et aux donateurs, notamment des mécanismes pour suivre l’emploi des fonds.',
    '26694100-e8b6-4be9-95a1-64bc561d7087'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'd828ebe9-5630-4646-a5b8-af7923ac6cf2',
    'Vaccination et accès équitable aux contre-mesures médicales',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f56a33bf-ef49-4b93-bf6a-a59bcb4e44ec',
    'Préparer une stratégie de vaccination Mpox ciblée sur les contacts des cas récents, les travailleurs de santé et de première ligne et les autres groupes à haut risque définis par l’analyse épidémiologique locale.',
    'd828ebe9-5630-4646-a5b8-af7923ac6cf2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '64a501a8-c381-4733-8aeb-53576c8f1c2b',
    'Vérifier l’existence d’un microplan de vaccination, d’un mécanisme d’identification des cibles, de consentement et d’enregistrement, d’une chaîne du froid adaptée, d’un suivi des événements indésirables et d’une communication communautaire transparente.',
    'd828ebe9-5630-4646-a5b8-af7923ac6cf2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '93b88754-9c7a-4789-b1db-9c5e90c6d511',
    'Assurer l’accès équitable aux diagnostics, EPI, médicaments essentiels, soins de soutien, vaccins lorsqu’ils sont disponibles, et autres produits de santé prioritaires, avec un suivi des stocks et des ruptures.',
    'd828ebe9-5630-4646-a5b8-af7923ac6cf2'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0eace8fb-edc4-45c1-a068-30a4e6a25648',
    'Santé mentale, soutien psychosocial, nutrition et protection',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '87896e1e-7801-4b37-9b00-cb5f23dffe16',
    'Prévoir un paquet SMSPS Mpox pour les cas, contacts, familles, accompagnants, travailleurs de santé, EIR et communautés affectées, incluant counseling, psychoéducation, soutien aux personnes stigmatisées et référence spécialisée si nécessaire.',
    '0eace8fb-edc4-45c1-a068-30a4e6a25648'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f00c2cae-ef0b-43f2-8d9a-34d893f581bb',
    'Intégrer l’évaluation nutritionnelle, le soutien alimentaire et nutritionnel des cas confirmés, notamment enfants, femmes enceintes, personnes malnutries ou immunodéprimées, avec outils de suivi et circuit de référence nutritionnelle.',
    '0eace8fb-edc4-45c1-a068-30a4e6a25648'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6f371247-cde6-4905-aece-9d51d2b5d394',
    'Prévoir des mesures de protection, dignité, confidentialité, prévention de l’exploitation, abus et harcèlement sexuels, ainsi que des mécanismes de plainte et feedback accessibles aux communautés.',
    '0eace8fb-edc4-45c1-a068-30a4e6a25648'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4bea76c6-06a5-4407-9a1b-c9e88f44a4c3',
    'Collaboration One Health et interface humain-animal-environnement',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '43f5a121-5f31-4941-93b1-703f1526d224',
    'Mettre en place un mécanisme One Health associant santé humaine, santé animale, environnement, faune sauvage, agriculture et autorités locales pour analyser les risques de transmission zoonotique et orienter les interventions.',
    '4bea76c6-06a5-4407-9a1b-c9e88f44a4c3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4fdd49e8-1115-433f-9200-b5352b2fcde4',
    'Identifier les zones à forte interaction humain-animal, notamment chasse, manipulation de viande de brousse, marchés, élevage, forêts et zones d’endémie, et y intégrer des activités de surveillance, sensibilisation et réduction des risques.',
    '4bea76c6-06a5-4407-9a1b-c9e88f44a4c3'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '81a0acd8-b16f-41de-9406-012d11705937',
    'Développer des messages communautaires sur les pratiques sûres autour des animaux, la manipulation des carcasses, la cuisson complète des viandes, l’évitement des contacts avec animaux malades ou morts et le signalement des événements inhabituels.',
    '4bea76c6-06a5-4407-9a1b-c9e88f44a4c3'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4e9660da-8069-48bb-9a22-da843a8af8ef',
    'Recherche, planification, analyse intégrée et suivi-évaluation',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b150ba02-228d-4e1f-a3f2-9773cd0c5dc1',
    'Mettre en place une cellule d’analyse intégrée des données Mpox pour trianguler les données de surveillance, laboratoire, clinique, CREC, vaccination, PoE, One Health et logistique afin d’orienter les décisions opérationnelles.',
    '4e9660da-8069-48bb-9a22-da843a8af8ef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2032b54e-b461-43e6-b831-543086c23d72',
    'Définir un agenda de recherche opérationnelle Mpox : dynamiques de transmission, facteurs de risque, gravité, co-infections VIH/IST, efficacité des interventions, acceptabilité vaccinale, interface humain-animal et performance diagnostique.',
    '4e9660da-8069-48bb-9a22-da843a8af8ef'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '753bbd22-27ab-41de-83d5-0cff5c106f5b',
    'Suivre des indicateurs clés : délai symptôme-détection, délai alerte-investigation, délai prélèvement-résultat, proportion de cas suspects testés, proportion de contacts listés et suivis, disponibilité PCI/WASH, couverture vaccinale des cibles, fonctionnalité des PoE et complétude des rapports.',
    '4e9660da-8069-48bb-9a22-da843a8af8ef'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '18bf502a-9089-4e61-a7cb-4870df0bb35b',
    'Logistique, approvisionnement et soutien opérationnel',
    '25eb9aec-31bc-4bad-ac44-dc593ed60e86'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '70fd922f-fab1-49fc-b2de-c917bdcefa84',
    'Mettre en oeuvre la composante logistique au niveau de la coordination nationale et infranationale de l’IMS, en vue de définir et de mettre en place tous les moyens demandés en se conformant au calendrier et aux normes de qualité stipulés.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ec9d4b7f-ea86-46bf-bba0-4e7aa29e7f78',
    'Évaluer les capacités de stockage et le système de gestion des stocks en place, déterminer les stocks nécessaires pour toutes les composantes, et mettre en place si nécessaire un système de gestion des stocks efficient au niveau national et dans les districts.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3c57dd53-51c6-4aa0-b3af-1ca1df41848a',
    'Identifier tous les moyens de transport nécessaires pour les biens, les échantillons, les équipes et les patients, et veiller à ce qu’au moins un moyen de transport sanitaire soit disponible, préparé et désinfectable pour le transfert sécurisé des cas suspects, probables ou confirmés de Mpox.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '408d3fd1-e08e-4b01-8907-cc3a3582a700',
    'Évaluer si le mécanisme existant de transport d’échantillons est fiable et opérationnel et, sinon, déterminer et mettre en place un système adapté et fiable dans ce domaine, aux niveaux national et international, depuis le point de départ jusqu’au laboratoire de référence, y compris les ressources financières nécessaires pour ces activités.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f00766b4-fea2-4ed9-ae46-c408a83cf7b7',
    'Recenser les structures d’isolement potentielles et les évaluer au regard des aspects suivants : lutte anti-infectieuse et possibilités d’isolement adéquates, gestion des déchets, eau et électricité.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fa8de77f-a7fd-44bd-88ac-61d31126e7b0',
    'Identifier et former les ressources humaines nécessaires pour que toutes les activités puissent être mises en oeuvre (logistique, conducteurs, Equipes d’inhumation, sécurité, administration, achats, magasiniers, etc.).',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f672919a-ed1b-4e17-b11b-39dae62d3a10',
    'Recenser toutes les ressources disponibles, y compris les sites potentiellement utiles pour la riposte à Ebola du fait de possibilités d’entreposage ou d’autres usages logistiques.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '52b1bac7-b5cb-4be0-b688-88b908b32bb8',
    'Recenser les fournisseurs d’articles essentiels standard pour l’intervention d’urgence, au niveau local/international. Évaluer leurs capacités/délais de livraison. Étudier les possibilités d’accords préalables.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2bd205a4-2dc9-40f3-9d3d-f749fa8f9b2a',
    'Déterminer les besoins d’approvisionnement (23 articles essentiels), optimiser les chaînes d’approvisionnement, définir et mettre en oeuvre des MON sur l’approvisionnement, en vue de réduire les délais de livraison et d’améliorer la reconstitution des stocks.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '645cbc37-3493-47f0-a78d-fad2d2a5c859',
    'Évaluer les capacités du réseau de communication et, si nécessaire, mettre en place un système de télécommunications couvrant l’ensemble des opérations.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '088fa939-8e9d-4f55-9713-93af09b32420',
    'S’assurer que les structures médicales désignées appliquent les lignes directrices sur la lutte anti-infectieuse, sont correctement isolées, disposent d’un système de gestion des déchets, aient l’eau courante et l’électricité, reconstituent leurs stocks et bénéficient d’une maintenance.',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '92670dc9-d274-437b-91f6-2ff862e37939',
    'Définir et mettre en œuvre tous les MON relatifs à la composante logistique (achats, mobilisation des stocks, transport des échantillons, usages des télécommunications, appui et maintenance pour les structures, mobilisation des ressources de transport, gestion de la sécurité).',
    '18bf502a-9089-4e61-a7cb-4870df0bb35b'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8',
    'Etat de préparation à faire face à la Fièvre Jaune',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6ef0a94f-d171-48ff-bd80-8f733b9c87eb',
    'Coordination',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '84d3eb6f-af80-4fd9-9ae8-e20908a0525e',
    'Mettre en place un mécanisme de coordination multisectorielle pour la fièvre jaune aux niveaux national, provincial et zone de santé, impliquant vaccination, surveillance, laboratoire, communication, logistique et lutte antivectorielle.',
    '6ef0a94f-d171-48ff-bd80-8f733b9c87eb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '83d6659c-dadc-49ad-9c57-39ff9ba00837',
    'Disposer d’un plan de préparation et de riposte fièvre jaune actualisé, budgétisé et aligné sur la stratégie d’élimination des épidémies de fièvre jaune.',
    '6ef0a94f-d171-48ff-bd80-8f733b9c87eb'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '31befe0b-d270-4530-ab06-bd839864cb49',
    'Définir clairement les rôles, responsabilités, circuits d’information et mécanismes de décision pour la réponse rapide aux alertes et flambées.',
    '6ef0a94f-d171-48ff-bd80-8f733b9c87eb'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e980ea5c-bad2-490f-ad7f-f8984faa8d75',
    'Surveillance épidémiologique',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '32f578a6-1a11-43da-8df8-c27aa06266d4',
    'Mettre en place une surveillance renforcée permettant la détection précoce de tout cas suspect de fièvre jaune, notamment toute personne avec fièvre aiguë et apparition d’ictère dans les 14 jours suivant le début des symptômes.',
    'e980ea5c-bad2-490f-ad7f-f8984faa8d75'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '784b6d1e-90f2-4e0d-9f76-fdc5dafe2c7d',
    'Diffuser les définitions de cas, formulaires d’investigation, procédures d’alerte et outils de notification à tous les niveaux du système de santé.',
    'e980ea5c-bad2-490f-ad7f-f8984faa8d75'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7c41e64c-2792-4a44-91f6-5f871622e8f0',
    'Former les prestataires à la notification immédiate, à l’investigation des cas, au suivi des décès suspects et à l’analyse des données de surveillance.',
    'e980ea5c-bad2-490f-ad7f-f8984faa8d75'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1ba930e5-f366-4e5e-be2f-593bcac8c766',
    'Renforcer la surveillance dans les zones à risque, zones urbaines densément peuplées, zones forestières, zones minières et zones de forte mobilité de population.',
    'e980ea5c-bad2-490f-ad7f-f8984faa8d75'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'db9d3544-f229-4725-a6c3-62bad8537593',
    'Vaccination et campagnes préventives / réactives',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e45a9b30-4e5f-44e9-a3bf-9a92658cf22b',
    'Assurer l’intégration et la disponibilité du vaccin antiamaril dans le programme de vaccination de routine et suivre la couverture vaccinale dans les zones à risque.',
    'db9d3544-f229-4725-a6c3-62bad8537593'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '44310539-4ecd-4a76-abbd-98800b514d68',
    'Planifier et préparer des campagnes préventives ou réactives de vaccination de masse dans les provinces et zones de santé prioritaires selon le risque épidémique.',
    'db9d3544-f229-4725-a6c3-62bad8537593'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '626de270-bad2-4e89-ba07-dc4e25fb684a',
    'Évaluer et renforcer la microplanification, la chaîne de froid, la disponibilité des intrants, la formation des vaccinateurs et la stratégie avancée/mobile.',
    'db9d3544-f229-4725-a6c3-62bad8537593'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1c41fe4c-3542-404a-bb37-82840006d8fc',
    'Prévoir des stratégies spécifiques pour atteindre les populations difficiles d’accès, les sites miniers, les zones frontalières et les zones de forte mobilité.',
    'db9d3544-f229-4725-a6c3-62bad8537593'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3a422ca8-785b-4875-ab7d-683bc5f857b2',
    'Equipe d''intervention rapide',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '32ee7d16-608f-4561-a16d-a885b09aa8d7',
    'Former et prépositionner des Equipes d’intervention rapide capables de conduire l’investigation des cas, la réponse de terrain, l’appui à la vaccination réactive et la lutte antivectorielle.',
    '3a422ca8-785b-4875-ab7d-683bc5f857b2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5d5bdd98-ee71-4f41-9ac1-425234da473c',
    'Définir les procédures d’activation, de déploiement et de coordination des Equipes lors de toute alerte ou confirmation de cas de fièvre jaune.',
    '3a422ca8-785b-4875-ab7d-683bc5f857b2'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '46409bd0-e7fb-448d-af6d-68df056c7067',
    'Assurer la disponibilité des moyens de transport, de communication, des outils d’investigation et des intrants de terrain nécessaires aux Equipes.',
    '3a422ca8-785b-4875-ab7d-683bc5f857b2'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'd42c4d99-9e39-4738-8f88-661105833c64',
    'Laboratoire',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '149bb1a8-239b-4738-8865-fad723b71967',
    'Renforcer les capacités de laboratoire pour le prélèvement, la conservation, l’acheminement et la confirmation des cas suspects de fièvre jaune selon les procédures nationales.',
    'd42c4d99-9e39-4738-8f88-661105833c64'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4ada9678-b94c-420a-9de6-4321f01b3882',
    'Assurer la disponibilité des consommables, du triple emballage, des intrants de prélèvement et des Equipements nécessaires à la biosécurité et à l’assurance qualité.',
    'd42c4d99-9e39-4738-8f88-661105833c64'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a8dd2e6d-ff91-474d-8fae-fe1bde3a6bad',
    'Prévoir des capacités de diagnostic différentiel avec d’autres arboviroses ou pathologies fébriles/ictériques pertinentes dans le contexte national.',
    'd42c4d99-9e39-4738-8f88-661105833c64'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4d00763f-0619-485a-b3e9-9b971b2d4e91',
    'Mettre en place un système rapide de transmission des résultats entre laboratoire, surveillance et Equipes de riposte pour accélérer la prise de décision.',
    'd42c4d99-9e39-4738-8f88-661105833c64'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0de59755-0787-4f25-9a48-309f4cd0b2bf',
    'Prise en charge des cas',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f70eea3d-ba7f-4b2d-b682-8e217926c381',
    'Identifier les structures de santé capables d’assurer le triage, la prise en charge initiale et la référence des cas suspects ou confirmés de fièvre jaune.',
    '0de59755-0787-4f25-9a48-309f4cd0b2bf'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '95177273-afe8-4e9d-9b88-66369509b652',
    'Former le personnel clinique à la reconnaissance des formes graves, aux soins de soutien, à la gestion des complications hépatiques, rénales et hémorragiques, et à la référence rapide.',
    '0de59755-0787-4f25-9a48-309f4cd0b2bf'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7162a85c-a5fb-4018-95fb-c69368131218',
    'Prépositionner les intrants essentiels pour les soins de soutien et organiser les circuits de référence et contre-référence pour les cas graves.',
    '0de59755-0787-4f25-9a48-309f4cd0b2bf'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '06531e50-475b-41ec-86e1-2d4fdb95ed81',
    'Lutte antivectorielle',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3466e566-5a81-44f6-b76f-88e4a870d3b2',
    'Mettre en place des interventions de lutte antivectorielle ciblant les moustiques Aedes dans les zones urbaines, périurbaines et autres zones à risque.',
    '06531e50-475b-41ec-86e1-2d4fdb95ed81'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4311b438-9c60-462d-9612-82428ddd6e06',
    'Identifier les gîtes larvaires prioritaires et organiser des actions régulières d’assainissement, d’élimination des eaux stagnantes, de larvicidation ou d’adulticidation selon le contexte.',
    '06531e50-475b-41ec-86e1-2d4fdb95ed81'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cd8ab115-c28f-468e-8175-06f82957b68e',
    'Former les Equipes techniques et communautaires aux méthodes de surveillance entomologique et de lutte antivectorielle adaptées à la fièvre jaune.',
    '06531e50-475b-41ec-86e1-2d4fdb95ed81'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '8c8b07a2-5b4d-4992-a6b1-a7442fab825c',
    'Communication et engagement communautaire',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c7d547c0-ddfe-4c82-a620-eeed65b49aec',
    'Déployer une stratégie de communication des risques et d’engagement communautaire sur la fièvre jaune, la vaccination, les signes d’alerte et les mesures de prévention contre les piqûres de moustiques.',
    '8c8b07a2-5b4d-4992-a6b1-a7442fab825c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c227478f-7383-4dc2-8a24-7778c6ad850a',
    'Adapter et diffuser des messages dans les langues locales pour promouvoir l’acceptation vaccinale, le recours précoce aux soins et la participation communautaire à la lutte antivectorielle.',
    '8c8b07a2-5b4d-4992-a6b1-a7442fab825c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c71c7cfc-2bc3-434f-8fbd-a4a250ed96e0',
    'Impliquer les relais communautaires, leaders locaux, médias et structures communautaires dans la prévention, la détection précoce et la mobilisation sociale.',
    '8c8b07a2-5b4d-4992-a6b1-a7442fab825c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5d8d038c-6d94-4eab-ada0-7a8e0d289c13',
    'Points d''entrée et voyageurs',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9ebea151-6663-4e59-99ab-27d333147f92',
    'Identifier les points d’entrée prioritaires et mettre en place des procédures de notification, d’information sanitaire et de gestion des alertes liées à la fièvre jaune.',
    '5d8d038c-6d94-4eab-ada0-7a8e0d289c13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '65021ff4-41ce-4ad2-89fa-568c046e524d',
    'Vérifier l’application des exigences du Règlement sanitaire international relatives à la vaccination antiamarile pour les voyageurs concernés.',
    '5d8d038c-6d94-4eab-ada0-7a8e0d289c13'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4539c397-67e6-4e85-8182-1cd2f990a55b',
    'Renforcer la coordination entre autorités sanitaires, transporteurs et services frontaliers pour la détection et la notification des événements suspects.',
    '5d8d038c-6d94-4eab-ada0-7a8e0d289c13'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b7901f68-9f3c-449a-b138-a7244d558fba',
    'Budget',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fb6bb298-d156-4384-a703-ba05e33a8dfb',
    'Définir un budget opérationnel pour la préparation et la riposte fièvre jaune incluant surveillance, vaccination, laboratoire, lutte antivectorielle, communication et logistique.',
    'b7901f68-9f3c-449a-b138-a7244d558fba'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2eb4fadc-5baa-4cb1-8ba2-1e351f06ed58',
    'Prévoir un mécanisme de mobilisation rapide des ressources financières pour le déclenchement de la riposte et des campagnes vaccinales réactives.',
    'b7901f68-9f3c-449a-b138-a7244d558fba'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6add9a53-eff6-4c6a-9600-320cc21068b1',
    'Mettre en place des outils de suivi budgétaire et de redevabilité pour les dépenses liées à la préparation et à la réponse.',
    'b7901f68-9f3c-449a-b138-a7244d558fba'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '23f6232c-82fc-46b2-acac-ca7a9d2735f1',
    'Logistique',
    '6f79dbc7-82c6-405b-9707-40280eaeeeb8'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cd54d3ee-df08-4870-a9b1-d2d9c0f03838',
    'Prévoir la logistique nécessaire pour le transport des Equipes, des vaccins, des échantillons, des intrants de lutte antivectorielle et des médicaments vers les zones à risque ou affectées.',
    '23f6232c-82fc-46b2-acac-ca7a9d2735f1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3614c561-cc52-4e76-961a-7034cb9b4ce5',
    'Évaluer les capacités de stockage, de chaîne de froid, de gestion des stocks et de distribution des intrants essentiels à tous les niveaux.',
    '23f6232c-82fc-46b2-acac-ca7a9d2735f1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dbf63635-cefd-4cee-a2b6-c6c529ee34f0',
    'Identifier les entrepôts, fournisseurs, moyens de transport, ressources humaines et capacités logistiques mobilisables en cas d’alerte ou de flambée.',
    '23f6232c-82fc-46b2-acac-ca7a9d2735f1'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90',
    'État de préparation à la riposte contre la rougeole',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35',
    'Gouvernance, coordination et activation du COUSP/PEV',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f69321bf-22a7-479f-85de-67aad67ef5c4',
    'Intégrer la rougeole dans la liste des urgences de santé publique prioritaires et définir les seuils d’alerte, d’investigation et de riposte (Niveau concerné : National, Provincial, ZS)',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '07f935e4-2d07-4495-a3c8-5c13b3703996',
    'Tester la coordination et les aspects opérationnels au moyen d’exercices de simulation et de tests de compétences (Niveau concerné : National, Provincial, ZS, PoE).',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '696d880e-6304-447b-a638-93a3f9a74869',
    'Disposer d’un mécanisme de coordination rougeole activable aux niveaux national, provincial et zone de santé, articulé au COUSP/IMS et au PEV (Niveau concerné : National, Provincial, ZS).',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5d7c6583-5b40-42ad-ae6a-069d8e751fbe',
    'Désigner un point focal rougeole ou un binôme surveillance–PEV à chaque niveau, avec rôles, responsabilités et circuits de notification clairement définis (Niveau concerné : National, Provincial, ZS, PoE).',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2282fb95-6e21-4170-a664-04310b823192',
    'Assurer une coordination fonctionnelle entre surveillance, PEV, nutrition, prise en charge, laboratoire, PCI, communication, logistique, écoles, autorités locales et partenaires (Niveau concerné : National, Provincial, ZS, PoE)',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e9eba9f7-6efa-4a56-9e1b-47c0f953d700',
    'Disposer d’un plan d’activation veille–alerte–investigation–riposte, incluant les modalités de réunion, de rapportage, de SitRep et de prise de décision (Niveau concerné : National, Provincial, ZS, PoE).',
    'c2c7e426-61d7-4863-ae4a-85b2258c3f35'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f',
    'Équipe d’intervention rapide',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c0548d22-d861-4ef1-a543-4ba4d6b36563',
    'Désigner une équipe multidisciplinaire de riposte rougeole, incluant surveillance, PEV, prise en charge, laboratoire, communication, données et logistique, avec matériel de terrain, moyens de communication et mécanisme de déplacement rapide adaptés au contexte (Niveau concerné : Provincial, ZS, PoE).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '64cae526-a3e8-4b53-b422-c682ff3c0984',
    'Définir clairement les responsabilités pour l’activation et la coordination de l’EIR face aux cas suspects ou flambées de rougeole (Niveau concerné : Provincial, ZS, PoE).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '498f22a9-c1f8-431d-99df-94118da4230a',
    'Former comme il convient les EIR, y compris pour la prise en charge des cas, le prélèvement et le transport des échantillons, la recherche des contacts, les investigations sur les flambées et la mobilisation sociale (Niveau concerné : Provincial, ZS, PoE).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5505124c-8e11-46f3-b8aa-116f0f5203ea',
    'Former l’EIR infranationale à la surveillance et à la recherche des contacts (Niveau concerné : Provincial, ZS).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6af7076a-703f-4503-a6a1-ff9192bacbf3',
    'Recenser les établissements de santé prêts à détecter, isoler temporairement, notifier, prendre en charge et référer les cas suspects ou compliqués de rougeole (Niveau concerné : Provincial, ZS, PoE).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c54ddaf8-8a6f-4ffc-81f7-f53e1713203b',
    'Mener au moins un exercice de simulation ou une revue fonctionnelle périodique pour maintenir la capacité des EIR à détecter, investiguer et répondre rapidement à une flambée de rougeole (Niveau concerné : National, Provincial, ZS, PoE).',
    '0a329e38-1c4c-4fa6-afc2-3ef2936fd31f'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c8d76a76-45a3-435e-acc7-3145add80639',
    'Communication sur les risques et engagement communautaire',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '21bb189e-2d41-4a40-adc1-61cca9d792a8',
    'Élaborer une stratégie, un plan et un budget complets pour la collaboration avec les médias et le public, recenser les principaux canaux de communication et les principales rumeurs et en assurer un suivi (Niveau concerné : National, Provincial, ZS, PoE).',
    'c8d76a76-45a3-435e-acc7-3145add80639'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '918f73b4-9ee0-4472-ae5f-ed0ab4e1d119',
    'Mettre en place un mécanisme opérationnel de coordination de la communication en vue de mobiliser les parties prenantes, y compris la société civile, les ONG, les médias, les leaders communautaires, religieux, traditionnels, scolaires et les acteurs locaux (Niveau concerné : National, Provincial, ZS, PoE).',
    'c8d76a76-45a3-435e-acc7-3145add80639'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3bf3eed7-01e3-4dc8-9137-7344a3621c51',
    'Élaborer une stratégie et un plan de communication sur les risques et recenser les capacités de communication dans le secteur de la santé publique et les autres secteurs (Niveau concerné : National, Provincial, ZS, PoE).',
    'c8d76a76-45a3-435e-acc7-3145add80639'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5fb882b8-fc59-4bdf-8c41-dfbffca6e3f4',
    'Mettre au point, adapter, revoir, traduire dans les langues locales et diffuser des messages ciblés aux médias, soignants, leaders locaux, écoles, églises, tradipraticiens et autres parties prenantes communautaires (Niveau concerné : Provincial, ZS, PoE).',
    'c8d76a76-45a3-435e-acc7-3145add80639'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '877c0fce-9c19-4f62-922f-cd8cb830de51',
    'Prévention et contrôle des infections',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c1caaaa3-30be-46bf-adb7-2a9a7537c114',
    'Renforcer la présence de lignes directrices et modes opératoires normalisés sur la prévention et la lutte contre l’infection dans tous les établissements de santé (Niveau concerné : National, Provincial, ZS, PoE).',
    '877c0fce-9c19-4f62-922f-cd8cb830de51'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd6921e1d-57b9-4fd0-bea9-4c9c1aa18155',
    'Fournir aux établissements de santé les moyens nécessaires pour l’hygiène de base, l’assainissement, le nettoyage/désinfection, l’hygiène respiratoire, les masques, l’eau courante et l’électricité, en priorisant les hôpitaux, centres de santé, structures de référence et points d’entrée concernés (Niveau concerné : Provincial, ZS, PoE).',
    '877c0fce-9c19-4f62-922f-cd8cb830de51'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cec56b40-ccc3-4b31-b6b3-d5707ac62783',
    'Équiper et former convenablement le personnel soignant, y compris le personnel chargé de la santé environnementale, les hygiénistes et le personnel de nettoyage, en leur présentant les mesures de PCI et procédures de gestion des déchets, priorité étant donnée à ceux qui entrent les premiers en contact avec les malades (Niveau concerné : Provincial, ZS, PoE).',
    '877c0fce-9c19-4f62-922f-cd8cb830de51'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '15845b6c-210f-4551-82e4-644f4472740a',
    'Identifier et équiper des espaces de triage respiratoire, d’attente séparée et d’isolement temporaire pour les cas suspects de rougeole dans les formations sanitaires et, si nécessaire, aux points d’entrée (Niveau concerné : ZS, PoE).',
    '877c0fce-9c19-4f62-922f-cd8cb830de51'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5367687b-6a84-4194-b102-67613417df0b',
    'Prise en charge des cas',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5ec9624c-263a-4bc8-a543-3362bc96ce49',
    'Désigner au moins une structure de référence par zone de santé pour la prise en charge des cas suspects ou compliqués de rougeole, avec espace d’isolement temporaire, protocole clinique, vitamine A, médicaments essentiels et mécanisme de référence (Niveau concerné : Provincial, ZS).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7c6272b5-9ada-4fe6-8e7b-7585a6f571fc',
    'Recenser et appliquer les modes opératoires normalisés directement liés à la prise en charge rougeole : triage respiratoire, isolement temporaire, administration de vitamine A, prise en charge des complications, référence des cas graves, notification et coordination avec la surveillance et le PEV (Niveau concerné : National, Provincial, ZS, PoE).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1516aa72-a4c6-44a0-a114-6f290f5ae752',
    'Recenser le personnel clinique et le former à la prise en charge de la rougeole, y compris l’administration de vitamine A, la détection des complications, la référence des cas graves et les mesures de PCI respiratoire (Niveau concerné : Provincial, ZS, PoE).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '357072c3-b949-43be-8d33-9ab89fb1d6a4',
    'Équiper et former les équipes de référence pour le transport sécurisé des cas compliqués de rougeole, avec mesures d’hygiène respiratoire, information préalable de la structure d’accueil et continuité des soins pendant le transfert (Niveau concerné : ZS, PoE).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '24cb735e-fb0b-45de-95c1-b11ce7bf4afe',
    'Recenser les établissements de soins pouvant assurer rapidement l’isolement temporaire, la prise en charge des complications et la référence des cas graves de rougeole (Niveau concerné : Provincial, ZS).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b8114e09-0e3f-4ad6-a5eb-e8aa43368440',
    'Recenser les formations sanitaires périphériques capables d’identifier les signes de gravité, administrer les soins initiaux et orienter les cas compliqués de rougeole (Niveau concerné : ZS).',
    '5367687b-6a84-4194-b102-67613417df0b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '7237431c-b26f-4745-9d55-f4ea0e6829c6',
    'Gestion des décès, audit de mortalité et sécurité communautaire',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '79d2c7ef-343e-4410-a209-cd8c4a689787',
    'Mettre au point des procédures pour la notification, l’investigation et l’audit des décès attribués ou suspects de rougeole, en lien avec la surveillance, la prise en charge clinique et la communauté (Niveau concerné : National, Provincial, ZS).',
    '7237431c-b26f-4745-9d55-f4ea0e6829c6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '87f95f77-3072-4e0c-9ab3-d627a56e14b0',
    'Former les équipes de santé et relais communautaires à la documentation des décès, à l’identification des contacts à risque, à la recherche de cas additionnels et à l’orientation des familles vers la vaccination et les soins (Niveau concerné : Provincial, ZS).',
    '7237431c-b26f-4745-9d55-f4ea0e6829c6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dba1669d-9463-4855-9b6a-93d7dad3d20f',
    'S’assurer que tout décès suspect de rougeole fait l’objet d’une notification rapide, d’une vérification clinique et épidémiologique, et d’un rapport d’audit permettant d’identifier les retards de recours aux soins, de référence ou de prise en charge (Niveau concerné : Provincial, ZS).',
    '7237431c-b26f-4745-9d55-f4ea0e6829c6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8b99238d-0e5c-4b56-a485-c7804f884779',
    'Assurer un appui communautaire respectueux pour réduire les rumeurs, favoriser la déclaration des décès et renforcer l’acceptation de la vaccination de riposte autour des ménages et communautés affectés (Niveau concerné : Provincial, ZS, PoE).',
    '7237431c-b26f-4745-9d55-f4ea0e6829c6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '478bba12-8742-4d87-9460-54f1efe37eef',
    'Documenter les facteurs contributifs des décès de rougeole et intégrer les actions correctrices dans le plan de riposte : vaccination de rattrapage, amélioration de la prise en charge, référence, nutrition et communication communautaire (Niveau concerné : Provincial, ZS).',
    '7237431c-b26f-4745-9d55-f4ea0e6829c6'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '2e42dec2-f60a-44a8-b816-03fa63a4a253',
    'Surveillance épidémiologique',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'aa496969-a7d2-496c-a304-3f0ffbe35409',
    'Mettre en place une ligne 24h/24, 7j/7 ou des numéros d’alerte capables de recevoir les notifications de cas suspects de rougeole, avec personnel formé aux procédures d’alerte, de vérification et d’orientation rapide (Niveau concerné : National, Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '059f36f2-0f00-4067-a499-d2170c4e20b5',
    'Fournir des orientations (lignes directrices, définitions de cas et formulaires d’investigation) à tous les niveaux du système de soins, en les adaptant aux besoins (Niveau concerné : National, Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3628d969-44a5-48ef-a2d4-7c69cdc85108',
    'Dispenser une formation spéciale sur les définitions de cas de rougeole, les formulaires d’investigation, la ligne de cas, la notification immédiate et les critères de prélèvement pour confirmation biologique (Niveau concerné : Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1650cfcf-8ef1-4f16-9516-ee7c30475bb8',
    'Veiller à ce qu’un système de surveillance fondé sur les événements soit en place et permette de suivre en temps opportun les informations/rumeurs de toutes origines : communauté, médias, écoles, leaders locaux et points d’entrée (Niveau concerné : National, Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '34ffd46f-9374-4f96-9a17-04483f2a083e',
    'Mettre en place des lignes de notification immédiate pour les cas suspects de rougeole et les décès suspects, avec responsabilités clairement définies entre communauté, formation sanitaire, zone de santé, DPS, PEV, laboratoire et COUSP (Niveau concerné : National, Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '234d2ea4-e918-44b6-a518-f1526d9c0c7e',
    'Tester les systèmes de surveillance rougeole existants, vérifier la complétude et la promptitude des données, recenser les lacunes et appliquer les mesures correctrices (Niveau concerné : National, Provincial, ZS).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5fb6caf0-e741-41ad-b96f-44d429530703',
    'Identifier les ressources humaines pour la surveillance communautaire : agents de santé communautaires, bénévoles, ONG, tradipraticiens, chefs communautaires, écoles et relais locaux (Niveau concerné : Provincial, ZS).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7a3cbe12-157f-40b6-8c5a-76479d55b816',
    'Diffuser des définitions de cas simplifiées à l’usage des communautés, écoles, relais communautaires et points d’entrée (Niveau concerné : Provincial, ZS, PoE).',
    '2e42dec2-f60a-44a8-b816-03fa63a4a253'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1dbcc356-8429-48e4-b24f-f5066263682c',
    'Recherche de contacts',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5032e9a3-0462-4c5a-a3bf-96ef483c7292',
    'Diffuser les lignes directrices et les MON sur la recherche des contacts aux niveaux national et infranational (Niveau concerné : National, Provincial, ZS).',
    '1dbcc356-8429-48e4-b24f-f5066263682c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4da6a2b8-5bb9-4759-9791-19c397810433',
    'Former au moins une équipe nationale à la recherche des contacts et à la gestion des données (Niveau concerné : National).',
    '1dbcc356-8429-48e4-b24f-f5066263682c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'dd714b17-2c49-49fa-a083-bc0d95681d21',
    'Mettre en place ou renforcer le système de gestion des données pour les contacts, les ménages affectés, les cas secondaires, le statut vaccinal et les actions de vaccination de rattrapage autour des cas de rougeole (Niveau concerné : National, Provincial, ZS).',
    '1dbcc356-8429-48e4-b24f-f5066263682c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '29ac0dde-a7c0-4845-a2d1-9e8be0f3ceef',
    'Former le personnel de district/zone de santé à la recherche des contacts, à l’identification des ménages affectés, au suivi du statut vaccinal et à la recherche active des cas secondaires (Niveau concerné : Provincial, ZS).',
    '1dbcc356-8429-48e4-b24f-f5066263682c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0fb76bc8-eb36-4675-b926-2009ed865483',
    'Former le personnel des aires de santé, relais communautaires, écoles et acteurs locaux à la recherche des contacts, à la recherche active des cas et à l’orientation des enfants non ou sous-vaccinés vers la vaccination (Niveau concerné : ZS).',
    '1dbcc356-8429-48e4-b24f-f5066263682c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4203252c-5b4d-4385-83eb-7553a6a8c8c1',
    'Laboratoire',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd533c944-d618-46e4-bdd8-113317847056',
    'Mettre en place un laboratoire de référence national pour l’analyse des échantillons rougeole et s’assurer que les procédures de prélèvement, conservation, transport et transfert vers ces structures sont connues au niveau infranational (Niveau concerné : National, Provincial, ZS).',
    '4203252c-5b4d-4385-83eb-7553a6a8c8c1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0eb03848-b633-40fa-94fc-63a175a7cad8',
    'Élaborer des protocoles pour le prélèvement, le conditionnement, l’étiquetage, le transport et l’expédition des échantillons de cas suspects de rougeole vers le laboratoire de référence, avec suivi des résultats et rétro-information rapide (Niveau concerné : National, Provincial, ZS, PoE).',
    '4203252c-5b4d-4385-83eb-7553a6a8c8c1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '944b9173-3318-4d53-9437-f240885ff456',
    'Veiller à ce que le personnel de laboratoire, les équipes de prélèvement et les agents impliqués dans le transport des échantillons soient formés aux procédures de sécurité, de PCI, d’emballage, d’étiquetage, de transfert et d’expédition (Niveau concerné : National, Provincial, ZS, PoE).',
    '4203252c-5b4d-4385-83eb-7553a6a8c8c1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4c85502a-8c56-4848-8de5-8fdb099f4748',
    'Mettre en place des arrangements prévisionnels avec les laboratoires de référence, centres collaborateurs ou réseaux appuyés par l’OMS pour les tests de confirmation et, si nécessaire, pour l’expédition nationale ou internationale des échantillons (Niveau concerné : National, Provincial).',
    '4203252c-5b4d-4385-83eb-7553a6a8c8c1'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '603d2631-f511-4b72-a5e3-d34d7b14a61d',
    'Points d’entrée et mobilité des voyageurs',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '51ed307a-e897-458a-a2b0-170322862d73',
    'S’assurer qu’un plan d’urgence soit en place au point d’entrée désigné : aéroports, ports et postes-frontières (Niveau concerné : Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '07263b6b-8e63-4047-bac3-9b2af00b58fb',
    'Recenser des établissements de référence pour chaque point d’entrée et élaborer un MON pour identifier, notifier, isoler temporairement, orienter et référer en sécurité les cas suspects de rougeole vers la zone de santé ou la structure désignée (Niveau concerné : Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4f3ce607-375b-4019-84d2-32a5c0ddd486',
    'Désigner des équipes qualifiées aux points d’entrée, proportionnelles au volume des voyageurs, chargées de détecter les signes évocateurs de rougeole, appliquer l’hygiène respiratoire, notifier rapidement et orienter les cas suspects (Niveau concerné : ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9cdf9e01-2723-470e-aefe-e436f6d928c4',
    'Élaborer un MON pour la gestion d’un cas suspect ou confirmé de rougeole détecté à un point d’entrée, incluant notification immédiate, séparation respiratoire, orientation, investigation et coordination avec la DPS/ZS/COUSP (Niveau concerné : Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '303337aa-8084-40d9-b3b8-6e95eec8dbf2',
    'Veiller à ce que chaque point d’entrée ait immédiatement accès au matériel et aux fournitures nécessaires : masques, produits d’hygiène respiratoire, produits de nettoyage/désinfection, espace d’attente séparée, outils de notification, moyens de communication et mécanisme de référence selon la localisation (Niveau concerné : Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '694666c5-726e-4184-8259-ea53cbe7671f',
    'Examiner et tester les systèmes de communication actuels entre les autorités sanitaires au point d’entrée, les opérateurs de transport, la zone de santé, la DPS et les systèmes nationaux de surveillance sanitaire (Niveau concerné : National, Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '69f0bb7b-b52e-404e-82b8-018f0d1abbbb',
    'Sensibiliser les autorités de santé publique, les opérateurs de transport et les parties prenantes des points d’entrée aux signes de rougeole, à la notification immédiate, aux mesures d’hygiène respiratoire et à la coordination avec la surveillance nationale (Niveau concerné : National, Provincial, ZS, PoE).',
    '603d2631-f511-4b72-a5e3-d34d7b14a61d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6a4e04db-d7ca-465f-95c7-d99d50b60348',
    'Budget',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b56f737f-b2a5-4562-b8a0-a6b2bbaf7865',
    'Définir un budget opérationnel pour les activités de préparation et de riposte rougeole : coordination, communication, surveillance renforcée, investigation, laboratoire, vaccination, vitamine A, prise en charge, PCI, logistique, supervision et suivi des données (Niveau concerné : National, Provincial, ZS, PoE).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ad7cab3c-68fc-4cf1-9ddc-893cdd6fbf89',
    'Mettre en place ou rendre facilement accessible un fonds de réserve pour la riposte immédiate aux flambées de rougeole, avec modalités de décaissement rapide vers les provinces, zones de santé et points d’entrée concernés (Niveau concerné : National, Provincial, ZS, PoE).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ce7c3401-215e-4ded-8490-b6c419f790d9',
    'Déterminer le cadre juridique et administratif permettant de mobiliser, dépenser et transférer les fonds d’urgence du niveau central vers les provinces, zones de santé, formations sanitaires et points d’entrée en situation de flambée de rougeole (Niveau concerné : National, Provincial).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6a7845af-d033-4c5b-a515-b3213746a84c',
    'Prévoir un régime de rémunération, motivation, assurance ou compensation pour les équipes engagées dans les activités à risque ou à forte charge de travail : vaccination, investigation, prélèvement, prise en charge, transport/référence, mobilisation communautaire, supervision et données (Niveau concerné : National, Provincial, ZS, PoE).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c31a4186-a23e-4f72-86bc-1ccf91e0ca68',
    'Identifier les sources de financement internes et externes, y compris l’allocation de ressources nationales, provinciales et locales, les appuis des partenaires, et les mécanismes de mobilisation rapide de ressources supplémentaires pour la riposte rougeole (Niveau concerné : National, Provincial, ZS).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8f2c4fb4-c1dc-4409-a4d9-1fd783057f88',
    'Élaborer des modèles pour la mobilisation des ressources, le suivi budgétaire, le rapportage financier, les rapports aux autorités et aux donateurs, ainsi que le suivi de l’utilisation des fonds de riposte rougeole (Niveau concerné : National, Provincial, ZS).',
    '6a4e04db-d7ca-465f-95c7-d99d50b60348'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '411b7735-c59d-495f-9942-6b2421463e1d',
    'Logistique',
    '6c23ef34-fcad-4c95-b13e-209b9d2f9a90'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f119a570-4a36-426e-ade9-25db619e1df9',
    'Planifier et coordonner la composante logistique de la riposte rougeole, y compris l’application des MON relatifs aux achats, stocks, distribution, transport, sécurité, communication opérationnelle, maintenance et reconstitution rapide des intrants (Niveau concerné : National, Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ea957c5b-7d20-4015-8867-cd1897f2c36e',
    'Évaluer les capacités de stockage, de chaîne du froid et de gestion des stocks ; déterminer les besoins en vaccins, diluants, seringues, boîtes de sécurité, vitamine A, médicaments essentiels, outils de collecte et intrants de laboratoire ; et prévenir les ruptures (Niveau concerné : National, Provincial, ZS).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3f1726d5-d007-4571-a992-4d1032c53122',
    'Recenser les ressources disponibles et les fournisseurs essentiels : dépôts PEV, équipements de chaîne du froid, moyens de transport, sites de vaccination, équipes mobiles, stocks d’urgence, supports IEC, capacités PoE et accords préalables d’approvisionnement (Niveau concerné : National, Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a7d07d6d-2121-4857-9c0c-886a2f5bea3c',
    'Organiser les moyens de transport pour les vaccins, intrants, équipes, superviseurs, prélèvements et cas compliqués, en respectant la chaîne du froid, la sécurité, l’accessibilité et la coordination avec les points d’entrée si nécessaire (Niveau concerné : Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9b5b852e-ee87-4f5f-9580-c48790c6f79d',
    'Assurer un circuit fiable de transport des échantillons rougeole depuis la formation sanitaire ou le point d’entrée jusqu’au laboratoire de référence, avec suivi des résultats et rétro-information rapide (Niveau concerné : National, Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '87936d32-7aa9-4b39-9040-f38313c413f7',
    'Vérifier que les structures désignées disposent d’espaces de triage respiratoire, d’attente séparée ou d’isolement temporaire, d’eau, d’électricité, de gestion des déchets, de stocks essentiels et d’un mécanisme de maintenance fonctionnel (Niveau concerné : Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0658a231-349e-4c94-8694-604e90e999ff',
    'Identifier et former les ressources humaines nécessaires à la logistique de riposte : logisticiens, gestionnaires de stock, vaccinateurs, superviseurs, conducteurs, agents de données, communicateurs, relais communautaires, équipes de prélèvement et équipes sanitaires PoE (Niveau concerné : National, Provincial, ZS, PoE).',
    '411b7735-c59d-495f-9942-6b2421463e1d'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'a36a5e47-eabf-4329-a721-751089cc0978',
    'Etat de préparation à faire face aux inondations (risque hydrologique)',
    'Hydroliques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3ba3a483-112e-4105-8a55-9d996a9cbedd',
    'Coordination et gouvernance',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7c18c94d-8a5e-4f7b-aa0b-e65ce25195c3',
    'Mettre en place un mécanisme de coordination multisectorielle pour la préparation et la riposte aux inondations aux niveaux national, provincial et local, associant santé, protection civile, météorologie, hydrologie, eau-hygiène-assainissement, environnement, affaires sociales, transport et autorités territoriales.',
    '3ba3a483-112e-4105-8a55-9d996a9cbedd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f57aa7dd-7832-4b88-8d97-76300924dd8c',
    'Disposer d’un plan de préparation et de riposte aux inondations actualisé, budgétisé et contextualisé pour les provinces et zones de santé exposées en RDC.',
    '3ba3a483-112e-4105-8a55-9d996a9cbedd'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1b43da4e-2d4c-47c9-89b2-321d6b621921',
    'Définir les rôles, responsabilités, circuits de décision, mécanismes d’activation et modalités de coordination entre les niveaux national, provincial et communautaire.',
    '3ba3a483-112e-4105-8a55-9d996a9cbedd'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f68a88a3-793f-4152-b4e8-ee3be080729d',
    'Alerte précoce et surveillance hydrométéorologique',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3481dcb1-9e3c-4287-8ec8-177e94cf2e9d',
    'Mettre en place ou renforcer un système d’alerte précoce fondé sur les données hydrologiques et météorologiques, incluant le suivi des pluies intenses, crues, débordements de rivières et niveaux d’eau dans les zones à risque.',
    'f68a88a3-793f-4152-b4e8-ee3be080729d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '42133407-67bc-4f00-9723-6aa493639549',
    'Définir et diffuser des seuils d’alerte et des procédures d’activation rapide pour les autorités sanitaires, les autorités locales et les communautés exposées.',
    'f68a88a3-793f-4152-b4e8-ee3be080729d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ab00d61a-dde9-4bad-9c07-32a5f066bf90',
    'Assurer des mécanismes de partage en temps réel des informations entre les services techniques, les structures sanitaires et les plateformes de coordination des urgences.',
    'f68a88a3-793f-4152-b4e8-ee3be080729d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '979b9943-b41b-4879-8404-f20ff2e7be1b',
    'Cartographie des zones à risque et planification',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2c03b9b0-d807-4c32-b239-cb991b4f273b',
    'Identifier et cartographier les zones de santé, quartiers, villages, infrastructures critiques et établissements de santé exposés aux inondations récurrentes, à l’érosion et à l’isolement.',
    '979b9943-b41b-4879-8404-f20ff2e7be1b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '02d7e082-c3e1-48e3-97bb-c9d9debc635a',
    'Actualiser régulièrement les cartes des risques, itinéraires d’évacuation, zones de refuge, points de rassemblement et zones d’accès difficile.',
    '979b9943-b41b-4879-8404-f20ff2e7be1b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6a8f345c-f2e5-4fee-96d6-05d43c317a85',
    'Élaborer des plans locaux de contingence intégrant scénarios d’inondation, besoins prioritaires, estimation des populations exposées et options de déploiement rapide.',
    '979b9943-b41b-4879-8404-f20ff2e7be1b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f8f2c0bf-e833-44dc-8e7f-71246cf2cbf0',
    'Evacuation et gestion des sites d''accueil',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4b87dbb0-b8f6-4e4c-a9a6-a710c636b3f7',
    'Définir des procédures d’évacuation préventive ou d’urgence pour les populations exposées, en tenant compte des zones enclavées, riveraines et urbaines à drainage insuffisant.',
    'f8f2c0bf-e833-44dc-8e7f-71246cf2cbf0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a38d050d-733b-40b8-ba20-243105932fc8',
    'Identifier, préparer et Equiper des sites d’accueil temporaires sûrs avec accès à l’eau, à l’assainissement, à la sécurité, à la protection et aux soins de santé de base.',
    'f8f2c0bf-e833-44dc-8e7f-71246cf2cbf0'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f275f27c-8ad3-4bb5-b284-ecee0cdcf48b',
    'Prévoir l’enregistrement des déplacés, l’organisation interne des sites, les mécanismes de gestion et la coordination des services essentiels sur les sites d’accueil.',
    'f8f2c0bf-e833-44dc-8e7f-71246cf2cbf0'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b8bd6c46-c279-44ee-83a5-ed3e9d31989c',
    'EAU - HYGIENE - ASSAINISSEMENT',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '89087798-1c56-45f6-a364-42ef7af74d48',
    'Prévoir des interventions WASH d’urgence pour sécuriser l’accès à l’eau potable, la chloration, le stockage sûr de l’eau et la distribution de kits d’hygiène dans les zones inondées et sites d’accueil.',
    'b8bd6c46-c279-44ee-83a5-ed3e9d31989c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '22f76fe3-5f5a-4996-98d0-a6d934cfa882',
    'Identifier des solutions temporaires d’assainissement, de gestion des excreta et des déchets pour limiter la contamination de l’environnement après les inondations.',
    'b8bd6c46-c279-44ee-83a5-ed3e9d31989c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '37b8a18a-8925-47a5-aceb-96eca423418d',
    'Prépositionner le chlore, les réservoirs, jerrycans, savons, matériels de désinfection et autres intrants EAH dans les zones à haut risque.',
    'b8bd6c46-c279-44ee-83a5-ed3e9d31989c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '16bb26e0-3a43-4571-ad37-c51b2c33a768',
    'Surveillance épidémiologique post-inondation',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f9ec760b-ed55-46b0-92d9-f76e3c23a899',
    'Renforcer la surveillance des maladies prioritaires associées aux inondations, notamment les maladies diarrhéiques, le choléra, le paludisme, les infections respiratoires, les maladies de la peau et autres événements de santé publique.',
    '16bb26e0-3a43-4571-ad37-c51b2c33a768'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1d9aebda-dcb5-45ea-9d2f-db92c8d22b94',
    'Diffuser les définitions de cas, formulaires d’alerte et outils de notification rapide dans les structures sanitaires, sites d’accueil et communautés affectées.',
    '16bb26e0-3a43-4571-ad37-c51b2c33a768'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a0298fa4-c146-48a8-824b-2bb239a326b8',
    'Prévoir des mécanismes de surveillance communautaire et d’investigation rapide pour détecter précocement les flambées post-inondation.',
    '16bb26e0-3a43-4571-ad37-c51b2c33a768'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '40896bf3-5815-4b8f-ac57-116028fd9139',
    'Soins de santé et continuité des services',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f177ee04-ae31-43e5-a49a-7e35ef8715f3',
    'Identifier les établissements de santé exposés aux inondations et prévoir des mesures de protection, de relocalisation temporaire ou d’adaptation pour maintenir la continuité des services essentiels.',
    '40896bf3-5815-4b8f-ac57-116028fd9139'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7aea84b0-89c3-4c65-8bae-d9e78d217f01',
    'Prépositionner les médicaments essentiels, intrants médicaux, kits d’urgence, moyens de référence et Equipements nécessaires à la prise en charge des blessés et malades dans les zones à risque.',
    '40896bf3-5815-4b8f-ac57-116028fd9139'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6ebfb5e1-b149-4fa3-a8c0-94a9f2ea629b',
    'Prévoir des stratégies alternatives de prestation des soins en cas de rupture d’accès, y compris Equipes mobiles, cliniques temporaires et références adaptées.',
    '40896bf3-5815-4b8f-ac57-116028fd9139'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b60bc573-f573-4bea-ac84-e6e4ffe5a93b',
    'Logistique et accès',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0dcb9e98-1abb-4d8c-a6e9-510a1b60d55e',
    'Identifier les contraintes d’accès liées aux routes coupées, ponts endommagés, zones enclavées et besoins en moyens alternatifs de transport fluvial, motorisé ou aérien selon le contexte.',
    'b60bc573-f573-4bea-ac84-e6e4ffe5a93b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e8213191-7ad1-479f-a4bf-aea206545a5d',
    'Prépositionner les stocks humanitaires et sanitaires dans des sites sécurisés avant les saisons à haut risque hydrologique.',
    'b60bc573-f573-4bea-ac84-e6e4ffe5a93b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1cc7fe62-5736-494f-91ce-e3d095ff3831',
    'Mettre en place un mécanisme de suivi des stocks, de redistribution rapide et de mobilisation logistique pour répondre aux besoins des zones affectées.',
    'b60bc573-f573-4bea-ac84-e6e4ffe5a93b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '7ad7b2a7-970c-48cd-8245-d09062eba30d',
    'Communication des risques et engagement communautaire',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7c8a53bb-69ba-4e47-b0c5-dd8b2df56333',
    'Déployer une stratégie de communication sur les alertes d’inondation, les consignes d’évacuation, les comportements de protection, l’accès aux services et la prévention des maladies après inondation.',
    '7ad7b2a7-970c-48cd-8245-d09062eba30d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4e9e2f9f-e81b-4df4-b608-8999ca8bf171',
    'Adapter et diffuser des messages dans les langues locales via radios, relais communautaires, leaders locaux, écoles, téléphonie et autres canaux appropriés.',
    '7ad7b2a7-970c-48cd-8245-d09062eba30d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f933bea4-b46a-487d-acab-5cc5d9a64072',
    'Impliquer les communautés dans l’identification des risques, les alertes précoces, la préparation des ménages et la gestion des retours d’information.',
    '7ad7b2a7-970c-48cd-8245-d09062eba30d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b8d9458b-d927-4a85-a0bc-1d4a9e67b2bc',
    'Protection des populations vulnérables',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fb9a64ba-e0c8-49bb-9c15-ba2a386d9917',
    'Identifier les groupes les plus vulnérables exposés aux inondations, notamment enfants, femmes enceintes, personnes âgées, personnes vivant avec handicap, malades chroniques et ménages très précaires.',
    'b8d9458b-d927-4a85-a0bc-1d4a9e67b2bc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '37ee9635-45b3-4a0b-ae5d-0687b18ac133',
    'Prévoir des mesures spécifiques de protection, d’accès aux soins, de sécurité, d’assistance sociale et de continuité thérapeutique pour ces populations.',
    'b8d9458b-d927-4a85-a0bc-1d4a9e67b2bc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '164a0f83-3d29-4f72-af64-41a0210f30a0',
    'Intégrer les considérations de protection, de prévention des violences et de sauvegarde dans les évacuations et la gestion des sites d’accueil.',
    'b8d9458b-d927-4a85-a0bc-1d4a9e67b2bc'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e0053287-5dca-46fd-ad36-1e52b7ba648d',
    'Budget',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1ffce310-07ea-43d8-8af4-96b635eff259',
    'Définir un budget opérationnel pour la préparation et la riposte aux inondations couvrant alerte, évacuation, santé, WASH, logistique, communication, protection et relèvement précoce.',
    'e0053287-5dca-46fd-ad36-1e52b7ba648d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fa1a917b-a569-4559-98aa-d0bc9a029487',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour déclencher les actions prioritaires avant, pendant et après les inondations.',
    'e0053287-5dca-46fd-ad36-1e52b7ba648d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'feb14163-0b04-4dc2-9126-228c4d2304e8',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses liées à la gestion des inondations.',
    'e0053287-5dca-46fd-ad36-1e52b7ba648d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5a32aca9-3eb6-42a9-b2f2-5b911962db45',
    'Relèvement précoce et résilience',
    'a36a5e47-eabf-4329-a721-751089cc0978'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7615006c-3b80-4fba-9018-5b015098053d',
    'Prévoir des actions de relèvement rapide pour rétablir l’accès aux services essentiels, aux moyens de subsistance, à l’eau potable et aux infrastructures communautaires après les inondations.',
    '5a32aca9-3eb6-42a9-b2f2-5b911962db45'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '31be1e3e-cbd5-4ebd-a6e1-76730b3c0c7d',
    'Intégrer les mesures de réduction des risques de catastrophe dans la reconstruction, l’aménagement des sites, la protection des établissements de santé et la planification locale.',
    '5a32aca9-3eb6-42a9-b2f2-5b911962db45'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ef31acbf-da30-4833-88f0-896ff647d70e',
    'Organiser des revues après action, documenter les leçons apprises et renforcer durablement les capacités communautaires et institutionnelles face aux risques hydrométéorologiques.',
    '5a32aca9-3eb6-42a9-b2f2-5b911962db45'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'd87b39b2-726b-4d48-b7f3-124742732995',
    'Etat de préparation face aux risques météorologiques',
    'Météorologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1e05b301-c4a5-4a15-8ab8-f0183125ba7e',
    'Coordination et gouvernance',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '95172eaf-4acb-494d-b925-4530087e965b',
    'Mettre en place un mécanisme de coordination multisectorielle pour la préparation et la riposte aux tempêtes et tornades, associant météorologie, protection civile, santé, infrastructures, habitat, WASH, éducation, transport et autorités locales.',
    '1e05b301-c4a5-4a15-8ab8-f0183125ba7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a4c07614-572e-4854-985b-230d35ed0629',
    'Disposer d’un plan de préparation et de riposte aux risques météorologiques actualisé, budgétisé et adapté aux provinces et territoires exposés en RDC.',
    '1e05b301-c4a5-4a15-8ab8-f0183125ba7e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '138c2efc-3d9e-4a71-9121-70b29dd6b46a',
    'Définir les rôles, responsabilités, chaînes de commandement, procédures d’activation et mécanismes de coordination entre niveaux national, provincial, territorial et communautaire.',
    '1e05b301-c4a5-4a15-8ab8-f0183125ba7e'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '8ba4361d-6e0c-471a-b76c-3898a7e84461',
    'Alerte précoce et surveillance météorologique',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '24af3e16-414f-4111-afec-2c59ad945f74',
    'Mettre en place ou renforcer un système d’alerte précoce basé sur les prévisions météorologiques, le suivi des vents violents, orages sévères, pluies associées et autres signaux annonciateurs de tempêtes ou tornades.',
    '8ba4361d-6e0c-471a-b76c-3898a7e84461'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '74646f84-5755-44b4-bafc-fc93632c9e10',
    'Définir des seuils d’alerte, des messages normalisés et des procédures de diffusion rapide vers les autorités, services techniques, structures de santé, écoles et communautés exposées.',
    '8ba4361d-6e0c-471a-b76c-3898a7e84461'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7bb25608-0b84-449a-84cd-6f77d8000a18',
    'Assurer des mécanismes de veille météorologique continue et de partage rapide de l’information entre les services compétents et les plateformes de gestion des urgences.',
    '8ba4361d-6e0c-471a-b76c-3898a7e84461'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '06fa4498-354e-4bf3-a75d-d7b37bee9f45',
    'Cartographie des zones exposées et planification',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a70da082-dc49-4bb0-8930-878f3413b2f8',
    'Identifier et cartographier les zones les plus exposées aux vents violents, tempêtes localisées, tornades, chutes d’arbres, destructions d’habitations et interruptions des services essentiels.',
    '06fa4498-354e-4bf3-a75d-d7b37bee9f45'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3ce493eb-404b-45ed-a414-81761576a619',
    'Cartographier les infrastructures critiques, établissements de santé, écoles, marchés, axes de transport et réseaux essentiels particulièrement vulnérables aux événements météorologiques violents.',
    '06fa4498-354e-4bf3-a75d-d7b37bee9f45'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7787ee27-a67c-4d6c-a6d4-b343b2420b25',
    'Élaborer des plans locaux de contingence incluant scénarios d’impact, besoins prioritaires, sites de refuge et options de déploiement rapide des secours.',
    '06fa4498-354e-4bf3-a75d-d7b37bee9f45'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3c4e7b94-d67c-490c-835d-bfcdf76add58',
    'Protection des populations et abris',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5cd29f33-a0b5-4672-89ca-f9ac2b1653dd',
    'Prévoir des mesures de protection immédiate des populations avant et pendant les tempêtes ou tornades, y compris l’identification de lieux sûrs et de consignes de mise à l’abri.',
    '3c4e7b94-d67c-490c-835d-bfcdf76add58'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ca19cb17-7a1e-408d-bd9c-1501bc694a0d',
    'Identifier, préparer et Equiper des abris temporaires ou espaces de refuge adaptés, avec accès à l’eau, à l’assainissement, à la sécurité et aux soins de santé essentiels.',
    '3c4e7b94-d67c-490c-835d-bfcdf76add58'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2fd12fb3-2121-4f07-92b3-d17f6a269079',
    'Prévoir des procédures d’évacuation, de regroupement familial, d’enregistrement et d’assistance pour les ménages affectés par les destructions d’habitations ou le déplacement temporaire.',
    '3c4e7b94-d67c-490c-835d-bfcdf76add58'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '52b66f3a-0d43-475a-bf98-e923b3fae3c8',
    'Soins de santé et continuité des services',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e7848de4-d3ae-4f09-9505-0e09fca72054',
    'Identifier les établissements de santé exposés aux dommages liés aux vents violents, aux chutes d’arbres, à l’arrachement de toitures et aux coupures d’énergie, et prévoir des mesures de protection ou d’adaptation.',
    '52b66f3a-0d43-475a-bf98-e923b3fae3c8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'eabfe4e1-7355-4152-93d8-fa047b5a4c44',
    'Prépositionner les médicaments essentiels, kits d’urgence, moyens de première réponse et Equipements nécessaires à la prise en charge des blessés et des urgences post-événement.',
    '52b66f3a-0d43-475a-bf98-e923b3fae3c8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '29104219-6405-4f06-b06d-ac0bc1c437b4',
    'Prévoir des stratégies alternatives de continuité des services de santé, y compris Equipes mobiles, sites temporaires, références adaptées et solutions énergétiques de secours.',
    '52b66f3a-0d43-475a-bf98-e923b3fae3c8'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f68c5bf2-11e5-4944-acad-80a038d8435e',
    'EAU - HYGIENE - ASSAINISSEMENT',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9089b791-e0b0-4018-8a03-8ed91646226c',
    'Prévoir des interventions WASH d’urgence pour maintenir ou rétablir l’accès à l’eau potable, à l’hygiène de base et à l’assainissement dans les zones touchées par les tempêtes ou tornades.',
    'f68c5bf2-11e5-4944-acad-80a038d8435e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '83d89a30-de6f-462a-9227-31a5a503e621',
    'Identifier les risques de dommages aux réseaux d’eau, latrines, installations sanitaires et systèmes de drainage, et prévoir des solutions temporaires ou de remplacement.',
    'f68c5bf2-11e5-4944-acad-80a038d8435e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ef395117-1edc-440c-bc22-e84947397a43',
    'Prépositionner les intrants essentiels tels que chlore, jerrycans, savons, kits d’hygiène, bâches et matériels de réparation rapide dans les zones exposées.',
    'f68c5bf2-11e5-4944-acad-80a038d8435e'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '10ba7dc3-87c9-4226-b65d-bbf7983b72ec',
    'Surveillance épidémiologique post-évènement',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'af8b5f3e-f271-4daf-b844-88d3a61a8377',
    'Renforcer la surveillance des blessures, traumatismes, maladies prioritaires et événements de santé publique susceptibles d’augmenter après les tempêtes ou tornades.',
    '10ba7dc3-87c9-4226-b65d-bbf7983b72ec'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '97c1829b-233d-4770-a0f0-d7fb7eaf9524',
    'Diffuser les définitions de cas, outils de notification rapide et procédures d’alerte aux structures de santé, communautés affectées et sites d’accueil.',
    '10ba7dc3-87c9-4226-b65d-bbf7983b72ec'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b2c08d30-4ccb-4441-a234-b2a1557f7c9f',
    'Prévoir des mécanismes de surveillance communautaire et d’investigation rapide des flambées ou événements inhabituels après les intempéries.',
    '10ba7dc3-87c9-4226-b65d-bbf7983b72ec'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a12c64fe-d69e-4d21-8017-c89c62842607',
    'Logistique et accès',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e4502ff4-c8ce-4be6-9cd1-c97945186009',
    'Identifier les contraintes d’accès liées aux destructions de routes, ponts, réseaux électriques et télécommunications, et prévoir des solutions logistiques alternatives.',
    'a12c64fe-d69e-4d21-8017-c89c62842607'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '736b0e7b-ef13-4051-b76e-5b3cdd16297c',
    'Prépositionner les stocks d’urgence, Equipements de secours, bâches, outils de dégagement, carburant et moyens de transport dans les zones à risque.',
    'a12c64fe-d69e-4d21-8017-c89c62842607'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6168b4c9-4f61-49ea-ad49-9397fa1a51a8',
    'Mettre en place un mécanisme de suivi des stocks, de réapprovisionnement rapide et de coordination logistique pour les zones affectées ou isolées.',
    'a12c64fe-d69e-4d21-8017-c89c62842607'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1eefb51f-e9ac-4a6e-a28e-ebfa990ecd2b',
    'Communication des risques et engagement communautaire',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2fe8a8c7-d1f6-4484-bf4a-46406e2964bb',
    'Déployer une stratégie de communication sur les alertes météorologiques, les consignes de mise à l’abri, les mesures de sécurité, l’accès aux services et les conduites à tenir après tempête ou tornade.',
    '1eefb51f-e9ac-4a6e-a28e-ebfa990ecd2b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '88645db8-396b-4a3c-8926-1eda66acd456',
    'Adapter et diffuser des messages dans les langues locales via radios, relais communautaires, écoles, leaders locaux, téléphonie mobile et autres canaux appropriés.',
    '1eefb51f-e9ac-4a6e-a28e-ebfa990ecd2b'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ea6307f1-f9bb-4e77-a3dc-1f0144272d40',
    'Impliquer les communautés dans les dispositifs d’alerte, la préparation des ménages, la remontée d’information et l’identification rapide des besoins post-événement.',
    '1eefb51f-e9ac-4a6e-a28e-ebfa990ecd2b'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'cf8bc06f-17dd-48ec-a4ff-27da59b28b6d',
    'Protection des groupes vulnérables',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a2b03db4-a303-4d9d-a823-ac5a7a61eb56',
    'Identifier les groupes les plus vulnérables face aux tempêtes et tornades, notamment enfants, femmes enceintes, personnes âgées, personnes vivant avec handicap, malades chroniques et ménages vivant dans des abris précaires.',
    'cf8bc06f-17dd-48ec-a4ff-27da59b28b6d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e6b6c25d-cb40-4ad5-92c8-cb5ccbdd7440',
    'Prévoir des mesures spécifiques d’évacuation, d’assistance, de protection et de continuité des soins pour ces populations avant, pendant et après l’événement.',
    'cf8bc06f-17dd-48ec-a4ff-27da59b28b6d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f790d1f9-b212-46e6-afad-0fc2db9df90d',
    'Intégrer les considérations de protection, de sécurité et de prévention des violences dans la gestion des abris, évacuations et interventions post-tempête.',
    'cf8bc06f-17dd-48ec-a4ff-27da59b28b6d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '54a70f6f-27bb-46a3-8ef7-ff32b3cd7cd4',
    'Budget',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '507eeae5-2188-4499-9b25-7eeb7a86568e',
    'Définir un budget opérationnel pour la préparation et la riposte aux risques météorologiques couvrant alerte, évacuation, santé, abris, WASH, logistique, communication et relèvement.',
    '54a70f6f-27bb-46a3-8ef7-ff32b3cd7cd4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '10dbb7eb-f659-4b49-9174-0957dd1533f1',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour les actions prioritaires avant, pendant et après les tempêtes ou tornades.',
    '54a70f6f-27bb-46a3-8ef7-ff32b3cd7cd4'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7df409b6-f91d-411c-a94f-841ef8ca84a9',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses engagées dans la gestion des événements météorologiques extrêmes.',
    '54a70f6f-27bb-46a3-8ef7-ff32b3cd7cd4'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0eab5e6a-8a7c-4085-ada4-56eab9fda59e',
    'Relèvement / reconstruction résiliente',
    'd87b39b2-726b-4d48-b7f3-124742732995'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5e2a2dba-eae3-42f1-bf40-e5f59cb16f8a',
    'Prévoir des actions de relèvement rapide pour rétablir les services essentiels, les abris, les infrastructures de base et les conditions de vie des ménages affectés.',
    '0eab5e6a-8a7c-4085-ada4-56eab9fda59e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c2ff179-0cc2-48f8-935f-d41f88ee3fe0',
    'Intégrer des normes de reconstruction résiliente et des mesures de réduction des risques météorologiques dans la remise en Etat des habitations, écoles, structures de santé et infrastructures publiques.',
    '0eab5e6a-8a7c-4085-ada4-56eab9fda59e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0f3e74f4-5a23-401f-951e-5397190167cf',
    'Organiser des revues après action, documenter les leçons apprises et renforcer durablement les capacités locales face aux tempêtes, tornades et autres événements météorologiques extrêmes.',
    '0eab5e6a-8a7c-4085-ada4-56eab9fda59e'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '054c9cfa-d92c-4dde-ad99-5607aaf8a00c',
    'Etat de préparation à faire face au risque de naufrage',
    'Biologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f61d0290-0e67-4e0e-8959-f6aa2c848116',
    'Coordination et gouvernance',
    '054c9cfa-d92c-4dde-ad99-5607aaf8a00c'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1a992b70-66ab-42fd-94ca-1e614d06f1a2',
    'Mettre en place un mécanisme de coordination multisectorielle pour la prévention et la riposte aux naufrages, associant transport fluvial/lacustre, santé, protection civile, autorités portuaires, sécurité, communication et autorités territoriales.',
    'f61d0290-0e67-4e0e-8959-f6aa2c848116'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '2061b5ce-32cb-4f5d-8170-696e74579603',
    'Etat de préparation à faire face au risque de naufrage',
    'Géophysiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bd21aa67-ecfa-4ada-af66-926bd5f1cfee',
    'Coordination et gouvernance',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd3b692f2-d270-4e37-b9a7-e3243f5f63c2',
    'Disposer d’un plan de préparation et de riposte aux naufrages actualisé, budgétisé et adapté aux réalités des lacs, fleuves, rivières et voies navigables de la RDC.',
    'bd21aa67-ecfa-4ada-af66-926bd5f1cfee'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '881d4b76-2b25-432f-8df3-8d95106a6a90',
    'Définir les rôles, responsabilités, chaînes de commandement, modalités d’activation et mécanismes de coordination entre niveaux national, provincial, local et communautaire.',
    'bd21aa67-ecfa-4ada-af66-926bd5f1cfee'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5c4398d0-2be5-4ebb-be43-7570a04d1332',
    'Prévention et sécurité de la navigation',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c77a8e43-0627-4233-9142-70ab908af2a7',
    'Renforcer l’application des mesures de sécurité de navigation, notamment contrôle de surcharge, Etat des embarcations, Equipements obligatoires, qualifications des conducteurs et respect des itinéraires autorisés.',
    '5c4398d0-2be5-4ebb-be43-7570a04d1332'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2beaa898-4a27-4f50-baad-bd4d9768b546',
    'Mettre en place des contrôles réguliers dans les ports, débarcadères et points d’embarquement afin de vérifier la sécurité des passagers, des marchandises et des embarcations.',
    '5c4398d0-2be5-4ebb-be43-7570a04d1332'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f104d8b7-bc11-4b42-b3b2-93669b90eb2c',
    'Prévoir des mesures de prévention liées aux conditions météorologiques défavorables, à la navigation nocturne, aux courants dangereux et aux défaillances techniques des embarcations.',
    '5c4398d0-2be5-4ebb-be43-7570a04d1332'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '135c8273-780f-4a3e-a596-232513427a97',
    'Alerte et recherche-sauvetage',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1899f992-fc3e-48ae-aa46-dc70dacaef06',
    'Mettre en place des mécanismes d’alerte rapide et de notification immédiate des naufrages ou incidents majeurs sur les voies navigables.',
    '135c8273-780f-4a3e-a596-232513427a97'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6004e74a-ca93-4cb3-a4c0-e8cf008d45f2',
    'Identifier, former et Equiper des Equipes de recherche-sauvetage capables d’intervenir rapidement sur les lacs, fleuves et rivières prioritaires.',
    '135c8273-780f-4a3e-a596-232513427a97'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1d5fc185-db88-4393-9478-beeff7075637',
    'Définir des procédures opérationnelles pour la localisation des embarcations en détresse, la coordination des secours et le sauvetage des survivants en milieu aquatique.',
    '135c8273-780f-4a3e-a596-232513427a97'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '03f273c7-46d2-40fa-9587-1bd927387790',
    'Evacuation et survie en milieu aquatique',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f919f2b7-f700-4789-9124-10e475342f6b',
    'Veiller à la disponibilité et à l’usage effectif des gilets de sauvetage, bouées, cordages et autres moyens de flottaison sur les embarcations transportant des passagers.',
    '03f273c7-46d2-40fa-9587-1bd927387790'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2afde0d7-214d-4841-a7b7-c92f8b636899',
    'Former les équipages et acteurs locaux aux gestes de sauvetage, à l’évacuation d’urgence, à la récupération de personnes tombées à l’eau et à la survie en milieu aquatique.',
    '03f273c7-46d2-40fa-9587-1bd927387790'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8acf9bcd-7a10-446b-9017-24135bdc3264',
    'Prévoir des procédures simples d’évacuation et de survie adaptées aux types d’embarcations, aux traversées de nuit et aux contextes de navigation surchargée.',
    '03f273c7-46d2-40fa-9587-1bd927387790'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1a387725-9c6f-4144-a49d-a3e1a23b2006',
    'Prise en charge des victimes et triage',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '88a89ca7-035a-45d7-a777-a301e15b9074',
    'Identifier les structures de santé de référence capables d’assurer le triage, la réanimation initiale, la prise en charge de noyade, d’hypothermie, de traumatismes et la référence des cas graves.',
    '1a387725-9c6f-4144-a49d-a3e1a23b2006'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7ee41e18-a350-49b8-a76a-5dfac766068c',
    'Former les Equipes de santé et de première réponse à la prise en charge des victimes de noyade, au soutien ventilatoire, à la réanimation et à la gestion des incidents à victimes multiples.',
    '1a387725-9c6f-4144-a49d-a3e1a23b2006'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fcb5c6b0-1f67-4ae1-b9fc-cb25122c7595',
    'Prépositionner les intrants médicaux, matériels de premiers secours et moyens de transport sanitaire nécessaires à une réponse rapide après naufrage.',
    '1a387725-9c6f-4144-a49d-a3e1a23b2006'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e899fdb9-236b-46c0-9e82-061cf82ae238',
    'Gestion des décès et des disparus',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '835d51a3-db27-4d20-9a1d-ab9cafb40e24',
    'Prévoir des procédures pour la récupération, l’identification, la gestion digne des corps et la documentation des personnes décédées lors d’un naufrage.',
    'e899fdb9-236b-46c0-9e82-061cf82ae238'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2c7f1127-4162-459e-9a23-ee5e99491d82',
    'Mettre en place des mécanismes de recherche des disparus, de collecte d’informations auprès des familles et de coordination avec les autorités compétentes.',
    'e899fdb9-236b-46c0-9e82-061cf82ae238'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '907ad51f-a799-4387-9264-98602be727e3',
    'Prévoir un dispositif de communication avec les familles pour la notification, l’accompagnement et la réduction des tensions liées à la gestion des décès et disparitions.',
    'e899fdb9-236b-46c0-9e82-061cf82ae238'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'be53fc80-5955-4d39-9cf5-7d1087f3969e',
    'Surveillance sanitaire post-incident',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'be213245-5105-4562-9303-32cf18b02695',
    'Mettre en place une surveillance rapide des blessures, traumatismes, complications respiratoires, infections secondaires et autres événements de santé publique après un naufrage majeur.',
    'be53fc80-5955-4d39-9cf5-7d1087f3969e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7e5a31ac-ff70-4014-9cf2-a964959fd27b',
    'Assurer la disponibilité des outils de notification, d’enregistrement des victimes et de suivi des besoins sanitaires dans les zones touchées.',
    'be53fc80-5955-4d39-9cf5-7d1087f3969e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'acbd7e29-5d5a-433c-af36-18f9e6ef5b2e',
    'Prévoir des évaluations sanitaires rapides pour orienter la réponse dans les communautés riveraines, points de débarquement et structures d’accueil des survivants.',
    'be53fc80-5955-4d39-9cf5-7d1087f3969e'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '042915e8-3476-48ab-8142-f067f46e50b6',
    'Logistique et moyens de sauvetage',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3b05aca3-1642-468e-8f3e-96d24f1f251c',
    'Identifier, prépositionner et entretenir les moyens de sauvetage nécessaires : embarcations de secours, gilets de sauvetage, bouées, cordages, lampes, moyens de repêchage et Equipements de communication.',
    '042915e8-3476-48ab-8142-f067f46e50b6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cc0d4d57-102f-40a8-a17a-5979d232de3b',
    'Prévoir des moyens de transport, de carburant, de stockage et de maintenance adaptés aux opérations sur les lacs, fleuves et rivières.',
    '042915e8-3476-48ab-8142-f067f46e50b6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'feaa2019-d015-4f8f-9025-82ac407d1d4d',
    'Mettre en place un système de gestion des stocks, de réapprovisionnement rapide et de coordination logistique pour les interventions nautiques d’urgence.',
    '042915e8-3476-48ab-8142-f067f46e50b6'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '371e4bd1-179b-454a-86b3-1414a5a57d8f',
    'Communication des risques et engagement communautaire',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bd38c991-871d-4016-9d19-94a80581c181',
    'Déployer une stratégie de communication sur les risques de naufrage, la sécurité des traversées, les consignes d’urgence et les comportements de prévention à adopter avant l’embarquement.',
    '371e4bd1-179b-454a-86b3-1414a5a57d8f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b42c5590-b3c0-4d73-aa31-64299b6a3070',
    'Adapter et diffuser des messages dans les langues locales via radios communautaires, chefs locaux, exploitants nautiques, ports et autres canaux appropriés.',
    '371e4bd1-179b-454a-86b3-1414a5a57d8f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '21e6bd2b-94cc-444b-a059-7869fc6de831',
    'Impliquer les communautés riveraines, opérateurs de transport fluvial et associations locales dans la prévention, l’alerte et la remontée rapide d’informations lors d’incidents.',
    '371e4bd1-179b-454a-86b3-1414a5a57d8f'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c542a9bd-5de7-4b75-a028-0223dae4ee49',
    'Protection des groupes vulnérables et voyageurs',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3dbd3c39-b522-4ed7-8b75-f7dba3ee92e1',
    'Identifier les groupes les plus vulnérables lors des traversées, notamment enfants, femmes enceintes, personnes âgées, personnes vivant avec handicap, personnes non-nageuses et voyageurs en situation précaire.',
    'c542a9bd-5de7-4b75-a028-0223dae4ee49'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c375349d-354f-42bf-9b87-2e5cd00b75ea',
    'Prévoir des mesures spécifiques de protection, d’assistance, de priorité au sauvetage et de prise en charge pour ces groupes lors d’un naufrage.',
    'c542a9bd-5de7-4b75-a028-0223dae4ee49'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fb665136-c6fa-4ad6-bae1-74a5c789df41',
    'Mettre en place des mécanismes d’information et d’orientation des voyageurs sur les mesures de sécurité avant le départ et dans les points d’embarquement.',
    'c542a9bd-5de7-4b75-a028-0223dae4ee49'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a0a227ea-5756-4fb0-993c-876a467cf2af',
    'Budget',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ab73e735-13f8-4037-a1cb-be56678f7361',
    'Définir un budget opérationnel couvrant prévention, contrôle de la navigation, recherche-sauvetage, santé, communication, logistique et relèvement après naufrage.',
    'a0a227ea-5756-4fb0-993c-876a467cf2af'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a00ee5a5-3cf2-4569-90d4-30a79ea3db6d',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour les premières heures de réponse après un naufrage majeur.',
    'a0a227ea-5756-4fb0-993c-876a467cf2af'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '5fbcc88c-8068-43e2-a992-64134708570f',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses engagées dans la gestion des incidents nautiques.',
    'a0a227ea-5756-4fb0-993c-876a467cf2af'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0087cafb-d888-439f-ae7a-61a7f86f9d21',
    'Relèvement / sécurité maritime renforcée',
    '2061b5ce-32cb-4f5d-8170-696e74579603'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1a95247d-2035-4782-b218-7c7a4f99754c',
    'Prévoir des actions de relèvement rapide pour restaurer la sécurité des traversées, la fonctionnalité des ports/débarcadères et la confiance des usagers après un naufrage.',
    '0087cafb-d888-439f-ae7a-61a7f86f9d21'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7816231d-0856-48f7-ad81-408a8726fc92',
    'Organiser des évaluations post-incident, documenter les causes et les leçons apprises, et mettre à jour les règles, procédures et dispositifs de prévention des naufrages.',
    '0087cafb-d888-439f-ae7a-61a7f86f9d21'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7b4ef07e-defb-445f-ad15-bfd7a029010c',
    'Renforcer durablement la sécurité de la navigation, la régulation des embarcations, la formation des équipages et les capacités locales de sauvetage sur les voies navigables.',
    '0087cafb-d888-439f-ae7a-61a7f86f9d21'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '10e583b4-7071-481d-9e2b-d4c9259b7c13',
    'Etat de préparation à faire face aux feux de brousse / risque climatologique',
    'Climatologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '3039ab7f-bdef-423b-b6d7-46867e59739c',
    'Coordination et gouvernance',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '48a78f15-03a6-4918-ace6-e57dcaa40fd4',
    'Mettre en place un mécanisme de coordination multisectorielle pour la prévention et la riposte aux feux de brousse, associant environnement, météorologie, santé, protection civile, agriculture, autorités territoriales et communautés locales.',
    '3039ab7f-bdef-423b-b6d7-46867e59739c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3af52259-b4ef-4dda-998f-b065af8edc66',
    'Disposer d’un plan de préparation et de riposte aux feux de brousse actualisé, budgétisé et adapté aux zones forestières, savanicoles et interfaces habitat-végétation en RDC.',
    '3039ab7f-bdef-423b-b6d7-46867e59739c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6a3e3cc6-1d12-4498-9d55-d54ed610390f',
    'Définir les rôles, responsabilités, circuits d’alerte, modalités d’activation et mécanismes de coordination entre niveaux national, provincial, territorial et communautaire.',
    '3039ab7f-bdef-423b-b6d7-46867e59739c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '4e0f59a1-657b-46e4-b7f3-9ce0e6c95380',
    'Alerte précoce et surveillance climatologique',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b201fef5-b622-410b-9085-bbbfe93b5b7a',
    'Mettre en place ou renforcer un système d’alerte précoce fondé sur les conditions climatiques favorables aux feux, notamment sécheresse, chaleur, vent, faible humidité et saisonnalité locale.',
    '4e0f59a1-657b-46e4-b7f3-9ce0e6c95380'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ee75d235-89ce-4841-95d2-a80432443180',
    'Définir des seuils d’alerte, des procédures de diffusion rapide des informations et des mécanismes de veille partagée entre services techniques, autorités locales et communautés.',
    '4e0f59a1-657b-46e4-b7f3-9ce0e6c95380'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b4e2e529-1253-4837-9070-9d133cd8ddb0',
    'Assurer le suivi régulier des indices de risque incendie, des épisodes de fumée et des conditions météorologiques critiques dans les zones exposées.',
    '4e0f59a1-657b-46e4-b7f3-9ce0e6c95380'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6312a5f4-6424-4634-bf9f-99eb818003c5',
    'Cartographie des zones à risque et suivi environnemental',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1562ca78-673e-46af-9c2f-3e56e460a329',
    'Identifier et cartographier les zones sujettes aux feux de brousse, les couloirs de propagation, les villages exposés, les infrastructures critiques et les aires protégées vulnérables.',
    '6312a5f4-6424-4634-bf9f-99eb818003c5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6f4a9621-1abb-4c3e-bda6-7f040f250b5f',
    'Utiliser les données de télédétection, d’observation locale et de suivi environnemental pour détecter, localiser et suivre l’évolution des feux et des zones dégradées.',
    '6312a5f4-6424-4634-bf9f-99eb818003c5'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '87034cf0-1044-4d06-8f06-be221727bc20',
    'Actualiser régulièrement les cartes de risque en intégrant les changements d’occupation des sols, la pression anthropique, la déforestation et la variabilité climatique.',
    '6312a5f4-6424-4634-bf9f-99eb818003c5'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'c2a30958-d9f3-4042-82a1-8378538b9d48',
    'Prévention communautaire et gestion des combustibles',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b56dd0ea-2fe2-469d-84c7-3f9346aecc69',
    'Mettre en œuvre des actions communautaires de prévention des feux de brousse, notamment la sensibilisation, la surveillance locale, la réglementation des brûlis et la réduction des pratiques à haut risque.',
    'c2a30958-d9f3-4042-82a1-8378538b9d48'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e973d82c-1048-4c21-9e8d-38d48e06a6b4',
    'Identifier et gérer les combustibles végétaux à risque autour des habitations, écoles, structures de santé, routes, entrepôts et autres installations sensibles.',
    'c2a30958-d9f3-4042-82a1-8378538b9d48'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ddf5074e-ad72-434d-8a1d-f8ed44616ce9',
    'Prévoir des coupe-feux, des zones tampons, des dispositifs locaux de surveillance et des Equipes communautaires formées à la prévention et à la première intervention.',
    'c2a30958-d9f3-4042-82a1-8378538b9d48'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a41f7872-3090-4c5b-acff-a6ad3a2adf37',
    'Surveillance sanitaire et qualité de l''air',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cd206d84-f08a-403a-97fd-effe4f099e31',
    'Renforcer la surveillance des effets sanitaires liés aux fumées et aux conditions climatologiques extrêmes, notamment détresse respiratoire, crises d’asthme, irritations, coups de chaleur et aggravation des maladies chroniques.',
    'a41f7872-3090-4c5b-acff-a6ad3a2adf37'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '49ae6b8e-e7cb-40c4-a491-4c1652258fcf',
    'Mettre en place des mécanismes de suivi de la qualité de l’air ou des indicateurs de pollution atmosphérique dans les zones affectées ou exposées aux fumées des feux.',
    'a41f7872-3090-4c5b-acff-a6ad3a2adf37'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ea7a164a-c74c-4a2a-810b-092ad3e57a8d',
    'Diffuser des messages de santé publique et des conduites à tenir pour les personnes sensibles, notamment enfants, personnes âgées, femmes enceintes et personnes vivant avec des maladies respiratoires ou cardiovasculaires.',
    'a41f7872-3090-4c5b-acff-a6ad3a2adf37'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '530731d7-31c5-4c39-9593-457e7af1311a',
    'Protection des populations et évacuation',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '155aba34-941f-4d24-8f30-0cdb95899be8',
    'Identifier les populations, habitations, écoles et infrastructures exposées et prévoir des procédures d’évacuation ou de mise à l’abri en cas de menace directe de feu ou de fumées intenses.',
    '530731d7-31c5-4c39-9593-457e7af1311a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '60e8fc66-fbc7-4d58-8796-babb0bfb7c7e',
    'Définir des itinéraires d’évacuation, des points de rassemblement sûrs et des sites d’accueil temporaires adaptés aux conditions locales.',
    '530731d7-31c5-4c39-9593-457e7af1311a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b0e14a7d-1032-401d-bd70-5df132d663cd',
    'Prévoir des mesures spécifiques pour protéger les groupes vulnérables, les personnes à mobilité réduite et les communautés isolées lors des évacuations ou restrictions d’accès.',
    '530731d7-31c5-4c39-9593-457e7af1311a'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '8b3a87f8-a1bc-49f3-85d2-72cef3e4e3a1',
    'Soins de santé et continuité des services',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9f8396e8-b83b-4aaf-8548-ab5e156af73f',
    'Identifier les structures de santé exposées aux feux, fumées, chaleur extrême ou coupures d’accès et prévoir des mesures de protection physique et de continuité des soins essentiels.',
    '8b3a87f8-a1bc-49f3-85d2-72cef3e4e3a1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '12cdf185-4b1a-4f7b-96a4-cb1df9de838a',
    'Prépositionner les intrants médicaux essentiels pour la prise en charge des traumatismes, brûlures, détresses respiratoires, déshydratation et autres complications liées aux feux et à la chaleur.',
    '8b3a87f8-a1bc-49f3-85d2-72cef3e4e3a1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd4ef8901-e790-44c9-adb1-e9e1eea5308a',
    'Prévoir des stratégies alternatives de prestation des soins, y compris Equipes mobiles, références adaptées et réorganisation des services en cas d’interruption ou d’évacuation.',
    '8b3a87f8-a1bc-49f3-85d2-72cef3e4e3a1'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6fc5321f-8b2b-4852-9b31-c5a5658e5615',
    'EAU - HYGIENE - ASSAINISSEMENT ET RESSOURCES ESSENTIELLES',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '95f634e2-d7b1-4c5a-8382-cdeb3da974e1',
    'Évaluer les risques de perturbation de l’approvisionnement en eau, de contamination, de rareté saisonnière et de dommages aux infrastructures essentielles sous l’effet des feux et de la sécheresse.',
    '6fc5321f-8b2b-4852-9b31-c5a5658e5615'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '572c7979-c397-4a5b-9aa1-c612b0e92bc2',
    'Prévoir des solutions de sécurisation de l’eau potable, de stockage, d’hygiène de base et d’approvisionnement d’urgence pour les structures de santé, sites d’accueil et communautés exposées.',
    '6fc5321f-8b2b-4852-9b31-c5a5658e5615'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f2756c40-a4fc-41ac-b1d4-2f3f48c9b59e',
    'Protéger les ressources essentielles et les Equipements critiques contre les effets du feu, de la chaleur, de la fumée et des interruptions d’énergie ou d’accès.',
    '6fc5321f-8b2b-4852-9b31-c5a5658e5615'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '919b42ff-2d90-4d28-849e-940d81bab642',
    'Logistique et accès',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b9919eff-9034-40d7-ba6d-b757b1e025bb',
    'Identifier les contraintes d’accès liées aux feux, à la fumée, à l’enclavement saisonnier et à la dégradation des voies de communication, et prévoir des solutions alternatives de déploiement.',
    '919b42ff-2d90-4d28-849e-940d81bab642'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2886086c-f3b7-40a0-a7ee-dfab63412a7c',
    'Prépositionner les Equipements de lutte, de protection individuelle, de santé, de communication et de transport dans les zones à haut risque avant les périodes critiques.',
    '919b42ff-2d90-4d28-849e-940d81bab642'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9d22e0b4-9911-4ee1-aa63-651909f426ce',
    'Mettre en place un système de gestion des stocks, de maintenance, de réapprovisionnement rapide et de suivi logistique pour les opérations de prévention et de riposte.',
    '919b42ff-2d90-4d28-849e-940d81bab642'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '56b163c3-7343-47de-b45c-820eced6aa97',
    'Communication des risques et engagement communautaire',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9d6a2c04-ad8f-48a3-9384-fd53c9b9c706',
    'Déployer une stratégie de communication sur la prévention des feux de brousse, les comportements à risque, les alertes climatologiques, les consignes de protection et les effets sanitaires des fumées.',
    '56b163c3-7343-47de-b45c-820eced6aa97'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6caffeb9-d757-4252-a1dd-b20a2ed7247f',
    'Adapter et diffuser des messages dans les langues locales via radios communautaires, écoles, leaders locaux, agents communautaires et autres canaux appropriés.',
    '56b163c3-7343-47de-b45c-820eced6aa97'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '69956ea0-6f5a-4699-950c-ad80df3c469d',
    'Impliquer activement les communautés dans la prévention, la remontée d’alertes, la surveillance locale, la protection des ressources naturelles et le retour d’information sur les risques.',
    '56b163c3-7343-47de-b45c-820eced6aa97'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '793ba1f7-6be5-4bbe-ad44-0fa8e895a968',
    'Budget',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '64f4340f-8392-4e92-8ad9-05f1d37b5d47',
    'Définir un budget opérationnel pour la prévention et la riposte aux feux de brousse couvrant alerte, surveillance, santé, logistique, communication, protection et relèvement écologique.',
    '793ba1f7-6be5-4bbe-ad44-0fa8e895a968'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ac69016a-201e-4375-9f51-6d4baee4114a',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières avant et pendant les périodes critiques de risque climatologique.',
    '793ba1f7-6be5-4bbe-ad44-0fa8e895a968'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6afce2b7-9577-41e5-b62c-d6c4c7bf4c34',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses liées à la préparation et à la riposte.',
    '793ba1f7-6be5-4bbe-ad44-0fa8e895a968'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f2e28a64-1057-4b03-88f3-523535ee9630',
    'Relèvement écologique et résilience',
    '10e583b4-7071-481d-9e2b-d4c9259b7c13'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c322709-1286-43a8-afbc-6625e5bdfbf4',
    'Prévoir des actions de restauration rapide des zones brûlées, de protection des sols, de réduction de l’érosion et de réhabilitation des écosystèmes dégradés après les feux.',
    'f2e28a64-1057-4b03-88f3-523535ee9630'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1bb3b2f3-0601-4269-bded-b421e404efb8',
    'Intégrer des mesures de résilience climatique, de gestion durable des terres, de reboisement et d’adaptation communautaire dans les plans locaux et sectoriels.',
    'f2e28a64-1057-4b03-88f3-523535ee9630'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4374b8fa-8f11-4992-af92-af92c5365516',
    'Organiser des revues après action, documenter les leçons apprises et renforcer durablement les capacités institutionnelles et communautaires face aux risques climatologiques.',
    'f2e28a64-1057-4b03-88f3-523535ee9630'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '80be50cf-d0cd-4892-a9e5-6d9192041d66',
    'Etat de préparation à faire face aux risques technologiques',
    'Technologiques',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '63d81f74-d45e-4d0b-baf2-e5243081ac5d',
    'Coordination et gouvernance',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9d097b67-e4f8-407b-9646-2c65de28fc82',
    'Mettre en place un mécanisme de coordination multisectorielle pour les risques technologiques associant santé, environnement, industrie, mines, énergie, transport, protection civile, sécurité, autorités territoriales et partenaires techniques.',
    '63d81f74-d45e-4d0b-baf2-e5243081ac5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '35971db0-7d01-42a1-8f2d-8b3f39bbffa5',
    'Disposer d’un plan de préparation et de riposte aux risques technologiques actualisé, budgétisé et harmonisé entre les niveaux national, provincial et local.',
    '63d81f74-d45e-4d0b-baf2-e5243081ac5d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '418d6830-23c9-441d-a201-1347dfd69a8c',
    'Définir les rôles, responsabilités, chaînes de commandement, procédures d’activation et mécanismes de coordination intersectorielle en cas d’incident technologique majeur.',
    '63d81f74-d45e-4d0b-baf2-e5243081ac5d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bb2740a7-6e78-44c4-8129-c51515381db7',
    'Identification des sites et cartographie des risques',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '41c5584a-cd9e-4582-9283-629956e9365a',
    'Identifier et cartographier les sites, installations et infrastructures exposant à des risques technologiques, notamment dépôts de carburant, sites miniers, usines, laboratoires, entrepôts chimiques, hôpitaux, axes de transport et installations énergétiques.',
    'bb2740a7-6e78-44c4-8129-c51515381db7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'aa5bd2e0-1cbd-4607-a959-c09b18771e85',
    'Évaluer les scénarios de danger, les populations exposées, les infrastructures critiques menacées et les effets domino potentiels autour des sites à risque.',
    'bb2740a7-6e78-44c4-8129-c51515381db7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '39743280-bc78-462b-a585-523cebc72e56',
    'Actualiser régulièrement la cartographie des risques technologiques et l’intégrer dans les plans territoriaux, sanitaires et de gestion des urgences.',
    'bb2740a7-6e78-44c4-8129-c51515381db7'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '9f13dac7-b115-469c-88bf-de13602cbb18',
    'Alerte précoce et notification des incidents',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '67e8d43e-9b96-4cc9-b58d-bf12369d87ed',
    'Mettre en place des mécanismes de détection et de notification immédiate des incidents technologiques, y compris fuites chimiques, incendies industriels, explosions, radiations ou accidents liés au transport de matières dangereuses.',
    '9f13dac7-b115-469c-88bf-de13602cbb18'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3074e346-1bd7-4006-979e-fed10c117587',
    'Définir des seuils d’alerte, des circuits d’information et des procédures de transmission rapide entre exploitants, autorités, services de santé, protection civile et communautés.',
    '9f13dac7-b115-469c-88bf-de13602cbb18'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7803f7b7-5faa-4aec-b914-ca39a618108d',
    'Tester régulièrement les dispositifs d’alerte, de notification et de coordination opérationnelle au moyen d’exercices et de simulations.',
    '9f13dac7-b115-469c-88bf-de13602cbb18'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ec7c25d2-4141-4bcb-a61d-673caeca72f7',
    'Préparation aux incidents chimiques',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e209be0f-03cd-4f9a-939c-fee29a6563c8',
    'Identifier les produits chimiques dangereux prioritaires, leurs sites de stockage, les voies d’exposition potentielles et les moyens de contrôle des risques.',
    'ec7c25d2-4141-4bcb-a61d-673caeca72f7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '638086ac-f1b2-47a9-97b3-612981e3aceb',
    'Mettre en place des procédures de confinement, d’isolement de zone, de décontamination et de prise en charge initiale des expositions chimiques.',
    'ec7c25d2-4141-4bcb-a61d-673caeca72f7'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '121f0430-12ff-48e1-a5c8-550b819676bd',
    'Assurer la disponibilité des fiches de sécurité, des antidotes pertinents lorsqu’ils existent, des Equipements de protection et des capacités de conseil toxicologique.',
    'ec7c25d2-4141-4bcb-a61d-673caeca72f7'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1bce6d09-33f7-45fa-ac15-028fdcc91057',
    'Préparation aux incidents radiologiques et nucléaires',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c76cba3a-0c00-4a60-99ce-7863c973dc68',
    'Identifier les sources radiologiques et installations concernées, les usages médicaux, industriels ou de recherche, et les scénarios d’incident associés.',
    '1bce6d09-33f7-45fa-ac15-028fdcc91057'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a54a7f7a-f38d-46de-b24a-de2d6f7ec462',
    'Mettre en place des procédures de sécurisation, de zonage, de contrôle d’accès, de détection, de protection et de notification en cas d’incident radiologique.',
    '1bce6d09-33f7-45fa-ac15-028fdcc91057'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fca2efb2-74de-4df8-bafa-13a223aa8cf6',
    'Former les Equipes concernées aux principes de radioprotection, à la gestion des victimes contaminées et à la coordination avec les autorités spécialisées compétentes.',
    '1bce6d09-33f7-45fa-ac15-028fdcc91057'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '04373238-b28a-4ea4-8675-ab5c65711067',
    'Préparation aux accidents industriels et incendies / explosions',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'a40c8c69-2c41-4d6a-b47f-ecbc4a96d482',
    'Évaluer les risques d’incendie, d’explosion, d’effondrement ou d’accident majeur dans les sites industriels, miniers, pétroliers, énergétiques et de stockage.',
    '04373238-b28a-4ea4-8675-ab5c65711067'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6e041446-3a32-4a43-9746-acb7b053386a',
    'Prévoir des plans d’intervention, de confinement, de lutte incendie, de sauvetage et d’évacuation adaptés aux installations à haut risque.',
    '04373238-b28a-4ea4-8675-ab5c65711067'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2db6bcb2-582a-4e2d-bf2d-e780bd7d035c',
    'Former et Equiper les Equipes de première intervention ainsi que les services d’urgence pour les scénarios d’accidents industriels complexes et multi-victimes.',
    '04373238-b28a-4ea4-8675-ab5c65711067'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '6bdbfd94-720c-4b68-bc25-b6ffd39a3f23',
    'Surveillance sanitaire et environnementale',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ad5b1c5c-e1b2-438d-aa77-20654bb0ff01',
    'Mettre en place une surveillance des effets sanitaires aigus et chroniques potentiellement liés aux incidents technologiques, ainsi qu’un suivi environnemental de l’air, de l’eau, du sol et des chaînes alimentaires si nécessaire.',
    '6bdbfd94-720c-4b68-bc25-b6ffd39a3f23'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c3957802-14db-44fd-8f38-f850668b1160',
    'Définir des procédures de prélèvement, d’analyse, d’interprétation et de partage des données sanitaires et environnementales pour appuyer la décision.',
    '6bdbfd94-720c-4b68-bc25-b6ffd39a3f23'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'abe3cb26-fad3-4bd9-85d0-bfd17c4169c4',
    'Assurer la coordination entre santé publique, laboratoires, environnement et secteurs techniques pour l’évaluation rapide des impacts.',
    '6bdbfd94-720c-4b68-bc25-b6ffd39a3f23'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '06c137ff-aab6-458e-9a97-c99e6a717927',
    'Prise en charge médicale et décontamination',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'bfdcd96c-e36c-4786-9110-cebf5469eb7a',
    'Identifier les structures de santé capables d’assurer le triage, la stabilisation, la prise en charge spécialisée et la référence des victimes d’incidents chimiques, radiologiques ou industriels.',
    '06c137ff-aab6-458e-9a97-c99e6a717927'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9dbba8f2-1a8b-46a5-a6d1-3159b0508871',
    'Mettre en place des procédures de décontamination des victimes, du personnel, du matériel et des sites de soins lorsque cela est requis.',
    '06c137ff-aab6-458e-9a97-c99e6a717927'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b055241f-382e-4c83-b23f-9a6cb31838ac',
    'Former le personnel de santé à la prise en charge des intoxications, brûlures, traumatismes, expositions radiologiques et incidents multi-victimes.',
    '06c137ff-aab6-458e-9a97-c99e6a717927'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ae9762c1-3630-480a-b194-ffbc1ee0102f',
    'Protection des populations et évacuation',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f4b1d2a1-1ba0-4b1a-85b9-0ecadf70810c',
    'Identifier les zones d’impact potentielles, les populations exposées et les groupes vulnérables nécessitant des mesures spécifiques de protection ou d’évacuation.',
    'ae9762c1-3630-480a-b194-ffbc1ee0102f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e2c571af-0958-44d1-bf65-698b9c727d01',
    'Prévoir des procédures de confinement, d’évacuation, de mise à l’abri, de contrôle des accès et d’organisation de sites d’accueil selon le type d’incident.',
    'ae9762c1-3630-480a-b194-ffbc1ee0102f'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '140da930-10f2-48f1-9439-8dc9997b339e',
    'Assurer la protection des personnes déplacées, des travailleurs de première ligne et des communautés affectées pendant toute la durée de la gestion de l’incident.',
    'ae9762c1-3630-480a-b194-ffbc1ee0102f'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bb0be2dd-117b-463e-9cca-3eef6ba333b8',
    'Communication des risques et engagement communautaire',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd5171b3c-4592-467c-8ae1-adfe84320155',
    'Déployer une stratégie de communication claire sur les dangers technologiques, les mesures de protection, les conduites à tenir et les restrictions éventuelles à appliquer en cas d’incident.',
    'bb0be2dd-117b-463e-9cca-3eef6ba333b8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'e0b7535f-1f99-443b-ae8e-16153af820b7',
    'Adapter et diffuser des messages dans les langues locales via des canaux appropriés, en tenant compte des spécificités des zones industrielles, minières, urbaines et frontalières.',
    'bb0be2dd-117b-463e-9cca-3eef6ba333b8'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '3f5b839f-54f4-43f3-9706-77cb9bbb05e6',
    'Mettre en place des mécanismes de retour d’information, de gestion des rumeurs et d’engagement communautaire avant, pendant et après les incidents.',
    'bb0be2dd-117b-463e-9cca-3eef6ba333b8'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5c462f19-9807-4328-8757-6f65cb8aa4d6',
    'Logistique et Equipements spécialisés',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c9d75332-fef8-4852-9bbc-4ae7c763af96',
    'Identifier, prépositionner et entretenir les Equipements spécialisés nécessaires : EPI adaptés, détecteurs, matériels de confinement, kits de décontamination, moyens de transport protégés et outils de communication.',
    '5c462f19-9807-4328-8757-6f65cb8aa4d6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7e382075-c164-4137-914d-6d7ab097a991',
    'Mettre en place un système de gestion des stocks, de maintenance, de réapprovisionnement rapide et de suivi logistique pour les Equipements critiques.',
    '5c462f19-9807-4328-8757-6f65cb8aa4d6'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4e011021-ae86-457c-9f1f-0fcf2720a132',
    'Prévoir des accords d’assistance technique et de mobilisation rapide des ressources spécialisées nationales ou partenaires en cas d’événement majeur.',
    '5c462f19-9807-4328-8757-6f65cb8aa4d6'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'e5e1fc21-da3f-467b-9140-0f53c9d36bdc',
    'Budget',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b5b04b50-2048-4cb2-b005-88308805693e',
    'Définir un budget opérationnel couvrant prévention, alerte, intervention, santé, décontamination, logistique, communication et relèvement après incident technologique.',
    'e5e1fc21-da3f-467b-9140-0f53c9d36bdc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '01ff1e0d-307e-4aa7-a167-62c77b457690',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour les premières actions critiques en cas d’incident majeur.',
    'e5e1fc21-da3f-467b-9140-0f53c9d36bdc'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4276882b-f6c9-4874-801e-6e47b17f5cdd',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses engagées dans la gestion des risques technologiques.',
    'e5e1fc21-da3f-467b-9140-0f53c9d36bdc'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'a2d2ae9f-5f75-4a55-a75e-8772616b3095',
    'Relèvement / réhabilitation',
    '80be50cf-d0cd-4892-a9e5-6d9192041d66'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '34e32a92-2bb3-4e8e-9c80-ce91180cb83d',
    'Prévoir des actions de réhabilitation des sites affectés, de gestion des déchets dangereux, de restauration environnementale et de rétablissement des services essentiels après incident.',
    'a2d2ae9f-5f75-4a55-a75e-8772616b3095'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ad3a33cd-1db9-4b3d-9bd4-586fe8eaf399',
    'Organiser des évaluations post-incident, documenter les leçons apprises et mettre à jour les plans, normes et procédures de prévention et de riposte.',
    'a2d2ae9f-5f75-4a55-a75e-8772616b3095'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6171bc20-fcaf-47ee-b691-43767a0ca838',
    'Renforcer durablement les capacités institutionnelles, réglementaires et communautaires pour réduire la récurrence et l’impact des risques technologiques.',
    'a2d2ae9f-5f75-4a55-a75e-8772616b3095'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    '45869547-6b68-49a4-bf86-73347ab0df41',
    'Etat de préparation à faire face aux risques sociaux de type conflits',
    'Sociaux',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '0c8f1ee8-056c-4b10-967d-c225f0337a86',
    'Coordination et gouvernance',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '49d0a1c9-f7cf-44e5-99ac-f3365684d15e',
    'Mettre en place un mécanisme de coordination multisectorielle pour la gestion des risques sociaux de type conflits associant santé, affaires sociales, protection, sécurité civile, autorités locales, acteurs humanitaires et représentants communautaires.',
    '0c8f1ee8-056c-4b10-967d-c225f0337a86'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6e330868-e5f2-4be4-bac9-2d90c41ff6e6',
    'Disposer d’un plan de préparation et de riposte aux crises liées aux conflits, actualisé, budgétisé et adapté aux contextes provinciaux et territoriaux de la RDC.',
    '0c8f1ee8-056c-4b10-967d-c225f0337a86'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0c3de364-246a-450b-b9c3-1db1d546a351',
    'Définir les rôles, responsabilités, circuits d’information, mécanismes d’activation et modalités de coordination entre niveaux national, provincial, zone de santé et communauté.',
    '0c8f1ee8-056c-4b10-967d-c225f0337a86'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bb5f6662-6282-43c2-8ad5-4ff71fe91dc9',
    'Analyse du contexte et cartographie des conflits',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8e643646-2608-4afa-be5d-7ad2c9fcbcec',
    'Analyser régulièrement le contexte sécuritaire, les dynamiques de conflit, les acteurs impliqués, les facteurs déclencheurs et les zones à risque de violence, déplacement ou instabilité sociale.',
    'bb5f6662-6282-43c2-8ad5-4ff71fe91dc9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8cbcd035-b93d-41bd-95c5-27218d0a775b',
    'Cartographier les zones touchées, les axes d’insécurité, les populations exposées, les infrastructures critiques et les contraintes d’accès pour les services essentiels et l’action humanitaire.',
    'bb5f6662-6282-43c2-8ad5-4ff71fe91dc9'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '966024e8-6785-4dc6-88c3-e8c7e73398cb',
    'Intégrer l’analyse des conflits dans la planification sanitaire, humanitaire et de réduction des risques afin d’anticiper les effets sur la santé publique et la protection.',
    'bb5f6662-6282-43c2-8ad5-4ff71fe91dc9'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '356a07d9-f711-40f0-8885-54b4d918f0af',
    'Alerte précoce et suivi des tensions',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b0550c6b-35c8-4fc8-b64c-72b06cefda33',
    'Mettre en place ou renforcer un système d’alerte précoce communautaire et institutionnel pour détecter les tensions, incidents violents, déplacements soudains, atteintes aux civils et perturbations des services essentiels.',
    '356a07d9-f711-40f0-8885-54b4d918f0af'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'fa7abfac-ef44-445d-996a-362f3cb9c32a',
    'Définir des indicateurs d’alerte, des seuils de gravité et des procédures de notification rapide entre communautés, autorités, structures sanitaires et partenaires.',
    '356a07d9-f711-40f0-8885-54b4d918f0af'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c77c37f3-8612-46be-b4b5-e27cb9c0c434',
    'Tester régulièrement les mécanismes d’alerte, de partage d’information et de coordination opérationnelle dans les zones à risque de conflits.',
    '356a07d9-f711-40f0-8885-54b4d918f0af'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '26c1acd3-f18a-446b-8593-8b22c47a9229',
    'Déplacements de populations et sites d''accueil',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'daf5ccb3-1021-49ca-b19f-b2a3e0d47ed5',
    'Prévoir des scénarios de déplacements massifs de populations et identifier des sites d’accueil temporaires sûrs, accessibles et compatibles avec les normes minimales en santé, WASH et protection.',
    '26c1acd3-f18a-446b-8593-8b22c47a9229'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c213401b-6928-4d4b-a8bd-c3372c646741',
    'Mettre en place des procédures pour l’enregistrement, l’orientation, l’évaluation rapide des besoins et l’organisation des services essentiels dans les sites d’accueil et communautés hôtes.',
    '26c1acd3-f18a-446b-8593-8b22c47a9229'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd803f74b-b858-474d-8f8c-dddc00180ead',
    'Prévoir des mécanismes de coordination avec les autorités locales et les partenaires pour éviter la surpopulation, les tensions communautaires et la dégradation des conditions sanitaires sur les sites.',
    '26c1acd3-f18a-446b-8593-8b22c47a9229'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '56b9746d-c7c5-40d2-81e6-3a42e8a42068',
    'Protection des civils et groupes vulnérables',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0b7e1695-34fc-4fb3-80da-f6a5751b9f78',
    'Identifier les groupes les plus exposés aux risques de protection, notamment enfants, femmes, personnes âgées, personnes vivant avec handicap, déplacés, survivants de violences et ménages extrêmement vulnérables.',
    '56b9746d-c7c5-40d2-81e6-3a42e8a42068'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'd556425e-f83d-42d3-b7e9-73f4d663c6e5',
    'Prévoir des mesures spécifiques de protection, de référencement, d’assistance et de continuité des services pour les groupes vulnérables en contexte de conflit.',
    '56b9746d-c7c5-40d2-81e6-3a42e8a42068'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '373dfe9f-8910-45a3-9591-57ca9a413028',
    'Intégrer la prévention des violences, y compris les violences basées sur le genre, l’exploitation, les abus et les séparations familiales, dans tous les dispositifs de préparation et de riposte.',
    '56b9746d-c7c5-40d2-81e6-3a42e8a42068'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '622daf51-0620-4000-8466-52994797f93c',
    'Surveillance sanitaire et épidémiologique en contexte de conflit',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7b76f0fd-b515-4ecb-9b34-c58bf2501c37',
    'Renforcer la surveillance des maladies prioritaires, des traumatismes, de la malnutrition, des violences et des événements de santé publique dans les zones affectées par les conflits et déplacements.',
    '622daf51-0620-4000-8466-52994797f93c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9edd8577-05b7-498f-ac89-653e1b87ae34',
    'Mettre en place des mécanismes de surveillance communautaire et d’alerte rapide capables de fonctionner malgré l’insécurité, les déplacements et les ruptures d’accès.',
    '622daf51-0620-4000-8466-52994797f93c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1f76d71a-a3dc-40a5-9836-dce60f1ca87f',
    'Assurer la disponibilité d’outils de notification, de définitions de cas et de procédures d’investigation adaptées aux contextes fragiles et instables.',
    '622daf51-0620-4000-8466-52994797f93c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '1ebd9670-d784-4223-89b8-444a1d0224ed',
    'Continuité des services de sante',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '38b10185-6233-446b-b6f3-cc38734469e2',
    'Identifier les structures de santé exposées à l’insécurité, aux pillages, aux déplacements de personnel ou à l’interruption des services, et prévoir des mesures de protection et d’adaptation.',
    '1ebd9670-d784-4223-89b8-444a1d0224ed'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '22216653-748b-4156-b7ff-7a18213c7e6d',
    'Prévoir des stratégies de continuité des services essentiels, y compris Equipes mobiles, sites alternatifs, références adaptées et prépositionnement des intrants dans les zones à risque.',
    '1ebd9670-d784-4223-89b8-444a1d0224ed'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '72a3f45a-ff30-4d58-b9e5-867809570555',
    'Mettre en place des mesures de sécurité, de soutien et de rétention du personnel de santé travaillant dans les zones affectées par les conflits.',
    '1ebd9670-d784-4223-89b8-444a1d0224ed'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f4d6abe4-ec39-4426-bd32-360902a86128',
    'Logistique et accès humanitaire',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c87fab5a-335c-4f05-b670-cae3c819d12a',
    'Identifier les contraintes d’accès liées à l’insécurité, aux restrictions de mouvement, aux routes coupées et aux contrôles armés, et prévoir des options logistiques adaptées.',
    'f4d6abe4-ec39-4426-bd32-360902a86128'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '86e68169-b1d0-4935-97ca-205a738eb968',
    'Prépositionner les intrants sanitaires, nutritionnels, WASH et de protection dans des sites sécurisés et accessibles avant les dégradations majeures du contexte.',
    'f4d6abe4-ec39-4426-bd32-360902a86128'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b65d749a-5ed5-4f61-a0fc-964517f15d64',
    'Mettre en place des mécanismes de suivi des stocks, de réapprovisionnement rapide et de coordination logistique avec les acteurs humanitaires et les autorités compétentes.',
    'f4d6abe4-ec39-4426-bd32-360902a86128'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'eaf54967-33b1-44da-a555-b680c7ef1b91',
    'Communication des risques et engagement communautaire',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7333d952-e3dd-470c-a0c8-4fe22b2528b7',
    'Déployer une stratégie de communication adaptée aux contextes de conflit pour diffuser des informations fiables sur la sécurité, l’accès aux soins, les déplacements et les services disponibles.',
    'eaf54967-33b1-44da-a555-b680c7ef1b91'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b054cfba-1c96-4376-8186-1c4265153524',
    'Mettre en place des mécanismes d’écoute, de retour d’information et de gestion des rumeurs afin de renforcer la confiance et d’orienter la réponse.',
    'eaf54967-33b1-44da-a555-b680c7ef1b91'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '93a45758-dfa0-413d-aae0-c5ce55dfb7e9',
    'Impliquer les leaders communautaires, structures locales, femmes, jeunes et acteurs de proximité dans la prévention, l’alerte et la cohésion sociale.',
    'eaf54967-33b1-44da-a555-b680c7ef1b91'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ac494ff6-1d2c-49b7-bdd5-184300ba8676',
    'Santé mentale et soutien psychosocial',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ac7e5b86-f4f0-4348-b250-0194579d19c2',
    'Intégrer la santé mentale et le soutien psychosocial dans la préparation et la riposte aux conflits, en tenant compte des traumatismes, pertes, violences et déplacements subis par les populations.',
    'ac494ff6-1d2c-49b7-bdd5-184300ba8676'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '99a43bf4-f62f-4916-a82e-8a235e244583',
    'Former le personnel de santé, les travailleurs sociaux et les relais communautaires à l’identification, au soutien initial et au référencement des personnes ayant des besoins psychosociaux ou psychiatriques.',
    'ac494ff6-1d2c-49b7-bdd5-184300ba8676'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9e9e6698-59f6-4226-a5f0-332241d3d016',
    'Prévoir des services accessibles de soutien psychosocial pour les survivants de violences, les enfants, les familles déplacées et les agents de première ligne.',
    'ac494ff6-1d2c-49b7-bdd5-184300ba8676'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'bafdff59-6dd5-404c-851f-711747c96e2c',
    'Budget',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9b4b2678-025c-4076-b2b1-0e5e3f5082ff',
    'Définir un budget opérationnel pour la préparation et la riposte aux risques sociaux de type conflits couvrant coordination, santé, protection, logistique, communication, soutien psychosocial et relèvement.',
    'bafdff59-6dd5-404c-851f-711747c96e2c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '486218e3-f5b3-41b1-8b01-448ccb645ac9',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour répondre aux chocs sécuritaires, déplacements soudains et interruptions de services.',
    'bafdff59-6dd5-404c-851f-711747c96e2c'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1353ee19-5e52-4770-94ca-e889a26ff318',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses engagées dans les zones affectées par les conflits.',
    'bafdff59-6dd5-404c-851f-711747c96e2c'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '034c583a-5954-4c99-9345-90b867e6814e',
    'Relèvement / cohésion sociale / résilience',
    '45869547-6b68-49a4-bf86-73347ab0df41'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '85105c7c-bc8b-413f-83be-08cdfdb51f7a',
    'Prévoir des actions de relèvement rapide permettant de rétablir progressivement les services essentiels, les moyens de subsistance et la fonctionnalité des structures communautaires dans les zones affectées.',
    '034c583a-5954-4c99-9345-90b867e6814e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '8e8e9b78-02bb-415d-a9b9-dccccaf7e112',
    'Intégrer des approches de cohésion sociale, de dialogue communautaire, de prévention des tensions et de résilience locale dans les plans de relèvement.',
    '034c583a-5954-4c99-9345-90b867e6814e'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4d8393e7-fd4c-4153-9111-cbe07d6dfe99',
    'Organiser des revues après action, documenter les leçons apprises et renforcer durablement les capacités institutionnelles et communautaires face aux conflits récurrents.',
    '034c583a-5954-4c99-9345-90b867e6814e'
);


INSERT INTO menaces (id, lib, categorie, axe)
VALUES (
    'e1486345-b3d8-4a77-ba48-8f82a094290d',
    'Etat de préparation à faire face aux risques environnementaux liés à la dégradation de l''environnement',
    'Dégradation de l’environnement',
    'Global'
);

INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '97f6b429-c92b-4158-a797-5703c4a38d54',
    'Coordination et gouvernance',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '578ba1c1-ecc2-48e9-86d8-bf0ef3c9c18f',
    'Mettre en place un mécanisme de coordination multisectorielle pour la gestion des risques environnementaux associant santé, environnement, eau, agriculture, forêts, mines, énergie, autorités territoriales, recherche et communautés locales.',
    '97f6b429-c92b-4158-a797-5703c4a38d54'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'df45c9f8-cb02-4cc2-8eff-bf8c52c7a5ef',
    'Disposer d’un plan de préparation et de riposte aux risques environnementaux actualisé, budgétisé et adapté aux réalités écologiques et territoriales de la RDC.',
    '97f6b429-c92b-4158-a797-5703c4a38d54'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'aca90303-44a9-430f-9db6-a5a2db7e074e',
    'Définir les rôles, responsabilités, circuits d’information, modalités d’activation et mécanismes de coordination entre niveaux national, provincial, local et communautaire.',
    '97f6b429-c92b-4158-a797-5703c4a38d54'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'ece22f2b-7b95-47e6-b3e5-f5a2cd503345',
    'Identification des pressions environnementales et cartographie des zones à risque',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4b3ef921-78d7-4244-ba82-dadff8060142',
    'Identifier et cartographier les principales pressions environnementales, notamment déforestation, érosion, pollution, exploitation minière, dégradation des sols, perte de biodiversité, ensablement et surexploitation des ressources naturelles.',
    'ece22f2b-7b95-47e6-b3e5-f5a2cd503345'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6c6f4922-350a-4978-9c8f-ead18ee9c468',
    'Déterminer les zones de santé, bassins versants, forêts, zones agricoles, sites miniers et communautés les plus exposés aux effets de la dégradation de l’environnement.',
    'ece22f2b-7b95-47e6-b3e5-f5a2cd503345'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4a919254-d58d-4e7e-a9e9-56e76cb514cc',
    'Actualiser régulièrement la cartographie des zones à risque et intégrer les données environnementales dans les plans locaux de préparation et de développement.',
    'ece22f2b-7b95-47e6-b3e5-f5a2cd503345'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '20e643fa-9f7d-444c-845b-b497181d9a63',
    'Surveillance environnementale et alerte précoce',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '2fd2235f-2bd6-4263-9838-87036b3cb563',
    'Mettre en place ou renforcer un système de surveillance environnementale permettant de suivre la qualité de l’eau, de l’air, des sols, l’évolution de la couverture végétale et les signaux précoces de dégradation écologique.',
    '20e643fa-9f7d-444c-845b-b497181d9a63'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'f672a0c9-1d70-4db1-b27d-0c006db77cda',
    'Définir des indicateurs d’alerte précoce et des seuils d’action pour les phénomènes critiques liés à la dégradation de l’environnement.',
    '20e643fa-9f7d-444c-845b-b497181d9a63'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cf4134c1-67f6-42b6-8f18-a6324b83373c',
    'Assurer le partage régulier des données entre services techniques, autorités locales, structures de santé, chercheurs et communautés afin d’orienter la prévention et la riposte.',
    '20e643fa-9f7d-444c-845b-b497181d9a63'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'f7c03d13-1fdf-4657-81c6-7eb1fb95f503',
    'Eau - Sols - Forets - Biodiversité',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '81923221-c102-4edf-97fd-b5fe514829e7',
    'Prévoir des mesures de protection et de restauration des sources d’eau, des bassins versants, des sols agricoles, des forêts et des habitats naturels dans les zones fortement dégradées.',
    'f7c03d13-1fdf-4657-81c6-7eb1fb95f503'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '9b0c58dc-4ec2-4638-ab6a-99e3492547e5',
    'Identifier les pratiques à risque et mettre en œuvre des actions de réduction de la déforestation, de l’érosion, de l’ensablement, de la pollution et de la perte de biodiversité.',
    'f7c03d13-1fdf-4657-81c6-7eb1fb95f503'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '7c6f9536-f1d8-4c28-a7ac-c55693d4a38e',
    'Intégrer la gestion durable des ressources naturelles, le reboisement, la conservation communautaire et les solutions fondées sur les écosystèmes dans la préparation.',
    'f7c03d13-1fdf-4657-81c6-7eb1fb95f503'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'dd394259-ba7d-4cbd-8dc7-9f22eb76c40a',
    'Impacts sanitaires et surveillance épidémiologique',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ab9c500b-effb-4f4d-a4fb-522feda9d437',
    'Identifier et surveiller les effets sanitaires liés à la dégradation de l’environnement, notamment maladies hydriques, maladies respiratoires, intoxications, maladies à transmission vectorielle, malnutrition et traumatismes indirects.',
    'dd394259-ba7d-4cbd-8dc7-9f22eb76c40a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '19113eef-ed06-4642-8e65-c5ac7d1f9229',
    'Renforcer la surveillance épidémiologique dans les zones exposées à la pollution, à la déforestation, à la dégradation hydrique ou à l’exploitation non contrôlée des ressources naturelles.',
    'dd394259-ba7d-4cbd-8dc7-9f22eb76c40a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6c546972-8667-441a-a49f-1207ee95955b',
    'Mettre en place des mécanismes d’analyse conjointe entre environnement et santé publique pour détecter précocement les risques sanitaires émergents.',
    'dd394259-ba7d-4cbd-8dc7-9f22eb76c40a'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '286aa75d-7fc8-4195-bfea-81bf37386a6d',
    'Moyens de subsistance et sécurité alimentaire',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4fa8f2ff-3c5e-46ad-be74-00b2aac499f0',
    'Évaluer les impacts de la dégradation environnementale sur l’agriculture, la pêche, l’élevage, les ressources forestières et les autres moyens de subsistance des communautés exposées.',
    '286aa75d-7fc8-4195-bfea-81bf37386a6d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '317936fa-6087-49b2-a138-bf564047b42e',
    'Prévoir des mesures de réduction des pertes de production, de diversification des revenus et d’appui aux ménages vulnérables face à la baisse de productivité des écosystèmes.',
    '286aa75d-7fc8-4195-bfea-81bf37386a6d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '61e59d8e-3a6d-4b8d-bda1-4a6bd3ac6f1c',
    'Intégrer la sécurité alimentaire, la nutrition et la résilience des ménages dans les plans de préparation aux risques environnementaux.',
    '286aa75d-7fc8-4195-bfea-81bf37386a6d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '739edaab-8666-4e04-bbe8-9186ee987bab',
    'Communication des risques et engagement communautaire',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '426c4681-6267-45c1-867a-67a18e783661',
    'Déployer une stratégie de communication sur les risques environnementaux, les comportements nuisibles, les bonnes pratiques de gestion des ressources naturelles et les mesures de prévention adaptées.',
    '739edaab-8666-4e04-bbe8-9186ee987bab'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b4adf529-61ed-42bf-a138-f4be6d2d1141',
    'Adapter et diffuser des messages dans les langues locales via radios communautaires, écoles, leaders locaux, organisations de base et autres canaux appropriés.',
    '739edaab-8666-4e04-bbe8-9186ee987bab'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'ccaf2c8f-fdf1-4cc7-bf81-a74acb76b6ad',
    'Impliquer les communautés dans l’identification des risques, la surveillance locale, la gestion durable des ressources et le suivi des engagements de restauration environnementale.',
    '739edaab-8666-4e04-bbe8-9186ee987bab'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '66006c68-2b0f-4392-83fc-6d0d7a14620d',
    'Protection des populations vulnérables',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cc828be3-bb81-48c8-999b-ba63495bafef',
    'Identifier les groupes les plus affectés par la dégradation de l’environnement, notamment enfants, femmes, personnes âgées, peuples autochtones, communautés riveraines, agriculteurs et ménages très pauvres.',
    '66006c68-2b0f-4392-83fc-6d0d7a14620d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '4e9682d1-38ac-4be0-83c1-411340728a0a',
    'Prévoir des mesures spécifiques de protection, d’accès aux services essentiels, d’assistance ciblée et de réduction des inégalités d’exposition aux risques environnementaux.',
    '66006c68-2b0f-4392-83fc-6d0d7a14620d'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'cd782661-5775-4ed3-b720-7aff56cbf675',
    'Intégrer les considérations sociales, foncières et de justice environnementale dans les dispositifs de préparation et de relèvement.',
    '66006c68-2b0f-4392-83fc-6d0d7a14620d'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '5a782059-b280-461d-aabf-cc22821653f1',
    'Logistique et capacités opérationnelles',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '1d7b11d6-90a9-4d08-ba16-ba40c180181b',
    'Identifier les besoins en Equipements, moyens de transport, capacités de suivi environnemental, ressources humaines et outils de terrain nécessaires à la prévention et à la riposte.',
    '5a782059-b280-461d-aabf-cc22821653f1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'c4bdffab-463c-4fc9-b47a-1c4aa526b253',
    'Prépositionner les intrants, matériels de surveillance, Equipements de protection et moyens opérationnels dans les zones prioritaires ou difficiles d’accès.',
    '5a782059-b280-461d-aabf-cc22821653f1'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'febe9cf7-a3df-4765-9755-0cabdc75d3af',
    'Mettre en place un système de gestion des stocks, de maintenance, de réapprovisionnement rapide et de coordination logistique avec les secteurs concernés.',
    '5a782059-b280-461d-aabf-cc22821653f1'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    'b53c2192-a13a-4c26-9538-03643b21ea4a',
    'Budget',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '6f53f74e-1ab4-42b1-abf4-f7b00bc18688',
    'Définir un budget opérationnel pour la préparation et la riposte aux risques environnementaux couvrant surveillance, protection des ressources, santé, communication, logistique et restauration écologique.',
    'b53c2192-a13a-4c26-9538-03643b21ea4a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b8c03651-9d23-44f7-82ca-6f3b9d99aaca',
    'Prévoir des mécanismes de mobilisation rapide des ressources financières pour les actions prioritaires de prévention, de mitigation et de relèvement.',
    'b53c2192-a13a-4c26-9538-03643b21ea4a'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '970dea00-bd16-4850-9b02-074a1585d702',
    'Mettre en place des outils de suivi budgétaire, de traçabilité et de redevabilité pour les dépenses liées à la gestion des risques environnementaux.',
    'b53c2192-a13a-4c26-9538-03643b21ea4a'
);


INSERT INTO piliers (id, lib, menace_id)
VALUES (
    '07405195-7277-41ed-8ddd-6371c786ee76',
    'Restauration écologique / relèvement / résilience',
    'e1486345-b3d8-4a77-ba48-8f82a094290d'
);

INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'acb75924-600e-43bc-a168-bd5b097dea65',
    'Prévoir des actions de restauration écologique, de réhabilitation des terres dégradées, de reboisement, de dépollution et de remise en Etat des milieux affectés.',
    '07405195-7277-41ed-8ddd-6371c786ee76'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    'b5cb122a-23ad-4455-ad99-2525dd815959',
    'Intégrer la résilience écologique et communautaire dans les plans de relèvement, y compris la gestion durable des ressources, l’adaptation locale et la prévention des dégradations futures.',
    '07405195-7277-41ed-8ddd-6371c786ee76'
);


INSERT INTO exigences (id, lib, pilier_id)
VALUES (
    '0ad12a7e-7276-4e27-98bc-1860ec6c5b03',
    'Organiser des revues après action, documenter les leçons apprises et renforcer durablement les capacités institutionnelles et communautaires face aux risques environnementaux.',
    '07405195-7277-41ed-8ddd-6371c786ee76'
);

COMMIT;