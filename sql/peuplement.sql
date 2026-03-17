-- ============================================================
-- COMPETENCES
-- ============================================================
INSERT INTO Competence (nom, categorie) VALUES
('Python', 'Technique'),('JavaScript', 'Technique'),('Java', 'Technique'),
('C++', 'Technique'),('PHP', 'Technique'),('SQL', 'Technique'),
('MongoDB', 'Technique'),('PostgreSQL', 'Technique'),
('React', 'Technique'),('Vue.js', 'Technique'),('Angular', 'Technique'),
('Node.js', 'Technique'),('Laravel', 'Technique'),('Docker', 'Technique'),
('Git', 'Technique'),('Linux', 'Technique'),('Machine Learning', 'Technique'),
('Cybersécurité', 'Technique'),('Gestion de projet', 'Social'),('Communication', 'Social');

-- ============================================================
-- ENTREPRISES (20)
-- description_cartes = texte simple, description_entreprise = markdown
-- ============================================================
INSERT INTO Entreprise (nom, description_cartes, phrase_intro, description_entreprise, email, telephone, mdp) VALUES
('Capgemini',         'Leader mondial du conseil numérique. 350 000 collaborateurs dans 50 pays. Expertise cloud, data, IA.',                            'Façonner l''avenir du numérique avec vous.',          '## À propos de Capgemini\n\nCapgemini est un **groupe international** spécialisé dans le conseil, les services informatiques et la transformation numérique. Fondé en 1967, il accompagne ses clients dans leurs projets d''innovation.\n\n### Nos domaines\n\n- Cloud & Infrastructure\n- Data & Intelligence Artificielle\n- Développement d''applications\n- Cybersécurité\n\n> "Technology for people" est notre philosophie centrale.',                                                                                                         'rh@capgemini.fr',           '0155295000', 'cap2024'),
('Thales',            'Leader mondial en technologies de défense et sécurité numérique. 81 000 employés dans 68 pays.',                                  'La technologie au service d''un monde plus sûr.',     '## À propos de Thales\n\nThales est un groupe technologique mondial opérant dans les marchés de la **défense**, de la **sécurité** et de l''**aérospatiale**.\n\n### Secteurs d''activité\n\n1. Défense & sécurité\n2. Aéronautique\n3. Transport\n4. Numérique & Cyber\n\n### Engagements\n\n- Sobriété numérique\n- Diversité & inclusion\n- Formation continue',                                                                                                                                                    'stages@thales.fr',          '0157778000', 'thales2024'),
('Société Générale',  'Groupe bancaire international. DSI de 10 000 personnes. Projets fintech, open banking et IA.',                                    'La banque qui innove pour vous.',                     '## Société Générale – DSI\n\nLa **DSI de Société Générale** est l''une des plus importantes d''Europe avec plus de 10 000 collaborateurs IT.\n\n### Projets phares\n\n- Migration cloud AWS & Azure\n- Développement d''API bancaires\n- Intelligence artificielle appliquée aux risques\n\n```\nStack technique : Java, Python, Kafka, Kubernetes\n```',                                                                                                                                                                        'it-rh@socgen.fr',           '0142140000', 'socgen2024'),
('Airbus',            'Leader mondial de l''aéronautique et de l''espace. 134 000 employés. R&D de pointe en simulation et IA.',                         'Pionnier de l''aviation de demain.',                  '## Airbus Digital\n\nAirbus investit massivement dans la **transformation digitale** de ses processus industriels.\n\n### Domaines IT\n\n| Domaine | Technologies |\n|---|---|\n| Simulation | Python, C++ |\n| MES / ERP | SAP, Java |\n| Data | Spark, Hadoop |\n| Cyber | SIEM, IAM |\n\n### Valeurs\n\n- Innovation responsable\n- Travail en équipe internationale\n- Excellence ingénierie',                                                                                                                          'stages.it@airbus.fr',       '0561933333', 'airbus2024'),
('OVHcloud',          'Premier hébergeur européen et acteur du cloud souverain. 2 600 employés, 400 000 serveurs dans le monde.',                        'Le cloud fait en Europe, pour l''Europe.',             '## OVHcloud – Rejoignez l''aventure\n\nOVHcloud est le **leader européen** du cloud avec des datacenters sur 4 continents.\n\n### Ce qui nous rend uniques\n\n- Infrastructure **bare metal** et cloud public\n- Engagement fort pour la **souveraineté des données**\n- Culture open source (Kubernetes, OpenStack)\n\n> Chez OVHcloud, chaque stagiaire participe à de vrais projets en production.',                                                                                                                          'rh@ovhcloud.com',           '0972101007', 'ovh2024'),
('Dassault Systèmes', 'Éditeur mondial de logiciels 3D et PLM. 23 000 collaborateurs dans 140 pays. Éditeur de CATIA et SolidWorks.',                   'Inventer le futur du monde virtuel.',                 '## Dassault Systèmes\n\nÉditeur de **CATIA**, **SolidWorks** et de la plateforme **3DEXPERIENCE**, leader mondial du PLM.\n\n### Technologies clés\n\n- Modélisation 3D et simulation\n- Digital twin industriel\n- Cloud & collaboration\n\n### Chiffres clés\n\n- 23 000 employés\n- 300 000 clients dans 11 secteurs\n- 27% du CA réinvesti en R&D',                                                                                                                                                                       'stages@3ds.com',            '0140992040', 'ds2024'),
('BNP Paribas',       'Première banque de la zone euro. DSI de 15 000 personnes. Leader open banking et IA financière.',                                 'La banque d''un monde qui change.',                   '## BNP Paribas – IT & Digital\n\nAvec une **DSI de 15 000 collaborateurs**, BNP Paribas est l''un des plus grands employeurs IT en France.\n\n### Domaines d''expertise\n\n- Open banking & API\n- Intelligence artificielle & data\n- Sécurité des systèmes d''information\n- Cloud hybride\n\n### Notre culture\n\nNous valorisons la **diversité**, l''**innovation** et l''engagement sociétal dans tous nos projets.',                                                                                                         'it-stages@bnpparibas.fr',  '0140146666', 'bnp2024'),
('Sopra Steria',      'Leader européen de la transformation digitale. 50 000 collaborateurs dans 30 pays. Secteur public, finance, défense.',            'Ensemble, construisons un futur digital positif.',    '## Sopra Steria\n\nSopra Steria est un **leader européen** de la transformation numérique proposant conseil, intégration de systèmes et édition de logiciels.\n\n### Secteurs d''activité\n\n- Finance & Assurance\n- Défense & Sécurité\n- Transport & Énergie\n- Secteur public\n\n### Engagements RSE\n\n- Neutralité carbone d''ici 2028\n- 40% de femmes dans les équipes tech\n- Programme de mentorat actif',                                                                                                          'recrutement@soprasteria.com','0155004000','sopra2024'),
('Amadeus',           'Leader mondial des solutions IT pour le voyage. 22 000 collaborateurs dans 190 pays. 2 milliards de transactions par an.',        'La technologie qui connecte le monde du voyage.',     '## Amadeus IT Group\n\nAmadeus est le **leader mondial** des solutions technologiques pour les compagnies aériennes, hôtels et agences de voyage.\n\n### Technologies\n\n```\nJava · C++ · Python · Kafka · Cassandra\nKubernetes · AWS · Azure\n```\n\n### Chiffres\n\n- 2 milliards de transactions/an\n- 1,7 milliard € investis en R&D\n- Bureau R&D à Sophia Antipolis',                                                                                                                                               'stages@amadeus.com',        '0492945000', 'ama2024'),
('Ubisoft',           'Créateur de jeux vidéo de renommée mondiale. 20 000 employés dans 30 pays. Franchises Assassin''s Creed, Far Cry.',               'Imaginer des mondes. Créer des expériences.',         '## Ubisoft\n\nUbisoft est l''un des leaders mondiaux du **jeu vidéo** avec des franchises iconiques.\n\n### Studios en France\n\n- Paris (siège)\n- Montpellier\n- Lyon\n- Bordeaux\n\n### Technologies\n\n- Moteur Anvil Next (propriétaire)\n- C++, Python, Lua\n- Outils R&D IA et cloud gaming\n\n> Rejoindre Ubisoft, c''est rejoindre une communauté de passionnés.',                                                                                                                                                        'stages@ubisoft.com',        '0155055100', 'ubi2024'),
('Orange',            'Opérateur télécom et services numériques. 137 000 collaborateurs. Leader 5G et cybersécurité en Europe.',                         'Connecter les personnes et les technologies.',        '## Orange – Innovation & Digital\n\nOrange est l''un des principaux opérateurs télécoms mondiaux et développe des services numériques via **Orange Business** et **Orange Cyberdefense**.\n\n### Domaines IT\n\n- Réseaux 5G & IoT\n- Cybersécurité\n- Cloud & datacenters\n- IA & big data\n\n### Pour les stagiaires\n\n- Projets à fort impact\n- Accès aux labs R&D\n- Communauté Young Talent',                                                                                                                              'stages@orange.fr',          '0900800700', 'orange2024'),
('Michelin',          'Leader mondial du pneumatique. 132 000 collaborateurs dans 170 pays. En pleine transformation digitale des usines.',              'Les meilleures technologies pour avancer.',           '## Michelin Digital\n\nMichelin engage une profonde **transformation digitale** de ses usines et processus logistiques.\n\n### Projets IT\n\n- MES (Manufacturing Execution System)\n- Jumeaux numériques d''usines\n- IA prédictive maintenance\n- Supply chain digitale\n\n### Valeurs\n\n- Respect des personnes\n- Développement durable\n- Mobilité pour tous',                                                                                                                                                             'stages.it@michelin.com',    '0473987654', 'michelin2024'),
('Decathlon',         'Leader mondial du sport et e-commerce. 100 000 collaborateurs dans 60 pays. DSI de 2 000 personnes.',                            'La tech au service du sport pour tous.',              '## Decathlon Technology\n\nDecathlon dispose d''une **DSI de 2 000 personnes** qui développe tous les outils digitaux de l''enseigne.\n\n### Projets phares\n\n- Plateforme e-commerce (200M visites/an)\n- Applications mobiles sportives\n- RFID & IoT en magasin\n- IA recommandation produits\n\n### Culture tech\n\n- Squads autonomes en Agile\n- Open source et partage\n- Hackathons réguliers',                                                                                                                         'tech-stages@decathlon.fr',  '0320882000', 'deca2024'),
('SNCF',              'Groupe ferroviaire national. 150 000 collaborateurs. DSI de 5 000 personnes gérant une des plus grandes infras IT de France.',    'La mobilité intelligente pour tous.',                 '## SNCF Connect & Tech\n\nLa **DSI du groupe SNCF** gère l''une des plus grandes infrastructures IT de France.\n\n### Domaines\n\n- Billetterie & distribution (SNCF Connect)\n- Systèmes embarqués trains\n- Big data & prédiction trafic\n- Cybersécurité des infrastructures critiques\n\n### Avantages stagiaires\n\n- Projets à impact national\n- Carte Avantage SNCF\n- Accompagnement RH dédié',                                                                                                                           'stages.dsi@sncf.fr',        '0180500000', 'sncf2024'),
('Criteo',            'Leader mondial de la publicité numérique à la performance. 3 500 employés. 700 TB de données traitées par jour.',                 'La tech qui transforme le commerce en ligne.',        '## Criteo\n\nCriteo est une **entreprise tech cotée au NASDAQ** spécialisée dans le reciblage publicitaire.\n\n### Stack technique\n\n```\nPython · Scala · Spark · Kafka\nC# · .NET · React · AWS\n```\n\n### Ce qui nous différencie\n\n- 3 500 ingénieurs et data scientists\n- 700 TB de données traitées/jour\n- Bureau parisien de 1 000 personnes\n- Culture très internationale (50 nationalités)',                                                                                                                   'jobs@criteo.com',           '0185495050', 'criteo2024'),
('Veolia',            'Leader mondial de la gestion des ressources eau, déchets et énergie. 213 000 collaborateurs.',                                    'La transformation écologique en action.',             '## Veolia Digital\n\nVeolia transforme ses métiers grâce au **digital**.\n\n### Projets IT\n\n- Smart water management\n- IoT et capteurs terrain\n- IA pour optimisation énergétique\n- Dashboards temps réel\n\n### Engagement RSE\n\nChaque projet IT chez Veolia a un **impact environnemental mesurable** : réduction de CO2, économies d''eau, valorisation des déchets.',                                                                                                                                                  'stages.digital@veolia.fr',  '0171750000', 'veolia2024'),
('Euronext',          'Première bourse paneuropéenne. 2 200 employés dans 18 pays. Bourses de Paris, Amsterdam, Bruxelles, Dublin.',                     'Les marchés financiers au cœur de l''économie.',      '## Euronext Technology\n\nEuronext opère les **bourses européennes** et développe toute sa stack technologique en interne.\n\n### Technologies\n\n- Systèmes de trading ultra-basse latence\n- C++, Java, Python\n- Kafka, Redis, PostgreSQL\n- Infra on-premise haute disponibilité\n\n### Spécificités\n\nConcevoir des systèmes qui **traitent des millions d''ordres par seconde**.',                                                                                                                                       'tech-stages@euronext.com',  '0185148585', 'euro2024'),
('Doctolib',          'Leader européen de la santé digitale. 3 000 employés. 80 millions de patients utilisateurs en Europe.',                          'La tech au service de la santé de tous.',             '## Doctolib Engineering\n\nDoctolib est l''une des **scale-up tech les plus en vue d''Europe** avec une mission à fort impact social.\n\n### Stack\n\n```\nRuby on Rails · React · TypeScript\nPostgreSQL · Redis · AWS · Kubernetes\n```\n\n### Culture ingénierie\n\n- Équipes produit autonomes\n- Engineering excellence\n- 99.99% de disponibilité\n- Sécurité données de santé (HDS)',                                                                                                                                       'jobs@doctolib.fr',          '0186860000', 'docto2024'),
('Renault Group',     'Constructeur automobile en transformation électrique et digitale. 105 000 collaborateurs. Leader du VE en Europe.',               'Inventer l''automobile de demain, dès aujourd''hui.', '## Renault Digital\n\nRenault Digital porte la **transformation numérique** du Groupe en développant logiciels embarqués et services connectés.\n\n### Projets\n\n- Logiciels embarqués véhicule (ADAS)\n- Applications de mobilité (My Renault)\n- Supply chain digitale\n- Data platform groupe\n\n### Technologies\n\n- C / C++ embarqué\n- Python & Java\n- AWS & Azure\n- CI/CD GitLab',                                                                                                                           'stages.digital@renault.fr', '0176842323', 'renault2024'),
('Worldline',         'Leader européen des paiements numériques. 18 000 collaborateurs dans 50 pays. Des milliards de transactions sécurisées.',         'Sécuriser chaque paiement, partout dans le monde.',   '## Worldline\n\nWorldline est le **leader européen des services de paiement**, traitant des milliards de transactions chaque année.\n\n### Expertise IT\n\n- Protocoles de paiement (EMV, 3DS)\n- Sécurité cryptographique\n- APIs de paiement open banking\n- Systèmes haute disponibilité\n\n### Pour les stagiaires\n\n- Formation aux normes PCI-DSS\n- Projets à impact réel\n- Environnement international',                                                                                                         'stages@worldline.com',      '0173290000', 'wl2024');

