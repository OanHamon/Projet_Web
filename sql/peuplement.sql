-- ============================================================
-- COMPETENCES
-- ============================================================
INSERT INTO Competence (nom, catégorie) VALUES
('Python', 'Langage'),
('JavaScript', 'Langage'),
('Java', 'Langage'),
('C++', 'Langage'),
('PHP', 'Langage'),
('SQL', 'Base de données'),
('MongoDB', 'Base de données'),
('PostgreSQL', 'Base de données'),
('React', 'Framework'),
('Vue.js', 'Framework'),
('Angular', 'Framework'),
('Node.js', 'Framework'),
('Laravel', 'Framework'),
('Docker', 'DevOps'),
('Git', 'Outil'),
('Linux', 'Système'),
('Machine Learning', 'IA'),
('Cybersécurité', 'Sécurité'),
('Gestion de projet', 'Soft skill'),
('Communication', 'Soft skill');

-- ============================================================
-- ENTREPRISES
-- ============================================================
INSERT INTO Entreprise (nom, description_cartes, phrase_intro, description_entreprise, email, telephone, mdp) VALUES
(
  'Capgemini',
  '## Capgemini\n\n**Leader mondial** du conseil et des services numériques.\n\n- 350 000 collaborateurs dans 50 pays\n- Expertise en cloud, data, IA\n- Partenaire Microsoft, AWS, Google',
  'Façonner l''avenir du numérique avec vous.',
  '## À propos de Capgemini\n\nCapgemini est un **groupe international** spécialisé dans le conseil, les services informatiques et la transformation numérique. Fondé en 1967, il accompagne ses clients dans leurs projets d''innovation.\n\n### Nos domaines\n\n- Cloud & Infrastructure\n- Data & Intelligence Artificielle\n- Développement d''applications\n- Cybersécurité\n\n> "Technology for people" est notre philosophie centrale.',
  'rh@capgemini.fr',
  '0155295000',
  'cap2024'
),
(
  'Thales',
  '## Thales Group\n\nLeader mondial en **technologies de défense** et sécurité numérique.\n\n- 81 000 employés dans 68 pays\n- Innovation en IA embarquée\n- Systèmes critiques & souverains',
  'La technologie au service d''un monde plus sûr.',
  '## À propos de Thales\n\nThales est un groupe technologique mondial opérant dans les marchés de la **défense**, de la **sécurité** et de l''**aérospatiale**.\n\n### Secteurs d''activité\n\n1. Défense & sécurité\n2. Aéronautique\n3. Transport\n4. Numérique & Cyber\n\n### Engagements\n\n- Sobriété numérique\n- Diversité & inclusion\n- Formation continue',
  'stages@thales.fr',
  '0157778000',
  'thales2024'
),
(
  'Société Générale',
  '## Société Générale\n\nGroupe bancaire international avec une forte culture **tech & innovation**.\n\n- Plus de 130 000 collaborateurs\n- Projets fintech & open banking\n- DSI de 10 000 personnes',
  'La banque qui innove pour vous.',
  '## Société Générale – Direction des Systèmes d''Information\n\nLa **DSI de Société Générale** est l''une des plus importantes en Europe avec plus de 10 000 collaborateurs IT.\n\n### Projets phares\n\n- Migration cloud AWS & Azure\n- Développement d''API bancaires\n- Intelligence artificielle appliquée aux risques\n\n```\nStack technique : Java, Python, Kafka, Kubernetes\n```',
  'it-rh@socgen.fr',
  '0142140000',
  'socgen2024'
),
(
  'Airbus',
  '## Airbus\n\n**Leader mondial** de l''aéronautique et de l''espace.\n\n- 134 000 employés dans le monde\n- R&D de pointe en simulation\n- Digitalisation de l''industrie aéronautique',
  'Pionnier de l''aviation de demain.',
  '## Airbus Digital\n\nAirbus investit massivement dans la **transformation digitale** de ses processus industriels.\n\n### Domaines IT\n\n| Domaine | Technologies |\n|---|---|\n| Simulation | Python, C++ |\n| MES / ERP | SAP, Java |\n| Data | Spark, Hadoop |\n| Cyber | SIEM, IAM |\n\n### Valeurs\n\n- Innovation responsable\n- Travail en équipe internationale\n- Excellence ingénierie',
  'stages.it@airbus.fr',
  '0561933333',
  'airbus2024'
),
(
  'OVHcloud',
  '## OVHcloud\n\nPremier **hébergeur européen** et acteur du cloud souverain.\n\n- 2 600 employés\n- 400 000 serveurs dans le monde\n- Engagement open source',
  'Le cloud fait en Europe, pour l''Europe.',
  '## OVHcloud – Rejoignez l''aventure\n\nOVHcloud est le **leader européen** du cloud avec des datacenters sur 4 continents.\n\n### Ce qui nous rend uniques\n\n- Infrastructure **bare metal** et cloud public\n- Engagement fort pour la **souveraineté des données**\n- Culture open source et contributions à Kubernetes, OpenStack\n\n> Chez OVHcloud, chaque stagiaire participe à de vrais projets en production.',
  'rh@ovhcloud.com',
  '0972101007',
  'ovh2024'
);

