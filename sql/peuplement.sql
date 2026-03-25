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
('Cybersécurité', 'Technique'),('Gestion de projet', 'Social'),('Communication', 'Social'),
('Travail en équipe', 'Social'),('Rédaction', 'Social'),('Créativité', 'Social'),
('Sens commercial', 'Social'),('Analyse', 'Social');

-- ============================================================
-- ENTREPRISES
-- ============================================================

-- INFORMATIQUE (4)
INSERT INTO Entreprise (nom, description_cartes, phrase_intro, description_entreprise, email, telephone, mdp) VALUES
('Nexatech Solutions',
'Startup parisienne spécialisée en développement web et mobile. 120 collaborateurs. Projets innovants pour grands comptes et startups.',
'Construire le numérique de demain, aujourd''hui.',
'# 🚀 Nexatech Solutions – Présentation

**Agence de développement web & mobile nouvelle génération**

---

## 🌍 Qui sommes-nous ?
Nexatech Solutions est une startup parisienne fondée en 2018, spécialisée dans la conception et le développement d''applications web et mobiles sur mesure. Avec 120 collaborateurs passionnés, nous accompagnons aussi bien des startups en phase de lancement que des grands comptes dans leur transformation numérique.

Notre philosophie : livrer des produits de qualité, dans les délais, avec une communication transparente.

---

## 🛠️ Nos expertises

### **Développement Web**
- Applications React, Vue.js, Angular
- Backends robustes (Node.js, Laravel, Django)
- APIs REST et GraphQL

### **Développement Mobile**
- Applications iOS (Swift) et Android (Kotlin)
- Cross-platform (Flutter, React Native)

### **Cloud & DevOps**
- Déploiement AWS, GCP, Azure
- CI/CD, Docker, Kubernetes
- Monitoring et observabilité

---

## 🎯 Nos valeurs
- **Qualité avant tout** : chaque ligne de code compte
- **Agilité** : nous nous adaptons aux besoins de nos clients
- **Bienveillance** : un environnement de travail humain et stimulant
- **Innovation** : nous encourageons l''expérimentation

---

## 🎓 Rejoignez-nous
Chaque année, Nexatech accueille des stagiaires et alternants qui participent à de vrais projets clients. Vous serez encadré(e) par des développeurs seniors bienveillants et aurez rapidement des responsabilités.',
'rh@nexatech.fr', '0145678901', 'nexatech2024'),

('DataSphere',
'Entreprise lyonnaise experte en data engineering et intelligence artificielle. 200 collaborateurs. Clients dans la santé, la finance et l''industrie.',
'Transformer la donnée en valeur.',
'# 📊 DataSphere – La donnée au cœur de tout

**Expert en Data Engineering, Machine Learning et BI**

---

## 🌍 Qui sommes-nous ?
DataSphere est une entreprise lyonnaise fondée en 2015, spécialisée dans la valorisation des données. Nous aidons nos clients à collecter, traiter, analyser et exploiter leurs données pour prendre de meilleures décisions.

Avec 200 collaborateurs et des clients dans la santé, la finance et l''industrie, nous sommes reconnus comme un acteur de référence dans le domaine de la data en France.

---

## 🛠️ Nos expertises

### **Data Engineering**
- Pipelines ETL (Spark, Airflow, Kafka)
- Lacs de données et entrepôts (Snowflake, BigQuery)
- Streaming temps réel

### **Machine Learning & IA**
- Modèles prédictifs et recommandation
- NLP et traitement du langage
- Vision artificielle

### **Business Intelligence**
- Dashboards Power BI, Tableau, Metabase
- Reporting automatisé
- KPIs et suivi de performance

---

## 🎯 Nos valeurs
- **Data-driven** : chaque décision s''appuie sur les données
- **Rigueur scientifique** : nous appliquons les meilleures pratiques
- **Impact** : nos modèles ont un effet concret sur les métiers
- **Curiosité** : nous encourageons la veille technologique

---

## 🎓 Rejoignez-nous
DataSphere offre un environnement stimulant pour les profils data. Vous travaillerez sur des problématiques réelles avec des données à grande échelle.',
'carrieres@datasphere.fr', '0472345678', 'datasphere2024'),

('CyberShield',
'Entreprise bordelaise spécialisée en cybersécurité. 80 collaborateurs. SOC, pentest, audit et conseil en sécurité des systèmes d''information.',
'Protéger le numérique, sécuriser l''avenir.',
'# 🛡️ CyberShield – Experts en Cybersécurité

**SOC | Pentest | Audit | Conseil SSI**

---

## 🌍 Qui sommes-nous ?
CyberShield est une entreprise bordelaise fondée en 2016, dédiée à la protection des systèmes d''information. Nous intervenons auprès d''entreprises de toutes tailles, des PME aux grands groupes, pour les aider à évaluer, renforcer et surveiller leur sécurité informatique.

---

## 🛠️ Nos services

### **SOC (Security Operations Center)**
- Surveillance 24/7 des infrastructures
- Détection et réponse aux incidents (SIEM, EDR)
- Threat intelligence

### **Tests d''intrusion**
- Pentest web, réseau, mobile
- Red Team / Blue Team
- Social engineering

### **Audit & Conseil**
- Audit ISO 27001 / RGPD
- Analyse de risques
- Rédaction de politiques de sécurité

---

## 🎯 Nos valeurs
- **Éthique** : nous travaillons dans le respect strict des cadres légaux
- **Excellence technique** : nos équipes se forment en continu
- **Confidentialité** : discrétion absolue avec nos clients
- **Pédagogie** : nous formons et sensibilisons les équipes de nos clients

---

## 🎓 Rejoignez-nous
CyberShield recrute des profils passionnés par la sécurité informatique. Vous interviendrez sur des missions variées avec une grande montée en compétences.',
'jobs@cybershield.fr', '0556789012', 'cybershield2024'),

('CloudNative',
'ESN nantaise spécialisée en architecture cloud et DevOps. 150 collaborateurs. Partenaire AWS, Azure et GCP certifié.',
'L''infrastructure de demain, disponible aujourd''hui.',
'# ☁️ CloudNative – Experts Cloud & DevOps

**Architecture Cloud | DevOps | Infrastructure as Code**

---

## 🌍 Qui sommes-nous ?
CloudNative est une ESN nantaise fondée en 2017, spécialisée dans les architectures cloud natives et les pratiques DevOps. Nous sommes partenaires certifiés AWS, Microsoft Azure et Google Cloud Platform.

Nos 150 collaborateurs accompagnent les entreprises dans leur migration vers le cloud, l''automatisation de leurs infrastructures et la mise en place de pipelines CI/CD robustes.

---

## 🛠️ Nos expertises

### **Cloud Public**
- Migration et modernisation (lift & shift, re-architecture)
- AWS, Azure, GCP — certifications avancées
- FinOps : optimisation des coûts cloud

### **DevOps & SRE**
- Pipelines CI/CD (GitLab CI, GitHub Actions, Jenkins)
- Infrastructure as Code (Terraform, Ansible, Pulumi)
- Monitoring et observabilité (Prometheus, Grafana, Datadog)

### **Conteneurs & Orchestration**
- Docker, Kubernetes (EKS, AKS, GKE)
- Helm, ArgoCD, Flux
- Service mesh (Istio, Linkerd)

---

## 🎯 Nos valeurs
- **Automatisation** : si ça peut être scripté, ça doit l''être
- **Fiabilité** : nos systèmes tiennent leurs SLA
- **Open Source** : nous contribuons à la communauté
- **Formation** : nous finançons les certifications cloud

---

## 🎓 Rejoignez-nous
CloudNative offre un environnement technique de pointe. Vous travaillerez sur des architectures réelles en production.',
'talent@cloudnative.fr', '0240123456', 'cloudnative2024'),

-- FINANCE (3)
('Crédit Partenaires',
'Banque régionale indépendante. 500 collaborateurs. Spécialisée dans le crédit aux particuliers et PME. En pleine transformation digitale.',
'La banque de proximité qui vous ressemble.',
'# 🏦 Crédit Partenaires – Banque de Proximité

**Crédit aux particuliers | Financement PME | Épargne**

---

## 🌍 Qui sommes-nous ?
Crédit Partenaires est une banque régionale indépendante fondée en 1978. Avec 500 collaborateurs répartis dans 45 agences, nous sommes l''un des derniers acteurs bancaires 100% régionaux en France.

Notre mission : offrir des solutions financières personnalisées à nos clients particuliers et entreprises, avec une relation humaine au cœur de chaque interaction.

---

## 🏗️ Nos activités

### **Particuliers**
- Crédits immobiliers et à la consommation
- Épargne et placements
- Assurances et prévoyance

### **Professionnels & PME**
- Financement de projets
- Gestion de trésorerie
- Leasing et crédit-bail

### **Transformation Digitale**
- Application mobile clients
- Plateforme de gestion en ligne
- Automatisation des processus internes

---

## 🎯 Nos valeurs
- **Proximité** : nous connaissons nos clients par leur prénom
- **Responsabilité** : financement éthique et durable
- **Innovation** : nous modernisons nos outils sans perdre l''humain
- **Solidarité** : soutien aux projets locaux et associatifs

---

## 🎓 Rejoignez-nous
Crédit Partenaires offre des stages enrichissants dans un environnement bancaire à taille humaine. Idéal pour comprendre le monde de la finance et de la relation client.',
'recrutement@creditpartenaires.fr', '0345678901', 'creditp2024'),

('FinStart Conseil',
'Cabinet de conseil en finance d''entreprise et M&A. 60 collaborateurs. Accompagnement des PME et ETI dans leurs opérations financières stratégiques.',
'Votre partenaire pour les décisions financières qui comptent.',
'# 💼 FinStart Conseil – Cabinet de Conseil Financier

**Finance d''entreprise | M&A | Stratégie | Levée de fonds**

---

## 🌍 Qui sommes-nous ?
FinStart Conseil est un cabinet de conseil financier indépendant fondé en 2010. Nos 60 consultants accompagnent les PME et ETI françaises dans leurs opérations financières stratégiques : fusions-acquisitions, levées de fonds, restructurations, valorisations.

Notre différence : une approche sur mesure, des équipes disponibles et un engagement fort sur les résultats.

---

## 🛠️ Nos expertises

### **Fusions & Acquisitions (M&A)**
- Due diligence financière
- Valorisation d''entreprises
- Structuration des opérations

### **Levées de fonds**
- Capital-risque et private equity
- Préparation des dossiers investisseurs
- Accompagnement dans les négociations

### **Conseil en stratégie financière**
- Business plans et modèles financiers
- Optimisation de la structure financière
- Accompagnement à l''introduction en bourse

---

## 🎯 Nos valeurs
- **Excellence** : qualité irréprochable dans chaque mission
- **Indépendance** : conseil objectif, sans conflit d''intérêt
- **Confidentialité** : discrétion absolue
- **Engagement** : nous partageons les enjeux de nos clients

---

## 🎓 Rejoignez-nous
FinStart Conseil offre des stages de haute intensité. Vous serez rapidement impliqué dans de vraies missions clients avec une forte valeur ajoutée.',
'rh@finstartconseil.fr', '0156789012', 'finstart2024'),

('AssurPro',
'Courtier en assurances professionnelles. 180 collaborateurs. Spécialiste des risques entreprises, responsabilité civile et assurance construction.',
'Couvrir les risques pour libérer les projets.',
'# 🔒 AssurPro – Courtier en Assurances Professionnelles

**Assurance entreprises | RC Pro | Construction | Prévoyance**

---

## 🌍 Qui sommes-nous ?
AssurPro est un courtier en assurances professionnelles fondé en 2001. Avec 180 collaborateurs, nous sommes spécialisés dans la protection des entreprises contre leurs risques professionnels.

Nous travaillons avec l''ensemble des compagnies d''assurance du marché pour proposer les meilleures solutions à nos clients.

---

## 🛠️ Nos activités

### **Assurance Responsabilité**
- RC professionnelle et décennale
- Protection juridique
- Cyber-risques

### **Assurance Construction**
- Tous Risques Chantier
- Dommages-Ouvrage
- Garantie de parfait achèvement

### **Prévoyance & Santé**
- Mutuelle collective
- Prévoyance et retraite complémentaire
- Épargne salariale

---

## 🎯 Nos valeurs
- **Expertise** : maîtrise technique de l''ensemble des risques professionnels
- **Conseil** : nous guidons nos clients vers les meilleures solutions
- **Réactivité** : disponibilité en cas de sinistre
- **Intégrité** : transparence totale sur nos honoraires

---

## 🎓 Rejoignez-nous
AssurPro propose des stages enrichissants au cœur du monde de l''assurance. Vous développerez une expertise rare et très recherchée sur le marché.',
'carrieres@assurpro.fr', '0467890123', 'assurpro2024'),

-- COMMUNICATION/MARKETING (3)
('Agence Horizon',
'Agence de communication globale basée à Paris. 90 collaborateurs. Stratégie de marque, publicité, digital et relations presse pour grands comptes.',
'Des idées qui marquent les esprits.',
'# 🎨 Agence Horizon – Communication Globale

**Stratégie de marque | Publicité | Digital | Relations Presse**

---

## 🌍 Qui sommes-nous ?
Agence Horizon est une agence de communication globale fondée en 2008 à Paris. Avec 90 collaborateurs créatifs et stratèges, nous accompagnons les marques dans la construction et le développement de leur image.

Nos clients : des grands comptes nationaux et internationaux dans les secteurs du luxe, de la grande consommation, du tourisme et des services.

---

## 🛠️ Nos expertises

### **Stratégie de marque**
- Identité visuelle et brand book
- Positionnement et plateforme de marque
- Architecture de marque

### **Création publicitaire**
- Campagnes TV, print, digital
- Conception et production de contenus
- Storytelling et brand content

### **Communication Digitale**
- Stratégie réseaux sociaux
- SEO/SEA et marketing de contenu
- Email marketing et automation

### **Relations Presse**
- Communiqués et conférences de presse
- Influence et partenariats médias
- Gestion de crise

---

## 🎯 Nos valeurs
- **Créativité** : sortir des sentiers battus
- **Stratégie** : la créativité au service des objectifs
- **Collaboration** : travailler main dans la main avec nos clients
- **Impact** : des campagnes qui produisent des résultats mesurables

---

## 🎓 Rejoignez-nous
Horizon est le terrain idéal pour développer vos compétences en communication. Vous travaillerez sur des campagnes réelles pour des marques reconnues.',
'jobs@agencehorizon.fr', '0145678912', 'horizon2024'),