-- ============================================================
-- UTILISATEURS
-- ============================================================
INSERT INTO Utilisateur (nom, prenom, email, mdp) VALUES
('Martin','Sophie','sophie.martin@ecole.fr','$2y$10$hashedpwd1'),
('Dubois','Pierre','pierre.dubois@ecole.fr','$2y$10$hashedpwd2'),
('Admin','System','admin@wtto.fr','$2y$10$hashedpwdadmin'),
('Bernard','Lucas','lucas.bernard@etudiant.fr','$2y$10$hashedpwd4'),
('Petit','Emma','emma.petit@etudiant.fr','$2y$10$hashedpwd5'),
('Robert','Nathan','nathan.robert@etudiant.fr','$2y$10$hashedpwd6'),
('Richard','Chloé','chloe.richard@etudiant.fr','$2y$10$hashedpwd7'),
('Moreau','Hugo','hugo.moreau@etudiant.fr','$2y$10$hashedpwd8'),
('Simon','Léa','lea.simon@etudiant.fr','$2y$10$hashedpwd9'),
('Laurent','Tom','tom.laurent@etudiant.fr','$2y$10$hashedpwd10');

INSERT INTO Pilote (id_pilote) VALUES (1),(2);
INSERT INTO Admin (id_admin) VALUES (3);
INSERT INTO Etudiant (id_etudiant, id_pilote) VALUES
(4,1),(5,1),(6,1),(7,2),(8,2),(9,2),(10,2);

-- ============================================================
-- OFFRES DE STAGE (~100)
-- description_carte = texte simple | description_offre_de_stage = markdown
-- ============================================================
INSERT INTO Offre (date_debut,date_fin,lat,lng,titre,description_carte,remuneration_par_mois,description_offre_de_stage,id_entreprise) VALUES

-- === CAPGEMINI (1) ===
('2025-04-01','2025-09-30',48.896008,2.318260,'Stage Dev Full Stack','Stage 6 mois Paris La Defense. Stack React Node.js PostgreSQL.',1200,'## Développeur Full Stack – Capgemini\n\n### Mission\n\nIntégré dans une équipe Agile de 8 personnes, vous contribuerez au développement d''une **plateforme SaaS** pour des clients grands comptes.\n\n### Tâches\n\n- Développement de composants **React** (TypeScript)\n- API REST en **Node.js / Express**\n- Modélisation **PostgreSQL**\n- Participation aux code reviews et sprints Scrum\n\n### Profil\n\n- Bac+4/5 en informatique\n- JavaScript / TypeScript\n- Git\n\n### Ce que vous apprendrez\n\n- Architecture microservices\n- CI/CD avec GitHub Actions',1),
('2025-05-01','2025-10-31',48.896008,2.318260,'Stage Data Analyst','Stage 6 mois Paris. Analyse de données grands comptes avec Power BI et Python.',1150,'## Data Analyst – Capgemini\n\n### Mission\n\nVous rejoindrez l''équipe **Data & Analytics** pour accompagner nos clients dans l''exploitation de leurs données.\n\n### Tâches\n\n- Dashboards **Power BI**\n- Nettoyage de données (Python/pandas)\n- Rédaction de rapports d''analyse\n- Présentation aux parties prenantes\n\n### Profil\n\n- Bac+4/5 informatique ou statistiques\n- SQL et Python\n- Sens de la communication\n\n### Environnement\n\nAzure Data Factory et Databricks.',1),
('2025-06-01','2025-11-30',48.896008,2.318260,'Stage Consultant Cloud Azure','Stage 6 mois Paris. Migration cloud Azure de clients grands comptes.',1250,'## Consultant Cloud Azure – Capgemini\n\n### Mission\n\nCapgemini accompagne ses clients **Grands Comptes** dans leur migration vers Azure.\n\n### Missions\n\n- Audit des architectures existantes\n- Rédaction de **plans de migration cloud**\n- Déploiement d''infrastructures via **Terraform**\n- Suivi des indicateurs de coût\n\n### Stack\n\n```\nAzure · Terraform · PowerShell · Python\n```\n\n### Profil\n\n- Bac+5 IT ou école d''ingénieurs\n- Notions réseau et virtualisation',1),
('2025-03-15','2025-09-15',43.296482,5.381794,'Stage Dev Backend Java','Stage 6 mois Marseille. Développement backend Java pour application logistique.',1100,'## Développeur Backend Java – Capgemini Marseille\n\n### Mission\n\nDéveloppement d''une **application de gestion logistique** pour un client transport.\n\n### Technologies\n\n- Java 17 + Spring Boot\n- PostgreSQL + Hibernate\n- Docker + GitLab CI\n- Tests JUnit / Mockito\n\n### Profil\n\n- Bac+4/5 en développement logiciel\n- Java solide\n- Principes SOLID\n\n### Lieu\n\nMarseille centre – télétravail 2j/sem.',1),
('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Dev React Node.js','Stage 6 mois Bordeaux. Portail client pour services numériques assurance.',1100,'## Développeur React/Node.js – Capgemini Bordeaux\n\n### Mission\n\nDéveloppement du **portail client** d''une compagnie d''assurance partenaire.\n\n### Technologies\n\n- React 18 + TypeScript\n- Node.js + Express\n- PostgreSQL\n- Jest + Cypress\n\n### Tâches\n\n- Parcours utilisateur\n- Intégration d''APIs REST\n- Tests E2E\n\n### Profil\n\n- Bac+4/5 développement web\n- React et Node.js',1),
('2025-04-01','2025-09-30',43.296482,5.381794,'Stage Dev Python Scraping','Stage 6 mois Marseille. Outil de veille concurrentielle automatisé pour assureur.',1000,'## Développeur Python Scraping – Capgemini Marseille\n\n### Mission\n\nDéveloppement d''un **outil de veille concurrentielle** automatisé.\n\n### Technologies\n\n- Python (Scrapy, Selenium)\n- PostgreSQL + SQLAlchemy\n- Airflow + Docker\n\n### Profil\n\n- Bac+4/5 data ou développement\n- Python solide\n- HTML, XPath',1),