-- ============================================================
-- UTILISATEURS (Pilotes, Admins, Etudiants)
-- ============================================================
INSERT INTO Utilisateur (nom, prénom, email, mdp) VALUES
-- Pilotes (id 1-2)
('Martin', 'Sophie', 'sophie.martin@ecole.fr', '$2y$10$hashedpwd1'),
('Dubois', 'Pierre', 'pierre.dubois@ecole.fr', '$2y$10$hashedpwd2'),
-- Admin (id 3)
('Admin', 'System', 'admin@wtto.fr', '$2y$10$hashedpwdadmin'),
-- Etudiants (id 4-10)
('Bernard', 'Lucas', 'lucas.bernard@etudiant.fr', '$2y$10$hashedpwd4'),
('Petit', 'Emma', 'emma.petit@etudiant.fr', '$2y$10$hashedpwd5'),
('Robert', 'Nathan', 'nathan.robert@etudiant.fr', '$2y$10$hashedpwd6'),
('Richard', 'Chloé', 'chloe.richard@etudiant.fr', '$2y$10$hashedpwd7'),
('Moreau', 'Hugo', 'hugo.moreau@etudiant.fr', '$2y$10$hashedpwd8'),
('Simon', 'Léa', 'lea.simon@etudiant.fr', '$2y$10$hashedpwd9'),
('Laurent', 'Tom', 'tom.laurent@etudiant.fr', '$2y$10$hashedpwd10');

INSERT INTO Pilote (id_pilote) VALUES (1), (2);
INSERT INTO Admin (id_admin) VALUES (3);
INSERT INTO Etudiant (id_etudiant, id_pilote) VALUES
(4, 1), (5, 1), (6, 1),
(7, 2), (8, 2), (9, 2), (10, 2);