('InfluenceMedia',
'Agence de marketing digital et influence. 50 collaborateurs. Spécialiste des campagnes social media, content marketing et influence pour marques lifestyle.',
'Amplifier votre voix là où votre audience vous attend.',
'# 📱 InfluenceMedia – Marketing Digital & Influence

**Social Media | Content Marketing | Influence | Analytics**

---

## 🌍 Qui sommes-nous ?
InfluenceMedia est une agence de marketing digital fondée en 2019 à Lyon. Spécialisée dans le marketing d''influence et le content marketing, nous aidons les marques lifestyle, beauté, mode et food à développer leur présence en ligne.

Avec 50 collaborateurs passionnés par les nouvelles tendances digitales, nous gérons des campagnes pour des marques nationales et internationales.

---

## 🛠️ Nos expertises

### **Marketing d''influence**
- Identification et qualification des influenceurs
- Gestion des partenariats et campagnes
- Mesure des performances (KPIs, ROI)

### **Content Marketing**
- Stratégie éditoriale et calendrier de contenu
- Production de contenus (texte, photo, vidéo)
- Optimisation SEO

### **Social Media Management**
- Gestion quotidienne des réseaux sociaux
- Community management
- Publicité sociale (Meta Ads, TikTok Ads)

### **Analytics & Reporting**
- Dashboards de performance
- Analyse de l''audience
- Recommandations data-driven

---

## 🎯 Nos valeurs
- **Authenticité** : des partenariats sincères et transparents
- **Créativité** : des contenus qui engagent vraiment
- **Data** : des décisions basées sur les chiffres
- **Tendances** : toujours un coup d''avance

---

## 🎓 Rejoignez-nous
InfluenceMedia est l''agence idéale pour les profils créatifs et analytiques. Vous baignerez dans l''univers des réseaux sociaux et du marketing digital au quotidien.',
'talent@influencemedia.fr', '0472890123', 'influence2024'),

('Com''Event',
'Agence événementielle et relations publiques. 70 collaborateurs. Organisation d''événements corporate, salons professionnels et séminaires en France et Europe.',
'Créer des moments qui fédèrent et inspirent.',
'# 🎉 Com''Event – Agence Événementielle & RP

**Événements Corporate | Salons | Séminaires | Relations Publiques**

---

## 🌍 Qui sommes-nous ?
Com''Event est une agence événementielle et de relations publiques fondée en 2005 à Bordeaux. Avec 70 collaborateurs, nous organisons chaque année plus de 150 événements pour des entreprises, institutions et associations.

Notre expertise couvre l''ensemble de la chaîne événementielle : de la conception au bilan post-événement, en passant par la logistique, la communication et les relations presse.

---

## 🛠️ Nos expertises

### **Événements Corporate**
- Séminaires et conventions d''entreprise
- Soirées de gala et remises de prix
- Team building et incentives

### **Salons & Expositions**
- Conception et construction de stands
- Animation et expériences visiteurs
- Gestion logistique

### **Relations Publiques**
- Relations presse et médias
- Gestion de l''image institutionnelle
- Lobbying et affaires publiques

### **Communication événementielle**
- Identité visuelle des événements
- Communication digitale avant/pendant/après
- Live streaming et contenu vidéo

---

## 🎯 Nos valeurs
- **Excellence opérationnelle** : zéro défaut le jour J
- **Créativité** : des concepts originaux et mémorables
- **Réactivité** : gestion des imprévus avec calme
- **Durabilité** : événements éco-responsables

---

## 🎓 Rejoignez-nous
Com''Event offre une immersion totale dans le monde de l''événementiel. Vous participerez à la conception et à l''organisation d''événements réels.',
'recrutement@comevent.fr', '0556789123', 'comevent2024'),

-- INGÉNIERIE (3)
('Ingénia Tech',
'Bureau d''études en ingénierie industrielle. 300 collaborateurs. Conception mécanique, simulation numérique et gestion de projets pour secteurs automobile et aéronautique.',
'Concevoir avec précision, livrer avec excellence.',
'# ⚙️ Ingénia Tech – Bureau d''Études Industriel

**Conception Mécanique | Simulation | Gestion de Projet | R&D**

---

## 🌍 Qui sommes-nous ?
Ingénia Tech est un bureau d''études en ingénierie industrielle fondé en 1995 à Toulouse. Avec 300 collaborateurs, nous intervenons pour les plus grands donneurs d''ordre des secteurs automobile et aéronautique.

Notre expertise couvre l''ensemble du cycle de développement produit : de la conception à la mise en production, en passant par la simulation et les essais.

---

## 🛠️ Nos expertises

### **Conception Mécanique**
- Modélisation 3D (CATIA, SolidWorks, NX)
- Design for Manufacturing (DFM)
- Conception de systèmes complexes

### **Simulation Numérique**
- Calculs par éléments finis (Abaqus, ANSYS)
- Simulation de crash et de fatigue
- Dynamique des fluides (CFD)

### **Gestion de Projet**
- Pilotage de projets R&D
- Coordination des équipes pluridisciplinaires
- Gestion des risques techniques

### **Essais & Validation**
- Bancs d''essais instrumentés
- Campagnes de mesures
- Corrélation calcul/essai

---

## 🎯 Nos valeurs
- **Rigueur** : l''ingénierie ne tolère pas l''approximation
- **Innovation** : nous intégrons les dernières technologies
- **Travail en équipe** : la pluridisciplinarité est notre force
- **Formation** : nous investissons dans nos collaborateurs

---

## 🎓 Rejoignez-nous
Ingénia Tech offre des stages techniques de haut niveau. Vous travaillerez sur des projets réels avec des ingénieurs expérimentés.',
'rh@ingeniatech.fr', '0561890123', 'ingeniatech2024'),

('GreenBuild',
'Cabinet d''ingénierie spécialisé en bâtiments durables et efficacité énergétique. 120 collaborateurs. Conseil et maîtrise d''œuvre pour constructions HQE et BEPOS.',
'Bâtir mieux pour un avenir durable.',
'# 🌿 GreenBuild – Ingénierie du Bâtiment Durable

**HQE | BEPOS | Efficacité Énergétique | BIM | Maîtrise d''Œuvre**

---

## 🌍 Qui sommes-nous ?
GreenBuild est un cabinet d''ingénierie spécialisé dans la construction durable et l''efficacité énergétique des bâtiments. Fondé en 2012 à Grenoble, nous accompagnons maîtres d''ouvrage, architectes et entreprises de construction dans la réalisation de bâtiments à faible impact environnemental.

---

## 🛠️ Nos expertises

### **Conception Énergétique**
- Études thermiques (RT2020, RE2020)
- Simulations thermiques dynamiques
- Optimisation des systèmes CVC

### **Bâtiment à Énergie Positive (BEPOS)**
- Intégration de l''énergie solaire (PV, thermique)
- Pompes à chaleur et géothermie
- Systèmes de stockage d''énergie

### **BIM (Building Information Modeling)**
- Modélisation 3D des bâtiments
- Coordination BIM et clash detection
- Maquette numérique tout au long du cycle de vie

### **Certifications & Labels**
- HQE, BREEAM, LEED
- BBC Rénovation, Passivhaus
- Accompagnement à la certification E+C-

---

## 🎯 Nos valeurs
- **Durabilité** : chaque bâtiment est conçu pour l''avenir
- **Innovation** : intégration des dernières solutions techniques
- **Pédagogie** : nous expliquons nos choix à nos clients
- **Engagement** : réduction mesurable de l''empreinte carbone

---

## 🎓 Rejoignez-nous
GreenBuild offre des stages au croisement de l''ingénierie et du développement durable. Idéal pour les profils motivés par les enjeux environnementaux.',
'jobs@greenbuild.fr', '0456789012', 'greenbuild2024'),

('Électro Ingénierie',
'Société d''ingénierie électrique et électronique. 90 collaborateurs. Conception de systèmes embarqués, automatisme industriel et réseaux électriques pour l''industrie.',
'L''énergie et l''électronique au service de l''industrie.',
'# ⚡ Électro Ingénierie – Systèmes Électriques & Embarqués

**Systèmes Embarqués | Automatisme | Réseaux Électriques | SCADA**

---

## 🌍 Qui sommes-nous ?
Électro Ingénierie est une société d''ingénierie électrique et électronique fondée en 2003 à Nantes. Nos 90 ingénieurs et techniciens conçoivent des systèmes électriques complexes pour l''industrie, l''énergie et les transports.

---

## 🛠️ Nos expertises

### **Systèmes Embarqués**
- Microcontrôleurs et microprocesseurs
- Firmware C/C++ temps réel
- Protocoles de communication (CAN, Modbus, Profibus)

### **Automatisme Industriel**
- Programmation d''automates (Siemens, Schneider, Allen-Bradley)
- Supervision SCADA (Wonderware, WinCC)
- Robotique industrielle

### **Réseaux Électriques**
- Distribution HTA/BTA
- Compensation d''énergie réactive
- Études de courts-circuits et de coordination

### **IoT Industriel**
- Capteurs et actionneurs connectés
- Edge computing
- Télémaintenance

---

## 🎯 Nos valeurs
- **Expertise** : maîtrise technique dans tous nos domaines
- **Fiabilité** : nos systèmes fonctionnent en toutes conditions
- **Sécurité** : la sûreté des installations est notre priorité
- **Adaptabilité** : chaque projet est unique

---

## 🎓 Rejoignez-nous
Électro Ingénierie offre des stages techniques enrichissants. Vous travaillerez sur des projets industriels concrets avec des ingénieurs expérimentés.',
'recrutement@electroingenierie.fr', '0240678901', 'electroing2024'),

-- GÉNÉRALISTE (3)
('Groupe Avenir RH',
'Cabinet de conseil en ressources humaines et recrutement. 200 collaborateurs. Recrutement, formation, gestion des talents et conseil en organisation pour toutes tailles d''entreprises.',
'Révéler et développer les talents d''aujourd''hui et de demain.',
'# 👥 Groupe Avenir RH – Conseil en Ressources Humaines

**Recrutement | Formation | Gestion des Talents | Conseil RH**

---

## 🌍 Qui sommes-nous ?
Groupe Avenir RH est un cabinet de conseil en ressources humaines fondé en 2000. Avec 200 collaborateurs répartis dans 12 bureaux en France, nous accompagnons les entreprises dans toutes leurs problématiques RH.

Notre conviction : les ressources humaines sont le premier actif stratégique d''une entreprise.

---

## 🛠️ Nos expertises

### **Recrutement & Chasse de têtes**
- Recrutement cadres et dirigeants
- Assessment centers
- Intégration et onboarding

### **Formation & Développement**
- Formations managériales et comportementales
- Coaching individuel et collectif
- E-learning et blended learning

### **Gestion des Talents**
- GPEC et plans de succession
- Évaluation de la performance
- Fidélisation et engagement

### **Conseil en Organisation**
- Diagnostic organisationnel
- Conduite du changement
- Transformation des modes de travail

---

## 🎯 Nos valeurs
- **Humanité** : les personnes avant tout
- **Éthique** : respect et équité dans toutes nos pratiques
- **Excellence** : qualité de service irréprochable
- **Partenariat** : relation durable avec nos clients

---

## 🎓 Rejoignez-nous
Avenir RH offre une immersion dans le monde des ressources humaines. Vous développerez une vision 360° des problématiques RH en entreprise.',
'talent@avenirhr.fr', '0145234567', 'avenirhr2024'),

('ConsultGroup',
'Cabinet de conseil en stratégie et management. 150 collaborateurs. Accompagnement des entreprises dans leur transformation, leur développement et l''optimisation de leur performance.',
'Penser la stratégie, déployer l''excellence.',
'# 🎯 ConsultGroup – Conseil en Stratégie & Management

**Stratégie | Transformation | Performance | Innovation**

---

## 🌍 Qui sommes-nous ?
ConsultGroup est un cabinet de conseil en stratégie et management fondé en 1998 à Paris. Nos 150 consultants accompagnent des entreprises de toutes tailles et de tous secteurs dans leurs projets de transformation et de développement.

Notre approche : pragmatique, orientée résultats, avec une forte implication de nos équipes.

---

## 🛠️ Nos expertises

### **Stratégie d''Entreprise**
- Diagnostic stratégique
- Plans de développement
- Stratégies d''internationalisation

### **Transformation & Conduite du Changement**
- Transformation digitale
- Réorganisation et restructuration
- Accompagnement au changement

### **Performance Opérationnelle**
- Lean management
- Optimisation des processus
- Réduction des coûts

### **Innovation**
- Open innovation
- Design thinking
- Accompagnement à l''entrepreneuriat interne

---

## 🎯 Nos valeurs
- **Pragmatisme** : des recommandations actionnables
- **Rigueur** : analyses solides et méthodologie éprouvée
- **Engagement** : nous allons jusqu''au bout des missions
- **Diversité** : équipes pluridisciplinaires et internationales

---

## 🎓 Rejoignez-nous
ConsultGroup offre des stages d''excellence. Vous serez rapidement impliqué dans des missions stratégiques auprès de dirigeants.',
'carrieres@consultgroup.fr', '0156234567', 'consultgroup2024'),