-- === THALES (2) ===
('2025-03-01','2025-08-31',48.732090,2.148020,'Stage Cybersécurité SOC','Stage 6 mois Velizy. SIEM Splunk, pentest et audit de sécurité.',1400,'## Analyste Cybersécurité – Thales\n\n### Contexte\n\nThales DIS recrute un stagiaire pour renforcer son équipe **SOC**.\n\n### Missions\n\n1. Analyse des alertes sur **SIEM Splunk**\n2. Exercices de **pentest**\n3. Rédaction de rapports d''audit\n4. Veille **CVE**\n\n### Stack\n\n| Outil | Usage |\n|---|---|\n| Splunk | SIEM |\n| Wireshark | Réseau |\n| Nmap | Reconnaissance |\n| Python | Scripting |\n\n> Stage idéal Red Team / Blue Team.',2),
('2025-04-01','2025-09-30',48.732090,2.148020,'Stage Dev Embarqué C++','Stage 6 mois Velizy. Logiciel embarqué C++ pour systèmes de défense.',1350,'## Développeur Embarqué C++ – Thales\n\n### Mission\n\nDéveloppement de logiciels embarqués pour des **systèmes de communication sécurisés**.\n\n### Technologies\n\n- C++ temps réel (RTOS)\n- Protocoles sécurisés\n- Tests HIL\n- CMake, Git\n\n### Profil\n\n- Ingénieur informatique/électronique\n- C++ maîtrisé\n- Habilitation défense éligibilité',2),
('2025-05-01','2025-10-31',48.732090,2.148020,'Stage IA Vision par ordinateur','Stage 6 mois Velizy. Modèles de détection d''objets pour surveillance aérienne.',1450,'## IA & Vision par ordinateur – Thales\n\n### Mission\n\nDéveloppement de **modèles de détection d''objets** pour applications de surveillance aérienne.\n\n### Tâches\n\n- Entraînement de réseaux (YOLOv8, DETR)\n- Annotation de datasets\n- Optimisation embarquée (ONNX, TensorRT)\n- Évaluation (mAP, latence)\n\n### Stack\n\n```python\nPyTorch · OpenCV · CUDA · ONNX · TensorRT\n```\n\n### Profil\n\n- Master 2 IA/ML\n- Deep learning maîtrisé',2),
('2025-06-01','2025-11-30',43.124228,5.928000,'Stage Systèmes Navals','Stage 6 mois Toulon. Modélisation de systèmes de combat navals.',1300,'## Ingénieur Systèmes Navals – Thales Toulon\n\n### Contexte\n\nThales développe des **systèmes de combat** pour la Marine Nationale.\n\n### Missions\n\n- Rédaction de **spécifications systèmes**\n- Modélisation SysML\n- Interface logiciel/matériel\n- Suivi des tests d''intégration\n\n### Profil\n\n- Ingénieur systèmes ou électronique\n- Architecture systèmes\n- Anglais technique\n- Habilitation défense',2),
('2025-04-15','2025-10-15',48.390394,-4.486076,'Stage DevOps Naval Brest','Stage 6 mois Brest. Pipelines CI/CD pour logiciels de défense navale.',1200,'## Ingénieur DevOps Naval – Thales Brest\n\n### Mission\n\nMise en place des **pipelines CI/CD** pour les logiciels navals Thales.\n\n### Technologies\n\n- GitLab CI/CD\n- Docker + Kubernetes\n- Ansible, SonarQube\n\n### Contraintes\n\n- Environnement air-gap\n- Certification EN 50128\n\n### Profil\n\n- Formation DevOps\n- Docker/Kubernetes\n- Habilitation défense',2),
('2025-05-15','2025-11-15',48.117266,-1.677793,'Stage DevSecOps Rennes','Stage 6 mois Rennes. Integration securite dans pipelines CI/CD defence.',1200,'## DevSecOps – Thales Rennes\n\n### Mission\n\nIntégration des pratiques de **sécurité dans les pipelines CI/CD** des projets de défense.\n\n### Tâches\n\n- SAST (SonarQube, Semgrep)\n- DAST (OWASP ZAP)\n- Scan Docker (Trivy)\n- Gestion des secrets (Vault)\n\n### Profil\n\n- Cybersécurité ou DevOps\n- CI/CD\n- Vulnérabilités logicielles\n- Habilitation défense',2),
('2025-04-01','2025-09-30',48.390394,-4.486076,'Stage Réseaux Militaires','Stage 6 mois Brest. Architecture réseaux sécurisés pour la Marine Nationale.',1400,'## Ingénieur Réseaux Militaires – Thales Brest\n\n### Mission\n\nConception de réseaux **sécurisés et résilients** pour les navires de la Marine Nationale.\n\n### Technologies\n\n- Cisco / Juniper\n- VPN IPsec / TLS\n- Protocoles OTAN (Link 16)\n- Chiffrement souverain\n\n### Profil\n\n- Réseaux & télécom\n- TCP/IP avancé\n- Habilitation défense\n\n### Avantages\n\n- Prime de confidentialité\n- Visite de navires',2),

-- === SOCIÉTÉ GÉNÉRALE (3) ===
('2025-06-01','2025-11-30',48.858370,2.294481,'Stage Data Engineer','Stage 6 mois Paris 8e. Pipelines Spark Kafka pour modeles de risque de credit.',1350,'## Data Engineer – Société Générale\n\n### Description\n\nVous rejoindrez la **Direction Data & Analytics** pour les pipelines de données des modèles de risque.\n\n### Responsabilités\n\n- **Pipelines ETL** avec Apache Spark\n- Ingestion temps réel via **Kafka**\n- Python (pandas, PySpark)\n- Cloud **Azure**\n\n### Compétences requises\n\n```python\nrequired = [\n    "Python (pandas, numpy)",\n    "SQL avancé",\n    "Notions Spark"\n]\n```\n\n### Avantages\n\n- Formations internes\n- Tickets resto + transport 50%',3),
('2025-04-01','2025-09-30',48.858370,2.294481,'Stage Dev Java Microservices','Stage 6 mois Paris. Microservices bancaires Java Spring Cloud pour open banking.',1200,'## Développeur Java Microservices – Société Générale\n\n### Mission\n\nDéveloppement de **microservices** pour la plateforme d''open banking.\n\n### Technologies\n\n- Java 17 + Spring Boot + Spring Cloud\n- Apache Kafka\n- PostgreSQL + JPA\n- Docker + Kubernetes\n- TDD (JUnit, Mockito)\n\n### Profil\n\n- Bac+4/5 développement\n- Java et Spring maîtrisés\n- API REST\n\n### Équipe\n\n12 développeurs, méthode **SAFe**.',3),
('2025-05-15','2025-11-15',48.858370,2.294481,'Stage Sécurité SI Bancaire','Stage 6 mois Paris. Audit securisation SI bancaire conformite ISO 27001 DORA.',1300,'## SSI – Société Générale\n\n### Mission\n\nAu sein de la **DSSI**, sécurisation des infrastructures de la banque.\n\n### Tâches\n\n- Audits de sécurité (OWASP)\n- Gestion des vulnérabilités (Qualys)\n- Rédaction de politiques de sécurité\n- Sensibilisation des développeurs\n\n### Profil\n\n- Master cybersécurité\n- OWASP Top 10\n- Python/Bash\n\n### Normes\n\nFormation **ISO 27001** et **DORA**.',3),

-- === AIRBUS (4) ===
('2025-04-15','2025-10-15',43.605699,1.441600,'Stage DevOps Cloud','Stage 6 mois Toulouse. Kubernetes Docker CI/CD pour Digital Factory Airbus.',1300,'## Ingénieur DevOps – Airbus\n\n### Environnement\n\nAu sein de la **Digital Factory** d''Airbus, équipe Platform Engineering.\n\n### Missions\n\n- Déploiements avec **Helm / Kubernetes**\n- Pipelines **CI/CD** (GitLab CI)\n- Monitoring **Prometheus + Grafana**\n- Infrastructure as code (**Terraform**)\n\n### Profil\n\n- Bac+4/5 informatique\n- Linux, Docker/Kubernetes\n- Anglais courant\n\n### Lieu\n\nToulouse – Site Saint-Martin (métro B)',4),
('2025-03-01','2025-08-31',43.605699,1.441600,'Stage Dev C++ Simulation','Stage 6 mois Toulouse. Simulation numerique de structures aeronautiques en C++.',1350,'## Développeur C++ Simulation – Airbus\n\n### Mission\n\nDéveloppement de modules de **simulation numérique** pour calculs de structures d''avions.\n\n### Stack\n\n```\nC++17 · CMake · Python · MPI · HDF5\n```\n\n### Tâches\n\n- C++ moderne (C++17/20)\n- Intégration dans le solver interne\n- Optimisation (profiling)\n- Tests unitaires et validation\n\n### Profil\n\n- Ingénieur informatique ou mécanique numérique\n- Bon niveau C++',4),
('2025-05-01','2025-10-31',43.605699,1.441600,'Stage Data Scientist Manufacturing','Stage 6 mois Toulouse. IA predictive pour detection de defauts en production.',1400,'## Data Scientist Manufacturing – Airbus\n\n### Contexte\n\nIA dans les usines pour **prédire les défauts** et optimiser les cadences.\n\n### Missions\n\n- Analyse de données industrielles\n- Modèles de classification et régression\n- Déploiement via MLflow\n- Collaboration avec ingénieurs méthodes\n\n### Stack\n\n- Python (scikit-learn, XGBoost)\n- Spark, MLflow, DVC\n- Tableaux Tableau\n\n### Profil\n\n- Master 2 Data Science\n- Python ML',4),
('2025-06-01','2025-11-30',43.605699,1.441600,'Stage Réseaux IoT Usine','Stage 6 mois Toulouse. Architecture IoT industrielle pour lignes d''assemblage.',1200,'## Architecte Réseau IoT – Airbus\n\n### Mission\n\nConception et déploiement de l''**architecture IoT industrielle**.\n\n### Tâches\n\n- Design réseau (LoRaWAN, MQTT)\n- Déploiement capteurs et passerelles\n- Supervision et monitoring\n- Documentation technique\n\n### Profil\n\n- Réseaux & télécommunications\n- IoT (MQTT, AMQP)\n- Linux embarqué\n- Anglais professionnel',4),