-- ============================================================
-- OFFRES DE STAGE
-- ============================================================
INSERT INTO Offre (date_debut, date_fin, lat, lng, titre, description_carte, remuneration_par_mois, description_offre_de_stage, id_entreprise) VALUES
(
  '2025-04-01', '2025-09-30',
  48.896008, 2.318260,
  'Stage Développeur Full Stack',
  '## Stage Dev Full Stack\n\n**Durée :** 6 mois\n**Lieu :** Paris La Défense\n**Rémunération :** 1200€/mois\n\nStack : **React + Node.js + PostgreSQL**',
  1200,
  '## Développeur Full Stack – Capgemini\n\n### Mission\n\nIntégré au sein d''une équipe Agile de 8 personnes, vous contribuerez au développement d''une **plateforme SaaS** destinée aux clients grands comptes.\n\n### Tâches principales\n\n- Développement de composants **React** (TypeScript)\n- Création d''API REST en **Node.js / Express**\n- Modélisation et requêtage **PostgreSQL**\n- Participation aux **code reviews** et sprints Scrum\n\n### Profil recherché\n\n```\n✔ Bac+4/5 en informatique\n✔ Maîtrise de JavaScript / TypeScript\n✔ Connaissance de Git\n✔ Esprit d''équipe et curiosité\n```\n\n### Ce que vous apprendrez\n\n- Architecture microservices\n- CI/CD avec GitHub Actions\n- Bonnes pratiques de développement en entreprise',
  1
),
(
  '2025-03-01', '2025-08-31',
  48.732090, 2.148020,
  'Stage Cybersécurité',
  '## Stage Cybersécurité\n\n**Durée :** 6 mois\n**Lieu :** Vélizy-Villacoublay\n**Rémunération :** 1400€/mois\n\nProjets : **SIEM, pentest, audit**',
  1400,
  '## Analyste Cybersécurité – Thales\n\n### Contexte\n\nThales DIS (Digital Identity & Security) recrute un stagiaire pour renforcer son équipe **SOC (Security Operations Center)**.\n\n### Missions\n\n1. Analyse des alertes sur la plateforme **SIEM Splunk**\n2. Participation à des exercices de **pentest** (Metasploit, Burp Suite)\n3. Rédaction de rapports d''audit de sécurité\n4. Veille sur les nouvelles **CVE** et menaces\n\n### Stack technique\n\n| Outil | Usage |\n|---|---|\n| Splunk | SIEM |\n| Wireshark | Analyse réseau |\n| Nmap | Reconnaissance |\n| Python | Scripting |\n\n> Stage idéal pour une orientation **Red Team / Blue Team**.',
  2
),
(
  '2025-06-01', '2025-11-30',
  48.858370, 2.294481,
  'Stage Data Engineer',
  '## Stage Data Engineer\n\n**Durée :** 6 mois\n**Lieu :** Paris 8e\n**Rémunération :** 1350€/mois\n\nStack : **Python, Spark, Kafka**',
  1350,
  '## Data Engineer – Société Générale\n\n### Description\n\nVous rejoindrez la **Direction Data & Analytics** pour travailler sur les pipelines de données alimentant les modèles de risque de crédit.\n\n### Responsabilités\n\n- Construction de **pipelines ETL** avec Apache Spark\n- Ingestion de flux temps réel via **Kafka**\n- Développement en **Python** (pandas, PySpark)\n- Déploiement sur environnement **cloud Azure**\n\n### Compétences requises\n\n```python\nrequired = [\n    "Python (pandas, numpy)",\n    "SQL avancé",\n    "Notions de Spark ou Hadoop",\n    "Curiosité pour la finance"\n]\n```\n\n### Avantages\n\n- Accès aux formations internes Société Générale\n- Tickets restaurant + remboursement transport 50%',
  3
),
(
  '2025-04-15', '2025-10-15',
  43.605699, 1.441600,
  'Stage DevOps / Cloud',
  '## Stage DevOps\n\n**Durée :** 6 mois\n**Lieu :** Toulouse\n**Rémunération :** 1300€/mois\n\nStack : **Kubernetes, Docker, Python**',
  1300,
  '## Ingénieur DevOps – Airbus\n\n### Environnement\n\nAu sein de la **Digital Factory** d''Airbus à Toulouse, vous intégrerez l''équipe Platform Engineering chargée de moderniser l''infrastructure.\n\n### Missions\n\n- Automatisation des déploiements avec **Helm / Kubernetes**\n- Écriture de pipelines **CI/CD** (GitLab CI)\n- Monitoring avec **Prometheus + Grafana**\n- Scripts d''infrastructure as code (**Terraform**)\n\n### Profil\n\n- Formation Bac+4/5 en informatique ou systèmes\n- Connaissance Linux indispensable\n- Notions Docker/Kubernetes appréciées\n- Anglais technique courant\n\n### Lieu\n\nToulouse – Site Saint-Martin (accessible en métro ligne B)',
  4
),
(
  '2025-05-01', '2025-10-31',
  50.690830, 3.175630,
  'Stage Développeur Backend Go',
  '## Stage Backend Go\n\n**Durée :** 6 mois\n**Lieu :** Roubaix\n**Rémunération :** 1100€/mois\n\nStack : **Go, OpenStack, Linux**',
  1100,
  '## Développeur Backend Go – OVHcloud\n\n### Mission\n\nIntégré à l''équipe **Public Cloud**, vous développerez des microservices en **Go** pour améliorer la gestion des ressources cloud.\n\n### Ce que vous ferez\n\n- Développement de microservices en **Golang**\n- Contribution à l''API REST de gestion des instances\n- Tests unitaires et d''intégration\n- Participation à des **code reviews** rigoureuses\n- Documentation technique en anglais\n\n### Stack\n\n```\nGo 1.22 · PostgreSQL · Redis · RabbitMQ\nKubernetes · GitLab CI · Prometheus\n```\n\n### Culture OVHcloud\n\n- Équipes autonomes et **bienveillantes**\n- Open source first\n- Journées tech et hackathons réguliers',
  5
);