('EcoServices',
'Entreprise de services environnementaux et développement durable. 250 collaborateurs. Conseil RSE, gestion des déchets, bilan carbone et certification environnementale.',
'Agir concrètement pour un monde plus responsable.',
'# 🌍 EcoServices – Services Environnementaux & RSE

**RSE | Bilan Carbone | Gestion des Déchets | Certification Environnementale**

---

## 🌍 Qui sommes-nous ?
EcoServices est une entreprise de services environnementaux fondée en 2009 à Lyon. Avec 250 collaborateurs, nous aidons les organisations privées et publiques à mesurer, réduire et compenser leur impact environnemental.

Dans un contexte de transition écologique accélérée, EcoServices se positionne comme un partenaire incontournable des entreprises engagées dans une démarche durable.

---

## 🛠️ Nos expertises

### **Conseil RSE**
- Diagnostic RSE et plan d''action
- Reporting extra-financier (CSRD, GRI)
- Stratégie développement durable

### **Bilan Carbone**
- Mesure des émissions (scope 1, 2, 3)
- Plans de réduction
- Compensation carbone

### **Gestion des Déchets**
- Audit des filières déchets
- Plans de réduction et valorisation
- Économie circulaire

### **Certification Environnementale**
- ISO 14001, ISO 50001
- Label RSE
- Accompagnement B Corp

---

## 🎯 Nos valeurs
- **Impact** : des actions concrètes et mesurables
- **Transparence** : honnêteté dans les bilans et les objectifs
- **Engagement** : nous appliquons ce que nous préconisons
- **Pédagogie** : sensibiliser et former les équipes

---

## 🎓 Rejoignez-nous
EcoServices offre des stages au cœur des enjeux environnementaux. Vous contribuerez directement à des projets à impact positif.',
'jobs@ecoservices.fr', '0472123456', 'ecoservices2024');

-- ============================================================
-- OFFRES DE STAGE
-- ============================================================
INSERT INTO Offre (date_debut, date_fin, lat, lng, titre, description_carte, remuneration_par_mois, description_offre_de_stage, id_entreprise) VALUES

-- NEXATECH (1)
('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Développeur Full Stack React/Node.js',
'Stage 6 mois Paris. Développement d''une plateforme SaaS B2B en React et Node.js au sein d''une équipe agile de 8 personnes.',1200,
'# 🚀 Stage Développeur Full Stack – Nexatech Solutions
**React | Node.js | PostgreSQL | Docker**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Au sein de l''équipe produit de Nexatech, vous contribuerez au développement d''une plateforme SaaS B2B destinée aux PME. Vous travaillerez en méthode Scrum avec des sprints de 2 semaines.

---

## 🎯 Missions
- Développement de composants React (TypeScript, hooks, context)
- Conception et implémentation d''APIs REST avec Node.js/Express
- Modélisation et optimisation des requêtes PostgreSQL
- Participation aux code reviews et rétroactions d''équipe
- Rédaction de tests unitaires et d''intégration (Jest, Cypress)

---

## 🧰 Stack technique
| Domaine | Technologies |
|--------|--------------|
| Frontend | React 18, TypeScript, TailwindCSS |
| Backend | Node.js, Express, JWT |
| BDD | PostgreSQL, Prisma |
| DevOps | Docker, GitHub Actions |

---

## 👤 Profil recherché
- Bac+3 à Bac+5 en informatique
- Maîtrise de JavaScript/TypeScript
- Bases en SQL et Git
- Curiosité et esprit d''équipe',
1),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Développeur Mobile React Native',
'Stage 6 mois Paris. Développement de l''application mobile cross-platform d''un client grand compte en React Native.',1150,
'# 📱 Stage Développeur Mobile – Nexatech Solutions
**React Native | TypeScript | Firebase | REST APIs**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous rejoindrez l''équipe mobile de Nexatech pour développer une application iOS/Android pour un client dans le secteur du retail. L''application est en cours de refonte complète.

---

## 🎯 Missions
- Développement de fonctionnalités en React Native + TypeScript
- Intégration des APIs REST du backend
- Implémentation de notifications push (Firebase)
- Tests sur appareils réels (iOS et Android)
- Optimisation des performances et de l''expérience utilisateur

---

## 🧰 Stack technique
- React Native 0.73, TypeScript
- Redux Toolkit, React Query
- Firebase (Auth, Messaging, Analytics)
- Fastlane pour la distribution

---

## 👤 Profil recherché
- Bac+4/5 en développement mobile
- Connaissance de React ou React Native
- Sensibilité à l''UX mobile
- Rigueur dans les tests',
1),

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage DevOps & Infrastructure Cloud',
'Stage 6 mois Paris. Mise en place et amélioration des pipelines CI/CD et de l''infrastructure cloud de l''agence.',1100,
'# ☁️ Stage DevOps – Nexatech Solutions
**Docker | Kubernetes | GitHub Actions | AWS**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous intégrerez l''équipe infrastructure de Nexatech pour automatiser et fiabiliser les déploiements des projets clients.

---

## 🎯 Missions
- Amélioration des pipelines CI/CD (GitHub Actions)
- Containerisation des applications (Docker, Docker Compose)
- Migration vers Kubernetes (EKS sur AWS)
- Monitoring avec Prometheus et Grafana
- Rédaction de documentation technique

---

## 🧰 Stack technique
- Docker, Kubernetes (EKS)
- GitHub Actions, Terraform
- AWS (EC2, S3, RDS, EKS)
- Prometheus, Grafana, Datadog

---

## 👤 Profil recherché
- Bac+4/5 informatique ou systèmes
- Bases Linux et scripting Bash/Python
- Notions de Docker et CI/CD
- Autonomie et rigueur',
1),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Développeur Backend PHP/Laravel',
'Stage 6 mois Paris. Développement de nouvelles fonctionnalités sur une plateforme e-commerce Laravel pour un client retail.',1050,
'# 🐘 Stage Développeur Backend PHP/Laravel – Nexatech
**PHP 8 | Laravel 11 | MySQL | API REST**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous interviendrez sur le backend d''une plateforme e-commerce développée sous Laravel pour un client dans le secteur du retail. Le projet est en production avec plus de 50 000 commandes par mois.

---

## 🎯 Missions
- Développement de nouvelles fonctionnalités métier
- Optimisation des requêtes SQL (MySQL, Eloquent)
- Mise en place d''APIs REST consommées par le frontend
- Rédaction de tests unitaires (PHPUnit, Pest)
- Participation aux revues de code

---

## 🧰 Stack technique
- PHP 8.3, Laravel 11
- MySQL, Redis (cache)
- API REST, Sanctum
- PHPUnit, Pest, Laravel Telescope

---

## 👤 Profil recherché
- Bac+4/5 développement web
- Maîtrise de PHP et notions de Laravel
- SQL intermédiaire
- Sens de la qualité du code',
1),

('2025-04-15','2025-10-15',45.760000,4.841388,'Stage Développeur Frontend Vue.js',
'Stage 6 mois Lyon. Refonte de l''interface d''une application de gestion interne en Vue.js 3 pour une ETI industrielle.',1000,
'# 🟢 Stage Développeur Frontend Vue.js – Nexatech (Lyon)
**Vue.js 3 | TypeScript | Pinia | Vite**
📍 *Lyon – Part-Dieu*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous travaillerez sur la refonte complète de l''interface utilisateur d''une application de gestion interne pour un client industriel. Migration de Vue 2 vers Vue 3.

---

## 🎯 Missions
- Migration des composants Vue 2 vers Vue 3 (Composition API)
- Implémentation du state management avec Pinia
- Consommation d''APIs REST
- Design responsive en collaboration avec le designer UX
- Tests E2E avec Playwright

---

## 🧰 Stack technique
- Vue.js 3, TypeScript, Pinia
- Vite, Vitest, Playwright
- TailwindCSS, Headless UI
- GitLab CI

---

## 👤 Profil recherché
- Bac+4/5 développement frontend
- Maîtrise de JavaScript/TypeScript
- Notions de Vue.js ou React
- Sensibilité UX',
1),

-- DATASPHERE (2)
('2025-04-01','2025-09-30',45.760000,4.841388,'Stage Data Engineer – Pipelines Big Data',
'Stage 6 mois Lyon. Conception et optimisation de pipelines de données pour des clients dans la santé et la finance avec Spark et Airflow.',1300,
'# 📊 Stage Data Engineer – DataSphere
**Apache Spark | Airflow | Kafka | Snowflake**
📍 *Lyon – Confluence*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous rejoindrez l''équipe Data Engineering de DataSphere pour travailler sur des pipelines de données à grande échelle pour des clients dans les secteurs de la santé et de la finance.

---

## 🎯 Missions
- Conception de pipelines ETL avec Apache Spark (PySpark)
- Orchestration des workflows avec Apache Airflow
- Ingestion de données en streaming (Kafka)
- Optimisation des requêtes sur Snowflake
- Monitoring de la qualité des données (Great Expectations)

---

## 🧰 Stack technique
| Couche | Technologies |
|--------|--------------|
| Ingestion | Kafka, Debezium |
| Transformation | Spark, dbt |
| Stockage | Snowflake, S3 |
| Orchestration | Airflow |
| Qualité | Great Expectations |

---

## 👤 Profil recherché
- Master 2 Data Engineering ou informatique
- Python avancé (pandas, PySpark)
- SQL intermédiaire à avancé
- Notions de Spark ou Airflow appréciées',
2),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Data Scientist – Machine Learning & NLP',
'Stage 6 mois Lyon. Développement de modèles de traitement du langage naturel pour automatiser l''analyse de documents clients.',1350,
'# 🤖 Stage Data Scientist NLP – DataSphere
**Python | Transformers | HuggingFace | MLflow**
📍 *Lyon – Confluence*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous travaillerez sur des modèles NLP pour automatiser l''extraction d''informations clés dans des documents contractuels pour un client dans le secteur financier.

---

## 🎯 Missions
- Fine-tuning de modèles de langage (BERT, CamemBERT)
- Extraction d''entités nommées (NER)
- Classification automatique de documents
- Déploiement de modèles avec MLflow et FastAPI
- Évaluation et amélioration continue des performances

---

## 🧰 Stack technique
- Python, HuggingFace Transformers
- spaCy, NLTK, scikit-learn
- MLflow, DVC, BentoML
- PostgreSQL, Elasticsearch

---

## 👤 Profil recherché
- Master 2 IA, Data Science ou NLP
- Python avancé
- Maîtrise des Transformers et du deep learning
- Rigueur scientifique et sens de l''expérimentation',
2),

('2025-06-01','2025-11-30',45.760000,4.841388,'Stage Analyste BI & Data Visualisation',
'Stage 6 mois Lyon. Création de tableaux de bord décisionnels pour la direction générale d''un groupe industriel client.',1100,
'# 📈 Stage Analyste BI – DataSphere
**Power BI | DAX | SQL | Python**
📍 *Lyon – Confluence*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous rejoindrez l''équipe BI pour concevoir et déployer des tableaux de bord stratégiques pour la direction générale d''un groupe industriel de 3 000 collaborateurs.

---

## 🎯 Missions
- Recueil des besoins auprès des directions métier
- Modélisation des données (Star Schema, Snowflake Schema)
- Développement de rapports Power BI (DAX, M)
- Mise en place d''un catalogue de données
- Formation des utilisateurs finaux

---

## 🧰 Stack technique
- Power BI, DAX, Power Query (M)
- SQL Server, Azure Synapse
- Python (pandas, matplotlib)
- dbt pour la transformation

---

## 👤 Profil recherché
- Bac+4/5 data, statistiques ou business
- Maîtrise de SQL
- Power BI requis
- Sens de la communication et pédagogie',
2),

('2025-04-01','2025-09-30',43.295097,-0.370797,'Stage Data Analyst – Santé & Données Médicales',
'Stage 6 mois Pau. Analyse de données médicales pour améliorer le suivi patient d''un réseau de cliniques privées cliente.',1200,
'# 🏥 Stage Data Analyst Santé – DataSphere (Pau)
**Python | SQL | Tableau | RGPD Santé**
📍 *Pau*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous travaillerez sur des données médicales pseudonymisées pour améliorer le parcours patient d''un réseau de cliniques privées. Un stage à fort impact sur la santé publique.

---

## 🎯 Missions
- Analyse exploratoire de données médicales
- Construction d''indicateurs de suivi patient
- Visualisation avec Tableau et Python (matplotlib, seaborn)
- Veille sur la conformité RGPD et HDS
- Présentation des résultats aux équipes médicales

---

## 🧰 Stack technique
- Python (pandas, scikit-learn, matplotlib)
- SQL (PostgreSQL)
- Tableau Desktop
- Jupyter Notebooks

---

## 👤 Profil recherché
- Bac+4/5 data, statistiques ou santé publique
- Python et SQL intermédiaires
- Sensibilité aux enjeux éthiques des données de santé
- Rigueur et discrétion',
2),

('2025-05-15','2025-11-15',45.760000,4.841388,'Stage Ingénieur MLOps',
'Stage 6 mois Lyon. Mise en place d''une plateforme MLOps pour industrialiser le déploiement des modèles de machine learning de l''entreprise.',1250,
'# 🔧 Stage Ingénieur MLOps – DataSphere
**MLflow | Kubeflow | Docker | Kubernetes**
📍 *Lyon – Confluence*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous contribuerez à la construction de la plateforme MLOps interne de DataSphere, permettant d''industrialiser le cycle de vie des modèles de machine learning.

---

## 🎯 Missions
- Mise en place de MLflow pour le tracking des expériences
- Containerisation des modèles (Docker, FastAPI)
- Déploiement sur Kubernetes avec Kubeflow Pipelines
- Monitoring des modèles en production (data drift, performance)
- Documentation et formation des data scientists

---

## 🧰 Stack technique
- MLflow, DVC, BentoML
- Docker, Kubernetes, Helm
- Python, FastAPI
- Prometheus, Grafana

---

## 👤 Profil recherché
- Bac+5 informatique ou Data Science
- Python avancé
- DevOps et Docker/Kubernetes
- Intérêt pour le ML et l''industrialisation',
2),

-- CYBERSHIELD (3)
('2025-03-01','2025-08-31',44.837789,-0.579180,'Stage Analyste Cybersécurité – SOC',
'Stage 6 mois Bordeaux. Analyse des alertes de sécurité, investigation d''incidents et amélioration des règles de détection au sein du SOC de l''entreprise.',1400,
'# 🛡️ Stage Analyste SOC – CyberShield
**SIEM | EDR | Threat Intelligence | MITRE ATT&CK**
📍 *Bordeaux – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous intégrerez le SOC (Security Operations Center) de CyberShield pour participer à la surveillance et à la réponse aux incidents de sécurité pour nos clients.

---

## 🎯 Missions
- Analyse et triage des alertes SIEM (Splunk, IBM QRadar)
- Investigation des incidents de sécurité (forensique)
- Amélioration des règles de détection
- Rédaction de rapports d''incidents
- Veille sur les nouvelles menaces (CVE, threat intel)

---

## 🧰 Stack technique
- Splunk, IBM QRadar (SIEM)
- CrowdStrike, SentinelOne (EDR)
- Wireshark, Zeek (analyse réseau)
- MITRE ATT&CK framework

---

## 👤 Profil recherché
- Master 2 cybersécurité ou réseaux
- Connaissance des protocoles réseaux (TCP/IP, DNS, HTTP)
- Linux avancé
- Curiosité et persévérance face aux incidents complexes',
3),