-- === OVHCLOUD (5) ===
('2025-05-01','2025-10-31',50.690830,3.175630,'Stage Dev Backend Go','Stage 6 mois Roubaix. Microservices Golang pour le cloud public OVHcloud.',1100,'## Développeur Backend Go – OVHcloud\n\n### Mission\n\nDéveloppement de microservices en **Go** pour la gestion des ressources cloud.\n\n### Ce que vous ferez\n\n- Microservices en **Golang**\n- API REST de gestion des instances\n- Tests unitaires et d''intégration\n- Code reviews rigoureuses\n\n### Stack\n\n```\nGo 1.22 · PostgreSQL · Redis · RabbitMQ\nKubernetes · GitLab CI · Prometheus\n```\n\n### Culture\n\n- Open source first\n- Hackathons réguliers',5),
('2025-04-01','2025-09-30',50.690830,3.175630,'Stage Ingénieur Réseau Datacenter','Stage 6 mois Roubaix. Infrastructure réseau backbone des datacenters OVHcloud.',1050,'## Ingénieur Infrastructure Réseau – OVHcloud\n\n### Mission\n\nGestion et évolution des **réseaux backbone** d''OVHcloud.\n\n### Tâches\n\n- Configuration Juniper / Cisco\n- Automatisation réseau (Ansible, Python)\n- Supervision et alerting\n\n### Profil\n\n- Réseaux & télécoms\n- BGP, OSPF, VLAN\n- Python scripting',5),
('2025-06-01','2025-11-30',50.690830,3.175630,'Stage Dev Frontend React','Stage 6 mois Roubaix. Interface de gestion cloud utilisee par 1,5M clients.',1000,'## Développeur Frontend React – OVHcloud\n\n### Mission\n\nDéveloppement du **Control Panel OVHcloud**, utilisé par 1,5 million de clients.\n\n### Technologies\n\n- React + TypeScript\n- Design system interne (ODS)\n- Tests Cypress + Jest\n- i18n (15 langues)\n\n### Profil\n\n- Bac+4/5 développement web\n- React / TypeScript\n- Accessibilité (WCAG)\n\n### Open Source\n\nCode open source : https://github.com/ovh/manager',5),
('2025-04-15','2025-10-15',50.629250,3.057256,'Stage QA Automatisation','Stage 6 mois Lille. Framework de tests automatises pour la plateforme cloud.',1050,'## QA Automatisation – OVHcloud Lille\n\n### Mission\n\nDéveloppement du **framework de tests automatisés** pour la plateforme OVHcloud.\n\n### Technologies\n\n- Python + pytest\n- Selenium + Playwright\n- Robot Framework\n- GitLab CI, Allure\n\n### Tâches\n\n- Tests E2E Control Panel\n- Tests API REST (Postman)\n- Intégration CI\n\n### Profil\n\n- Développement ou QA\n- Python\n- Rigueur et sens du détail',5),

-- === DASSAULT SYSTÈMES (6) ===
('2025-04-01','2025-09-30',48.771199,2.332090,'Stage Dev 3DEXPERIENCE','Stage 6 mois Velizy. Developpement de composants pour la plateforme 3DEXPERIENCE.',1300,'## Développeur 3DEXPERIENCE – Dassault Systèmes\n\n### Mission\n\nDéveloppement de composants pour la plateforme **3DEXPERIENCE** utilisée par des milliers d''ingénieurs industriels.\n\n### Technologies\n\n- Java EE / Jakarta EE\n- JavaScript + React (UI)\n- APIs REST & GraphQL\n- Git, Jenkins, SonarQube\n\n### Profil\n\n- Master ou ingénieur informatique\n- Java confirmé\n- Intérêt pour les outils CAO/PLM',6),
('2025-05-01','2025-10-31',48.771199,2.332090,'Stage R&D Simulation Mécanique','Stage 6 mois Velizy. Algorithmes de simulation par elements finis pour SIMULIA.',1400,'## R&D Simulation Mécanique – Dassault Systèmes\n\n### Mission\n\nDéveloppement d''algorithmes de **simulation par éléments finis** pour SIMULIA.\n\n### Tâches\n\n- Algorithmes numérique (C++)\n- Validation sur cas de référence\n- Documentation scientifique\n- Collaboration avec PhD researchers\n\n### Profil\n\n- Master 2 calcul scientifique / mécanique numérique\n- C++ et Python\n- Bases en éléments finis\n\n### Publication\n\nCo-publication possible selon les résultats.',6),
('2025-04-01','2025-09-30',45.188529,5.724524,'Stage Dev Python Flask Grenoble','Stage 6 mois Grenoble. APIs microservices Python pour exposer fonctions de simulation.',1100,'## Développeur Python Flask – Dassault Systèmes Grenoble\n\n### Mission\n\nDéveloppement d''**APIs microservices** Python pour exposer les fonctionnalités de simulation.\n\n### Technologies\n\n- Python 3.11 + FastAPI\n- Docker + Kubernetes\n- OpenAPI / Swagger\n- PostgreSQL\n\n### Profil\n\n- Bac+4/5 développement\n- Python\n- API REST\n\n### Lieu\n\nGrenoble – à proximité des Alpes.',6),

-- === BNP PARIBAS (7) ===
('2025-04-01','2025-09-30',48.876670,2.329870,'Stage Dev Java Paiement International','Stage 6 mois Paris. Microservices bancaires pour la plateforme de paiement.',1250,'## Développeur Java Microservices – BNP Paribas\n\n### Mission\n\nDéveloppement de **microservices** pour la plateforme de paiement international.\n\n### Technologies\n\n- Java 17 + Spring Boot\n- Kafka (event sourcing)\n- MongoDB + PostgreSQL\n- OpenShift\n- TDD\n\n### Profil\n\n- Bac+4/5 développement\n- Java et Spring\n- Notions finance\n\n### Contexte\n\nFormation aux normes **PSD2**.',7),
('2025-05-01','2025-10-31',48.876670,2.329870,'Stage ML Détection de Fraudes','Stage 6 mois Paris. Modeles ML scoring et detection de fraudes bancaires.',1350,'## Machine Learning Risques – BNP Paribas\n\n### Mission\n\nDéveloppement de **modèles de scoring** pour la détection de fraudes et le risque de crédit.\n\n### Tâches\n\n- Feature engineering transactionnel\n- Modèles (XGBoost, LightGBM, réseaux de neurones)\n- Interprétabilité (SHAP, LIME)\n- MLflow + Databricks\n\n### Données\n\n> **Milliards de transactions** réelles anonymisées.\n\n### Profil\n\n- Master 2 Data Science\n- Python avancé (scikit-learn, PyTorch)',7),
('2025-06-01','2025-11-30',48.876670,2.329870,'Stage Analyste SOC Cyber','Stage 6 mois Paris. Surveillance temps reel et reponse aux incidents bancaires.',1300,'## Analyste SOC – BNP Paribas\n\n### Mission\n\nSurveillance en temps réel de l''**infrastructure bancaire**.\n\n### Tâches\n\n- Triage alertes SIEM (IBM QRadar)\n- Analyse forensique\n- Playbooks de réponse\n- Threat hunting\n\n### Profil\n\n- Master cybersécurité\n- MITRE ATT&CK\n- Linux et réseau\n\n### Avantages\n\n- Formations certifiantes (CompTIA, SANS)',7),
('2025-04-15','2025-10-15',45.748040,4.846760,'Stage Data Analyst BI Lyon','Stage 6 mois Lyon. Tableaux de bord Power BI pour la direction BNP Paribas.',1100,'## Data Analyst BI – BNP Paribas Lyon\n\n### Mission\n\nCréation de **tableaux de bord décisionnels** pour les équipes de direction.\n\n### Technologies\n\n- Power BI + DAX\n- SQL Server\n- Python (pandas)\n- Azure Synapse\n\n### Profil\n\n- Formation data ou business\n- Power BI requis\n- SQL avancé\n- Sens de la communication',7),
('2025-05-01','2025-10-31',48.856614,2.352222,'Stage Dev Kotlin Android Finance','Stage 6 mois Paris. Application Android de gestion de flotte BNP Paribas Leasing.',1150,'## Développeur Kotlin Android – BNP Paribas\n\n### Mission\n\nApplication Android de **gestion de flotte** pour BNP Paribas Leasing Solutions.\n\n### Technologies\n\n- Kotlin + Jetpack Compose\n- Coroutines + Flow\n- Room + Retrofit + Hilt\n\n### Profil\n\n- Bac+4/5 mobile\n- Kotlin Android\n- Clean Architecture MVVM',7),

-- === SOPRA STERIA (8) ===
('2025-04-01','2025-09-30',48.874510,2.287540,'Stage Dev .NET Secteur Public','Stage 6 mois Paris. Application GRH pour un ministere client.',1100,'## Développeur .NET – Sopra Steria Paris\n\n### Mission\n\nDéveloppement d''une application de **gestion RH** pour un ministère client.\n\n### Technologies\n\n- C# .NET 8 + ASP.NET Core\n- Angular 17 (front)\n- SQL Server\n- Azure DevOps\n\n### Profil\n\n- Bac+4/5 développement\n- C# (ou Java)\n- Architecture MVC\n\n### Contexte\n\nMission en régie chez le client, 4j/5 sur site.',8),
('2025-05-01','2025-10-31',45.748040,4.846760,'Stage Dev Angular Assurance','Stage 6 mois Lyon. Refonte interface portail gestion de sinistres assurance.',1050,'## Développeur Angular – Sopra Steria Lyon\n\n### Mission\n\nRefonte de l''interface d''un portail de **gestion de sinistres**.\n\n### Technologies\n\n- Angular 17 + RxJS\n- Java Spring Boot\n- Jest + Cypress\n- Azure Pipelines\n\n### Profil\n\n- Bac+4/5 web\n- Angular ou React\n- Goût pour l''UX\n\n### Équipe\n\n15 personnes, Scrum.',8),
('2025-05-01','2025-10-31',47.322047,5.041480,'Stage Dev Vue.js Industrie','Stage 6 mois Dijon. Application de suivi de production industrielle.',1050,'## Développeur Full Stack Vue.js – Sopra Steria Dijon\n\n### Mission\n\nApplication de **suivi de production** pour une PME industrielle.\n\n### Technologies\n\n- Vue.js 3 + Pinia\n- FastAPI (Python)\n- MySQL, Docker\n\n### Profil\n\n- Bac+4/5 développement\n- Vue.js ou React + Python\n- Autonomie',8),
('2025-06-01','2025-11-30',47.751569,7.335888,'Stage Dev Android Terrain','Stage 6 mois Mulhouse. Application Android pour techniciens terrain.',1000,'## Développeur Android – Sopra Steria Mulhouse\n\n### Mission\n\n**Application Android** pour la saisie des interventions des techniciens terrain.\n\n### Technologies\n\n- Kotlin + Jetpack Compose\n- Room + Retrofit\n- Hilt\n\n### Contexte\n\nApplication offline avec synchronisation différée.\n\n### Profil\n\n- Bac+4/5 mobile\n- Kotlin ou Java Android\n- Jetpack apprécié',8),
('2025-04-01','2025-09-30',48.573406,7.752111,'Stage Data Engineer ETL Banking','Stage 6 mois Strasbourg. Pipelines ETL datawarehouse decisionnel banque regionale.',1100,'## Data Engineer ETL – Sopra Banking Strasbourg\n\n### Mission\n\n**Pipelines ETL** alimentant le datawarehouse décisionnel d''une banque régionale.\n\n### Technologies\n\n- Talend Open Studio\n- Python + pandas\n- Oracle Database\n- Power BI\n\n### Profil\n\n- Bac+4/5 informatique ou data\n- SQL avancé\n- Python et ETL appréciés',8),
('2025-05-01','2025-10-31',48.692054,6.184417,'Stage Dev Java EE Nancy','Stage 6 mois Nancy. Refonte SI de gestion pour collectivite locale.',1000,'## Développeur Java EE – Sopra Steria Nancy\n\n### Mission\n\nRefonte d''un **système d''information** de gestion pour collectivité locale.\n\n### Technologies\n\n- Java 11 + Jakarta EE\n- JSF / PrimeFaces\n- Oracle DB, JBoss/WildFly\n\n### Profil\n\n- Bac+4/5 Java\n- Java EE ou Spring\n- Sens du service public',8),
('2025-04-15','2025-10-15',43.296482,5.381794,'Stage Dev Java Spring Boot Logistique','Stage 6 mois Marseille. API de gestion logistique portuaire pour le Grand Port.',1100,'## Développeur Java Spring Boot – Sopra Steria Marseille\n\n### Mission\n\n**API de gestion logistique portuaire** pour le Grand Port Maritime de Marseille.\n\n### Technologies\n\n- Java 17 + Spring Boot 3\n- REST + OpenAPI\n- Oracle DB, GitLab CI\n\n### Profil\n\n- Bac+4/5 Java\n- Spring Boot\n- Logistique appréciée',8),