-- ============================================================
-- COMPETENCES DEMANDEES PAR OFFRES
-- ============================================================
-- Offre 1 (Full Stack Capgemini): JS, React, Node.js, SQL, Git
INSERT INTO Competence_Offre VALUES (1,2),(1,9),(1,12),(1,6),(1,15);
-- Offre 2 (Cyber Thales): Python, Cybersécurité, Linux
INSERT INTO Competence_Offre VALUES (2,1),(2,18),(2,16);
-- Offre 3 (Data SG): Python, SQL, MongoDB
INSERT INTO Competence_Offre VALUES (3,1),(3,6),(3,7);
-- Offre 4 (DevOps Airbus): Docker, Linux, Python, Git
INSERT INTO Competence_Offre VALUES (4,14),(4,16),(4,1),(4,15);
-- Offre 5 (Backend OVH): SQL, Git, Linux, Docker
INSERT INTO Competence_Offre VALUES (5,6),(5,15),(5,16),(5,14);

-- ============================================================
-- EVALUATIONS ENTREPRISES
-- ============================================================
INSERT INTO Evaluation_entreprise VALUES
(1, 4, 4),(1, 5, 5),(1, 6, 4),
(2, 7, 5),(2, 8, 4),
(3, 9, 3),(3, 10, 4),
(4, 4, 5),(4, 7, 5),
(5, 5, 4),(5, 6, 3);

-- ============================================================
-- WISHLISTS
-- ============================================================
INSERT INTO Wishlist VALUES
(4, 1),(4, 3),
(5, 2),(5, 5),
(6, 1),(6, 4),
(7, 2),(7, 3),
(8, 4),(8, 5),
(9, 1),(9, 2),
(10, 3);

-- ============================================================
-- CANDIDATURES (Postule)
-- ============================================================
INSERT INTO Postule VALUES
(4, 1, 'cv/lucas_cv.pdf', 'lm/lucas_lm.pdf'),
(5, 2, 'cv/emma_cv.pdf', 'lm/emma_lm.pdf'),
(6, 3, 'cv/nathan_cv.pdf', 'lm/nathan_lm.pdf'),
(7, 2, 'cv/chloe_cv.pdf', 'lm/chloe_lm.pdf'),
(8, 4, 'cv/hugo_cv.pdf', 'lm/hugo_lm.pdf'),
(9, 5, 'cv/lea_cv.pdf', 'lm/lea_lm.pdf'),
(10, 1, 'cv/tom_cv.pdf', 'lm/tom_lm.pdf');