('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Pentesteur Web & Applicatif',
'Stage 6 mois Bordeaux. Réalisation de tests d''intrusion sur des applications web et des APIs pour des clients dans la finance et la santé.',1450,
'# 🔐 Stage Pentesteur – CyberShield
**Pentest Web | API | OWASP | Burp Suite**
📍 *Bordeaux – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous effectuerez des tests d''intrusion sur des applications web et des APIs pour évaluer leur résistance aux attaques. Vous travaillerez en équipe Red Team.

---

## 🎯 Missions
- Tests d''intrusion boîte noire et boîte grise sur applications web
- Tests d''API (REST, GraphQL) selon OWASP API Security Top 10
- Rédaction de rapports de pentest détaillés
- Présentation des résultats aux clients
- Veille sur les nouvelles vulnérabilités

---

## 🧰 Outils & Méthodes
- Burp Suite Pro, OWASP ZAP
- Metasploit, SQLMap, ffuf
- Kali Linux
- OWASP Testing Guide, PTES

---

## 👤 Profil recherché
- Master 2 cybersécurité
- Connaissance de l''OWASP Top 10
- Bases en Python ou Bash (scripting)
- Éthique et respect du cadre légal',
3),

('2025-05-01','2025-10-31',44.837789,-0.579180,'Stage Consultant Cybersécurité & Conformité',
'Stage 6 mois Bordeaux. Accompagnement de clients PME dans leur mise en conformité RGPD et ISO 27001, audit de leur posture de sécurité.',1250,
'# 📋 Stage Consultant SSI & Conformité – CyberShield
**ISO 27001 | RGPD | Analyse de risques | EBIOS RM**
📍 *Bordeaux – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des PME dans leur démarche de mise en conformité RGPD et ISO 27001. Un rôle hybride technique et organisationnel.

---

## 🎯 Missions
- Audit de la posture de sécurité des clients
- Analyse de risques (méthode EBIOS RM)
- Rédaction de politiques de sécurité (PSSI)
- Accompagnement à la mise en conformité RGPD
- Sensibilisation des collaborateurs clients

---

## 🧰 Méthodes & Référentiels
- ISO 27001 / 27002
- RGPD, CNIL
- EBIOS Risk Manager
- CIS Controls, NIST CSF

---

## 👤 Profil recherché
- Master 2 cybersécurité, droit numérique ou management
- Connaissance de l''ISO 27001 et du RGPD
- Qualités rédactionnelles
- Sens de la pédagogie et de la relation client',
3),

('2025-06-01','2025-11-30',44.837789,-0.579180,'Stage Ingénieur Sécurité Cloud & DevSecOps',
'Stage 6 mois Bordeaux. Intégration des pratiques de sécurité dans les pipelines CI/CD de clients en transformation cloud.',1350,
'# 🔒 Stage DevSecOps – CyberShield
**DevSecOps | SAST/DAST | Trivy | Vault**
📍 *Bordeaux – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous aiderez des clients en migration cloud à intégrer la sécurité dès les phases de développement (shift left security).

---

## 🎯 Missions
- Intégration d''outils SAST dans les pipelines CI (SonarQube, Semgrep)
- Tests de sécurité dynamiques (DAST) avec OWASP ZAP
- Scan des images Docker (Trivy, Snyk)
- Gestion des secrets (HashiCorp Vault)
- Formation des équipes développement

---

## 🧰 Stack technique
- GitLab CI / GitHub Actions
- SonarQube, Semgrep, OWASP ZAP
- Trivy, Snyk, Checkov
- HashiCorp Vault, AWS Secrets Manager

---

## 👤 Profil recherché
- Bac+5 cybersécurité ou DevOps
- CI/CD et Docker
- Connaissance des vulnérabilités applicatives
- Esprit méthodique',
3),

('2025-04-15','2025-10-15',43.604652,1.444209,'Stage Analyste Forensique & Réponse à Incident',
'Stage 6 mois Toulouse. Investigation forensique sur des incidents de sécurité réels, analyse de malwares et reconstruction de chronologies d''attaque.',1400,
'# 🔍 Stage Forensique & Incident Response – CyberShield (Toulouse)
**Forensique | Malware Analysis | Volatility | Wireshark**
📍 *Toulouse*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous rejoindrez l''équipe CSIRT de CyberShield pour investiguer des incidents de sécurité et analyser des malwares dans un laboratoire dédié.

---

## 🎯 Missions
- Analyse forensique de disques et mémoire (Autopsy, Volatility)
- Analyse statique et dynamique de malwares
- Reconstruction de chronologies d''attaque
- Rédaction de rapports d''investigation
- Reverse engineering de code malveillant (Ghidra, IDA)

---

## 🧰 Outils
- Volatility, Autopsy, FTK Imager
- Wireshark, NetworkMiner
- Ghidra, IDA Free, x64dbg
- YARA, STIX/TAXII

---

## 👤 Profil recherché
- Master 2 cybersécurité
- Bases en assembleur x86/x64
- Linux avancé
- Curiosité intellectuelle et patience',
3),

-- CLOUDNATIVE (4)
('2025-04-01','2025-09-30',47.218371,-1.553621,'Stage Ingénieur Cloud AWS',
'Stage 6 mois Nantes. Migration d''une architecture monolithique vers des microservices sur AWS pour un client e-commerce.',1200,
'# ☁️ Stage Ingénieur Cloud AWS – CloudNative
**AWS | Terraform | Kubernetes | CI/CD**
📍 *Nantes – Île de Nantes*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous participerez à la migration d''une application e-commerce monolithique vers une architecture microservices sur AWS. Un projet technique ambitieux avec un fort impact business.

---

## 🎯 Missions
- Conception de l''architecture cible (ECS, EKS, RDS, SQS)
- Écriture de l''infrastructure en code (Terraform)
- Mise en place des pipelines CI/CD (GitHub Actions)
- Migration progressive des services
- Optimisation des coûts cloud (FinOps)

---

## 🧰 Stack technique
- AWS (ECS, EKS, RDS, S3, CloudFront, SQS)
- Terraform, Packer
- GitHub Actions, ArgoCD
- Datadog, CloudWatch

---

## 👤 Profil recherché
- Bac+4/5 informatique ou systèmes
- Notions d''AWS (certification SAA appréciée)
- Docker et Kubernetes
- Linux et scripting',
4),

('2025-05-01','2025-10-31',47.218371,-1.553621,'Stage Ingénieur Platform Engineering',
'Stage 6 mois Nantes. Construction d''une Internal Developer Platform (IDP) pour améliorer la productivité des équipes de développement clients.',1150,
'# 🏗️ Stage Platform Engineering – CloudNative
**Backstage | Kubernetes | GitOps | ArgoCD**
📍 *Nantes – Île de Nantes*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous contribuerez à la construction d''une Internal Developer Platform basée sur Backstage (CNCF) pour standardiser et accélérer le développement chez nos clients.

---

## 🎯 Missions
- Déploiement et configuration de Backstage
- Développement de plugins Backstage (TypeScript)
- Mise en place de workflows GitOps (ArgoCD, Flux)
- Construction de templates de projets standardisés
- Documentation de la plateforme

---

## 🧰 Stack technique
- Backstage (CNCF), TypeScript
- Kubernetes, Helm
- ArgoCD, Flux
- GitHub, GitLab

---

## 👤 Profil recherché
- Bac+5 informatique, DevOps ou SRE
- Kubernetes intermédiaire
- TypeScript/React (pour les plugins Backstage)
- Intérêt pour l''expérience développeur (DX)',
4),

('2025-04-15','2025-10-15',47.218371,-1.553621,'Stage SRE – Observabilité & Fiabilité',
'Stage 6 mois Nantes. Amélioration de l''observabilité et de la fiabilité des systèmes clients grâce à l''instrumentation et aux SLOs.',1100,
'# 🔭 Stage SRE – CloudNative
**Prometheus | Grafana | OpenTelemetry | SLOs**
📍 *Nantes – Île de Nantes*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous travaillerez sur l''observabilité des systèmes clients pour réduire les MTTR et améliorer la fiabilité globale.

---

## 🎯 Missions
- Instrumentation d''applications (OpenTelemetry)
- Création de tableaux de bord Grafana
- Définition et suivi des SLI/SLO/SLA
- Mise en place d''alerting intelligent (PagerDuty)
- Pratique du chaos engineering (Chaos Monkey, Litmus)

---

## 🧰 Stack technique
- Prometheus, Grafana, Loki, Tempo
- OpenTelemetry
- PagerDuty, OpsGenie
- Chaos Monkey, Litmus

---

## 👤 Profil recherché
- Bac+4/5 systèmes, DevOps ou SRE
- Linux avancé
- Python ou Go (scripting)
- Intérêt pour la fiabilité et la performance',
4),

('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Ingénieur Sécurité Cloud (CloudSec)',
'Stage 6 mois Nantes. Audit et renforcement de la sécurité des infrastructures cloud de clients, mise en place de Cloud Security Posture Management.',1200,
'# 🔐 Stage CloudSec – CloudNative
**CSPM | IAM | Security Hub | Terraform**
📍 *Nantes – Île de Nantes*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous contribuerez à sécuriser les infrastructures cloud de nos clients en mettant en place des outils de Cloud Security Posture Management (CSPM).

---

## 🎯 Missions
- Audit des configurations cloud (AWS Security Hub, Prowler)
- Mise en place d''une politique IAM au moindre privilège
- Chiffrement des données at-rest et in-transit
- Compliance as Code (Checkov, Open Policy Agent)
- Reporting et suivi des remédiations

---

## 🧰 Stack technique
- AWS Security Hub, Prowler, ScoutSuite
- Checkov, Open Policy Agent (OPA)
- Terraform (sécurisation des ressources)
- CloudTrail, GuardDuty

---

## 👤 Profil recherché
- Bac+5 cybersécurité ou cloud
- AWS et Terraform
- Connaissance des bonnes pratiques de sécurité cloud
- Rigueur et sens du détail',
4),

('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Ingénieur Azure DevOps',
'Stage 6 mois Bordeaux. Accompagnement d''une ETI dans sa migration vers Azure et la mise en place de pratiques DevOps modernes.',1100,
'# 🔵 Stage Azure DevOps – CloudNative (Bordeaux)
**Azure | Azure DevOps | Terraform | AKS**
📍 *Bordeaux – Mériadeck*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez une ETI dans sa migration vers Microsoft Azure et la modernisation de ses pratiques de développement et de déploiement.

---

## 🎯 Missions
- Migration de VMs on-premise vers Azure (IaaS, PaaS)
- Configuration d''Azure DevOps (pipelines, repos, boards)
- Containerisation des applications (Docker, AKS)
- Infrastructure as Code avec Terraform
- Formation des équipes internes du client

---

## 🧰 Stack technique
- Azure (VM, App Service, AKS, SQL, Storage)
- Azure DevOps (Pipelines, Repos)
- Terraform, Bicep
- Docker, Kubernetes (AKS)

---

## 👤 Profil recherché
- Bac+4/5 informatique ou systèmes
- Notions d''Azure et de CI/CD
- Docker apprécié
- Pédagogie pour la formation client',
4),

-- CREDIT PARTENAIRES (5)
('2025-04-01','2025-09-30',47.081013,2.398782,'Stage Chargé de Relations Clientèle – Agence',
'Stage 6 mois Bourges. Accueil et conseil des clients particuliers et professionnels, gestion des opérations courantes et participation à la vente de produits bancaires.',900,
'# 🏦 Stage Chargé de Relations Clientèle – Crédit Partenaires
**Relation client | Conseil financier | Gestion de portefeuille**
📍 *Bourges – Agence Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous serez accueilli(e) dans une agence bancaire de Crédit Partenaires pour développer vos compétences en relation client et en conseil financier.

---

## 🎯 Missions
- Accueil physique et téléphonique des clients
- Conseil et orientation vers les produits adaptés (épargne, crédit, assurance)
- Suivi du portefeuille clients de votre tuteur
- Participation aux entretiens de découverte
- Gestion des opérations courantes (virements, ouvertures de compte)

---

## Compétences développées
- Relation client en face à face
- Connaissance des produits bancaires
- Techniques de vente conseil
- Réglementation bancaire et déontologie

---

## 👤 Profil recherché
- Bac+2 à Bac+4 en banque, finance ou commerce
- Excellent relationnel
- Rigueur et sens de la confidentialité
- Appétence pour le conseil',
5),

('2025-05-01','2025-10-31',47.081013,2.398782,'Stage Analyste Risques de Crédit',
'Stage 6 mois Bourges. Analyse des dossiers de crédit particuliers et professionnels, évaluation des risques et rédaction d''avis de crédit.',1050,
'# 📊 Stage Analyste Risques – Crédit Partenaires
**Analyse financière | Scoring | Gestion des risques**
📍 *Bourges – Direction Générale*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Au sein de la Direction des Risques, vous analyserez des dossiers de crédit immobilier et professionnel pour évaluer leur risque et formuler des recommandations.

---

## 🎯 Missions
- Analyse financière de dossiers de crédit (bilans, comptes de résultat)
- Évaluation de la solvabilité des clients
- Rédaction d''avis de crédit motivés
- Suivi du portefeuille de crédits à risque
- Participation à l''amélioration des modèles de scoring

---

## Compétences développées
- Analyse financière et comptable
- Évaluation des risques de crédit
- Réglementation bancaire (Bâle III, IFRS 9)
- Rigueur analytique

---

## 👤 Profil recherché
- Bac+4/5 finance, banque ou comptabilité
- Maîtrise d''Excel (modélisation financière)
- Rigueur et esprit analytique
- Discrétion',
5),