-- === AMADEUS (9) ===
('2025-04-01','2025-09-30',43.616420,7.054840,'Stage Dev Java Distribué Voyage','Stage 6 mois Sophia Antipolis. Systemes distribues pour reservation aerienne.',1300,'## Développeur Java Distribué – Amadeus\n\n### Mission\n\nDéveloppement du **moteur de disponibilité** des vols, traité en temps réel.\n\n### Technologies\n\n- Java 17 + frameworks internes\n- Cassandra (NoSQL)\n- Kafka (messaging)\n- Tests de performance (JMeter)\n\n### Enjeux\n\n> **2 milliards de transactions** par an. Chaque milliseconde compte.\n\n### Profil\n\n- Ingénieur ou Master info\n- Java solide\n- Anglais professionnel requis',9),
('2025-05-01','2025-10-31',43.616420,7.054840,'Stage Data Engineer Trafic Aérien','Stage 6 mois Sophia Antipolis. Pipelines de donnees pour analyser reservations aeriennes.',1250,'## Data Engineer – Amadeus\n\n### Mission\n\n**Pipelines de données** pour analyser les tendances de réservation aérienne mondiales.\n\n### Technologies\n\n- Python + PySpark\n- Kafka + Flink\n- Snowflake, Airflow\n\n### Données\n\n- 500 millions de recherches de vols / jour\n- 200 compagnies aériennes\n\n### Profil\n\n- Master 2 Data Engineering\n- Python et SQL avancés\n- Anglais obligatoire',9),
('2025-04-01','2025-09-30',43.704948,7.262012,'Stage Frontend React Voyage','Stage 6 mois Nice. Interface de recherche et reservation vols Amadeus.',1200,'## UX/Frontend React – Amadeus Nice\n\n### Mission\n\nRefonte de l''interface de **recherche et réservation** de vols.\n\n### Technologies\n\n- React 18 + TypeScript\n- Storybook\n- Figma (collaboration)\n- Jest + Testing Library\n\n### Profil\n\n- Bac+4/5 front\n- React + TypeScript\n- Accessibilité\n- Anglais courant',9),

-- === UBISOFT (10) ===
('2025-04-01','2025-09-30',48.873417,2.329815,'Stage Dev Gameplay C++','Stage 6 mois Paris. Developpement de mecaniques de jeu pour un titre AAA.',1200,'## Développeur Gameplay C++ – Ubisoft\n\n### Mission\n\nDéveloppement de **mécaniques de gameplay** pour un titre AAA en production (confidentiel).\n\n### Technologies\n\n- C++ (Anvil Next engine)\n- Lua (scripting)\n- Perforce, Optick (profiling)\n\n### Tâches\n\n- Features gameplay\n- Bugs gameplay\n- Optimisation\n- Collaboration game designers\n\n### Profil\n\n- Ingénieur ou Master\n- C++ solide\n- Portfolio jeux vidéo',10),
('2025-05-01','2025-10-31',48.873417,2.329815,'Stage Dev Outils Pipeline 3D','Stage 6 mois Paris. Outils pipeline assets 3D pour artistes et game designers.',1150,'## Développeur Outils R&D – Ubisoft\n\n### Mission\n\nDéveloppement d''**outils de production** pour les artistes et designers.\n\n### Technologies\n\n- Python (pipeline)\n- C++ (plugins moteur)\n- Qt (interfaces)\n- DCC : Maya, Houdini\n\n### Tâches\n\n- Plugins Maya/Houdini\n- Automatisation d''assets\n- Interfaces opérateurs\n\n### Profil\n\n- Info ou TAD\n- Python requis\n- DCC apprécié',10),
('2025-04-15','2025-10-15',48.573406,7.752111,'Stage Dev Unity Serious Game','Stage 6 mois Strasbourg. Serious game de formation aux risques en entreprise.',1000,'## Développeur Unity – Ubisoft / partenaire\n\n### Mission\n\nDéveloppement d''un **serious game** de formation aux risques en entreprise.\n\n### Technologies\n\n- Unity 2023 + C#\n- Blender (assets simples)\n- Git LFS\n\n### Profil\n\n- Développement ou game design\n- Unity + C#\n- Portfolio Unity indispensable',10),

-- === ORANGE (11) ===
('2025-04-01','2025-09-30',48.906920,2.303490,'Stage Dev 5G IoT','Stage 6 mois Paris. Solutions IoT industrielles exploitant le reseau 5G Orange.',1200,'## Développeur 5G/IoT – Orange\n\n### Mission\n\nDéveloppement de **démonstrateurs IoT** exploitant les capacités 5G d''Orange.\n\n### Technologies\n\n- Python + MQTT\n- LoRaWAN, NB-IoT\n- AWS IoT Core\n- Docker + Kubernetes\n\n### Tâches\n\n- Prototypage IoT industriel\n- Intégration Live Objects\n- Tests latence 5G\n\n### Profil\n\n- Réseaux ou embarqué\n- Python et notions IoT',11),
('2025-05-01','2025-10-31',48.906920,2.303490,'Stage Cybersécurité Télécom','Stage 6 mois Paris. Securite des infrastructures telecom Orange Cyberdefense.',1300,'## Cybersécurité Réseau – Orange Cyberdefense\n\n### Mission\n\nSécurisation des **réseaux télécoms** d''Orange Cyberdefense.\n\n### Tâches\n\n- Analyse flux réseau (DPI)\n- Règles firewall\n- Red Team exercises\n- Veille CVE télécom (SS7, Diameter)\n\n### Profil\n\n- Master cybersécurité ou réseaux\n- TCP/IP, BGP, MPLS\n- Python scripting\n\n### Certification\n\n**CEH** possible en fin de stage.',11),
('2025-05-01','2025-10-31',47.218371,-1.553621,'Stage Dev IoT Industrie Nantes','Stage 6 mois Nantes. Maintenance predictive connectee pour equipements industriels.',1050,'## Développeur IoT Industrie – Orange Business Nantes\n\n### Mission\n\n**Maintenance prédictive connectée** pour équipements industriels.\n\n### Technologies\n\n- Python + MQTT\n- InfluxDB (time-series)\n- Grafana\n- Raspberry Pi + capteurs\n\n### Tâches\n\n- Firmware capteurs (MicroPython)\n- Backend de collecte\n- Dashboard temps réel\n\n### Profil\n\n- IoT ou systèmes embarqués\n- Python\n- Débrouillardise électronique',11),
('2025-04-01','2025-09-30',48.117266,-1.677793,'Stage Dev Vue.js Supervision','Stage 6 mois Rennes. Interface de supervision reseau pour equipes NOC Orange.',1100,'## Développeur Vue.js – Orange Rennes\n\n### Mission\n\n**Interface de supervision réseau** pour les équipes NOC d''Orange.\n\n### Technologies\n\n- Vue.js 3 + TypeScript + Pinia\n- D3.js (visualisations réseau)\n- FastAPI (Python)\n- WebSockets\n\n### Profil\n\n- Bac+4/5 front\n- Vue.js ou React\n- Intérêt pour les réseaux',11),

-- === MICHELIN (12) ===
('2025-04-15','2025-10-15',45.785367,3.086380,'Stage Dev MES Industrie 4.0','Stage 6 mois Clermont-Ferrand. MES pour nouvelles lignes de production pneumatiques.',1100,'## Développeur MES – Michelin\n\n### Mission\n\nDéveloppement du **Manufacturing Execution System** pour les nouvelles lignes de production.\n\n### Technologies\n\n- Java + Spring Boot (backend)\n- React (supervision)\n- OPC-UA (protocole industriel)\n- SQL Server\n\n### Contexte\n\nEn lien direct avec les **opérateurs d''usine**.\n\n### Profil\n\n- Informatique industrielle\n- Java requis\n- Esprit terrain',12),
('2025-05-01','2025-10-31',45.785367,3.086380,'Stage DS Maintenance Prédictive','Stage 6 mois Clermont-Ferrand. Prediction de pannes machine par IA sur donnees capteurs.',1150,'## Data Scientist Maintenance Prédictive – Michelin\n\n### Mission\n\nModèles de **maintenance prédictive** pour anticiper les pannes.\n\n### Données\n\n- Capteurs vibratoires, thermiques, acoustiques\n- Historiques 10 ans\n- 50 000 points de mesure\n\n### Stack\n\n- Python (scikit-learn, TensorFlow)\n- Time series (Prophet, LSTM)\n- Databricks + Delta Lake\n\n### Profil\n\n- Master 2 Data Science\n- Séries temporelles\n\n### Impact\n\n> **100 000€ d''économie** par panne évitée.',12),
('2025-05-01','2025-10-31',47.322047,5.041480,'Stage DS NLP Rapports','Stage 6 mois Dijon. NLP pour classification automatique de rapports d''incident.',1200,'## Data Scientist NLP – Michelin\n\n### Mission\n\nModèles de **traitement automatique du langage** pour l''analyse des rapports d''incident.\n\n### Technologies\n\n- Python + Transformers (HuggingFace)\n- spaCy + NLTK\n- PostgreSQL, MLflow\n\n### Tâches\n\n- Classification automatique des rapports\n- Extraction d''entités nommées\n- Fine-tuning BERT\n\n### Profil\n\n- Master 2 NLP ou Data Science\n- Python avancé\n- Transformers HuggingFace',12),
('2025-04-15','2025-10-15',43.316667,-1.983333,'Stage Dev Python Industriel Bayonne','Stage 6 mois Bayonne. Automatisation controle qualite en usine par vision artificielle.',1050,'## Développeur Python Industriel – Michelin Bayonne\n\n### Mission\n\nAutomatisation du **contrôle qualité** par vision artificielle.\n\n### Technologies\n\n- Python 3 + OpenCV\n- OPC-UA (PLC)\n- SQLite\n- Tkinter (interface opérateur)\n\n### Profil\n\n- Informatique industrielle\n- Python solide\n- Vision artificielle appréciée\n\n### Lieu\n\nBayonne – côte Basque.',12),