('2025-06-01','2025-11-30',47.081013,2.398782,'Stage Chef de Projet Digital – Transformation Bancaire',
'Stage 6 mois Bourges. Participation à la transformation digitale de la banque, gestion de projets d''amélioration de l''application mobile et de la plateforme en ligne.',1100,
'# 💻 Stage Chef de Projet Digital – Crédit Partenaires
**Gestion de projet | UX | Agilité | Transformation digitale**
📍 *Bourges – Direction Digitale*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous intégrerez la Direction Digitale pour contribuer aux projets de transformation numérique de la banque.

---

## 🎯 Missions
- Recueil et formalisation des besoins métiers
- Rédaction de user stories et de cahiers des charges
- Coordination avec les équipes techniques et les prestataires
- Suivi de l''avancement des projets (Jira, Confluence)
- Tests fonctionnels et recette utilisateur

---

## Compétences développées
- Gestion de projet en méthode agile
- Cahiers des charges et spécifications fonctionnelles
- Relation avec les équipes IT
- Vision de la transformation digitale bancaire

---

## 👤 Profil recherché
- Bac+4/5 management, gestion de projet ou informatique
- Intérêt pour la finance et le numérique
- Sens de l''organisation
- Curiosité et adaptabilité',
5),

('2025-04-15','2025-10-15',47.081013,2.398782,'Stage Contrôleur de Gestion',
'Stage 6 mois Bourges. Participation au contrôle budgétaire, à l''analyse de la performance financière et à la production des reportings mensuels de la banque.',1000,
'# 📉 Stage Contrôleur de Gestion – Crédit Partenaires
**Contrôle budgétaire | Reporting | Excel | Power BI**
📍 *Bourges – Direction Financière*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Au sein de la Direction Financière, vous contribuerez aux travaux de contrôle de gestion et de reporting financier.

---

## 🎯 Missions
- Participation à l''élaboration du budget et des prévisions
- Production des reportings mensuels (P&L, tableau de bord)
- Analyse des écarts budget/réalisé
- Optimisation des outils de reporting (Power BI, Excel)
- Support aux analyses ad hoc pour la direction

---

## Compétences développées
- Contrôle budgétaire et analyse financière
- Maîtrise avancée d''Excel et Power BI
- Présentation de données financières
- Vision de la performance bancaire

---

## 👤 Profil recherché
- Bac+4/5 finance, contrôle de gestion ou comptabilité
- Excel avancé (TCD, formules complexes)
- Power BI apprécié
- Rigueur et sens du détail',
5),

-- FINSTART CONSEIL (6)
('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Analyste M&A – Fusions & Acquisitions',
'Stage 6 mois Paris. Participation à des missions de conseil en fusions-acquisitions pour des PME et ETI : valorisation, due diligence et structuration des opérations.',1400,
'# 💼 Stage Analyste M&A – FinStart Conseil
**M&A | Valorisation | Due Diligence | Modélisation financière**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous participerez activement à des missions de conseil en fusions-acquisitions pour des PME et ETI françaises. Un stage de haute intensité avec une forte exposition aux dirigeants.

---

## 🎯 Missions
- Construction de modèles financiers (LBO, DCF, comparables)
- Valorisation d''entreprises (multiples, DCF, actif net réévalué)
- Participation à la due diligence financière
- Rédaction de mémorandums de cession et de teaser
- Veille sectorielle et identification de cibles/acquéreurs

---

## Compétences développées
- Modélisation financière avancée sous Excel
- Techniques de valorisation
- Processus M&A de A à Z
- Qualités rédactionnelles et de présentation

---

## 👤 Profil recherché
- Bac+5 finance, grande école de commerce ou d''ingénieurs
- Excel avancé (modélisation financière)
- Intérêt fort pour la finance d''entreprise
- Rigueur et résistance au stress',
6),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Analyste Levée de Fonds & Capital-Risque',
'Stage 6 mois Paris. Accompagnement de startups et PME innovantes dans leur levée de fonds : préparation des dossiers, valorisation et mise en relation investisseurs.',1350,
'# 🚀 Stage Analyste Levée de Fonds – FinStart Conseil
**Venture Capital | Pitchdeck | Valorisation | Due Diligence**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des startups et PME innovantes dans la préparation et l''exécution de leurs levées de fonds auprès de fonds de capital-risque et de private equity.

---

## 🎯 Missions
- Préparation des pitchdeck et mémorandums d''investissement
- Valorisation pré-money des sociétés
- Analyse des term sheets et des contrats d''investissement
- Identification et approche des investisseurs potentiels
- Suivi des due diligences

---

## Compétences développées
- Écosystème startup et venture capital
- Valorisation de sociétés innovantes
- Négociation et structuration d''opérations
- Réseau professionnel dans la finance

---

## 👤 Profil recherché
- Bac+5 finance ou grande école
- Intérêt pour l''entrepreneuriat et l''innovation
- Excel et PowerPoint avancés
- Curiosité et sens du contact',
6),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Analyste Stratégie Financière & Business Plan',
'Stage 6 mois Paris. Elaboration de business plans et de plans stratégiques pour des dirigeants de PME en phase de développement ou de restructuration.',1300,
'# 📊 Stage Analyste Stratégie – FinStart Conseil
**Business Plan | Stratégie | Modélisation | Présentation**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous aiderez des dirigeants de PME à formaliser leur stratégie de développement dans des business plans rigoreux et convaincants.

---

## 🎯 Missions
- Diagnostic stratégique (SWOT, Porter, PESTEL)
- Construction de business plans et de projections financières
- Benchmark concurrentiel et analyse de marché
- Rédaction de présentations stratégiques pour dirigeants
- Suivi de la mise en œuvre des recommandations

---

## Compétences développées
- Analyse stratégique et financière
- Présentation à des décideurs
- Conseil en entreprise
- Vision globale des enjeux d''une PME

---

## 👤 Profil recherché
- Bac+5 finance, stratégie ou grande école
- Excel et PowerPoint avancés
- Sens de la synthèse et de la communication
- Intérêt pour les PME',
6),

-- ASSURPRO (7)
('2025-04-01','2025-09-30',43.604652,1.444209,'Stage Chargé de Clientèle Assurances Professionnelles',
'Stage 6 mois Toulouse. Gestion d''un portefeuille de clients professionnels, conseil en assurance RC Pro et construction, suivi des contrats.',950,
'# 🔒 Stage Chargé de Clientèle – AssurPro
**Assurance professionnelle | RC Pro | Conseil | Gestion de portefeuille**
📍 *Toulouse – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous intégrerez une équipe de chargés de clientèle pour gérer et développer un portefeuille de clients professionnels (artisans, TPE, PME).

---

## 🎯 Missions
- Gestion quotidienne du portefeuille clients
- Conseil et placement de contrats (RC Pro, multirisque)
- Traitement des demandes de modifications et avenants
- Accompagnement des clients en cas de sinistre
- Prospection et développement commercial

---

## Compétences développées
- Techniques d''assurance professionnelle
- Relation client B2B
- Gestion administrative des contrats
- Réglementation assurance (DDA)

---

## 👤 Profil recherché
- Bac+2 à Bac+4 en assurance, banque ou commerce
- Bon relationnel et sens du service
- Rigueur administrative
- Intérêt pour les métiers de l''assurance',
7),

('2025-05-01','2025-10-31',43.604652,1.444209,'Stage Gestionnaire Sinistres',
'Stage 6 mois Toulouse. Instruction et gestion des dossiers de sinistres pour les clients professionnels, coordination avec les compagnies d''assurance et les experts.',1000,
'# 📋 Stage Gestionnaire Sinistres – AssurPro
**Gestion de sinistres | Expertise | Droit des assurances**
📍 *Toulouse – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Au sein du service sinistres, vous instruirez des dossiers de sinistres complexes pour des clients professionnels et serez l''interface entre les assurés et les compagnies d''assurance.

---

## 🎯 Missions
- Ouverture et instruction des dossiers de sinistres
- Analyse des garanties contractuelles
- Coordination avec les experts et les compagnies
- Suivi des indemnisations et clôture des dossiers
- Conseil aux clients sur leurs droits et recours

---

## Compétences développées
- Droit des assurances et des contrats
- Gestion de situations conflictuelles
- Analyse de documents complexes
- Négociation avec les compagnies

---

## 👤 Profil recherché
- Bac+3 à Bac+5 en droit, assurance ou gestion
- Rigueur et méthode
- Résistance au stress
- Empathie et sens du service client',
7),

('2025-06-01','2025-11-30',43.604652,1.444209,'Stage Développeur Python – Outils Internes',
'Stage 6 mois Toulouse. Développement d''outils d''automatisation et de reporting pour les équipes commerciales et de gestion d''AssurPro.',1050,
'# 🐍 Stage Développeur Python – AssurPro
**Python | Automatisation | Power BI | API**
📍 *Toulouse – Centre*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous développerez des outils internes pour automatiser les tâches répétitives des équipes commerciales et améliorer le reporting.

---

## 🎯 Missions
- Automatisation de la génération de documents (contrats, avenants)
- Développement de scripts Python pour le traitement de données
- Création de tableaux de bord Power BI
- Intégration avec les APIs des compagnies d''assurance partenaires
- Documentation technique

---

## 🧰 Stack technique
- Python (pandas, openpyxl, requests)
- Power BI
- APIs REST
- SQL (MySQL)

---

## 👤 Profil recherché
- Bac+4/5 informatique ou mathématiques
- Python intermédiaire
- SQL de base
- Autonomie et sens pratique',
7),

-- AGENCE HORIZON (8)
('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Chef de Projet Communication',
'Stage 6 mois Paris. Coordination de campagnes de communication 360° pour des clients grands comptes dans les secteurs de la grande consommation et du luxe.',1100,
'# 🎨 Stage Chef de Projet Communication – Agence Horizon
**Gestion de projet | Communication 360° | Relations clients**
📍 *Paris – 9ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous serez l''interface opérationnelle entre les clients et les équipes créatives de l''agence. Un rôle central dans la mise en œuvre des campagnes de communication.

---

## 🎯 Missions
- Coordination des équipes créatives, studio et production
- Suivi des plannings et des budgets
- Présentation des recommandations aux clients
- Gestion des prestataires (photographes, imprimeurs, studios)
- Compte-rendu et suivi post-campagne

---

## Compétences développées
- Gestion de projet en agence
- Relation client
- Vision des métiers de la communication
- Organisation et rigueur

---

## 👤 Profil recherché
- Bac+4/5 communication, marketing ou gestion de projet
- Excellent relationnel
- Sens de l''organisation
- Curiosité créative',
8),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Concepteur-Rédacteur',
'Stage 6 mois Paris. Création de contenus créatifs pour des campagnes publicitaires multicanal (print, digital, TV) pour des marques grand public.',1050,
'# ✍️ Stage Concepteur-Rédacteur – Agence Horizon
**Copywriting | Storytelling | Campagnes publicitaires | Brand content**
📍 *Paris – 9ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous travaillerez en tandem avec un directeur artistique pour concevoir des campagnes publicitaires créatives pour des marques reconnues.

---

## 🎯 Missions
- Conception d''idées créatives en réponse aux briefs clients
- Rédaction de copy pour tous supports (print, digital, TV, radio)
- Participation aux brainstormings créatifs
- Présentation des concepts aux équipes et aux clients
- Veille créative et concurrentielle

---

## Compétences développées
- Copywriting et storytelling
- Compréhension des codes publicitaires
- Travail en binôme créatif
- Présentation et défense d''idées

---

## 👤 Profil recherché
- Bac+4/5 communication, lettres ou école de publicité
- Excellentes qualités rédactionnelles
- Créativité et originalité
- Portfolio de créations apprécié',
8),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Responsable Relations Presse',
'Stage 6 mois Paris. Gestion des relations presse pour des clients du secteur tourisme et luxe : rédaction de communiqués, organisation de conférences de presse, suivi des retombées.',1100,
'# 📰 Stage Relations Presse – Agence Horizon
**RP | Rédaction | Presse | Influence | Événements médias**
📍 *Paris – 9ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous gérerez les relations presse pour des clients dans les secteurs du tourisme et du luxe, en étant l''interface entre les marques et les journalistes.

---

## 🎯 Missions
- Rédaction et diffusion de communiqués et dossiers de presse
- Organisation de conférences de presse et voyages de presse
- Gestion et entretien du fichier médias
- Suivi et mesure des retombées presse (Cision, Meltwater)
- Veille médiatique quotidienne

---

## Compétences développées
- Techniques de relations presse
- Rédaction journalistique
- Réseau dans les médias
- Gestion d''événements médias

---

## 👤 Profil recherché
- Bac+4/5 communication, journalisme ou lettres
- Excellentes qualités rédactionnelles
- Réseau journalistes un plus
- Rigueur et disponibilité',
8),

('2025-04-15','2025-10-15',48.856613,2.352222,'Stage Planneur Stratégique',
'Stage 6 mois Paris. Réalisation d''études stratégiques et de veilles concurrentielles pour guider la création publicitaire et les recommandations aux clients.',1150,
'# 🎯 Stage Planneur Stratégique – Agence Horizon
**Stratégie de marque | Études | Insights consommateurs | Positionnement**
📍 *Paris – 9ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous nourrirez la réflexion stratégique de l''agence en réalisant des études de marché, des analyses consommateurs et des veilles sectorielles.

---

## 🎯 Missions
- Analyse des tendances de consommation
- Études qualitatives et quantitatives
- Rédaction de notes stratégiques et de briefs créatifs
- Veille concurrentielle et sectorielle
- Présentation des insights aux équipes créatives et aux clients

---

## Compétences développées
- Analyse et synthèse d''informations complexes
- Compréhension des comportements consommateurs
- Rédaction stratégique
- Présentation à des équipes pluridisciplinaires

---

## 👤 Profil recherché
- Bac+5 marketing, communication ou sciences sociales
- Curiosité intellectuelle et esprit analytique
- Qualités rédactionnelles
- Intérêt pour les marques et la publicité',
8),

-- INFLUENCEMEDIA (9)
('2025-04-01','2025-09-30',45.760000,4.841388,'Stage Chargé de Campagnes Influence Marketing',
'Stage 6 mois Lyon. Gestion de campagnes d''influence pour des marques lifestyle et beauté : identification d''influenceurs, briefing, suivi et mesure des performances.',1000,
'# 📱 Stage Influence Marketing – InfluenceMedia
**Influence | Social Media | Briefing | KPIs | Créateurs de contenu**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous gérerez des campagnes d''influence de bout en bout pour des marques lifestyle et beauté, de la sélection des influenceurs à la mesure des résultats.

---

## 🎯 Missions
- Identification et qualification d''influenceurs (micro, macro, nano)
- Rédaction des briefs créatifs
- Coordination des créateurs de contenu
- Suivi des publications et vérification de la conformité
- Reporting des performances (reach, engagement, conversions)

---

## Compétences développées
- Marketing d''influence et fonctionnement des réseaux sociaux
- Gestion de relations avec des créateurs de contenu
- Analyse de données (KPIs social media)
- Autonomie et organisation

---

## 👤 Profil recherché
- Bac+3 à Bac+5 marketing, communication ou digital
- Maîtrise des réseaux sociaux (Instagram, TikTok, YouTube)
- Sens de l''organisation
- Connaissance des univers lifestyle/beauté appréciée',
9),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Community Manager & Content Creator',
'Stage 6 mois Lyon. Animation des réseaux sociaux de clients dans le secteur food et lifestyle, création de contenus engageants et gestion des communautés.',950,
'# 🎬 Stage Community Manager – InfluenceMedia
**Community Management | Création de contenu | Réseaux sociaux | Engagement**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous animerez les réseaux sociaux de marques food et lifestyle, en créant des contenus engageants et en gérant les interactions avec les communautés.

---

## 🎯 Missions
- Création et programmation de contenus (posts, stories, reels)
- Animation et modération des communautés
- Rédaction de captions et adaptation du ton de marque
- Veille sur les tendances des réseaux sociaux
- Reporting mensuel des performances

---

## Compétences développées
- Community management
- Création de contenus visuels (Canva, Adobe Express)
- Copywriting pour les réseaux sociaux
- Analyse des statistiques social media

---

## 👤 Profil recherché
- Bac+3 à Bac+5 communication ou marketing digital
- Créatif(ve) et à l''aise avec les réseaux sociaux
- Maîtrise de Canva ou outils similaires
- Sens de l''écriture et du storytelling',
9),

('2025-06-01','2025-11-30',45.760000,4.841388,'Stage Data Analyst Marketing Digital',
'Stage 6 mois Lyon. Analyse des performances des campagnes digitales, construction de tableaux de bord et formulation de recommandations d''optimisation.',1050,
'# 📊 Stage Data Analyst Marketing – InfluenceMedia
**Google Analytics | Meta Ads | Data Studio | A/B Testing**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous analyserez les performances des campagnes digitales et social media pour optimiser le ROI de nos clients.

---

## 🎯 Missions
- Analyse des données de campagnes (Meta Ads, Google Ads, TikTok Ads)
- Construction de dashboards de reporting (Looker Studio, Tableau)
- Tests A/B sur les contenus et les audiences
- Formulation de recommandations d''optimisation
- Veille sur les évolutions des algorithmes des plateformes

---

## Compétences développées
- Analyse de données marketing
- Maîtrise des outils analytics
- ROI et attribution des campagnes
- Présentation de résultats à des clients

---

## 👤 Profil recherché
- Bac+4/5 marketing digital, data ou statistiques
- Google Analytics, Meta Business Manager
- Excel/Google Sheets avancé
- Curiosité pour les données',
9),

-- COM EVENT (10)
('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Chef de Projet Événementiel',
'Stage 6 mois Bordeaux. Organisation d''événements corporate (séminaires, conventions, soirées de gala) pour des clients grands comptes dans toute la France.',1000,
'# 🎉 Stage Chef de Projet Événementiel – Com''Event
**Événements corporate | Logistique | Coordination | Budget**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous coordonnerez l''organisation d''événements corporate de A à Z, de la conception à la clôture, pour des clients grands comptes.

---

## 🎯 Missions
- Participation aux appels d''offres et conception des propositions
- Recherche et négociation avec les prestataires (traiteurs, lieux, AV)
- Coordination logistique avant et pendant l''événement
- Gestion du budget et des imprévus
- Bilan et retour d''expérience post-événement

---

## Compétences développées
- Organisation et gestion de projet événementiel
- Négociation avec les prestataires
- Gestion du stress et des imprévus
- Sens du service et de la qualité

---

## 👤 Profil recherché
- Bac+3 à Bac+5 événementiel, communication ou gestion
- Excellent sens de l''organisation
- Polyvalence et réactivité
- Disponibilité (déplacements ponctuels)',
10),

('2025-05-01','2025-10-31',44.837789,-0.579180,'Stage Chargé de Relations Publiques & Institutionnelles',
'Stage 6 mois Bordeaux. Gestion des relations avec les médias, les institutions et les partenaires stratégiques pour des clients du secteur public et des associations.',1000,
'# 🤝 Stage Relations Publiques – Com''Event
**RP | Institutions | Partenariats | Communication institutionnelle**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous gérerez les relations institutionnelles et publiques de clients du secteur public et associatif, en développant leur réseau de partenaires.

---

## 🎯 Missions
- Identification et approche de partenaires institutionnels
- Rédaction de dossiers de partenariat
- Organisation de rencontres et de tables rondes
- Suivi des relations avec les élus et institutions
- Veille réglementaire et institutionnelle

---

## Compétences développées
- Techniques de relations publiques
- Communication institutionnelle
- Réseau dans les institutions et associations
- Rédaction formelle et diplomatique

---

## 👤 Profil recherché
- Bac+4/5 communication, sciences politiques ou droit
- Intérêt pour la sphère publique et institutionnelle
- Qualités rédactionnelles
- Sens du protocole',
10),

('2025-06-01','2025-11-30',44.837789,-0.579180,'Stage Coordinateur Logistique Événements',
'Stage 6 mois Bordeaux. Gestion de la logistique opérationnelle des événements : transport, hébergement, restauration, technique AV et décoration.',900,
'# 🚚 Stage Coordinateur Logistique – Com''Event
**Logistique événementielle | Prestataires | Budget | Opérationnel**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous serez en charge de la logistique opérationnelle des événements organisés par Com''Event : de la réservation des prestataires à la gestion sur site.

---

## 🎯 Missions
- Recherche et réservation des prestataires (lieux, transport, hôtels)
- Gestion des demandes techniques (AV, scénographie, mobilier)
- Coordination sur site le jour de l''événement
- Suivi du budget logistique
- Gestion des imprévus et ajustements de dernière minute

---

## Compétences développées
- Logistique et coordination opérationnelle
- Négociation avec les fournisseurs
- Gestion du budget et optimisation des coûts
- Réactivité et gestion du stress

---

## 👤 Profil recherché
- Bac+2 à Bac+4 logistique, tourisme ou événementiel
- Sens de l''organisation et polyvalence
- Permis B apprécié
- Disponibilité (week-ends ponctuels)',
10),

-- INGENIA TECH (11)
('2025-04-01','2025-09-30',43.604652,1.444209,'Stage Ingénieur Calcul Structures',
'Stage 6 mois Toulouse. Réalisation de calculs par éléments finis pour la validation de pièces structurales dans le secteur aéronautique.',1300,
'# ⚙️ Stage Ingénieur Calcul – Ingénia Tech
**Éléments finis | ANSYS | Abaqus | Mécanique des structures**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des études de calcul par éléments finis pour valider des pièces structurales de systèmes aéronautiques en cours de développement.

---

## 🎯 Missions
- Modélisation géométrique et maillage des pièces
- Définition des cas de charge et conditions aux limites
- Réalisation des calculs (statique, dynamique, fatigue)
- Interprétation des résultats et rédaction des rapports
- Corrélation calcul/essai

---

## 🧰 Outils
- ANSYS Mechanical, Abaqus
- CATIA V5/V6 (modélisation)
- Python (post-traitement)
- NASTRAN (apprécié)

---

## 👤 Profil recherché
- Master 2 ou ingénieur mécanique, matériaux ou aéronautique
- Bases en mécanique des structures
- Maîtrise d''un logiciel FEA (ANSYS, Abaqus, NASTRAN)
- Rigueur et sens de l''analyse',
11),

('2025-05-01','2025-10-31',43.604652,1.444209,'Stage Ingénieur Conception Mécanique 3D',
'Stage 6 mois Toulouse. Conception et modélisation 3D de sous-systèmes mécaniques pour des équipements automobiles, de la maquette numérique aux plans de définition.',1250,
'# 🔧 Stage Ingénieur Conception Mécanique – Ingénia Tech
**CATIA V5 | SolidWorks | Conception 3D | Plans de définition**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous concevrez des sous-systèmes mécaniques pour des équipements automobiles, de la modélisation 3D jusqu''aux plans de définition pour la fabrication.

---

## 🎯 Missions
- Modélisation 3D de pièces et d''assemblages (CATIA V5/SolidWorks)
- Rédaction des plans de définition
- Analyse de la faisabilité de fabrication (DFM/DFA)
- Participation aux revues de conception
- Gestion documentaire du projet

---

## 🧰 Outils
- CATIA V5 ou SolidWorks
- ENOVIA (PDM)
- AutoCAD (2D complémentaire)
- Excel (suivi de projet)

---

## 👤 Profil recherché
- Master 2 ou ingénieur mécanique, productique ou génie industriel
- Maîtrise de CATIA V5 ou SolidWorks
- Connaissance des tolérances et cotation fonctionnelle
- Rigueur et précision',
11),

('2025-06-01','2025-11-30',43.604652,1.444209,'Stage Ingénieur Simulation Thermique & Fluides',
'Stage 6 mois Toulouse. Réalisation d''études CFD pour l''optimisation du refroidissement de systèmes électroniques embarqués dans le secteur aéronautique.',1350,
'# 🌡️ Stage Ingénieur CFD – Ingénia Tech
**CFD | ANSYS Fluent | Star-CCM+ | Thermique**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des simulations de dynamique des fluides (CFD) pour optimiser le refroidissement de boîtiers électroniques embarqués dans des avions.

---

## 🎯 Missions
- Modélisation des géométries d''échange thermique
- Paramétrage et réalisation des simulations CFD
- Post-traitement et interprétation des résultats
- Propositions d''optimisation des designs
- Rédaction des rapports techniques

---

## 🧰 Outils
- ANSYS Fluent, Star-CCM+
- CATIA V5 (import géométrie)
- Python (post-traitement)
- MATLAB (validation analytique)

---

## 👤 Profil recherché
- Master 2 ou ingénieur mécanique des fluides ou thermique
- Notions de CFD
- Maîtrise d''ANSYS Fluent ou Star-CCM+ appréciée
- Rigueur scientifique',
11),

('2025-04-15','2025-10-15',43.604652,1.444209,'Stage Ingénieur Chef de Projet R&D',
'Stage 6 mois Toulouse. Pilotage d''un projet de R&D en conception mécanique innovante : coordination des équipes pluridisciplinaires, suivi planning et risques.',1200,
'# 📋 Stage Chef de Projet R&D – Ingénia Tech
**Gestion de projet | R&D | Coordination | Planification**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous piloterez un projet de R&D en ingénierie mécanique, en coordonnant des équipes pluridisciplinaires (mécaniciens, thermiciens, électroniciens).

---

## 🎯 Missions
- Élaboration et suivi du planning projet (MS Project, Jira)
- Coordination des équipes pluridisciplinaires
- Gestion des risques techniques et planning
- Animation des revues de projet
- Reporting auprès du management et du client

---

## Compétences développées
- Gestion de projet en contexte industriel
- Coordination pluridisciplinaire
- Communication technique et managériale
- Vision système d''un projet R&D

---

## 👤 Profil recherché
- Master 2 ou ingénieur (toutes spécialités)
- Leadership et sens de l''organisation
- Aisance relationnelle
- Anglais technique',
11),

-- GREENBUILD (12)
('2025-04-01','2025-09-30',45.188529,5.724524,'Stage Ingénieur Thermique & Énergétique du Bâtiment',
'Stage 6 mois Grenoble. Réalisation d''études thermiques dynamiques pour des bâtiments tertiaires et résidentiels dans le cadre de la RE2020.',1200,
'# 🌿 Stage Ingénieur Thermique – GreenBuild
**RE2020 | STD | Bâtiments à énergie positive | BEPOS**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des études thermiques dynamiques pour des projets de construction neuve et de rénovation, dans le cadre de la réglementation RE2020.

---

## 🎯 Missions
- Simulations thermiques dynamiques (DesignBuilder, TRNSYS)
- Optimisation des systèmes CVC (chauffage, ventilation, climatisation)
- Calculs énergétiques et bilan carbone
- Dimensionnement des systèmes d''énergies renouvelables
- Rédaction des notes de calcul et rapports

---

## 🧰 Outils
- DesignBuilder, TRNSYS, PLEIADES
- AutoCAD, Revit (extraction données)
- Excel (bilans énergétiques)
- Logiciels RE2020

---

## 👤 Profil recherché
- Master 2 ou ingénieur génie civil, énergie ou environnement
- Bases en thermique du bâtiment
- Logiciels de STD appréciés
- Sensibilité aux enjeux environnementaux',
12),

('2025-05-01','2025-10-31',45.188529,5.724524,'Stage Coordinateur BIM',
'Stage 6 mois Grenoble. Coordination BIM de projets de construction durable : gestion de la maquette numérique, détection de conflits et formation des équipes projet.',1150,
'# 🏗️ Stage Coordinateur BIM – GreenBuild
**BIM | Revit | Navisworks | IFC | Autodesk**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous coordonnerez le BIM sur des projets de construction durable, en gérant la maquette numérique et en assurant la cohérence entre les différents corps de métier.

---

## 🎯 Missions
- Coordination des maquettes BIM multi-disciplinaires
- Détection et résolution des conflits (clash detection)
- Mise en place et respect de la convention BIM
- Formation des équipes projet aux outils BIM
- Extraction des données pour les études thermiques et énergétiques

---

## 🧰 Outils
- Revit, ArchiCAD
- Navisworks, Solibri
- BIM 360 / ACC (Autodesk)
- IFC, BCF

---

## 👤 Profil recherché
- Master 2 ou ingénieur génie civil, architecture ou BIM
- Maîtrise de Revit
- Connaissance du processus BIM
- Sens de la coordination et de la communication',
12),