-- === DECATHLON (13) ===
('2025-04-01','2025-09-30',50.665220,3.100500,'Stage Dev Backend PHP Ecommerce','Stage 6 mois Villeneuve d Ascq. Nouvelles fonctionnalites plateforme e-commerce Decathlon.',1050,'## Développeur Backend PHP/Symfony – Decathlon\n\n### Mission\n\nNouvelles fonctionnalités pour la **plateforme e-commerce** Decathlon (200M visites/an).\n\n### Technologies\n\n- PHP 8 + Symfony 6\n- MySQL + ElasticSearch\n- RabbitMQ\n- Docker + GitLab CI\n\n### Profil\n\n- Bac+4/5 web\n- PHP/Symfony\n- RESTful API\n\n### Avantages\n\n- Réduction Decathlon 30%\n- Campus sport gratuit',13),
('2025-05-01','2025-10-31',50.665220,3.100500,'Stage Data Analyst Ecommerce','Stage 6 mois Villeneuve d Ascq. Analyse comportement client en ligne et AB tests.',1000,'## Data Analyst E-commerce – Decathlon\n\n### Mission\n\nAnalyse du **comportement utilisateur** pour améliorer les taux de conversion.\n\n### Tâches\n\n- Funnels de conversion (GA4)\n- A/B tests\n- Dashboards Looker Studio\n- Recommandations UX\n\n### Stack\n\n```\nPython · BigQuery · Looker Studio · GA4 · SQL\n```\n\n### Profil\n\n- Data ou marketing digital\n- SQL et Python\n- Sens produit\n\n### Avantages\n\n- Sport pendant la pause déjeuner !',13),
('2025-06-01','2025-11-30',43.610769,3.876716,'Stage Dev PHP Laravel Sport','Stage 6 mois Montpellier. Plateforme de gestion d evenements sportifs clubs Decathlon.',1000,'## Développeur PHP Laravel – Decathlon Digital\n\n### Mission\n\nPlateforme de **gestion d''événements sportifs** pour les clubs partenaires.\n\n### Technologies\n\n- PHP 8 + Laravel 11\n- Vue.js 3\n- MySQL\n- Stripe (paiement)\n\n### Tâches\n\n- Inscriptions et paiement en ligne\n- Notifications (email/SMS)\n- API mobile\n\n### Profil\n\n- PHP/Laravel\n- Passion sport est un plus',13),
('2025-04-01','2025-09-30',50.629250,3.057256,'Stage Cloud Engineer AWS','Stage 6 mois Lille. Migration et optimisation e-commerce Decathlon vers AWS.',1150,'## Cloud Engineer AWS – Decathlon\n\n### Mission\n\nMigration des services e-commerce Decathlon vers **AWS**.\n\n### Technologies\n\n- AWS (ECS, RDS, Lambda, CloudFront)\n- Terraform\n- GitHub Actions\n- Datadog\n\n### Tâches\n\n- Infrastructure as Code\n- Optimisation coûts AWS\n- Alerting\n\n### Profil\n\n- Cloud ou systèmes\n- AWS (SAA appréciée)\n- Terraform apprécié',13),

-- === SNCF (14) ===
('2025-04-01','2025-09-30',48.882750,2.360000,'Stage Dev Mobile React Native SNCF','Stage 6 mois Paris. SNCF Connect application voyage 20 millions utilisateurs.',1200,'## Développeur Mobile React Native – SNCF Connect\n\n### Mission\n\nNouvelles fonctionnalités pour **SNCF Connect**, l''application de voyage (20M utilisateurs).\n\n### Technologies\n\n- React Native (iOS + Android)\n- TypeScript\n- Redux Toolkit\n- Jest + Detox\n\n> Chaque feature est utilisée des millions de fois.\n\n### Profil\n\n- Mobile\n- React Native ou Flutter\n- UX/performance mobile\n\n### Avantages\n\n- Carte Avantage SNCF\n- Télétravail 3j/sem',14),
('2025-05-01','2025-10-31',48.882750,2.360000,'Stage Ingénieur Systèmes Embarqués Train','Stage 6 mois Paris. Logiciels embarques TGV M nouvelle generation certification SIL4.',1250,'## Ingénieur Systèmes Embarqués – SNCF\n\n### Mission\n\nLogiciels embarqués pour les **trains TGV M** de nouvelle génération.\n\n### Technologies\n\n- C / C++ temps réel (RTOS VxWorks)\n- Protocoles ferroviaires (ETCS, GSM-R)\n- Simulation HIL\n- Certification EN 50128\n\n### Profil\n\n- Ingénieur systèmes/embarqué\n- C/C++\n- Sécurité-innocuité\n\n### Spécificité\n\nCertification **SIL 4** (niveau maximal).',14),
('2025-06-01','2025-11-30',45.748040,4.846760,'Stage Big Data Prédiction Trafic','Stage 6 mois Lyon. Prediction des retards et optimisation des circulations ferroviaires.',1150,'## Big Data Trafic – SNCF Lyon\n\n### Mission\n\nModèles de **prédiction des retards** et optimisation des circulations.\n\n### Données\n\n- GPS de 4 000 trains en temps réel\n- Historiques 15 ans\n- Météo, travaux, incidents\n\n### Stack\n\n- Spark + Hadoop (200 nœuds)\n- Python + scikit-learn\n- Kafka, Grafana\n\n### Profil\n\n- Master 2 Data Science ou Big Data\n- Spark et Python',14),
('2025-04-15','2025-10-15',48.832424,2.358520,'Stage Architecte Microservices Billetterie','Stage 6 mois Paris. Refonte architecture microservices billetterie SNCF Connect.',1350,'## Architecte Microservices – SNCF\n\n### Mission\n\nRefonte de l''**architecture de la billetterie** vers microservices.\n\n### Tâches\n\n- Design architecture cible\n- Migration monolithe -> microservices\n- Event-driven (Kafka)\n- API Gateway (Kong)\n\n### Stack\n\n```\nJava 17 · Spring Cloud · Kafka · Kong\nDocker · Kubernetes · AWS\n```\n\n### Profil\n\n- Ingénieur ou Master 2\n- Java Spring Cloud\n- Expérience microservices',14),
('2025-06-01','2025-11-30',48.692054,6.184417,'Stage Dev Swift iOS SNCF Nancy','Stage 6 mois Nancy. Application iOS SNCF Connect nouvelles fonctionnalites voyage.',1100,'## Développeur Swift iOS – SNCF Nancy\n\n### Mission\n\nNouvelles fonctionnalités de l''**application iOS SNCF Connect**.\n\n### Technologies\n\n- Swift 5.9 + SwiftUI\n- Combine\n- XCTest\n- Fastlane\n\n### Profil\n\n- Bac+4/5 mobile\n- Swift iOS\n- SwiftUI apprécié',14),

-- === CRITEO (15) ===
('2025-04-01','2025-09-30',48.868370,2.310880,'Stage Dev Scala Spark Big Data','Stage 6 mois Paris. Pipelines distribues pour 700 TB de donnees publicitaires.',1400,'## Développeur Scala/Spark – Criteo\n\n### Mission\n\nDéveloppement de **pipelines de traitement** pour les données publicitaires.\n\n### Technologies\n\n- Scala + Apache Spark\n- Kafka (streaming)\n- AWS S3 + EMR\n- Hive, Iceberg\n\n> **700 TB de données** traitées chaque jour.\n\n### Profil\n\n- Ingénieur ou Master\n- Scala ou Java\n- Systèmes distribués\n- Anglais courant',15),
('2025-05-01','2025-10-31',48.868370,2.310880,'Stage ML Publicité Ciblée','Stage 6 mois Paris. Algorithmes de recommandation et prediction de clics CTR.',1450,'## Machine Learning – Criteo\n\n### Mission\n\nAmélioration des **algorithmes de recommandation** et prédiction de clics.\n\n### Tâches\n\n- Deep learning (CTR prediction)\n- Feature store et engineering\n- A/B testing online\n- Serving (latence < 5ms)\n\n### Stack\n\n```python\nPyTorch · Spark · Feast · Kubeflow\n```\n\n### Profil\n\n- Master 2 ML ou PhD\n- Deep learning\n- Systèmes de recommandation',15),
('2025-05-15','2025-11-15',48.856614,2.352222,'Stage Product Owner Tech','Stage 6 mois Paris. Coordination sprints Agile et backlog pour feature team data.',1200,'## Product Owner Tech – Criteo\n\n### Mission\n\nCoordination des **sprints Agile** et backlog d''une feature team data.\n\n### Tâches\n\n- User stories\n- Priorisation du backlog\n- Animation Scrum\n- Interface métier / tech\n\n### Profil\n\n- Bac+4/5 info + gestion\n- Notions techniques\n- Leadership\n\n### Certification\n\n**PSPO (Scrum.org)** offerte.',15),