('2025-06-01','2025-11-30',45.188529,5.724524,'Stage Chargé de Certification & Labels Environnementaux',
'Stage 6 mois Grenoble. Accompagnement des projets de construction dans l''obtention de certifications HQE, BREEAM et BBC Rénovation.',1100,
'# 🏅 Stage Certification Environnementale – GreenBuild
**HQE | BREEAM | BBC Rénovation | Audit | Conformité**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des projets de construction neuve et de rénovation dans l''obtention de certifications environnementales (HQE, BREEAM, BBC).

---

## 🎯 Missions
- Analyse des projets par rapport aux référentiels de certification
- Constitution des dossiers de certification
- Coordination avec les équipes de maîtrise d''œuvre
- Participation aux audits de certification
- Veille réglementaire et normative

---

## Compétences développées
- Référentiels de certifications environnementales
- Analyse de conformité et audit
- Coordination de projets de construction
- Réglementation environnementale du bâtiment

---

## 👤 Profil recherché
- Master 2 génie civil, environnement ou architecture
- Intérêt fort pour la construction durable
- Rigueur et sens du détail
- Qualités rédactionnelles',
12),

-- ELECTRO INGENIERIE (13)
('2025-04-01','2025-09-30',47.218371,-1.553621,'Stage Ingénieur Systèmes Embarqués',
'Stage 6 mois Nantes. Développement firmware en C/C++ pour des automates industriels connectés destinés à des sites de production agroalimentaires.',1200,
'# ⚡ Stage Ingénieur Systèmes Embarqués – Électro Ingénierie
**C/C++ | Microcontrôleurs | Protocoles industriels | RTOS**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous développerez le firmware d''automates industriels connectés pour des clients dans le secteur agroalimentaire.

---

## 🎯 Missions
- Développement firmware en C/C++ sur microcontrôleurs STM32
- Implémentation de protocoles de communication (Modbus, CAN)
- Tests unitaires et intégration système
- Débogage et optimisation du code embarqué
- Rédaction de la documentation technique

---

## 🧰 Stack technique
- C/C++, RTOS (FreeRTOS)
- STM32CubeIDE, Keil MDK
- Modbus RTU/TCP, CAN Bus
- Oscilloscope, analyseur de protocole

---

## 👤 Profil recherché
- Master 2 ou ingénieur électronique, informatique embarquée
- C/C++ maîtrisé
- Notions de microcontrôleurs
- Curiosité pour le hardware',
13),

('2025-05-01','2025-10-31',47.218371,-1.553621,'Stage Ingénieur Automatisme & SCADA',
'Stage 6 mois Nantes. Programmation d''automates Siemens et développement d''interfaces de supervision SCADA pour des lignes de production industrielles.',1150,
'# 🤖 Stage Ingénieur Automatisme – Électro Ingénierie
**Siemens S7 | TIA Portal | WinCC | SCADA**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous programmerez des automates industriels Siemens et développerez des interfaces de supervision pour des lignes de production.

---

## 🎯 Missions
- Programmation d''automates S7-1500 (TIA Portal, ladder, ST)
- Développement d''interfaces SCADA (WinCC, Ignition)
- Mise en service et tests sur ligne de production
- Rédaction des dossiers de définition fonctionnelle
- Formation des opérateurs

---

## 🧰 Outils
- Siemens TIA Portal (S7-300/400/1500)
- WinCC, Ignition (SCADA)
- Profinet, Profibus
- SolidEdge (synoptiques)

---

## 👤 Profil recherché
- Master 2 ou ingénieur automatisme, électronique ou génie industriel
- Notions d''automates programmables
- Esprit terrain et pratique
- Rigeur et sécurité',
13),

('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Ingénieur Études Électriques',
'Stage 6 mois Nantes. Réalisation d''études électriques (bilans de puissance, schémas HTA/BTA, calculs de court-circuit) pour des projets industriels.',1100,
'# ⚡ Stage Ingénieur Études Électriques – Électro Ingénierie
**Caneco BT/HTA | ECODIAL | Schémas électriques | Normes NFC**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des études électriques complètes pour des projets industriels : du bilan de puissance aux schémas de câblage.

---

## 🎯 Missions
- Réalisation des bilans de puissance
- Calculs de dimensionnement des câbles et protections (Caneco BT)
- Calculs de courts-circuits (ECODIAL, SKM PowerTools)
- Rédaction des schémas électriques (AutoCAD Electrical, SEE Electrical)
- Application des normes NFC 15-100 et IEC 60364

---

## 🧰 Outils
- Caneco BT/HTA, ECODIAL
- AutoCAD Electrical, SEE Electrical
- SKM PowerTools
- Excel (bilans de puissance)

---

## 👤 Profil recherché
- Master 2 ou ingénieur génie électrique
- Bases en dimensionnement électrique
- Connaissance des normes électriques
- Rigueur et précision',
13),

-- AVENIR RH (14)
('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Chargé de Recrutement',
'Stage 6 mois Paris. Gestion du processus de recrutement de A à Z pour des postes cadres et non-cadres dans des secteurs variés.',1000,
'# 👥 Stage Chargé de Recrutement – Groupe Avenir RH
**Recrutement | Sourcing | Entretiens | Assessment**
📍 *Paris – 2ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous gérerez le processus de recrutement de A à Z pour des clients dans des secteurs variés : rédaction d''annonces, sourcing, entretiens et présentation des candidats.

---

## 🎯 Missions
- Rédaction et diffusion des annonces de recrutement
- Sourcing de candidats (LinkedIn, CVthèques, cooptation)
- Conduite des entretiens téléphoniques et en présentiel
- Rédaction des synthèses et présentation aux clients
- Suivi des candidats et des recrutements

---

## Compétences développées
- Techniques de sourcing et d''entretien
- Connaissance du marché de l''emploi
- Relation client et gestion des attentes
- Pratique des outils RH (ATS)

---

## 👤 Profil recherché
- Bac+3 à Bac+5 RH, psychologie ou commerce
- Sens de l''écoute et empathie
- Capacité à gérer plusieurs processus simultanément
- Aisance relationnelle',
14),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Consultant Formation & Développement RH',
'Stage 6 mois Paris. Conception et déploiement de programmes de formation pour des clients entreprises : analyse des besoins, ingénierie pédagogique et suivi.',1050,
'# 📚 Stage Consultant Formation – Groupe Avenir RH
**Ingénierie pédagogique | Formation | GPEC | E-learning**
📍 *Paris – 2ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous concevrez et déploierez des programmes de formation pour des clients entreprises, de l''analyse des besoins à l''évaluation des résultats.

---

## 🎯 Missions
- Analyse des besoins en formation (entretiens avec les managers)
- Ingénierie pédagogique et conception des modules
- Coordination des formateurs internes et externes
- Animation de sessions de formation (soft skills)
- Évaluation de l''efficacité des formations

---

## Compétences développées
- Ingénierie de formation
- Animation de groupes
- Conseil RH
- Connaissance des dispositifs de formation (CPF, plan de développement)

---

## 👤 Profil recherché
- Bac+4/5 RH, psychologie du travail ou sciences de l''éducation
- Intérêt pour la pédagogie et le développement des compétences
- Aisance à l''oral
- Sens de l''organisation',
14),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Consultant RH & Gestion des Talents',
'Stage 6 mois Paris. Accompagnement de clients dans la mise en place d''outils de gestion des talents : évaluation de la performance, plans de succession et engagement.',1100,
'# 🌟 Stage Consultant Talents – Groupe Avenir RH
**GPEC | Évaluation | Talent Management | Engagement**
📍 *Paris – 2ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des DRH dans la structuration de leur politique de gestion des talents.

---

## 🎯 Missions
- Conception d''outils d''évaluation des compétences
- Mise en place de plans de succession
- Réalisation d''enquêtes d''engagement (conception, analyse)
- Accompagnement à la mise en place de l''entretien annuel
- Benchmark des pratiques RH innovantes

---

## Compétences développées
- Gestion des talents et GPEC
- Psychologie organisationnelle
- Conseil en entreprise
- Analyse de données RH

---

## 👤 Profil recherché
- Bac+5 RH, psychologie du travail ou management
- Sens analytique
- Discrétion et éthique
- Aisance relationnelle avec les dirigeants',
14),

-- CONSULTGROUP (15)
('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Consultant Junior en Stratégie',
'Stage 6 mois Paris. Participation à des missions de conseil en stratégie pour des PME et ETI : diagnostic, recommandations et accompagnement à la mise en œuvre.',1300,
'# 🎯 Stage Consultant Stratégie – ConsultGroup
**Stratégie | Diagnostic | Recommandations | Transformation**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous intégrerez une équipe de conseil pour accompagner des dirigeants de PME et ETI dans leurs décisions stratégiques.

---

## 🎯 Missions
- Réalisation de diagnostics stratégiques (entretiens, analyses)
- Analyse de données et benchmarks sectoriels
- Rédaction de recommandations stratégiques
- Préparation et animation de réunions clients
- Suivi de la mise en œuvre des recommandations

---

## Compétences développées
- Méthodes de conseil en stratégie
- Analyse et synthèse d''informations complexes
- Communication avec des dirigeants
- Vision globale des enjeux d''entreprise

---

## 👤 Profil recherché
- Bac+5 grande école de commerce ou d''ingénieurs
- Esprit analytique et synthétique
- Excellentes qualités rédactionnelles et orales
- Curiosité intellectuelle',
15),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Consultant Transformation Organisationnelle',
'Stage 6 mois Paris. Accompagnement de grandes entreprises dans leurs projets de réorganisation et de conduite du changement.',1250,
'# 🔄 Stage Consultant Transformation – ConsultGroup
**Conduite du changement | Lean | Processus | Organisation**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des grandes entreprises dans leurs projets de transformation organisationnelle.

---

## 🎯 Missions
- Cartographie et analyse des processus existants
- Identification des axes d''amélioration
- Accompagnement au changement (communication, formation)
- Animation d''ateliers de travail avec les équipes
- Suivi et mesure des indicateurs de transformation

---

## Compétences développées
- Analyse organisationnelle
- Conduite du changement
- Lean management et amélioration continue
- Facilitation et animation d''ateliers

---

## 👤 Profil recherché
- Bac+5 management, ingénierie ou grande école
- Sens de la relation humaine
- Capacité à gérer les résistances au changement
- Écoute et pédagogie',
15),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Analyste Performance Opérationnelle',
'Stage 6 mois Paris. Diagnostic et optimisation des processus opérationnels de clients industriels et de services pour améliorer leur efficience.',1200,
'# 📊 Stage Analyste Performance – ConsultGroup
**Lean | Six Sigma | Processus | KPIs | Optimisation**
📍 *Paris – 8ème arrondissement*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des diagnostics de performance opérationnelle et proposerez des plans d''amélioration pour des clients dans l''industrie et les services.

---

## 🎯 Missions
- Analyse des processus opérationnels (VSM, cartographie)
- Identification des gaspillages et des dysfonctionnements
- Construction des plans d''amélioration continue
- Accompagnement à la mise en œuvre des actions
- Mesure des gains réalisés

---

## Compétences développées
- Lean management et Six Sigma
- Analyse de données opérationnelles
- Conseil terrain
- Présentation de résultats à des managers

---

## 👤 Profil recherché
- Bac+5 ingénierie, management ou grande école
- Approche terrain et pragmatique
- Sens de l''analyse
- Aisance relationnelle',
15),

-- ECOSERVICES (16)
('2025-04-01','2025-09-30',45.760000,4.841388,'Stage Consultant RSE & Développement Durable',
'Stage 6 mois Lyon. Accompagnement d''entreprises dans l''élaboration de leur stratégie RSE, la rédaction de leurs rapports extra-financiers et la mise en place d''actions concrètes.',1050,
'# 🌍 Stage Consultant RSE – EcoServices
**RSE | CSRD | Reporting extra-financier | Stratégie durable**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des entreprises de tailles variées dans l''élaboration et la mise en œuvre de leur stratégie RSE.

---

## 🎯 Missions
- Diagnostic RSE (analyse des parties prenantes, matérialité)
- Élaboration de la stratégie et du plan d''action RSE
- Rédaction des rapports extra-financiers (CSRD, GRI, DPEF)
- Suivi des indicateurs RSE
- Sensibilisation des équipes internes des clients

---

## Compétences développées
- Référentiels RSE (GRI, CSRD, ISO 26000)
- Analyse de matérialité
- Rédaction de rapports formels
- Conseil en stratégie durable

---

## 👤 Profil recherché
- Bac+4/5 développement durable, management ou sciences sociales
- Connaissance des enjeux RSE
- Qualités rédactionnelles
- Sens de la conviction et de la pédagogie',
16),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Chargé de Mission Bilan Carbone',
'Stage 6 mois Lyon. Réalisation de bilans carbone (scope 1, 2, 3) pour des entreprises des secteurs industrie et services, et élaboration de plans de réduction.',1000,
'# 🌱 Stage Bilan Carbone – EcoServices
**Bilan Carbone | GHG Protocol | Décarbonation | Scope 3**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous réaliserez des bilans carbone pour des entreprises industrielles et de services, en couvrant l''ensemble des scopes d''émissions.

---

## 🎯 Missions
- Collecte des données d''émissions auprès des clients
- Calcul des émissions scope 1, 2 et 3 (méthode Bilan Carbone ADEME)
- Identification des postes d''émissions prioritaires
- Élaboration des plans de réduction
- Présentation des résultats aux dirigeants

---

## Compétences développées
- Méthode Bilan Carbone® et GHG Protocol
- Analyse des chaînes de valeur
- Stratégies de décarbonation
- Communication avec des dirigeants d''entreprise

---

## 👤 Profil recherché
- Bac+4/5 environnement, énergie ou ingénierie
- Rigueur dans le traitement des données
- Intérêt fort pour le changement climatique
- Sens de la communication',
16),

('2025-06-01','2025-11-30',45.760000,4.841388,'Stage Chargé de Mission Économie Circulaire',
'Stage 6 mois Lyon. Accompagnement d''entreprises industrielles dans la mise en place de démarches d''économie circulaire : réduction des déchets, recyclage et valorisation.',950,
'# ♻️ Stage Économie Circulaire – EcoServices
**Économie circulaire | Déchets | Recyclage | Éco-conception**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

---

## 📝 Présentation du stage
Vous accompagnerez des entreprises industrielles dans la transition vers l''économie circulaire.

---

## 🎯 Missions
- Audit des flux de déchets et des ressources
- Identification des opportunités de réduction et valorisation
- Mise en relation avec des filières de recyclage et de réemploi
- Accompagnement à la mise en place de l''éco-conception
- Reporting et suivi des indicateurs économie circulaire

---

## Compétences développées
- Diagnostic des flux de matières
- Économie circulaire et écologie industrielle
- Réseau des filières de valorisation
- Gestion de projet environnemental

---

## 👤 Profil recherché
- Bac+4/5 environnement, chimie ou génie des procédés
- Intérêt pour l''industrie et l''environnement
- Capacité d''analyse
- Sens du terrain',
16);

-- ============================================================
-- UTILISATEURS
-- ============================================================
INSERT INTO Utilisateur (nom, prenom, email, mdp) VALUES
('Dupont','Claire','claire.dupont@ecole.fr','$2y$10$hashedpwd1'),
('Moreau','Antoine','antoine.moreau@ecole.fr','$2y$10$hashedpwd2'),
('Bernard','Julie','julie.bernard@ecole.fr','$2y$10$hashedpwd3'),
('Lefebvre','Maxime','maxime.lefebvre@ecole.fr','$2y$10$hashedpwd4'),
('Martin','Sophie','sophie.martin@etudiant.fr','$2y$10$hashedpwd5'),
('Petit','Lucas','lucas.petit@etudiant.fr','$2y$10$hashedpwd6'),
('Durand','Emma','emma.durand@etudiant.fr','$2y$10$hashedpwd7'),
('Leroy','Nathan','nathan.leroy@etudiant.fr','$2y$10$hashedpwd8'),
('Simon','Chloé','chloe.simon@etudiant.fr','$2y$10$hashedpwd9'),
('Laurent','Hugo','hugo.laurent@etudiant.fr','$2y$10$hashedpwd10'),
('Michel','Léa','lea.michel@etudiant.fr','$2y$10$hashedpwd11'),
('Garcia','Tom','tom.garcia@etudiant.fr','$2y$10$hashedpwd12'),
('Roux','Inès','ines.roux@etudiant.fr','$2y$10$hashedpwd13'),
('Vincent','Paul','paul.vincent@etudiant.fr','$2y$10$hashedpwd14'),
('Fournier','Marie','marie.fournier@etudiant.fr','$2y$10$hashedpwd15'),
('Morel','Théo','theo.morel@etudiant.fr','$2y$10$hashedpwd16');

INSERT INTO Pilote (id_pilote) VALUES (1),(2),(3),(4);

INSERT INTO Etudiant (id_etudiant, id_pilote) VALUES
(5,1),(6,1),(7,1),(8,2),
(9,2),(10,2),(11,3),(12,3),
(13,3),(14,4),(15,4),(16,4);

-- ============================================================
-- COMPETENCES DEMANDEES PAR OFFRE
-- ============================================================
INSERT INTO Competence_Offre VALUES
-- Nexatech offres (1-5)
(1,2),(1,9),(1,12),(1,6),(1,15),
(2,2),(2,9),(2,15),(2,20),
(3,14),(3,16),(3,15),(3,1),
(4,5),(4,13),(4,6),(4,15),
(5,2),(5,10),(5,15),
-- DataSphere offres (6-10)
(6,1),(6,6),(6,15),(6,17),
(7,1),(7,17),(7,6),(7,25),
(8,6),(8,1),(8,25),(8,20),
(9,1),(9,6),(9,25),
(10,14),(10,1),(10,15),(10,16),
-- CyberShield offres (11-15)
(11,18),(11,16),(11,15),
(12,18),(12,6),(12,16),
(13,18),(13,19),(13,22),
(14,18),(14,14),(14,15),(14,16),
(15,18),(15,16),(15,1),
-- CloudNative offres (16-20)
(16,14),(16,16),(16,15),(16,6),
(17,14),(17,2),(17,16),
(18,16),(18,1),(18,15),
(19,14),(19,18),(19,16),
(20,14),(20,16),(20,15),
-- Crédit Partenaires offres (21-24)
(21,20),(21,24),(21,19),
(22,6),(22,25),(22,19),
(23,19),(23,6),(23,20),
(24,6),(24,25),(24,19),
-- FinStart offres (25-27)
(25,6),(25,25),(25,19),(25,22),
(26,6),(26,25),(26,24),
(27,6),(27,25),(27,22),
-- AssurPro offres (28-30)
(28,20),(28,24),(28,19),
(29,19),(29,22),(29,25),
(30,1),(30,6),(30,15),
-- Horizon offres (31-34)
(31,19),(31,20),(31,22),(31,23),
(32,22),(32,21),(32,23),
(33,22),(33,21),(33,20),
(34,22),(34,25),(34,20),(34,23),
-- InfluenceMedia offres (35-37)
(35,23),(35,20),(35,22),(35,24),
(36,23),(36,22),(36,21),
(37,1),(37,25),(37,20),(37,23),
-- ComEvent offres (38-40)
(38,19),(38,20),(38,22),
(39,22),(39,21),(39,20),
(40,19),(40,20),(40,22),
-- Ingénia Tech offres (41-44)
(41,4),(41,15),(41,25),
(42,4),(42,15),(42,22),
(43,4),(43,1),(43,25),
(44,19),(44,20),(44,22),(44,25),
-- GreenBuild offres (45-47)
(45,4),(45,25),(45,15),
(46,14),(46,15),(46,19),
(47,19),(47,22),(47,25),
-- Électro Ingénierie offres (48-50)
(48,4),(48,16),(48,15),
(49,4),(49,16),(49,15),
(50,4),(50,16),(50,6),
-- Avenir RH offres (51-53)
(51,20),(51,22),(51,19),(51,21),
(52,22),(52,21),(52,19),(52,20),
(53,19),(53,22),(53,25),(53,21),
-- ConsultGroup offres (54-56)
(54,19),(54,25),(54,22),(54,20),
(55,19),(55,21),(55,22),(55,20),
(56,25),(56,19),(56,20),(56,22),
-- EcoServices offres (57-59)
(57,19),(57,22),(57,25),(57,21),
(58,25),(58,19),(58,22),
(59,19),(59,22),(59,25);

-- ============================================================
-- WISHLISTS
-- ============================================================
INSERT INTO Wishlist VALUES
(5,1),(5,6),(5,16),(5,31),
(6,2),(6,11),(6,35),(6,51),
(7,7),(7,22),(7,38),(7,54),
(8,3),(8,12),(8,41),(8,28),
(9,8),(9,17),(9,45),(9,57),
(10,4),(10,32),(10,48),(10,21),
(11,9),(11,18),(11,36),(11,59),
(12,5),(12,13),(12,42),(12,25),
(13,10),(13,23),(13,50),(13,38),
(14,15),(14,33),(14,46),(14,55),
(15,20),(15,37),(15,52),(15,29),
(16,14),(16,24),(16,43),(16,58);

-- ============================================================
-- CANDIDATURES
-- ============================================================
INSERT INTO Postule VALUES
(5,1,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(6,11,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(7,22,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(8,3,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(9,17,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(10,32,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(11,35,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(12,41,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(13,48,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(14,54,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(15,57,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(16,28,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(5,7,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(6,2,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(7,38,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(8,12,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(9,45,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(10,21,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(11,9,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf')),
(12,25,CONCAT('cv/',UNHEX(MD5(RAND())),'_cv.pdf'),CONCAT('lm/',UNHEX(MD5(RAND())),'_lm.pdf'));

-- ============================================================
-- EVALUATIONS
-- ============================================================
INSERT INTO Evaluation_entreprise VALUES
(1,5,5),(1,6,4),(1,7,5),
(2,8,4),(2,9,5),(2,10,3),
(3,11,5),(3,12,4),
(4,13,4),(4,14,5),
(5,5,3),(5,15,4),
(6,6,5),(6,16,4),
(7,7,4),(7,8,3),
(8,9,5),(8,10,4),
(9,11,4),(9,12,5),
(10,13,3),(10,14,4),
(11,5,5),(11,15,4),
(12,6,4),(12,16,5),
(13,7,3),(13,8,4),
(14,9,5),(14,10,4),
(15,11,4),(15,12,5),
(16,13,4),(16,14,3);

-- ============================================================
-- VILLES
-- ============================================================
INSERT INTO Ville (nom, lat, lng) VALUES
('Paris', 48.856613, 2.352222),
('Marseille', 43.296482, 5.36978),
('Lyon', 45.764043, 4.835659),
('Toulouse', 43.604652, 1.444209),
('Nice', 43.710173, 7.261953),
('Nantes', 47.218371, -1.553621),
('Montpellier', 43.610769, 3.876716),
('Strasbourg', 48.573405, 7.752111),
('Bordeaux', 44.837789, -0.57918),
('Lille', 50.62925, 3.057256),
('Rennes', 48.117266, -1.677793),
('Reims', 49.258329, 4.031696),
('Saint-Étienne', 45.439695, 4.387178),
('Toulon', 43.124228, 5.928),
('Le Havre', 49.49437, 0.107929),
('Grenoble', 45.188529, 5.724524),
('Dijon', 47.322047, 5.04148),
('Angers', 47.478419, -0.563166),
('Nîmes', 43.836699, 4.360054),
('Villeurbanne', 45.771944, 4.89017),
('Saint-Denis', 48.936181, 2.357443),
('Le Mans', 48.00611, 0.199556),
('Aix-en-Provence', 43.529742, 5.447427),
('Clermont-Ferrand', 45.777222, 3.087025),
('Brest', 48.390394, -4.486076),
('Limoges', 45.833619, 1.261105),
('Tours', 47.394144, 0.68484),
('Amiens', 49.895036, 2.302077),
('Perpignan', 42.688659, 2.894833),
('Metz', 49.119309, 6.175716),
('Besançon', 47.237829, 6.024053),
('Boulogne-Billancourt', 48.832228, 2.241634),
('Orléans', 47.902964, 1.909251),
('Mulhouse', 47.750839, 7.335888),
('Rouen', 49.443232, 1.099971),
('Caen', 49.182863, -0.370679),
('Nancy', 48.692054, 6.184417),
('Argenteuil', 48.947209, 2.246684),
('Montreuil', 48.864049, 2.44322),
('Saint-Paul', -21.009562, 55.270733),
('Roubaix', 50.692704, 3.174966),
('Tourcoing', 50.723934, 3.160018),
('Nanterre', 48.892427, 2.206976),
('Avignon', 43.949317, 4.805528),
('Vitry-sur-Seine', 48.787169, 2.403362),
('Créteil', 48.790367, 2.45557),
('Poitiers', 46.580224, 0.340375),
('Dunkerque', 51.034368, 2.376776),
('Versailles', 48.804865, 2.120355),
('Courbevoie', 48.895329, 2.256223),
('Colombes', 48.918965, 2.254574),
('Asnières-sur-Seine', 48.911592, 2.287243),
('Aulnay-sous-Bois', 48.938359, 2.494893),
('Saint-Pierre', -21.341268, 55.478516),
('Rueil-Malmaison', 48.876141, 2.189626),
('Saint-Maur-des-Fossés', 48.794844, 2.493584),
('Champigny-sur-Marne', 48.817863, 2.515473),
('La Rochelle', 46.160329, -1.151139),
('Antibes', 43.580418, 7.125102),
('Calais', 50.95129, 1.858686),
('Saint-Nazaire', 47.273497, -2.213848),
('Saint-Quentin', 49.84889, 3.2877),
('Drancy', 48.925364, 2.445306),
('Noisy-le-Grand', 48.849851, 2.563434),
('Issy-les-Moulineaux', 48.821898, 2.27702),
('Levallois-Perret', 48.895435, 2.288981),
('La Seyne-sur-Mer', 43.103931, 5.883389),
('Quimper', 47.99609, -4.102215),
('Vanves', 48.823119, 2.287324),
('Sarcelles', 48.997449, 2.381976),
('Lorient', 47.748252, -3.370244),
('Sète', 43.402837, 3.692448),
('Pessac', 44.807186, -0.632768),
('Ivry-sur-Seine', 48.815055, 2.38718),
('Maisons-Alfort', 48.811957, 2.434394),
('Évry-Courcouronnes', 48.632633, 2.44097),
('Clichy', 48.904309, 2.30972),
('Cergy', 49.036676, 2.060789),
('Béziers', 43.344181, 3.215986),
('Ajaccio', 41.919229, 8.738635),
('Mérignac', 44.830109, -0.643254),
('Niort', 46.323197, -0.458740),
('Le Blanc-Mesnil', 48.936949, 2.461952),
('Pantin', 48.894846, 2.409252),
('Tarbes', 43.232819, 0.07808),
('Dax', 43.710531, -1.053698),
('Rezé', 47.184897, -1.54987),
('Saint-Priest', 45.696186, 4.938955),
('Aubervilliers', 48.910129, 2.384049),
('Montauban', 44.017039, 1.355396),
('Vannes', 47.658236, -2.760847),
('Salon-de-Provence', 43.640716, 5.097598),
('Saint-Herblain', 47.217324, -1.631072),
('Meaux', 48.960102, 2.878041),
('Narbonne', 43.183402, 3.003427),
('Chambéry', 45.564601, 5.917781),
('Bourges', 47.081013, 2.398782),
('Cholet', 47.060707, -0.878395),
('Mantes-la-Jolie', 48.995101, 1.709948),
('Belfort', 47.638927, 6.863849),
('Arras', 50.29301, 2.78194);