-- === VEOLIA (16) ===
('2025-04-15','2025-10-15',48.803840,2.120280,'Stage Dev IoT Smart Water','Stage 6 mois Aubervilliers. Solutions IoT surveillance reseaux eau potable.',1100,'## Développeur IoT Smart Water – Veolia\n\n### Mission\n\n**IoT pour la surveillance** des réseaux d''eau potable.\n\n### Tâches\n\n- Firmware embarqué (C/C++)\n- Capteurs pression / débit\n- Backend (Python + MQTT)\n- Dashboard Grafana\n\n### Impact\n\n> **1 million de litres d''eau économisés** par fuite détectée.\n\n### Profil\n\n- Embarqué ou IoT\n- C/C++ et Python\n- Sensibilité environnementale',16),
('2025-05-01','2025-10-31',48.803840,2.120280,'Stage DS Optimisation Énergie','Stage 6 mois Aubervilliers. Modeles d''optimisation energetique pour reseaux de chaleur.',1150,'## Data Scientist Énergie – Veolia\n\n### Mission\n\nModèles d''**optimisation énergétique** pour les réseaux de chaleur.\n\n### Données\n\n- Capteurs thermiques temps réel\n- Météo et historiques de consommation\n\n### Tâches\n\n- Prédiction (LSTM, Prophet)\n- Optimisation (algorithmes génétiques)\n- Tableaux de bord carbone\n\n### Profil\n\n- Master 2 Data Science\n- Python ML\n- Intérêt environnemental\n\n### Engagement\n\nContribution directe à la **réduction de CO2**.',16),
('2025-05-01','2025-10-31',49.443232,1.099971,'Stage Dev Fullstack Environnement','Stage 6 mois Rouen. Outil de suivi des indicateurs environnementaux industriels.',1050,'## Développeur Fullstack PHP – Veolia Rouen\n\n### Mission\n\nOutil de **suivi des indicateurs environnementaux** pour sites industriels.\n\n### Technologies\n\n- PHP 8 + Symfony 7\n- React (dashboard)\n- PostgreSQL, Docker\n\n### Profil\n\n- Bac+4/5 développement\n- PHP/Symfony\n- Sensibilité environnementale',16),

-- === EURONEXT (17) ===
('2025-04-01','2025-09-30',48.865950,2.346340,'Stage Dev C++ Trading Haute Fréquence','Stage 6 mois Paris. Moteur de matching d ordres boursiers ultra-basse latence.',1500,'## Développeur C++ Trading – Euronext\n\n### Mission\n\nDéveloppement du **moteur de matching d''ordres**, le cœur des bourses européennes.\n\n### Technologies\n\n- C++17 (ultra-optimisé)\n- Linux kernel bypass (DPDK)\n- FIX protocol\n- Tests en nanosecondes\n\n> **10 millions d''ordres/seconde**, latence de 10 microsecondes.\n\n### Profil\n\n- Top école ou Master info\n- C++ avancé (templates, mémoire)\n- Passion performance système',17),
('2025-05-01','2025-10-31',48.865950,2.346340,'Stage Ingénieur Infrastructure Critique','Stage 6 mois Paris. Infrastructure critique SLA 99.999% pour bourses europeennes.',1300,'## Ingénieur Infrastructure – Euronext\n\n### Mission\n\nMaintenance et évolution de l''**infrastructure critique** des bourses de Paris, Amsterdam et Bruxelles.\n\n### Technologies\n\n- Linux (RHEL) + bare metal\n- Ansible\n- Monitoring Nagios + Prometheus\n- Réseau ultra-faible latence\n\n### Profil\n\n- Systèmes & réseaux\n- Linux avancé\n- Haute disponibilité\n- Rigueur absolue (SLA 99.999%)',17),
('2025-05-01','2025-10-31',45.188529,5.724524,'Stage SRE Platform Engineering','Stage 6 mois Grenoble. Fiabilite et observabilite des systemes de marche Euronext.',1350,'## SRE Platform Engineering – Euronext Grenoble\n\n### Mission\n\nAmélioration de la **fiabilité et observabilité** des systèmes de marché.\n\n### Tâches\n\n- SLI/SLO/SLA definition\n- Instrumentation (Prometheus + Grafana)\n- Chaos engineering\n- Runbooks automatisés\n\n### Stack\n\n```\nLinux · Prometheus · Grafana · Ansible · Python · Go\n```\n\n### Profil\n\n- Systèmes ou SRE\n- Linux avancé\n- Python et Go',17),

-- === DOCTOLIB (18) ===
('2025-04-01','2025-09-30',48.860320,2.349670,'Stage Dev Ruby on Rails Santé','Stage 6 mois Paris. Nouvelles features Doctolib 80 millions de patients en Europe.',1300,'## Développeur Ruby on Rails – Doctolib\n\n### Mission\n\nNouvelles fonctionnalités sur la **plateforme Doctolib** (80M patients).\n\n### Technologies\n\n- Ruby on Rails 7\n- React + TypeScript\n- PostgreSQL + Redis\n- AWS (hébergement HDS)\n\n### Tâches\n\n- Features produit (cycle complet)\n- Code reviews et pair programming\n- Tests RSpec (TDD)\n\n### Profil\n\n- Bac+4/5 développement\n- Ruby ou Python\n- Qualité logicielle\n\n> Vos features utilisées par **500 000 médecins**.',18),
('2025-05-01','2025-10-31',48.860320,2.349670,'Stage SRE Plateforme Santé','Stage 6 mois Paris. Disponibilite et performance plateforme de sante SLA 99.99%.',1350,'## Site Reliability Engineer – Doctolib\n\n### Mission\n\nGarantir la **disponibilité et performance** de la plateforme (99.99% SLA).\n\n### Tâches\n\n- Monitoring (Datadog, PagerDuty)\n- Capacity planning et load testing\n- Terraform, Ansible\n- Post-mortems\n\n### Stack\n\n```\nAWS · Kubernetes · Terraform · Datadog · Grafana\n```\n\n### Profil\n\n- DevOps ou systèmes\n- Linux et Python/Bash\n- Sens des responsabilités',18),

-- === RENAULT (19) ===
('2025-04-01','2025-09-30',48.825210,2.204900,'Stage Dev Embarqué ADAS','Stage 6 mois Guyancourt. Fonctions ADAS pour vehicule electrique Renault.',1300,'## Développeur Logiciel Embarqué – Renault\n\n### Mission\n\nDéveloppement de fonctions **ADAS** pour les véhicules électriques Renault.\n\n### Technologies\n\n- C / C++ embarqué (AUTOSAR)\n- MATLAB/Simulink\n- CANoe (CAN bus)\n- Git + Jenkins\n\n### Profil\n\n- Ingénieur systèmes embarqués\n- C/C++\n- AUTOSAR ou RTOS\n- Permis B apprécié\n\n### Futur\n\nFonctions pour la **Renault 5 E-Tech** et future R4.',19),
('2025-05-01','2025-10-31',48.825210,2.204900,'Stage Dev Mobile Flutter Renault','Stage 6 mois Guyancourt. Application My Renault services connectes vehicule electrique.',1150,'## Développeur Mobile Flutter – Renault\n\n### Mission\n\n**Application My Renault** pour contrôler son véhicule à distance.\n\n### Technologies\n\n- Flutter (iOS + Android)\n- Dart\n- API REST véhicule\n- Firebase (notifications)\n\n### Features\n\n- Pré-conditionnement\n- Suivi de charge VE\n- Localisation et navigation\n- Diagnostic à distance\n\n### Profil\n\n- Mobile (Flutter ou React Native)',19),
('2025-06-01','2025-11-30',44.837789,-0.579180,'Stage Ingénieur Test Automobile','Stage 6 mois Bordeaux. Validation logiciels embarques calculateurs Renault.',1200,'## Ingénieur Test Automobile – Renault Bordeaux\n\n### Mission\n\nValidation des **logiciels embarqués** des calculateurs.\n\n### Technologies\n\n- MATLAB/Simulink\n- Python (automation)\n- CANoe / CANalyzer\n- DOORS (exigences)\n\n### Profil\n\n- Ingénieur systèmes\n- Python\n- CANbus apprécié\n- Rigueur',19),

-- === WORLDLINE (20) ===
('2025-04-01','2025-09-30',48.796480,2.121220,'Stage Dev Java Paiement Sécurisé','Stage 6 mois Bezons. Protocoles de paiement securise EMV ISO 8583.',1200,'## Développeur Paiement Java – Worldline\n\n### Mission\n\nDéveloppement de modules de **traitement des transactions** pour terminaux de paiement.\n\n### Technologies\n\n- Java 17 + Spring Boot\n- Protocoles EMV, ISO 8583\n- HSM (Hardware Security Module)\n- Tests conformité PCI-DSS\n\n### Profil\n\n- Bac+4/5 développement\n- Java\n- Cryptographie et sécurité\n\n### Certifications\n\nFormation **PCI-DSS** et EMVCo.',20),
('2025-05-01','2025-10-31',48.796480,2.121220,'Stage Ingénieur Sécurité Paiements','Stage 6 mois Bezons. Pentest et audit securite des systemes de paiement.',1300,'## Ingénieur Sécurité Paiements – Worldline\n\n### Mission\n\nAudit et renforcement de la **sécurité des systèmes de paiement**.\n\n### Tâches\n\n- Pentests APIs de paiement\n- Analyse cryptographique\n- Conformité 3DS2 / SCA\n- Documentation sécurité\n\n### Stack\n\n- Burp Suite, OWASP ZAP\n- Python scripting\n- HSM Thales/Utimaco\n\n### Profil\n\n- Master cybersécurité\n- Cryptographie (RSA, AES, ECC)\n\n### Certification\n\n**OSCP** possible.',20),
('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Sécurité Applicative Paiement','Stage 6 mois Nantes. Pentests et audits des applications de paiement Worldline.',1200,'## Sécurité Applicative – Worldline Nantes\n\n### Mission\n\nPentests et audits de sécurité sur les **applications de paiement**.\n\n### Tâches\n\n- Tests d''intrusion (OWASP)\n- Revue de code sécurisé\n- Bug bounty interne\n- Rapports\n\n### Stack\n\n- Burp Suite Pro, OWASP ZAP\n- Python scripting, Kali Linux\n\n### Profil\n\n- Master cybersécurité\n- OWASP Top 10\n- Bases réseau et web',20),
('2025-05-01','2025-10-31',49.894067,2.295753,'Stage Dev C# Réconciliation Comptable','Stage 6 mois Amiens. Module de reconciliation comptable pour transactions Worldline.',1050,'## Développeur C# .NET – Worldline Amiens\n\n### Mission\n\nModule de **réconciliation comptable** pour les transactions de paiement.\n\n### Technologies\n\n- C# .NET 8\n- SQL Server\n- WPF (interface)\n- Azure DevOps\n\n### Profil\n\n- Bac+4/5 développement\n- C# requis\n- Notions comptabilité appréciées',20);

-- ============================================================
-- COMPETENCES DEMANDEES
-- ============================================================
INSERT INTO Competence_Offre VALUES
(1,2),(1,9),(1,12),(1,6),(1,15),
(2,1),(2,6),(2,15),
(3,1),(3,14),(3,15),(3,16),
(4,3),(4,6),(4,15),(4,14),
(5,2),(5,9),(5,15),
(6,1),(6,6),(6,15),
(7,1),(7,18),(7,16),
(8,4),(8,15),(8,16),
(9,1),(9,17),(9,15),
(10,15),(10,16),
(11,15),(11,16),(11,1),
(12,16),(12,15),(12,1),
(13,3),(13,6),(13,15),(13,7),
(14,1),(14,6),(14,15),
(15,1),(15,18),(15,16),
(16,6),(16,15),(16,16),(16,14),
(17,16),(17,15),(17,1),
(18,2),(18,9),(18,15),
(19,3),(19,2),(19,15),
(20,4),(20,1),(20,15),
(21,3),(21,6),(21,14),(21,15),
(22,1),(22,17),(22,6),
(23,1),(23,18),(23,16),
(24,6),(24,15),(24,1),
(25,15),(25,6),
(26,2),(26,11),(26,15),
(27,2),(27,10),(27,15),
(28,2),(28,15),(28,6),
(29,3),(29,6),(29,15),(29,14),
(30,1),(30,6),(30,15),
(31,1),(31,18),(31,16),
(32,4),(32,15),(32,16),
(33,2),(33,11),(33,15),
(34,2),(34,10),(34,1),(34,15),
(35,3),(35,6),(35,15),(35,7),
(36,1),(36,17),(36,6),
(37,1),(37,6),(37,15),
(38,5),(38,6),(38,15),(38,2),
(39,5),(39,6),(39,15),
(40,14),(40,16),(40,15),(40,1),
(41,6),(41,15),(41,16),(41,14),
(42,2),(42,9),(42,15),
(43,3),(43,6),(43,15),(43,14),
(44,1),(44,17),(44,6),
(45,1),(45,18),(45,16),
(46,15),(46,6),(46,14),
(47,3),(47,6),(47,15),
(48,2),(48,9),(48,15),
(49,2),(49,11),(49,15),
(50,3),(50,6),(50,15),(50,14),
(51,1),(51,6),(51,15),
(52,1),(52,17),(52,6),
(53,1),(53,16),(53,15),
(54,4),(54,15),(54,16),
(55,5),(55,6),(55,15),(55,2),
(56,5),(56,6),(56,15),
(57,5),(57,2),(57,15),(57,6),
(58,14),(58,16),(58,15),(58,1),
(59,1),(59,17),(59,6),(59,15),
(60,1),(60,16),(60,15),
(61,4),(61,15),(61,16),
(62,2),(62,15),(62,6),
(63,4),(63,15),(63,16),
(64,14),(64,16),(64,15),(64,1),
(65,2),(65,9),(65,15),
(66,2),(66,11),(66,15),
(67,3),(67,6),(67,15),(67,14),
(68,1),(68,17),(68,6),
(69,1),(69,18),(69,16),
(70,4),(70,15),(70,16),
(71,6),(71,15),(71,16),(71,14),
(72,2),(72,9),(72,15),
(73,3),(73,6),(73,15),(73,14),
(74,1),(74,17),(74,6),
(75,1),(75,18),(75,16),
(76,15),(76,6),(76,14),
(77,3),(77,6),(77,15),
(78,2),(78,9),(78,15),
(79,2),(79,11),(79,15),
(80,4),(80,15),(80,16);

-- ============================================================
-- EVALUATIONS
-- ============================================================
INSERT INTO Evaluation_entreprise VALUES
(1,4,4),(1,5,5),(1,6,4),
(2,7,5),(2,8,4),
(3,9,3),(3,10,4),
(4,4,5),(4,7,5),
(5,5,4),(5,6,3),
(6,4,4),(7,5,5),(8,6,4),
(9,7,4),(10,8,5),(11,9,4),
(12,10,3),(13,4,5),(14,5,4),
(15,6,5),(16,7,3),(17,8,5),
(18,9,5),(19,10,4),(20,4,4);

-- ============================================================
-- WISHLISTS
-- ============================================================
INSERT INTO Wishlist VALUES
(4,1),(4,3),(4,22),(4,45),
(5,7),(5,9),(5,44),(5,68),
(6,13),(6,20),(6,35),(6,50),
(7,8),(7,11),(7,70),(7,79),
(8,16),(8,18),(8,55),(8,71),
(9,21),(9,29),(9,39),(9,65),
(10,36),(10,42),(10,60),(10,10);

-- ============================================================
-- CANDIDATURES
-- ============================================================
INSERT INTO Postule VALUES
(4,1,'cv/lucas_cv.pdf','lm/lucas_lm.pdf'),
(5,7,'cv/emma_cv.pdf','lm/emma_lm.pdf'),
(6,13,'cv/nathan_cv.pdf','lm/nathan_lm.pdf'),
(7,8,'cv/chloe_cv.pdf','lm/chloe_lm.pdf'),
(8,16,'cv/hugo_cv.pdf','lm/hugo_lm.pdf'),
(9,21,'cv/lea_cv.pdf','lm/lea_lm.pdf'),
(10,36,'cv/tom_cv.pdf','lm/tom_lm.pdf'),
(4,22,'cv/lucas_cv.pdf','lm/lucas_lm2.pdf'),
(5,9,'cv/emma_cv.pdf','lm/emma_lm2.pdf'),
(6,35,'cv/nathan_cv.pdf','lm/nathan_lm2.pdf');

-- ============================================================
-- VILLE
-- ============================================================
INSERT INTO Ville (nom, lat, lng) VALUES
('Paris', 48.856613, 2.352222),
('Marseille', 43.296482, 5.369780),
('Lyon', 45.760000, 4.841388),
('Toulouse', 43.604652, 1.444209),
('Nice', 43.700936, 7.268391),
('Nantes', 47.218371, -1.553621),
('Montpellier', 43.611931, 3.877716),
('Strasbourg', 48.573405, 7.752111),
('Bordeaux', 44.837789, -0.579180),
('Lille', 50.629250, 3.057256),
('Rennes', 48.117266, -1.677793),
('Reims', 49.258329, 4.031696),
('Le Havre', 49.494370, 0.107929),
('Saint-Étienne', 45.439695, 4.387178),
('Toulon', 43.124228, 5.928000),
('Grenoble', 45.188529, 5.724524),
('Dijon', 47.322047, 5.041480),
('Angers', 47.478419, -0.563166),
('Nîmes', 43.836699, 4.360054),
('Villeurbanne', 45.771944, 4.890169),
('Clermont-Ferrand', 45.777222, 3.087025),
('Le Mans', 48.006110, 0.199556),
('Aix-en-Provence', 43.529742, 5.447427),
('Brest', 48.390394, -4.486076),
('Tours', 47.394144, 0.684840),
('Amiens', 49.895037, 2.302976),
('Limoges', 45.833619, 1.261105),
('Annecy', 45.899247, 6.129384),
('Perpignan', 42.688659, 2.894833),
('Boulogne-Billancourt', 48.839695, 2.239912),
('Metz', 49.119308, 6.175715),
('Besançon', 47.237829, 6.024053),
('Orléans', 47.902733, 1.909252),
('Saint-Denis', 48.936181, 2.357443),
('Argenteuil', 48.947210, 2.246684),
('Rouen', 49.443231, 1.099971),
('Montreuil', 48.864049, 2.443211),
('Mulhouse', 47.750839, 7.335888),
('Caen', 49.182863, -0.370679),
('Nancy', 48.692054, 6.184417),
('Saint-Paul', 21.009624, 55.270718),
('Roubaix', 50.692704, 3.174561),
('Tourcoing', 50.722970, 3.161172),
('Nanterre', 48.892427, 2.206964),
('Avignon', 43.949316, 4.805528),
('Vitry-sur-Seine', 48.787527, 2.392930),
('Créteil', 48.790367, 2.455572),
('Poitiers', 46.580224, 0.340375),
('Courbevoie', 48.896725, 2.243196),
('Versailles', 48.804865, 2.120355),
('Colombes', 48.922530, 2.254010),
('Fort-de-France', 14.616064, -61.058780),
('Aulnay-sous-Bois', 48.938192, 2.494153),
('Asnières-sur-Seine', 48.914817, 2.287141),
('Rueil-Malmaison', 48.876397, 2.189697),
('Aubervilliers', 48.914050, 2.383413),
('Champigny-sur-Marne', 48.819468, 2.524535),
('La Rochelle', 46.160329, -1.151139),
('Antibes', 43.580418, 7.125102),
('Calais', 50.951290, 1.858686),
('Saint-Maur-des-Fossés', 48.793026, 2.494441),
('Drancy', 48.925346, 2.445684),
('Mérignac', 44.832136, -0.684321),
('Ajaccio', 41.926991, 8.736888),
('Issy-les-Moulineaux', 48.823402, 2.274425),
('Noisy-le-Grand', 48.849479, 2.562755),
('Levallois-Perret', 48.893205, 2.288215),
('Pau', 43.295097, -0.370797),
('La Seyne-sur-Mer', 43.098648, 5.879927),
('Cannes', 43.552849, 7.017369),
('Cergy', 49.038430, 2.078728),
('Lorient', 47.748252, -3.370244),
('Valence', 44.933393, 4.892360),
('Quimper', 47.996089, -4.102920),
('Villeneuve-d’Ascq', 50.609753, 3.130473),
('Antony', 48.759968, 2.305993),
('La Roche-sur-Yon', 46.669719, -1.426436),
('Vénissieux', 45.698524, 4.879399),
('Sarcelles', 48.997192, 2.380270),
('Fréjus', 43.432171, 6.737034),
('Cholet', 47.059885, -0.879980),
('Béziers', 43.344103, 3.215795),
('Colmar', 48.079859, 7.358512),
('Dunkerque', 51.035200, 2.376776),
('Ajaccio', 41.926991, 8.736888),
('Martigues', 43.405754, 5.048089),
('Bourges', 47.081013, 2.398782),
('Saint-Nazaire', 47.280602, -2.208395),
('Tarbes', 43.232820, 0.078083),
('Niort', 46.323706, -0.464241),
('Montauban', 44.017440, 1.355652),
('Narbonne', 43.183938, 3.003420),
('Chambéry', 45.564601, 5.917781),
('Nevers', 46.989002, 3.159000),
('Cergy', 49.038430, 2.078728),
('Saint-Quentin', 49.848889, 3.287190),
('Chalon-sur-Saône', 46.786390, 4.854750),
('Albi', 43.929798, 2.148641),
('Brive-la-Gaillarde', 45.159348, 1.533225),
('Sète', 43.407090, 3.692410),
('Pantin', 48.896855, 2.401306),
('Évreux', 49.024139, 1.150820)
;