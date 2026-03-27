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
('admin','admin','admin@mail.fr','$2y$10$86f3lPX/noE3XXsXMWl.4egejB9QQHoMizYtA4EfksnTZ.3Gp.zN.'), -- mdp admin: "admin"
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

INSERT INTO Pilote (id_pilote) VALUES (2),(3),(4);

INSERT INTO Admin (id_admin) VALUES (1);

INSERT INTO Etudiant (id_etudiant, id_pilote) VALUES
(8,2),(9,2),(10,2),
(11,3),(12,3),(13,3),
(14,4),(15,4),(16,4);

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
(5,5,0),(5,15,1),
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




-- ============================================================
-- NOUVELLES OFFRES DE STAGE (~100 offres)
-- Réparties sur les 16 entreprises existantes
-- Les id_offre commencent à 60 (les 59 premières existent déjà)
-- ============================================================

-- ============================================================
-- NEXATECH SOLUTIONS (id_entreprise = 1) — offres 60-67
-- ============================================================
INSERT INTO Offre (date_debut, date_fin, lat, lng, titre, description_carte, remuneration_par_mois, description_offre_de_stage, id_entreprise) VALUES

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Développeur Angular & TypeScript',
'Stage 6 mois Paris. Développement de nouvelles fonctionnalités sur une application de gestion RH en Angular pour un client grand compte du secteur industrie.',1100,
'# 🔺 Stage Développeur Angular – Nexatech Solutions
**Angular | TypeScript | RxJS | NgRx**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe frontend de Nexatech pour développer et maintenir une application de gestion RH utilisée par 5 000 collaborateurs d''un grand groupe industriel.

## 🎯 Missions
- Développement de composants Angular (v17, standalone)
- Gestion de l''état avec NgRx
- Intégration des APIs REST du backend Java
- Rédaction de tests unitaires (Karma, Jest)
- Participation aux cérémonies Scrum

## 🧰 Stack technique
- Angular 17, TypeScript, RxJS
- NgRx, Angular Material
- Jest, Cypress
- GitLab CI

## 👤 Profil recherché
- Bac+4/5 développement frontend
- Maîtrise de TypeScript
- Notions d''Angular ou React
- Rigueur et autonomie',
1),

('2025-05-15','2025-11-15',44.837789,-0.579180,'Stage Développeur Full Stack Python/Django',
'Stage 6 mois Bordeaux. Développement de nouvelles fonctionnalités sur une plateforme de gestion documentaire Django pour un cabinet d''avocats client.',1050,
'# 🐍 Stage Développeur Full Stack Django – Nexatech (Bordeaux)
**Python | Django | PostgreSQL | Vue.js**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous travaillerez sur une plateforme de gestion documentaire pour un cabinet d''avocats, en charge du backend Django et d''une interface Vue.js.

## 🎯 Missions
- Développement de vues et APIs Django REST Framework
- Modélisation de la base de données PostgreSQL
- Développement d''interfaces Vue.js 3
- Mise en place de tâches asynchrones (Celery, Redis)
- Tests unitaires et d''intégration

## 🧰 Stack technique
- Python 3.12, Django 5, DRF
- PostgreSQL, Redis, Celery
- Vue.js 3, Pinia
- Docker, GitHub Actions

## 👤 Profil recherché
- Bac+4/5 développement web
- Python intermédiaire
- Bases SQL solides
- Curiosité et autonomie',
1),

('2025-06-01','2025-11-30',43.604652,1.444209,'Stage Développeur Java Spring Boot',
'Stage 6 mois Toulouse. Développement de microservices Java Spring Boot pour une plateforme de gestion de flottes de véhicules.',1100,
'# ☕ Stage Développeur Java Spring Boot – Nexatech (Toulouse)
**Java | Spring Boot | Kafka | Kubernetes**
📍 *Toulouse – Capitole*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous intégrerez l''équipe backend pour développer des microservices dans le cadre d''une plateforme IoT de gestion de flottes de véhicules.

## 🎯 Missions
- Développement de microservices Spring Boot
- Consommation et production d''événements Kafka
- Développement d''APIs REST et gRPC
- Rédaction de tests JUnit et Mockito
- Déploiement sur Kubernetes

## 🧰 Stack technique
- Java 21, Spring Boot 3, Spring Cloud
- Apache Kafka
- PostgreSQL, Redis
- Kubernetes, Helm

## 👤 Profil recherché
- Bac+4/5 développement logiciel
- Java intermédiaire
- Notions de Spring ou Maven
- Intérêt pour les systèmes distribués',
1),

('2025-04-15','2025-10-15',48.856613,2.352222,'Stage UX/UI Designer',
'Stage 6 mois Paris. Conception des interfaces utilisateur d''une application SaaS B2B, de la recherche utilisateur au prototype haute fidélité.',1000,
'# 🎨 Stage UX/UI Designer – Nexatech Solutions
**Figma | Design System | Recherche utilisateur | Prototypage**
📍 *Paris – 11ème arrondissement*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe produit pour concevoir et améliorer l''expérience utilisateur d''une application SaaS B2B destinée aux équipes RH.

## 🎯 Missions
- Réalisation de recherches utilisateurs (interviews, tests)
- Conception de wireframes et prototypes sur Figma
- Contribution au Design System de l''agence
- Collaboration étroite avec les développeurs frontend
- Tests d''usabilité et itérations

## 🧰 Outils
- Figma, FigJam
- Maze (tests utilisateurs)
- Storybook (intégration Design System)

## 👤 Profil recherché
- Bac+4/5 design UX/UI ou école de design
- Maîtrise de Figma
- Portfolio de projets UX
- Empathie et sens de la communication',
1),

('2025-05-01','2025-10-31',45.188529,5.724524,'Stage Développeur C# .NET',
'Stage 6 mois Grenoble. Développement d''une application de pilotage industriel en C# .NET pour un client du secteur de l''énergie.',1100,
'# 🔷 Stage Développeur C# .NET – Nexatech (Grenoble)
**C# | .NET 8 | WPF | SQL Server**
📍 *Grenoble – Presqu''île*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez une application Windows de supervision et de pilotage d''installations industrielles pour un client du secteur de l''énergie.

## 🎯 Missions
- Développement d''interfaces WPF (MVVM)
- Développement de services .NET (API REST)
- Intégration de protocoles industriels (OPC-UA)
- Tests unitaires et d''intégration
- Rédaction de la documentation technique

## 🧰 Stack technique
- C# .NET 8, WPF, MVVM
- SQL Server, Entity Framework
- OPC-UA, SignalR
- Azure DevOps

## 👤 Profil recherché
- Bac+4/5 développement logiciel
- C# ou Java intermédiaire
- Notions de bases de données
- Curiosité pour le domaine industriel',
1),

('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Développeur Backend Go',
'Stage 6 mois Nantes. Développement de services haute performance en Go pour une plateforme de traitement de flux de données IoT.',1150,
'# 🐹 Stage Développeur Backend Go – Nexatech (Nantes)
**Go | gRPC | Kafka | Redis**
📍 *Nantes – Île de Nantes*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe backend pour développer des services Go haute performance dans le cadre d''une plateforme IoT traitant des millions d''événements par jour.

## 🎯 Missions
- Développement de services en Go (routines, channels)
- Exposition d''APIs gRPC et REST
- Consommation de flux Kafka
- Optimisation des performances et profiling
- Tests unitaires et benchmarks

## 🧰 Stack technique
- Go 1.23, gRPC, gin
- Apache Kafka, Redis
- PostgreSQL
- Prometheus, Grafana

## 👤 Profil recherché
- Bac+5 développement logiciel ou systèmes
- C, Java ou Python maîtrisé (Go appris rapidement)
- Intérêt pour les systèmes haute performance
- Curiosité et autonomie',
1),

('2025-04-01','2025-09-30',48.573405,7.752111,'Stage Développeur Symfony/PHP',
'Stage 6 mois Strasbourg. Développement de fonctionnalités sur une application de gestion événementielle en Symfony 7 pour un client du secteur culturel.',1050,
'# 🎵 Stage Développeur Symfony – Nexatech (Strasbourg)
**PHP | Symfony 7 | Doctrine | API Platform**
📍 *Strasbourg – Centre*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous travaillerez sur une application de billetterie et de gestion d''événements culturels développée avec Symfony 7 et une API Platform.

## 🎯 Missions
- Développement de fonctionnalités Symfony (controllers, services, events)
- Modélisation et optimisation des entités Doctrine
- Développement d''endpoints API Platform (JSON-LD)
- Rédaction de tests PHPUnit et Behat
- Participation aux revues de code

## 🧰 Stack technique
- PHP 8.3, Symfony 7, API Platform
- Doctrine ORM, MySQL
- RabbitMQ (messages async)
- Docker, GitLab CI

## 👤 Profil recherché
- Bac+4/5 développement web
- PHP et bases de Symfony
- SQL intermédiaire
- Rigueur dans le code',
1),

('2025-05-01','2025-10-31',49.443232,1.099971,'Stage Développeur React Native & Expo',
'Stage 6 mois Rouen. Développement d''une application mobile de suivi de chantiers pour des artisans du BTP.',950,
'# 📱 Stage Développeur React Native – Nexatech (Rouen)
**React Native | Expo | TypeScript | SQLite**
📍 *Rouen – Centre*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez une application mobile cross-platform permettant aux artisans de gérer leurs chantiers, devis et factures en mobilité.

## 🎯 Missions
- Développement de fonctionnalités React Native (Expo SDK)
- Implémentation du mode hors-ligne (SQLite, Watermelon DB)
- Intégration d''une API REST backend
- Tests sur appareils iOS et Android
- Publication sur les stores (Expo EAS Build)

## 🧰 Stack technique
- React Native (Expo), TypeScript
- WatermelonDB, SQLite
- React Query, Zustand
- Expo EAS

## 👤 Profil recherché
- Bac+4/5 développement mobile ou web
- React ou React Native
- Autonomie et sens des responsabilités',
1),

-- ============================================================
-- DATASPHERE (id_entreprise = 2) — offres 68-73
-- ============================================================

('2025-04-01','2025-09-30',43.604652,1.444209,'Stage Ingénieur Data – Qualité des données',
'Stage 6 mois Toulouse. Mise en place d''un framework de qualité des données pour un lac de données d''un grand groupe industriel client.',1200,
'# 🔍 Stage Data Quality Engineer – DataSphere (Toulouse)
**Great Expectations | dbt | Python | Snowflake**
📍 *Toulouse*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous contribuerez à la mise en place d''une culture data quality au sein du lac de données d''un grand groupe industriel : profiling, règles métier, alerting.

## 🎯 Missions
- Profilage statistique des données sources
- Définition et implémentation des règles de qualité (Great Expectations)
- Mise en place de tests dbt pour la couche transformation
- Dashboard de suivi de la qualité (Metabase)
- Formation des équipes data clients

## 🧰 Stack technique
- Python, Great Expectations, dbt
- Snowflake, S3
- Airflow (orchestration)
- Metabase

## 👤 Profil recherché
- Master 2 Data Engineering ou informatique
- Python et SQL maîtrisés
- Rigueur et sens de la pédagogie',
2),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Data Scientist – Computer Vision',
'Stage 6 mois Paris. Développement de modèles de vision par ordinateur pour automatiser le contrôle qualité visuel sur des lignes de production industrielles.',1400,
'# 👁️ Stage Data Scientist Vision – DataSphere (Paris)
**PyTorch | YOLO | OpenCV | MLflow**
📍 *Paris*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez des modèles de vision par ordinateur pour détecter des défauts sur des pièces industrielles en temps réel.

## 🎯 Missions
- Constitution et annotation du dataset d''images
- Fine-tuning de modèles YOLO v8 pour la détection de défauts
- Optimisation pour l''inférence temps réel (ONNX, TensorRT)
- Déploiement sur edge devices (NVIDIA Jetson)
- Évaluation et rapport de performances

## 🧰 Stack technique
- Python, PyTorch, OpenCV
- YOLO v8, ONNX, TensorRT
- MLflow, DVC
- NVIDIA Jetson (edge)

## 👤 Profil recherché
- Master 2 IA ou vision artificielle
- PyTorch avancé
- Expérience en vision appréciée',
2),

('2025-06-01','2025-11-30',44.837789,-0.579180,'Stage Data Engineer – Streaming Temps Réel',
'Stage 6 mois Bordeaux. Conception d''une architecture de traitement de données en temps réel pour un opérateur télécom client.',1300,
'# ⚡ Stage Data Engineer Streaming – DataSphere (Bordeaux)
**Kafka | Flink | Python | Cassandra**
📍 *Bordeaux*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous concevrez et implémenterez une architecture de streaming pour traiter des millions d''événements réseau par seconde pour un opérateur télécom.

## 🎯 Missions
- Conception de l''architecture de streaming (Kafka + Flink)
- Développement de jobs Flink (Java/Python)
- Modélisation du stockage (Cassandra, ClickHouse)
- Monitoring et alerting en temps réel
- Documentation de l''architecture

## 🧰 Stack technique
- Apache Kafka, Apache Flink
- Cassandra, ClickHouse
- Python, Java
- Grafana, Prometheus

## 👤 Profil recherché
- Master 2 Data Engineering
- Python ou Java avancé
- Notions de Kafka ou Flink appréciées',
2),

('2025-04-15','2025-10-15',45.760000,4.841388,'Stage Analyste BI Finance & Contrôle de Gestion',
'Stage 6 mois Lyon. Construction d''un système de reporting financier consolidé pour la direction financière d''un groupe de distribution.',1150,
'# 💰 Stage Analyste BI Finance – DataSphere
**Power BI | DAX | Azure Synapse | Finance**
📍 *Lyon – Confluence*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous construirez un système de reporting financier consolidé permettant à la direction financière d''un groupe de distribution de piloter ses 120 magasins.

## 🎯 Missions
- Modélisation du Data Warehouse (Azure Synapse)
- Développement de rapports Power BI Premium (DAX complexe)
- Automatisation des consolidations financières
- Formation des contrôleurs de gestion
- Mise en place d''alertes et d''abonnements

## 🧰 Stack technique
- Power BI Premium, DAX, Power Query
- Azure Synapse Analytics
- SQL Server, Excel
- Azure Data Factory

## 👤 Profil recherché
- Bac+5 finance, data ou contrôle de gestion
- Power BI et DAX maîtrisés
- Compréhension des états financiers',
2),

('2025-05-15','2025-11-15',48.117266,-1.677793,'Stage Data Analyst – Marketing & E-commerce',
'Stage 6 mois Rennes. Analyse des comportements d''achat et optimisation du tunnel de conversion pour une plateforme e-commerce client.',1100,
'# 🛍️ Stage Data Analyst E-commerce – DataSphere (Rennes)
**Google Analytics | Python | A/B Testing | Looker**
📍 *Rennes*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous analyserez les données comportementales d''une plateforme e-commerce à 2M de visiteurs/mois pour identifier les leviers d''optimisation du taux de conversion.

## 🎯 Missions
- Analyse du parcours client (funnel, heatmaps)
- Conception et analyse de tests A/B
- Segmentation clients et personnalisation
- Construction de dashboards Looker
- Recommandations d''optimisation

## 🧰 Stack technique
- Python (pandas, scipy)
- GA4, Mixpanel
- Looker Studio, BigQuery
- Optimizely (A/B tests)

## 👤 Profil recherché
- Bac+4/5 data, marketing ou statistiques
- Python et SQL
- Curiosité pour le e-commerce et l''UX',
2),

('2025-06-01','2025-11-30',50.62925,3.057256,'Stage Ingénieur IA Générative & LLMs',
'Stage 6 mois Lille. Développement d''une solution RAG (Retrieval-Augmented Generation) pour l''automatisation du service client d''une compagnie d''assurance.',1500,
'# 🤖 Stage IA Générative LLM – DataSphere (Lille)
**LLM | RAG | LangChain | Vector DB**
📍 *Lille*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez une solution d''IA générative permettant à des agents du service client de répondre instantanément à des questions complexes sur les contrats d''assurance.

## 🎯 Missions
- Architecture et implémentation d''un système RAG
- Indexation de bases documentaires (Pinecone, Weaviate)
- Prompt engineering et fine-tuning
- Évaluation des réponses (RAGAs, BLEU)
- Déploiement et monitoring

## 🧰 Stack technique
- Python, LangChain, LlamaIndex
- OpenAI / Mistral / Claude
- Pinecone, Weaviate (vector DBs)
- FastAPI, Docker

## 👤 Profil recherché
- Master 2 IA ou NLP
- Python avancé et bases du deep learning
- Passionné(e) par les LLMs',
2),

-- ============================================================
-- CYBERSHIELD (id_entreprise = 3) — offres 74-78
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Analyste Threat Intelligence',
'Stage 6 mois Paris. Collecte, analyse et diffusion du renseignement sur les menaces cyber pour alimenter le SOC et les équipes de réponse à incident.',1400,
'# 🕵️ Stage Analyste Threat Intel – CyberShield (Paris)
**OSINT | MITRE ATT&CK | CTI | STIX/TAXII**
📍 *Paris*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe CTI (Cyber Threat Intelligence) pour surveiller le paysage des menaces, analyser les TTPs des acteurs malveillants et produire des bulletins de renseignement.

## 🎯 Missions
- Collecte et analyse de renseignements (OSINT, dark web)
- Profilage des groupes d''attaquants (APT)
- Production de bulletins et de rapports CTI
- Alimentation des outils SIEM et SOAR
- Veille et analyse des nouvelles vulnérabilités (CVE)

## 🧰 Outils
- MITRE ATT&CK, STIX/TAXII
- Maltego, Shodan, VirusTotal
- MISP (plateforme CTI)
- OpenCTI

## 👤 Profil recherché
- Master 2 cybersécurité
- Culture générale de la menace cyber
- Anglais technique courant
- Esprit analytique et curiosité',
3),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Ingénieur Sécurité Réseaux',
'Stage 6 mois Lyon. Audit et durcissement des architectures réseau de clients PME/ETI : firewall, segmentation, VPN et monitoring.',1300,
'# 🌐 Stage Sécurité Réseaux – CyberShield (Lyon)
**Firewall | Zero Trust | Wireshark | Cisco**
📍 *Lyon*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des clients PME et ETI dans l''audit et le renforcement de leurs architectures réseau.

## 🎯 Missions
- Audit des architectures réseau (firewall, VLAN, DMZ)
- Tests de pénétration réseau (interne et périmétrique)
- Recommandations de segmentation et Zero Trust
- Configuration et durcissement de firewalls (Fortinet, Palo Alto)
- Rédaction des rapports techniques et des plans de remédiation

## 🧰 Outils
- Nmap, Nessus, Metasploit
- Wireshark, Zeek
- Fortinet, Cisco (IOS)
- OWASP Testing Guide

## 👤 Profil recherché
- Master 2 réseaux et sécurité
- Protocoles réseau maîtrisés (TCP/IP, BGP, OSPF)
- Linux avancé
- Rigueur et éthique',
3),

('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Développeur Outil Sécurité Python',
'Stage 6 mois Nantes. Développement d''outils internes d''automatisation de la sécurité (scanner, parser de logs, dashboard SIEM).',1250,
'# 🛠️ Stage Développeur Sécurité – CyberShield (Nantes)
**Python | API sécurité | Automatisation | Django**
📍 *Nantes*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez des outils internes permettant d''automatiser les tâches répétitives des analystes SOC et de centraliser les données de sécurité.

## 🎯 Missions
- Développement de scripts Python pour l''automatisation SOC
- Intégration d''APIs de sécurité (VirusTotal, Shodan, OTX)
- Développement d''un dashboard de supervision Django
- Parsers de logs et corrélation d''événements
- Documentation et tests

## 🧰 Stack technique
- Python (requests, asyncio, FastAPI)
- Django, PostgreSQL
- APIs : VirusTotal, Shodan, MISP
- Docker, Celery

## 👤 Profil recherché
- Bac+4/5 informatique avec intérêt pour la sécurité
- Python avancé
- Sens de l''automatisation',
3),

('2025-04-15','2025-10-15',43.604652,1.444209,'Stage Expert Malware & Reverse Engineering',
'Stage 6 mois Toulouse. Analyse avancée de malwares sophistiqués et contribution à la base de connaissances des menaces de l''équipe CERT.',1500,
'# 🦠 Stage Reverse Engineering – CyberShield (Toulouse)
**Ghidra | IDA Pro | Assembleur | YARA**
📍 *Toulouse*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe CERT pour analyser des malwares complexes (ransomwares, stealers, RATs) et produire des rapports d''analyse et des règles de détection.

## 🎯 Missions
- Analyse statique (désassemblage avec Ghidra/IDA Pro)
- Analyse dynamique (sandbox, hooks)
- Rédaction de rapports d''analyse détaillés
- Rédaction de règles YARA et Sigma
- Contribution à la base MISP

## 🧰 Outils
- Ghidra, IDA Free, x64dbg
- Any.run, Cuckoo Sandbox
- YARA, Sigma
- Python (automation)

## 👤 Profil recherché
- Master 2 cybersécurité, offensive ou systèmes bas niveau
- Assembleur x86/x64
- Curiosité et persévérance',
3),

('2025-05-01','2025-10-31',49.119309,6.175716,'Stage Consultant RGPD & Protection des Données',
'Stage 6 mois Metz. Accompagnement de clients industriels dans leur mise en conformité RGPD : registre des traitements, DPA, PIA.',1200,
'# 📜 Stage Consultant RGPD – CyberShield (Metz)
**RGPD | Privacy by Design | Audit | Conformité**
📍 *Metz*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des clients industriels dans leur démarche de mise en conformité RGPD en jouant le rôle de DPO externalisé.

## 🎯 Missions
- Constitution et mise à jour du registre des traitements
- Réalisation d''analyses d''impact (PIA/AIPD)
- Rédaction des clauses contractuelles (DPA, CCT)
- Sensibilisation des collaborateurs
- Veille réglementaire CNIL et EDPB

## Compétences développées
- Droit des données personnelles
- Privacy by Design
- Gestion de projet conformité

## 👤 Profil recherché
- Master 2 droit du numérique, cybersécurité ou management
- Connaissance du RGPD
- Qualités rédactionnelles et relationnelles',
3),

-- ============================================================
-- CLOUDNATIVE (id_entreprise = 4) — offres 79-83
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Ingénieur FinOps Cloud',
'Stage 6 mois Paris. Optimisation des coûts cloud (AWS, Azure, GCP) de clients grands comptes : analyse, recommandations et mise en place de gouvernance.',1200,
'# 💰 Stage Ingénieur FinOps – CloudNative (Paris)
**FinOps | AWS Cost Explorer | Terraform | Cloud Governance**
📍 *Paris*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous aiderez des clients grands comptes à optimiser leurs dépenses cloud en mettant en place des pratiques FinOps (Cloud Financial Management).

## 🎯 Missions
- Analyse des factures cloud (AWS, Azure, GCP)
- Identification des ressources sous-utilisées ou mal dimensionnées
- Mise en place du tagging et de la gouvernance
- Recommandations d''optimisation (Reserved Instances, Spot)
- Construction de dashboards de suivi budgétaire

## 🧰 Outils
- AWS Cost Explorer, Azure Cost Management
- Infracost, CloudHealth
- Terraform (rightsizing)
- Power BI ou Grafana

## 👤 Profil recherché
- Bac+4/5 cloud ou finance
- Notions d''AWS et/ou Azure
- Sens de l''analyse financière',
4),

('2025-05-01','2025-10-31',45.764043,4.835659,'Stage Ingénieur GCP & BigQuery',
'Stage 6 mois Lyon. Accompagnement d''une ETI dans sa migration vers Google Cloud Platform et la mise en place d''une architecture data moderne sur BigQuery.',1150,
'# 🌩️ Stage Ingénieur GCP – CloudNative (Lyon)
**GCP | BigQuery | Dataflow | Terraform**
📍 *Lyon*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez une ETI dans sa migration vers GCP et la mise en place d''une architecture analytique moderne sur BigQuery.

## 🎯 Missions
- Migration des bases de données on-premise vers Cloud SQL / BigQuery
- Développement de pipelines Dataflow (Apache Beam)
- Infrastructure as Code (Terraform pour GCP)
- Mise en place de IAM et de la gouvernance GCP
- Formation des équipes internes

## 🧰 Stack technique
- GCP (GCS, BigQuery, Dataflow, Cloud Run)
- Terraform, Cloud Build
- Apache Beam, dbt
- Looker Studio

## 👤 Profil recherché
- Bac+4/5 cloud ou data engineering
- Notions de GCP ou BigQuery
- Terraform appréciée',
4),

('2025-06-01','2025-11-30',43.296482,5.36978,'Stage Architecte Solutions Cloud',
'Stage 6 mois Marseille. Participation à la conception d''architectures cloud pour des projets clients dans les secteurs de la santé et du retail.',1200,
'# 🏗️ Stage Architecte Cloud – CloudNative (Marseille)
**Cloud Architecture | Well-Architected | Terraform | Multi-cloud**
📍 *Marseille*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous participerez à la conception d''architectures cloud pour des projets stratégiques clients en vous appuyant sur les frameworks Well-Architected des trois grands cloud providers.

## 🎯 Missions
- Participation aux ateliers de définition d''architecture
- Rédaction des Architecture Decision Records (ADR)
- Proof of Concept sur des nouvelles technologies
- Évaluation des architectures existantes (Well-Architected Review)
- Présentation des recommandations aux clients

## 🧰 Outils
- AWS, Azure, GCP
- Terraform, Pulumi
- Draw.io, Confluence (documentation)
- AWS Well-Architected Tool

## 👤 Profil recherché
- Bac+5 cloud, systèmes ou informatique
- AWS, Azure ou GCP certifié ou en cours
- Curiosité intellectuelle et bon sens',
4),

('2025-04-15','2025-10-15',48.573405,7.752111,'Stage Ingénieur Kubernetes & Service Mesh',
'Stage 6 mois Strasbourg. Déploiement et administration de clusters Kubernetes multi-tenant avec mise en place de service mesh Istio.',1150,
'# ⚙️ Stage Kubernetes & Istio – CloudNative (Strasbourg)
**Kubernetes | Istio | Helm | GitOps**
📍 *Strasbourg*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous travaillerez sur la mise en place de clusters Kubernetes multi-tenant avec service mesh Istio pour des clients ayant des exigences élevées en matière de sécurité et d''observabilité.

## 🎯 Missions
- Déploiement et configuration de clusters EKS/AKS
- Mise en place d''Istio (mTLS, traffic management, observabilité)
- Gestion des releases avec Helm et ArgoCD
- Politiques réseau et sécurité (OPA Gatekeeper)
- Troubleshooting et optimisation

## 🧰 Stack technique
- Kubernetes, Istio, Linkerd
- Helm, ArgoCD, Kustomize
- OPA Gatekeeper, Falco
- Kiali, Jaeger

## 👤 Profil recherché
- Bac+5 DevOps, SRE ou systèmes
- Kubernetes intermédiaire
- Linux avancé',
4),

('2025-05-15','2025-11-15',49.258329,4.031696,'Stage Ingénieur CI/CD & Automatisation',
'Stage 6 mois Reims. Mise en place et amélioration des pipelines CI/CD de clients dans l''industrie pharmaceutique : automatisation, tests et conformité.',1100,
'# 🔄 Stage CI/CD & Automatisation – CloudNative (Reims)
**GitLab CI | Jenkins | SonarQube | Ansible**
📍 *Reims*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous automatiserez les pipelines de livraison logicielle de clients dans l''industrie pharmaceutique, avec des contraintes de traçabilité et de conformité 21 CFR Part 11.

## 🎯 Missions
- Conception et mise en place de pipelines CI/CD (GitLab CI)
- Intégration des contrôles de qualité (SonarQube, tests)
- Automatisation de la configuration (Ansible)
- Mise en place de la traçabilité et des audits
- Documentation des processus

## 🧰 Stack technique
- GitLab CI, Jenkins
- SonarQube, Nexus
- Ansible, Terraform
- Docker, Kubernetes

## 👤 Profil recherché
- Bac+4/5 DevOps ou informatique
- CI/CD et Docker
- Rigueur et sens de la documentation',
4),

-- ============================================================
-- CREDIT PARTENAIRES (id_entreprise = 5) — offres 84-86
-- ============================================================

('2025-04-01','2025-09-30',47.081013,2.398782,'Stage Data Analyst – Performance Commerciale',
'Stage 6 mois Bourges. Analyse des performances commerciales du réseau d''agences, construction d''indicateurs et aide à la décision pour la direction commerciale.',1000,
'# 📊 Stage Data Analyst Commercial – Crédit Partenaires
**Excel | Power BI | SQL | CRM**
📍 *Bourges – Direction Commerciale*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez la Direction Commerciale pour analyser les performances du réseau de 45 agences et construire des outils d''aide à la décision.

## 🎯 Missions
- Extraction et analyse des données de performance (CRM, SI)
- Construction de tableaux de bord Power BI
- Analyse des écarts objectifs/réalisé par agence et par produit
- Préparation des comités commerciaux mensuels
- Recommandations d''actions correctives

## Compétences développées
- Analyse de la performance commerciale
- Maîtrise de Power BI et Excel
- Connaissance des produits bancaires
- Communication avec des décideurs

## 👤 Profil recherché
- Bac+4/5 banque, finance ou data
- Excel et Power BI
- Aisance relationnelle',
5),

('2025-05-01','2025-10-31',47.081013,2.398782,'Stage Chargé de Conformité & Compliance Bancaire',
'Stage 6 mois Bourges. Participation aux travaux de conformité réglementaire (LCB-FT, MIF II, RGPD) et au suivi des contrôles internes.',1050,
'# ⚖️ Stage Conformité Bancaire – Crédit Partenaires
**LCB-FT | MIF II | Conformité | Contrôle interne**
📍 *Bourges – Direction Conformité*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous assisterez la Direction de la Conformité dans ses travaux de veille réglementaire et de contrôle du respect des normes bancaires.

## 🎯 Missions
- Veille réglementaire (ACPR, AMF, BCE)
- Participation aux contrôles LCB-FT (LAB/LAT)
- Mise à jour des procédures internes
- Suivi du plan de contrôle permanent
- Formation des collaborateurs aux nouvelles réglementations

## Compétences développées
- Réglementation bancaire et financière
- Contrôle interne
- Rédaction de procédures
- Rigueur et confidentialité

## 👤 Profil recherché
- Bac+4/5 droit, compliance ou finance
- Intérêt pour la réglementation bancaire
- Rigueur et discrétion',
5),

('2025-06-01','2025-11-30',47.081013,2.398782,'Stage Marketing Bancaire & Communication Client',
'Stage 6 mois Bourges. Contribution aux campagnes marketing du réseau d''agences et développement de la communication multicanal auprès des clients.',950,
'# 📢 Stage Marketing Bancaire – Crédit Partenaires
**Marketing | Communication | CRM | Campagnes**
📍 *Bourges – Direction Marketing*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez la Direction Marketing pour concevoir et déployer des campagnes ciblées auprès des clients particuliers et professionnels de la banque.

## 🎯 Missions
- Segmentation de la base clients (CRM)
- Conception de campagnes emailing et SMS
- Suivi et analyse des performances (taux d''ouverture, conversion)
- Contribution à la stratégie réseaux sociaux
- Coordination avec les agences de communication

## Compétences développées
- Marketing bancaire et CRM
- Communication multicanal
- Analyse des performances marketing
- Connaissance des produits bancaires

## 👤 Profil recherché
- Bac+4/5 marketing ou communication
- Sens créatif et analytique
- Aisance rédactionnelle',
5),

-- ============================================================
-- FINSTART CONSEIL (id_entreprise = 6) — offres 87-89
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Analyste Private Equity & LBO',
'Stage 6 mois Paris. Analyse de dossiers d''investissement en private equity, construction de modèles LBO et participation aux due diligences.',1500,
'# 📈 Stage Analyste Private Equity – FinStart Conseil
**LBO | Private Equity | Modélisation | Due Diligence**
📍 *Paris – 8ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous participerez à des missions d''analyse et de conseil en private equity, de la sourcing de cibles à la clôture des transactions.

## 🎯 Missions
- Construction de modèles LBO (Excel avancé)
- Analyse financière approfondie des cibles
- Participation aux due diligences (financière, stratégique)
- Rédaction de mémos d''investissement
- Veille sectorielle et identification de cibles

## Compétences développées
- Modélisation LBO et valorisation
- Processus d''investissement en PE
- Analyse financière avancée
- Réseau dans le monde financier

## 👤 Profil recherché
- Bac+5 grande école de commerce ou d''ingénieurs
- Excel très avancé
- Résistance au stress
- Intérêt pour l''investissement',
6),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Analyste Restructuring & Retournement',
'Stage 6 mois Paris. Accompagnement d''entreprises en difficulté dans leur restructuration financière et opérationnelle.',1400,
'# 🔄 Stage Analyste Restructuring – FinStart Conseil
**Restructuring | Plan de continuation | Trésorerie | Négociation**
📍 *Paris – 8ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des PME en difficulté dans leur processus de restructuration financière (procédures collectives, plans de continuation, négociation avec les créanciers).

## 🎯 Missions
- Diagnostic financier d''urgence (cash burn, liquidité)
- Construction de plans de trésorerie prévisionnels
- Analyse des options de restructuration
- Accompagnement dans les procédures amiables (mandat ad hoc, conciliation)
- Interface avec les créanciers et actionnaires

## Compétences développées
- Gestion de crise financière
- Droit des entreprises en difficulté
- Négociation sous pression
- Analyse financière en conditions dégradées

## 👤 Profil recherché
- Bac+5 finance ou droit des affaires
- Résistance au stress
- Esprit analytique rapide',
6),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Analyste Immobilier & Financement',
'Stage 6 mois Paris. Conseil en financement de projets immobiliers complexes (promotion, investissement) et structuration des montages financiers.',1350,
'# 🏢 Stage Analyste Immobilier – FinStart Conseil
**Immobilier | Financement de projet | Valorisation | CRE**
📍 *Paris – 8ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous interviendrez sur des missions de conseil en financement de projets immobiliers commerciaux et résidentiels.

## 🎯 Missions
- Modélisation financière de projets immobiliers (DCF, cash flows)
- Structuration des financements (dette, fonds propres, mezzanine)
- Analyse des marchés immobiliers locaux
- Rédaction de mémorandums de financement
- Relation avec les banques et les investisseurs

## Compétences développées
- Finance immobilière
- Structuration de financements complexes
- Connaissance des marchés immobiliers
- Modélisation financière avancée

## 👤 Profil recherché
- Bac+5 finance ou école avec spécialisation immobilier
- Excel modélisation
- Intérêt pour l''immobilier',
6),

-- ============================================================
-- ASSURPRO (id_entreprise = 7) — offres 90-92
-- ============================================================

('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Actuariat & Tarification',
'Stage 6 mois Bordeaux. Participation aux travaux de tarification des risques professionnels et modélisation actuarielle pour le portefeuille RC Pro.',1200,
'# 📐 Stage Actuariat – AssurPro (Bordeaux)
**R | Python | Actuariat | Tarification | SAS**
📍 *Bordeaux*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe actuarielle pour développer et affiner les modèles de tarification des contrats de responsabilité professionnelle.

## 🎯 Missions
- Analyse statistique du portefeuille sinistres
- Construction et calibration de modèles GLM (fréquence/coût)
- Tests de significativité des variables tarifaires
- Backtesting et validation des modèles
- Rédaction de notes actuarielles

## 🧰 Outils
- R (ou Python), SAS
- Excel (tableaux croisés, modèles)
- SQL (extraction des données)

## 👤 Profil recherché
- Master 2 actuariat, statistiques ou mathématiques appliquées
- R ou Python statistiques
- Rigueur mathématique',
7),

('2025-05-01','2025-10-31',43.604652,1.444209,'Stage Chargé de Mission Cyber-Assurance',
'Stage 6 mois Toulouse. Développement de l''offre cyber-assurance d''AssurPro : analyse des risques cyber des clients, tarification et gestion des sinistres cyber.',1100,
'# 🔐 Stage Cyber-Assurance – AssurPro
**Cyber-risques | Assurance | Analyse de risques | Sinistres**
📍 *Toulouse*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous participerez au développement de l''offre cyber-assurance d''AssurPro, un marché en forte croissance.

## 🎯 Missions
- Évaluation de la maturité cyber des clients (questionnaires, outils)
- Participation à la tarification des risques cyber
- Gestion des premiers dossiers de sinistres cyber
- Veille sur les tendances du marché cyber-assurance
- Contribution au développement de l''offre produit

## Compétences développées
- Techniques d''assurance cyber
- Évaluation des risques numériques
- Relation avec les DSI clients
- Veille marché assurance

## 👤 Profil recherché
- Bac+4/5 assurance, cybersécurité ou risques
- Intérêt pour la cybersécurité et l''assurance
- Curiosité et adaptabilité',
7),

('2025-06-01','2025-11-30',43.604652,1.444209,'Stage Chargé de Développement Commercial',
'Stage 6 mois Toulouse. Développement du portefeuille de clients professionnels d''AssurPro sur la région Occitanie.',1000,
'# 🤝 Stage Développement Commercial – AssurPro
**Prospection | Négociation | Assurance | B2B**
📍 *Toulouse – Occitanie*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez l''équipe commerciale pour développer le portefeuille de clients professionnels sur la région Occitanie.

## 🎯 Missions
- Identification et qualification de prospects (artisans, PME, professions libérales)
- Prise de rendez-vous et réalisation de démos
- Élaboration et négociation des propositions commerciales
- Suivi et relance des prospects
- Reporting commercial hebdomadaire

## Compétences développées
- Techniques de vente B2B
- Connaissance des produits d''assurance professionnelle
- Gestion d''un pipeline commercial
- Résilience et persévérance

## 👤 Profil recherché
- Bac+3 à Bac+5 commerce ou assurance
- Goût pour le challenge commercial
- Mobilité sur la région Occitanie',
7),

-- ============================================================
-- AGENCE HORIZON (id_entreprise = 8) — offres 93-95
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Social Media Manager',
'Stage 6 mois Paris. Animation des réseaux sociaux de clients grands comptes du secteur luxe et beauté, création de contenus et gestion des communautés.',1050,
'# 📱 Stage Social Media Manager – Agence Horizon
**Social Media | Content | Analytics | Luxe**
📍 *Paris – 9ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous animerez les réseaux sociaux de marques prestigieuses dans les secteurs du luxe, de la beauté et de la gastronomie.

## 🎯 Missions
- Planification et publication de contenus (Instagram, TikTok, LinkedIn)
- Community management (modération, réponses)
- Coordination avec les équipes créatives et photo
- Analyse des performances et reporting mensuel
- Veille sur les tendances des plateformes

## Compétences développées
- Community management pour marques premium
- Maîtrise des outils de planification (Hootsuite, Sprout Social)
- Analytics social media
- Compréhension des codes du luxe

## 👤 Profil recherché
- Bac+4/5 communication ou marketing digital
- Maîtrise des réseaux sociaux
- Sensibilité aux univers luxe/beauté',
8),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Chargé de Production Publicitaire',
'Stage 6 mois Paris. Coordination de la production de contenus publicitaires (photo, vidéo, print) pour des campagnes grands comptes.',1050,
'# 🎬 Stage Production Publicitaire – Agence Horizon
**Production | Tournage | Print | Coordination**
📍 *Paris – 9ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous coordonnerez la production de contenus publicitaires (shootings photo, tournages vidéo, fabrication print) pour des campagnes grandes marques.

## 🎯 Missions
- Coordination des shootings photo et tournages vidéo
- Gestion des prestataires (photographes, réalisateurs, studios)
- Suivi de la fabrication print (imprimeurs, sérigraphes)
- Gestion des délais et des budgets de production
- Interface entre équipes créatives et techniques

## Compétences développées
- Logistique de production publicitaire
- Gestion de prestataires créatifs
- Organisation et rigueur
- Connaissance des formats publicitaires

## 👤 Profil recherché
- Bac+4/5 communication, production ou cinéma
- Sens de l''organisation
- Intérêt pour la publicité et la créativité',
8),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Analyste Data & Mesure des Campagnes',
'Stage 6 mois Paris. Mesure de l''efficacité des campagnes de communication et construction d''outils de reporting pour les clients de l''agence.',1100,
'# 📊 Stage Data & Mesure – Agence Horizon
**Data | Attribution | ROI | Reporting**
📍 *Paris – 9ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous contribuerez à développer la culture data de l''agence en construisant des outils de mesure et d''analyse des performances des campagnes.

## 🎯 Missions
- Mise en place des plans de taggage et de tracking
- Construction de tableaux de bord de performance (Looker Studio)
- Analyse de l''attribution multi-touch
- Rédaction des bilans de campagne
- Présentation des résultats aux clients

## Compétences développées
- Mesure d''efficacité publicitaire
- Maîtrise des outils analytics
- Attribution et ROI des campagnes
- Communication data aux non-spécialistes

## 👤 Profil recherché
- Bac+4/5 marketing digital, data ou statistiques
- GA4, Google Ads, Meta Ads
- Curiosité analytique',
8),

-- ============================================================
-- INFLUENCEMEDIA (id_entreprise = 9) — offres 96-97
-- ============================================================

('2025-04-01','2025-09-30',45.760000,4.841388,'Stage Chargé de Partenariats Marques & Créateurs',
'Stage 6 mois Lyon. Développement et gestion des partenariats entre marques clientes et créateurs de contenu dans les secteurs food, voyage et lifestyle.',1000,
'# 🤝 Stage Partenariats – InfluenceMedia
**Partenariats | Négociation | Créateurs | Marques**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez et gérerez les partenariats entre les marques clientes de l''agence et les créateurs de contenu les plus pertinents.

## 🎯 Missions
- Identification de nouveaux créateurs (Instagram, YouTube, TikTok)
- Négociation des conditions de partenariat
- Suivi des collaborations et validation des contenus
- Construction d''une base de données de créateurs
- Reporting des performances des partenariats

## Compétences développées
- Négociation commerciale
- Connaissance de l''écosystème créateurs
- Gestion de partenariats
- Réseau dans le monde de l''influence

## 👤 Profil recherché
- Bac+3 à Bac+5 commerce, communication ou marketing
- Réseau dans l''influence
- Aisance relationnelle',
9),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Vidéaste & Créateur de Contenu',
'Stage 6 mois Lyon. Création de contenus vidéo courts (Reels, TikTok, YouTube Shorts) pour des marques lifestyle et food de l''agence.',1000,
'# 🎥 Stage Vidéaste – InfluenceMedia
**Vidéo | Montage | Réseaux sociaux | Storytelling**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous créerez des contenus vidéo courts et engageants pour les marques clientes de l''agence sur les plateformes TikTok, Instagram et YouTube.

## 🎯 Missions
- Tournage et réalisation de courtes vidéos
- Montage vidéo (CapCut, Premiere Pro, Final Cut)
- Adaptation des contenus aux formats et codes de chaque plateforme
- Suivi des tendances et adaptation créative
- Reporting des performances vidéo

## Compétences développées
- Production vidéo mobile et studio
- Montage pour les réseaux sociaux
- Connaissance des algorithmes vidéo
- Storytelling court format

## 👤 Profil recherché
- Formation vidéo, audiovisuel ou communication
- Maîtrise du montage vidéo
- Portfolio de créations
- Sens créatif et réactivité',
9),

-- ============================================================
-- COM'EVENT (id_entreprise = 10) — offres 98-99
-- ============================================================

('2025-04-01','2025-09-30',44.837789,-0.579180,'Stage Chargé de Communication Événementielle',
'Stage 6 mois Bordeaux. Conception et déploiement des stratégies de communication autour des événements organisés par l''agence.',1000,
'# 📣 Stage Communication Événementielle – Com''Event
**Communication | Événementiel | Réseaux sociaux | Relations presse**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous concevrez et déploierez les stratégies de communication pour les événements de l''agence : avant, pendant et après.

## 🎯 Missions
- Création des contenus de communication (site, réseaux sociaux)
- Relations presse et gestion des accréditations médias
- Couverture live des événements (réseaux sociaux, photos)
- Gestion de la communication de crise événementielle
- Bilan communication post-événement

## Compétences développées
- Communication événementielle 360°
- Relations presse
- Gestion de contenu en temps réel
- Organisation et réactivité

## 👤 Profil recherché
- Bac+4/5 communication, journalisme ou événementiel
- Maîtrise des réseaux sociaux
- Disponibilité lors des événements',
10),

('2025-05-01','2025-10-31',44.837789,-0.579180,'Stage Chargé de Développement Commercial Événementiel',
'Stage 6 mois Bordeaux. Prospection et développement du portefeuille clients de l''agence sur les segments corporate et institutionnel.',1000,
'# 💼 Stage Commercial – Com''Event
**Prospection | Appels d''offres | Événementiel | B2B**
📍 *Bordeaux – Chartrons*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous développerez le portefeuille clients de l''agence en identifiant de nouvelles opportunités dans les secteurs corporate et institutionnel.

## 🎯 Missions
- Identification et qualification de prospects
- Participation à la réponse aux appels d''offres
- Réalisation de présentations et pitches commerciaux
- Suivi des relations avec les clients existants
- Veille concurrentielle et sectorielle

## Compétences développées
- Développement commercial B2B
- Appels d''offres événementiels
- Présentation et persuasion
- Réseau dans le secteur événementiel

## 👤 Profil recherché
- Bac+3 à Bac+5 commerce ou événementiel
- Sens commercial et persévérance
- Aisance à l''oral',
10),

-- ============================================================
-- INGENIA TECH (id_entreprise = 11) — offres 100-103
-- ============================================================

('2025-04-01','2025-09-30',43.604652,1.444209,'Stage Ingénieur Matériaux & Procédés',
'Stage 6 mois Toulouse. Caractérisation mécanique de matériaux composites pour applications aéronautiques et rédaction de fiches matériaux.',1250,
'# 🔬 Stage Ingénieur Matériaux – Ingénia Tech
**Composites | Caractérisation | CFRP | Essais mécaniques**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous caractériserez mécaniquement des matériaux composites à matrice polymère renforcée de fibres de carbone (CFRP) pour des applications de structure aéronautique.

## 🎯 Missions
- Réalisation d''essais mécaniques (traction, compression, flexion, fatigue)
- Analyse des résultats et rédaction des fiches matériaux
- Comparaison avec les bases de données matériaux (ESDU, MIL-HDBK)
- Participation aux campagnes d''essais
- Rédaction de rapports techniques

## 🧰 Outils
- Bancs d''essais (MTS, Instron)
- DIC (Digital Image Correlation)
- Python ou MATLAB (post-traitement)
- CATIA V5 (maquettes numériques)

## 👤 Profil recherché
- Master 2 ou ingénieur matériaux, mécanique ou aéronautique
- Bases en mécanique des matériaux
- Rigueur expérimentale',
11),

('2025-05-01','2025-10-31',43.604652,1.444209,'Stage Ingénieur Acoustique & Vibrations',
'Stage 6 mois Toulouse. Réalisation d''analyses vibratoires et acoustiques sur des sous-systèmes mécaniques aéronautiques.',1300,
'# 🔊 Stage Ingénieur Acoustique – Ingénia Tech
**NVH | Vibrations | Ansys | Acquisition de données**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous réaliserez des analyses vibratoires et acoustiques (NVH) sur des composants de structures aéronautiques pour prédire et réduire les niveaux de bruit et de vibration.

## 🎯 Missions
- Réalisation de mesures vibratoires sur bancs d''essais
- Analyses modales expérimentales (EMA)
- Calculs vibro-acoustiques (FEM, BEM)
- Corrélation mesures/calculs
- Rédaction des rapports et notes de calcul

## 🧰 Outils
- ANSYS (Modal, Harmonic, Random Vibrations)
- LMS SCADAS (acquisition)
- MATLAB (post-traitement)
- Python

## 👤 Profil recherché
- Master 2 ou ingénieur mécanique, acoustique ou vibrations
- Bases en mécanique vibratoire
- Appétence pour l''expérimentation',
11),

('2025-06-01','2025-11-30',43.604652,1.444209,'Stage Ingénieur Méthodes & Industrialisation',
'Stage 6 mois Toulouse. Préparation de la mise en production de nouvelles pièces aéronautiques : gammes d''usinage, outillages et procédés.',1200,
'# 🏭 Stage Méthodes & Industrialisation – Ingénia Tech
**Industrialisation | Gammes | DFM | CAO**
📍 *Toulouse – Blagnac*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous préparerez l''industrialisation de nouvelles pièces mécaniques aéronautiques : définition des gammes d''usinage, conception des outillages et qualification des procédés.

## 🎯 Missions
- Analyse de la définition produit (cotation fonctionnelle, tolérances)
- Rédaction des gammes d''usinage et de montage
- Conception des outillages de fabrication (CATIA V5)
- Qualification des procédés de fabrication
- Gestion du REX (retours d''expérience)

## 🧰 Outils
- CATIA V5 (conception outillages)
- ERP (SAP ou équivalent)
- MS Project (planning)
- Excel (suivi qualité)

## 👤 Profil recherché
- Master 2 ou ingénieur génie mécanique ou productique
- CATIA V5 maîtrisé
- Rigueur et méthode',
11),

('2025-04-15','2025-10-15',48.856613,2.352222,'Stage Ingénieur Systèmes & Architecture',
'Stage 6 mois Paris. Définition et validation de l''architecture système d''un équipement embarqué pour l''industrie de défense.',1350,
'# 🛸 Stage Ingénieur Systèmes – Ingénia Tech (Paris)
**Ingénierie système | MBSE | SysML | Résilience**
📍 *Paris – La Défense*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous contribuerez à la définition et à la validation de l''architecture système d''un équipement embarqué pour l''industrie de défense, en appliquant les méthodes d''ingénierie système (MBSE).

## 🎯 Missions
- Analyse des exigences système (DOORS NG)
- Modélisation de l''architecture en SysML (Capella, MagicDraw)
- Analyse des modes de défaillance (AMDEC)
- Participation aux revues d''ingénierie (PDR, CDR)
- Rédaction de spécifications techniques

## 🧰 Outils
- Capella / Eclipse Modeling (SysML)
- IBM DOORS NG (gestion exigences)
- MS Office (rapports, présentations)
- CATIA V5 (interface conception)

## 👤 Profil recherché
- Master 2 ou ingénieur systèmes, aéronautique ou défense
- Bases en ingénierie système
- Rigueur et capacité d''abstraction',
11),

-- ============================================================
-- GREENBUILD (id_entreprise = 12) — offres 104-106
-- ============================================================

('2025-04-01','2025-09-30',45.188529,5.724524,'Stage Ingénieur Réseaux Électriques & ENR',
'Stage 6 mois Grenoble. Dimensionnement de systèmes de production d''énergies renouvelables (photovoltaïque, éolien) pour des bâtiments tertiaires.',1150,
'# ☀️ Stage Ingénieur ENR – GreenBuild
**Photovoltaïque | Éolien | PVsyst | Stockage**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous dimensionnerez des installations de production d''énergies renouvelables (solaire PV, éolien petit format) pour des bâtiments à énergie positive.

## 🎯 Missions
- Dimensionnement des installations photovoltaïques (PVsyst)
- Études d''intégration architecturale (BIPV)
- Calculs de rentabilité et de temps de retour sur investissement
- Dimensionnement des systèmes de stockage (batteries)
- Dossiers de demande de raccordement

## 🧰 Outils
- PVsyst, PVSOL
- SketchUp, AutoCAD
- Excel (bilans financiers)
- Revit (BIM intégration)

## 👤 Profil recherché
- Master 2 ou ingénieur énergie, électrotechnique ou génie civil
- Intérêt pour les ENR
- Notions de PVsyst appréciées',
12),

('2025-05-01','2025-10-31',45.188529,5.724524,'Stage Ingénieur Eau & Réseaux CVC',
'Stage 6 mois Grenoble. Dimensionnement des réseaux de plomberie, de ventilation et de climatisation pour des projets de construction tertiaire et résidentielle.',1100,
'# 💧 Stage Ingénieur CVC/Plomberie – GreenBuild
**CVC | Plomberie | Dimensionnement | AutoCAD**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous réaliserez les études de conception des réseaux CVC (chauffage, ventilation, climatisation) et de plomberie pour des projets de construction tertiaire et résidentielle.

## 🎯 Missions
- Dimensionnement des réseaux de chauffage et de refroidissement
- Calculs de charges thermiques et aérauliques
- Dimensionnement des installations de ventilation (VMC, double flux)
- Rédaction des notes de calcul et des plans
- Coordination avec les autres corps d''état

## 🧰 Outils
- AutoCAD, Revit MEP
- Pleiades, DesignBuilder
- Covadis (réseaux)
- Excel (dimensionnement)

## 👤 Profil recherché
- Master 2 ou ingénieur génie civil, énergie ou thermique
- Bases en CVC
- Notions de Revit MEP appréciées',
12),

('2025-06-01','2025-11-30',45.188529,5.724524,'Stage Chargé de Mission Rénovation Énergétique',
'Stage 6 mois Grenoble. Accompagnement de copropriétés et de bâtiments tertiaires dans leurs projets de rénovation énergétique et d''obtention d''aides financières.',1050,
'# 🏠 Stage Rénovation Énergétique – GreenBuild
**Rénovation | MaPrimeRénov | DPE | CEE**
📍 *Grenoble – Europole*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des copropriétés et des bâtiments tertiaires dans leurs projets de rénovation énergétique, du diagnostic initial à la réception des travaux.

## 🎯 Missions
- Réalisation d''audits énergétiques (DPE, audit global)
- Définition des bouquets de travaux optimaux
- Montage des dossiers d''aides (MaPrimeRénov, CEE, subventions)
- Suivi des travaux et réception
- Mesure des gains énergétiques post-travaux

## Compétences développées
- Audit énergétique et DPE
- Aides financières à la rénovation
- Gestion de projet de rénovation
- Relation avec les maîtres d''ouvrage

## 👤 Profil recherché
- Master 2 génie civil, énergie ou environnement
- Intérêt pour la rénovation énergétique
- Aisance relationnelle',
12),

-- ============================================================
-- ELECTRO INGENIERIE (id_entreprise = 13) — offres 107-109
-- ============================================================

('2025-04-01','2025-09-30',47.218371,-1.553621,'Stage Ingénieur IoT Industriel',
'Stage 6 mois Nantes. Conception et déploiement d''une solution IoT pour la télésurveillance d''équipements industriels dans le secteur de l''eau.',1200,
'# 📡 Stage IoT Industriel – Électro Ingénierie
**IoT | MQTT | LoRaWAN | Node-RED | Edge**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous concevrez et déploierez une solution IoT permettant la télésurveillance et la maintenance prédictive d''équipements de traitement des eaux.

## 🎯 Missions
- Sélection et intégration des capteurs (pression, débit, niveau)
- Développement du firmware embarqué (C, MicroPython)
- Configuration du protocole LoRaWAN
- Développement du tableau de bord (Node-RED, Grafana)
- Tests et déploiement sur site

## 🧰 Stack technique
- C, MicroPython (edge)
- LoRaWAN, MQTT
- Node-RED, InfluxDB, Grafana
- AWS IoT Core ou Azure IoT Hub

## 👤 Profil recherché
- Master 2 ou ingénieur systèmes embarqués ou électronique
- C ou Python
- Curiosité pour le hardware et les protocoles IoT',
13),

('2025-05-01','2025-10-31',47.218371,-1.553621,'Stage Ingénieur Robotique Industrielle',
'Stage 6 mois Nantes. Programmation et intégration de robots industriels (Kuka, Fanuc) pour des lignes de production agroalimentaires.',1150,
'# 🤖 Stage Robotique Industrielle – Électro Ingénierie
**Robotique | Kuka | Fanuc | Vision artificielle**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous programmerez et intégrerez des robots industriels pour automatiser des tâches de manutention et d''assemblage sur des lignes de production agroalimentaires.

## 🎯 Missions
- Programmation de robots Kuka (KRL) et Fanuc (TP)
- Intégration de systèmes de vision pour le guidage robot
- Configuration des IHM et de la sécurité machine
- Tests et mise en service sur ligne de production
- Rédaction de la documentation de mise en œuvre

## 🧰 Outils
- Kuka WorkVisual, KUKA.Sim
- Fanuc ROBOGUIDE
- Vision industrielle (Keyence, Cognex)
- TIA Portal (intégration automate)

## 👤 Profil recherché
- Master 2 ou ingénieur robotique, automatisme ou mécatronique
- Notions de programmation robot
- Terrain et pragmatisme',
13),

('2025-06-01','2025-11-30',47.218371,-1.553621,'Stage Ingénieur Efficacité Énergétique Industrielle',
'Stage 6 mois Nantes. Audit de la consommation énergétique de sites industriels et mise en place de solutions d''économie d''énergie.',1100,
'# ⚡ Stage Efficacité Énergétique – Électro Ingénierie
**Audit énergétique | ISO 50001 | Variateurs | Compensation**
📍 *Nantes – Saint-Herblain*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous réaliserez des audits de consommation énergétique sur des sites industriels et proposerez des plans d''actions pour réduire les coûts énergétiques.

## 🎯 Missions
- Collecte et analyse des données de consommation
- Identification des gisements d''économies (éclairage, moteurs, air comprimé)
- Dimensionnement de solutions techniques (variateurs, condensateurs)
- Calcul du ROI et présentation aux clients industriels
- Accompagnement à la démarche ISO 50001

## Compétences développées
- Audit énergétique industriel
- Techniques d''efficacité énergétique
- Présentation à des décideurs industriels
- Normes ISO 50001

## 👤 Profil recherché
- Master 2 ou ingénieur électrotechnique, énergie ou génie industriel
- Bases en électrotechnique
- Sens de l''analyse',
13),

-- ============================================================
-- AVENIR RH (id_entreprise = 14) — offres 110-111
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Consultant Marque Employeur',
'Stage 6 mois Paris. Développement et déploiement de la stratégie de marque employeur de clients entreprises en tension de recrutement.',1050,
'# 🌟 Stage Marque Employeur – Groupe Avenir RH
**Marque employeur | Communication RH | Réseaux sociaux | Attractivité**
📍 *Paris – 2ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des DRH dans la construction et le déploiement de leur stratégie de marque employeur pour attirer les meilleurs talents.

## 🎯 Missions
- Diagnostic de l''image employeur actuelle
- Définition de la proposition de valeur employeur (EVP)
- Déploiement sur les canaux de communication (LinkedIn, JobBoards)
- Création de contenus (témoignages collaborateurs, vidéos)
- Mesure de l''attractivité et du ROI

## Compétences développées
- Marque employeur et communication RH
- Stratégie de contenu
- Outils de sourcing et d''attraction
- Mesure de l''efficacité RH

## 👤 Profil recherché
- Bac+4/5 RH, communication ou marketing
- Créativité et sens de la communication
- Intérêt pour les enjeux d''attractivité',
14),

('2025-05-01','2025-10-31',44.837789,-0.579180,'Stage Consultant RH Régional',
'Stage 6 mois Bordeaux. Recrutement, accompagnement à la mobilité et conseil RH auprès de PME régionales clientes du cabinet.',1000,
'# 👥 Stage Consultant RH Régional – Groupe Avenir RH (Bordeaux)
**Recrutement | Mobilité | Conseil | PME**
📍 *Bordeaux*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous rejoindrez le bureau de Bordeaux pour accompagner des PME régionales dans leurs besoins RH variés : recrutement, mobilité interne, restructuration.

## 🎯 Missions
- Gestion de missions de recrutement (cadres et non-cadres)
- Accompagnement de collaborateurs en mobilité (outplacement)
- Conseil RH ad hoc auprès des DRH des clients PME
- Animation d''ateliers de recherche d''emploi
- Développement commercial (prospection de nouveaux clients)

## Compétences développées
- Recrutement et conseil RH
- Accompagnement individuel
- Relation client B2B
- Connaissance du tissu économique régional

## 👤 Profil recherché
- Bac+4/5 RH, psychologie ou commerce
- Polyvalence et sens du service
- Mobilité sur la région Aquitaine',
14),

-- ============================================================
-- CONSULTGROUP (id_entreprise = 15) — offres 112-114
-- ============================================================

('2025-04-01','2025-09-30',48.856613,2.352222,'Stage Consultant Innovation & Open Innovation',
'Stage 6 mois Paris. Accompagnement de grandes entreprises dans leur démarche d''open innovation : identification de startups, partenariats et projets pilotes.',1300,
'# 💡 Stage Consultant Innovation – ConsultGroup
**Open Innovation | Startups | Partenariats | Design Thinking**
📍 *Paris – 8ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des grandes entreprises dans le déploiement de leurs programmes d''open innovation : veille, identification de startups partenaires, structuration des collaborations.

## 🎯 Missions
- Veille sur les startups et les nouvelles technologies
- Identification de partenaires innovants pour les clients
- Structuration des partenariats startup/grand groupe
- Animation d''ateliers d''idéation (Design Thinking)
- Suivi des pilotes et des POC

## Compétences développées
- Écosystème startups et innovation
- Méthodes d''innovation (Design Thinking, Lean)
- Gestion de partenariats
- Présentation à des dirigeants

## 👤 Profil recherché
- Bac+5 grande école de commerce ou d''ingénieurs
- Curiosité pour les nouvelles technologies
- Dynamisme et créativité',
15),

('2025-05-01','2025-10-31',48.856613,2.352222,'Stage Consultant Transformation Digitale',
'Stage 6 mois Paris. Accompagnement de PME dans leur transformation numérique : diagnostic, roadmap digitale et gestion du changement.',1250,
'# 💻 Stage Consultant Digital – ConsultGroup
**Transformation digitale | Agilité | Change management | Roadmap**
📍 *Paris – 8ème*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des PME et ETI dans leur transformation numérique, de la définition de la stratégie digitale au déploiement des premiers chantiers.

## 🎯 Missions
- Diagnostic de la maturité numérique (modèle CMMI)
- Définition de la roadmap de transformation digitale
- Accompagnement au changement (formation, communication)
- Suivi de la mise en œuvre des priorités
- Mesure des gains et reporting

## Compétences développées
- Transformation digitale
- Gestion du changement
- Conduite de projets SI
- Communication avec des non-techniciens

## 👤 Profil recherché
- Bac+5 management, ingénierie ou grande école
- Intérêt pour le digital
- Pédagogie et écoute',
15),

('2025-06-01','2025-11-30',45.760000,4.841388,'Stage Consultant Supply Chain & Opérations',
'Stage 6 mois Lyon. Diagnostic et optimisation des chaînes logistiques de clients industriels et de distribution.',1200,
'# 🔗 Stage Consultant Supply Chain – ConsultGroup (Lyon)
**Supply Chain | Lean | S&OP | Optimisation**
📍 *Lyon*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous réaliserez des diagnostics et des missions d''optimisation des chaînes logistiques pour des clients dans l''industrie et la grande distribution.

## 🎯 Missions
- Cartographie de la chaîne logistique end-to-end
- Identification des ruptures et des gaspillages
- Optimisation des stocks et des délais
- Mise en place de processus S&OP
- Accompagnement à la mise en œuvre des actions

## Compétences développées
- Supply chain management
- Lean et amélioration continue
- Gestion de stocks et prévisions
- Présentation à des directeurs opérationnels

## 👤 Profil recherché
- Bac+5 ingénierie, logistique ou grande école
- Approche terrain
- Sens de l''analyse',
15),

-- ============================================================
-- ECOSERVICES (id_entreprise = 16) — offres 115-117
-- ============================================================

('2025-04-01','2025-09-30',45.760000,4.841388,'Stage Chargé de Mission Eau & Biodiversité',
'Stage 6 mois Lyon. Accompagnement d''entreprises dans l''évaluation et la réduction de leurs impacts sur les ressources en eau et la biodiversité.',1000,
'# 🌊 Stage Eau & Biodiversité – EcoServices
**Biodiversité | TNS | Eau | Empreinte naturelle**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des entreprises dans la mesure et la réduction de leurs impacts sur les ressources en eau et la biodiversité, un enjeu croissant dans le cadre de la CSRD.

## 🎯 Missions
- Diagnostic de l''empreinte eau et biodiversité
- Application des référentiels TNS (The Natural Step)
- Construction de plans d''action eau et biodiversité
- Reporting CSRD (indicateurs eau et biodiversité)
- Sensibilisation des équipes

## Compétences développées
- Enjeux eau et biodiversité en entreprise
- Référentiels et indicateurs environnementaux
- Conseil en développement durable
- Rédaction de rapports environnementaux

## 👤 Profil recherché
- Master 2 environnement, écologie ou développement durable
- Sensibilité aux enjeux naturalistes
- Qualités rédactionnelles',
16),

('2025-05-01','2025-10-31',45.760000,4.841388,'Stage Chef de Projet Transition Énergétique',
'Stage 6 mois Lyon. Accompagnement d''entreprises dans la définition et la mise en œuvre de leurs plans de transition énergétique.',1050,
'# ⚡ Stage Transition Énergétique – EcoServices
**Énergie | Efficacité | ENR | Transition**
📍 *Lyon – Presqu''île*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des entreprises de tailles variées dans la définition de leur stratégie de transition énergétique : efficacité, ENR, flexibilité.

## 🎯 Missions
- Audit de la consommation énergétique des entreprises
- Identification des leviers de réduction (efficacité, ENR)
- Construction des plans de transition énergétique
- Accompagnement dans les appels d''offres d''électricité verte (PPA)
- Reporting et suivi des indicateurs

## Compétences développées
- Gestion de projet de transition énergétique
- Connaissance des technologies ENR
- Analyse coûts-bénéfices
- Conseil en stratégie durable

## 👤 Profil recherché
- Master 2 énergie, environnement ou ingénierie
- Intérêt pour la transition énergétique
- Sens de l''analyse',
16),

('2025-06-01','2025-11-30',48.856613,2.352222,'Stage Consultant Finance Verte & Green Finance',
'Stage 6 mois Paris. Accompagnement d''entreprises dans l''accès aux financements verts (green bonds, prêts à impact) et la structuration de leur stratégie de financement durable.',1100,
'# 💚 Stage Finance Verte – EcoServices (Paris)
**Green Finance | Green Bonds | ESG | Impact**
📍 *Paris*
⏳ *Durée : 6 mois*

## 📝 Présentation du stage
Vous accompagnerez des entreprises dans leur accès aux instruments de finance verte et dans la structuration de leur reporting ESG à destination des investisseurs.

## 🎯 Missions
- Veille sur les produits de finance verte (green bonds, sustainability-linked loans)
- Accompagnement dans la préparation des dossiers de financement
- Structuration des indicateurs ESG pour les investisseurs
- Rédaction des frameworks green bonds (GBP, SBP)
- Présentation aux investisseurs et financeurs

## Compétences développées
- Finance verte et marchés de capitaux durables
- ESG et reporting investisseur
- Analyse financière
- Communication avec des acteurs financiers

## 👤 Profil recherché
- Master 2 finance, développement durable ou grande école
- Intérêt pour la finance et l''ESG
- Qualités rédactionnelles et analytiques',
16);

-- ============================================================
-- COMPETENCES DEMANDÉES POUR LES NOUVELLES OFFRES
-- ============================================================

INSERT INTO Competence_Offre (id_offre, id_competence) VALUES
-- Nexatech nouvelles offres (60-67)
-- 60 Angular
(60,11),(60,2),(60,15),(60,20),
-- 61 Django
(61,1),(61,5),(61,6),(61,10),
-- 62 Java Spring
(62,3),(62,6),(62,14),(62,16),
-- 63 UX/UI
(63,20),(63,23),(63,22),(63,21),
-- 64 C# .NET
(64,3),(64,4),(64,6),(64,15),
-- 65 Go
(65,2),(65,12),(65,15),(65,16),
-- 66 Symfony
(66,5),(66,13),(66,6),(66,15),
-- 67 React Native Expo
(67,2),(67,9),(67,15),(67,23),

-- DataSphere nouvelles offres (68-73)
-- 68 Data Quality
(68,1),(68,6),(68,7),(68,17),
-- 69 Computer Vision
(69,1),(69,17),(69,15),(69,25),
-- 70 Streaming
(70,1),(70,6),(70,7),(70,17),
-- 71 BI Finance
(71,6),(71,1),(71,25),(71,19),
-- 72 E-commerce
(72,1),(72,6),(72,25),(72,23),
-- 73 LLM RAG
(73,1),(73,17),(73,2),(73,6),

-- CyberShield nouvelles offres (74-78)
-- 74 Threat Intel
(74,18),(74,16),(74,1),(74,25),
-- 75 Sécurité Réseaux
(75,18),(75,16),(75,15),(75,6),
-- 76 Dev outil sécurité
(76,1),(76,15),(76,18),(76,6),
-- 77 Malware Reverse
(77,18),(77,4),(77,16),(77,1),
-- 78 RGPD
(78,18),(78,19),(78,22),(78,25),

-- CloudNative nouvelles offres (79-83)
-- 79 FinOps
(79,14),(79,6),(79,16),(79,25),
-- 80 GCP BigQuery
(80,14),(80,6),(80,16),(80,1),
-- 81 Architecte Cloud
(81,14),(81,16),(81,15),(81,19),
-- 82 Kubernetes Istio
(82,14),(82,16),(82,15),(82,18),
-- 83 CI/CD Pharma
(83,14),(83,15),(83,16),(83,6),

-- Crédit Partenaires nouvelles offres (84-86)
-- 84 Data Analyst commercial
(84,6),(84,25),(84,19),(84,20),
-- 85 Conformité bancaire
(85,19),(85,22),(85,25),(85,21),
-- 86 Marketing bancaire
(86,20),(86,23),(86,22),(86,24),

-- FinStart nouvelles offres (87-89)
-- 87 Private Equity LBO
(87,6),(87,25),(87,19),(87,22),
-- 88 Restructuring
(88,6),(88,25),(88,19),(88,20),
-- 89 Immobilier financement
(89,6),(89,25),(89,22),(89,20),

-- AssurPro nouvelles offres (90-92)
-- 90 Actuariat
(90,1),(90,6),(90,25),(90,17),
-- 91 Cyber-assurance
(91,18),(91,20),(91,19),(91,24),
-- 92 Développement commercial
(92,20),(92,24),(92,22),(92,19),

-- Agence Horizon nouvelles offres (93-95)
-- 93 Social Media
(93,23),(93,20),(93,22),(93,21),
-- 94 Production pub
(94,23),(94,19),(94,22),(94,20),
-- 95 Data mesure
(95,25),(95,23),(95,19),(95,6),

-- InfluenceMedia nouvelles offres (96-97)
-- 96 Partenariats
(96,20),(96,24),(96,22),(96,23),
-- 97 Vidéaste
(97,23),(97,22),(97,21),(97,20),

-- Com'Event nouvelles offres (98-99)
-- 98 Communication événementielle
(98,22),(98,20),(98,21),(98,19),
-- 99 Développement commercial
(99,20),(99,24),(99,22),(99,19),

-- Ingénia Tech nouvelles offres (100-103)
-- 100 Matériaux
(100,4),(100,25),(100,1),(100,15),
-- 101 Acoustique vibrations
(101,4),(101,1),(101,25),(101,15),
-- 102 Méthodes industria
(102,4),(102,15),(102,22),(102,19),
-- 103 Ingénierie système
(103,4),(103,19),(103,22),(103,25),

-- GreenBuild nouvelles offres (104-106)
-- 104 ENR PV
(104,4),(104,25),(104,15),(104,6),
-- 105 CVC Plomberie
(105,4),(105,15),(105,19),(105,25),
-- 106 Rénovation énergétique
(106,25),(106,19),(106,22),(106,20),

-- Électro Ingénierie nouvelles offres (107-109)
-- 107 IoT industriel
(107,4),(107,16),(107,2),(107,15),
-- 108 Robotique
(108,4),(108,16),(108,15),(108,19),
-- 109 Efficacité énergétique
(109,4),(109,16),(109,25),(109,6),

-- Avenir RH nouvelles offres (110-111)
-- 110 Marque employeur
(110,20),(110,22),(110,23),(110,21),
-- 111 Consultant RH régional
(111,20),(111,21),(111,22),(111,19),

-- ConsultGroup nouvelles offres (112-114)
-- 112 Innovation
(112,23),(112,19),(112,22),(112,20),
-- 113 Transfo digitale
(113,19),(113,20),(113,22),(113,21),
-- 114 Supply Chain
(114,19),(114,25),(114,20),(114,22),

-- EcoServices nouvelles offres (115-117)
-- 115 Eau Biodiversité
(115,19),(115,22),(115,25),(115,21),
-- 116 Transition énergétique
(116,25),(116,19),(116,22),(116,20),
-- 117 Finance verte
(117,6),(117,19),(117,22),(117,25);


-- ============================================================
-- MISE À JOUR DES COORDONNÉES DES OFFRES
-- Répartition géographique sur toute la France (plus dispersé)
-- ============================================================

-- NEXATECH (offres 1-5 + 60-67)
UPDATE Offre SET lat=50.950418, lng=1.844155   WHERE id_offre=1;   -- Calais
UPDATE Offre SET lat=48.390394, lng=-4.486076  WHERE id_offre=2;   -- Brest
UPDATE Offre SET lat=43.949317, lng=4.805528   WHERE id_offre=3;   -- Avignon
UPDATE Offre SET lat=45.899247, lng=6.129384   WHERE id_offre=4;   -- Annecy
UPDATE Offre SET lat=42.697283, lng=2.895397   WHERE id_offre=5;   -- Perpignan
UPDATE Offre SET lat=48.683832, lng=6.200654   WHERE id_offre=60;  -- Nancy
UPDATE Offre SET lat=44.104144, lng=1.084011   WHERE id_offre=61;  -- Montauban
UPDATE Offre SET lat=46.554650, lng=3.334612   WHERE id_offre=62;  -- Moulins
UPDATE Offre SET lat=48.583148, lng=7.747882   WHERE id_offre=63;  -- Strasbourg
UPDATE Offre SET lat=42.697283, lng=2.895397   WHERE id_offre=64;  -- Perpignan
UPDATE Offre SET lat=47.745457, lng=7.338664   WHERE id_offre=65;  -- Mulhouse
UPDATE Offre SET lat=43.604652, lng=3.879946   WHERE id_offre=66;  -- Montpellier (autre coordonnée)
UPDATE Offre SET lat=48.070686, lng=7.358513   WHERE id_offre=67;  -- Colmar

-- DATASPHERE (offres 6-10 + 68-73)
UPDATE Offre SET lat=46.204391, lng=5.225500   WHERE id_offre=6;   -- Oyonnax
UPDATE Offre SET lat=47.322047, lng=5.041480   WHERE id_offre=7;   -- Dijon
UPDATE Offre SET lat=49.894067, lng=2.295753   WHERE id_offre=8;   -- Amiens
UPDATE Offre SET lat=43.611186, lng=1.439710   WHERE id_offre=9;   -- Ramonville
UPDATE Offre SET lat=49.119308, lng=6.175715   WHERE id_offre=10;  -- Metz
UPDATE Offre SET lat=44.837789, lng=-0.579180  WHERE id_offre=68;  -- Bordeaux
UPDATE Offre SET lat=45.764043, lng=4.835659   WHERE id_offre=69;  -- Lyon
UPDATE Offre SET lat=48.573405, lng=7.752111   WHERE id_offre=70;  -- Strasbourg
UPDATE Offre SET lat=48.117266, lng=-1.677793  WHERE id_offre=71;  -- Rennes
UPDATE Offre SET lat=44.010136, lng=1.355647   WHERE id_offre=72;  -- Montauban
UPDATE Offre SET lat=47.748418, lng=7.339746   WHERE id_offre=73;  -- Mulhouse

-- CYBERSHIELD (offres 11-15 + 74-78)
UPDATE Offre SET lat=41.927227, lng=8.734064   WHERE id_offre=11;  -- Ajaccio
UPDATE Offre SET lat=43.125828, lng=5.930150   WHERE id_offre=12;  -- Toulon
UPDATE Offre SET lat=45.764043, lng=4.835659   WHERE id_offre=13;  -- Lyon
UPDATE Offre SET lat=47.218371, lng=-1.553621  WHERE id_offre=14;  -- Nantes
UPDATE Offre SET lat=44.808268, lng=1.215813   WHERE id_offre=15;  -- Cahors
UPDATE Offre SET lat=44.563214, lng=6.079303   WHERE id_offre=74;  -- Gap
UPDATE Offre SET lat=46.580224, lng=0.340375   WHERE id_offre=75;  -- Poitiers
UPDATE Offre SET lat=43.295097, lng=-0.370797  WHERE id_offre=76;  -- Pau
UPDATE Offre SET lat=49.443232, lng=1.099971   WHERE id_offre=77;  -- Rouen
UPDATE Offre SET lat=48.573405, lng=7.752111   WHERE id_offre=78;  -- Strasbourg

-- CLOUDNATIVE (offres 16-20 + 79-83)
UPDATE Offre SET lat=43.710173, lng=7.261953   WHERE id_offre=16;  -- Nice
UPDATE Offre SET lat=48.938178, lng=2.037685   WHERE id_offre=17;  -- Saint-Germain-en-Laye
UPDATE Offre SET lat=43.649119, lng=4.006013   WHERE id_offre=18;  -- Lunel
UPDATE Offre SET lat=46.603354, lng=1.888334   WHERE id_offre=19;  -- Châteauroux
UPDATE Offre SET lat=48.866667, lng=2.333333   WHERE id_offre=20;  -- Paris (centre alterné)
UPDATE Offre SET lat=45.166672, lng=5.716670   WHERE id_offre=79;  -- Grenoble
UPDATE Offre SET lat=45.899247, lng=6.129384   WHERE id_offre=80;  -- Annecy
UPDATE Offre SET lat=49.253933, lng=4.034254   WHERE id_offre=81;  -- Reims
UPDATE Offre SET lat=43.561501, lng=1.448454   WHERE id_offre=82;  -- Blagnac
UPDATE Offre SET lat=47.749648, lng=7.337930   WHERE id_offre=83;  -- Mulhouse

-- CREDIT PARTENAIRES (offres 21-24 + 84-86)
UPDATE Offre SET lat=43.529742, lng=5.447427   WHERE id_offre=21;  -- Aix-en-Provence
UPDATE Offre SET lat=45.782384, lng=3.082646   WHERE id_offre=22;  -- Clermont-Ferrand
UPDATE Offre SET lat=43.301205, lng=-0.368562  WHERE id_offre=23;  -- Pau (autre coordonnée)
UPDATE Offre SET lat=47.390458, lng=0.688764   WHERE id_offre=24;  -- Tours
UPDATE Offre SET lat=45.833619, lng=1.261105   WHERE id_offre=84;  -- Limoges
UPDATE Offre SET lat=47.494340, lng=-0.554115  WHERE id_offre=85;  -- Angers
UPDATE Offre SET lat=43.600000, lng=3.883333   WHERE id_offre=86;  -- Montpellier

-- FINSTART CONSEIL (offres 25-27 + 87-89)
UPDATE Offre SET lat=43.948339, lng=0.191691   WHERE id_offre=25;  -- Auch
UPDATE Offre SET lat=45.185166, lng=0.721635   WHERE id_offre=26;  -- Périgueux
UPDATE Offre SET lat=47.910492, lng=1.904204   WHERE id_offre=27;  -- Orléans
UPDATE Offre SET lat=45.182245, lng=5.721940   WHERE id_offre=87;  -- Grenoble
UPDATE Offre SET lat=46.603354, lng=1.888334   WHERE id_offre=88;  -- Châteauroux
UPDATE Offre SET lat=48.805855, lng=2.120355   WHERE id_offre=89;  -- Versailles

-- ASSURPRO (offres 28-30 + 90-92)
UPDATE Offre SET lat=47.218637, lng=-1.553621  WHERE id_offre=28;  -- Nantes (autre coordonnée)
UPDATE Offre SET lat=42.342950, lng=-0.416667  WHERE id_offre=29;  -- Foix
UPDATE Offre SET lat=48.395335, lng=-4.484734  WHERE id_offre=30;  -- Brest (autre coordonnée)
UPDATE Offre SET lat=43.949317, lng=4.805528   WHERE id_offre=90;  -- Avignon (autre)
UPDATE Offre SET lat=42.697283, lng=2.895397   WHERE id_offre=91;  -- Perpignan
UPDATE Offre SET lat=44.837789, lng=-0.579180  WHERE id_offre=92;  -- Bordeaux

-- AGENCE HORIZON (offres 31-34 + 93-95)
UPDATE Offre SET lat=45.184029, lng=0.721755   WHERE id_offre=31;  -- Périgueux (alterné)
UPDATE Offre SET lat=43.295097, lng=-0.370797  WHERE id_offre=32;  -- Pau (autre coordination)
UPDATE Offre SET lat=45.764043, lng=4.835659   WHERE id_offre=33;  -- Lyon
UPDATE Offre SET lat=43.610769, lng=3.876716   WHERE id_offre=34;  -- Montpellier
UPDATE Offre SET lat=43.710173, lng=7.261953   WHERE id_offre=93;  -- Nice
UPDATE Offre SET lat=47.218371, lng=-1.553621  WHERE id_offre=94;  -- Nantes
UPDATE Offre SET lat=48.117266, lng=-1.677793  WHERE id_offre=95;  -- Rennes

-- INFLUENCEMEDIA (offres 35-37 + 96-97)
UPDATE Offre SET lat=46.204391, lng=5.225500   WHERE id_offre=35;  -- Oyonnax (alterné)
UPDATE Offre SET lat=43.529742, lng=5.447427   WHERE id_offre=36;  -- Aix-en-Provence
UPDATE Offre SET lat=47.076668, lng=2.399602   WHERE id_offre=37;  -- Bourges
UPDATE Offre SET lat=48.858093, lng=2.294694   WHERE id_offre=96;  -- Paris (Tour Eiffel)
UPDATE Offre SET lat=45.764043, lng=4.835659   WHERE id_offre=97;  -- Lyon

-- COM'EVENT (offres 38-40 + 98-99)
UPDATE Offre SET lat=43.603811, lng=1.445060   WHERE id_offre=38;  -- Toulouse (autre)
UPDATE Offre SET lat=43.529742, lng=5.447427   WHERE id_offre=39;  -- Aix-en-Provence (autre)
UPDATE Offre SET lat=46.355348, lng=3.303125   WHERE id_offre=40;  -- Moulins
UPDATE Offre SET lat=47.218371, lng=-1.553621  WHERE id_offre=98;  -- Nantes
UPDATE Offre SET lat=43.610769, lng=3.876716   WHERE id_offre=99;  -- Montpellier

-- INGENIA TECH (offres 41-44 + 100-103)
UPDATE Offre SET lat=48.389235, lng=-4.486060   WHERE id_offre=41;  -- Brest
UPDATE Offre SET lat=47.394144, lng=0.684840    WHERE id_offre=42;  -- Tours
UPDATE Offre SET lat=45.772584, lng=4.827298    WHERE id_offre=43;  -- Villeurbanne
UPDATE Offre SET lat=48.850753, lng=2.384985    WHERE id_offre=44;  -- Paris (Bastille)
UPDATE Offre SET lat=49.119308, lng=6.175715    WHERE id_offre=100; -- Metz
UPDATE Offre SET lat=46.603354, lng=1.888334    WHERE id_offre=101; -- Châteauroux
UPDATE Offre SET lat=44.837789, lng=-0.579180   WHERE id_offre=102; -- Bordeaux
UPDATE Offre SET lat=43.295097, lng=-0.370797   WHERE id_offre=103; -- Pau

-- GREENBUILD (offres 45-47 + 104-106)
UPDATE Offre SET lat=47.322047, lng=5.041480  WHERE id_offre=45;  -- Dijon
UPDATE Offre SET lat=45.764043, lng=4.835659  WHERE id_offre=46;  -- Lyon
UPDATE Offre SET lat=46.204391, lng=5.225500  WHERE id_offre=47;  -- Oyonnax
UPDATE Offre SET lat=41.927227, lng=8.734064  WHERE id_offre=104; -- Ajaccio
UPDATE Offre SET lat=45.899247, lng=6.129384  WHERE id_offre=105; -- Annecy
UPDATE Offre SET lat=44.933393, lng=-0.173251 WHERE id_offre=106; -- Libourne

-- ELECTRO INGENIERIE (offres 48-50 + 107-109)
UPDATE Offre SET lat=45.782384, lng=3.082646   WHERE id_offre=48;  -- Clermont-Ferrand
UPDATE Offre SET lat=47.902733, lng=1.909251   WHERE id_offre=49;  -- Orléans
UPDATE Offre SET lat=44.104144, lng=1.084011   WHERE id_offre=50;  -- Montauban
UPDATE Offre SET lat=49.894067, lng=2.295753   WHERE id_offre=107; -- Amiens
UPDATE Offre SET lat=46.185372, lng=6.268434   WHERE id_offre=108; -- Annemasse
UPDATE Offre SET lat=44.298142, lng=-0.845055  WHERE id_offre=109; -- Mont-de-Marsan

-- AVENIR RH (offres 51-53 + 110-111)
UPDATE Offre SET lat=41.927227, lng=8.734064   WHERE id_offre=51;  -- Ajaccio
UPDATE Offre SET lat=45.184029, lng=0.721755   WHERE id_offre=52;  -- Périgueux
UPDATE Offre SET lat=48.086399, lng=-1.680527  WHERE id_offre=53;  -- Rennes
UPDATE Offre SET lat=47.748418, lng=7.339746   WHERE id_offre=110; -- Mulhouse
UPDATE Offre SET lat=48.117266, lng=-1.677793  WHERE id_offre=111; -- Rennes

-- CONSULTGROUP (offres 54-56 + 112-114)
UPDATE Offre SET lat=43.610769, lng=3.876716   WHERE id_offre=54;  -- Montpellier
UPDATE Offre SET lat=50.629250, lng=3.057256   WHERE id_offre=55;  -- Lille
UPDATE Offre SET lat=44.933393, lng=-0.173251  WHERE id_offre=56;  -- Libourne
UPDATE Offre SET lat=47.324888, lng=5.042244   WHERE id_offre=112; -- Dijon
UPDATE Offre SET lat=44.556900, lng=6.079600   WHERE id_offre=113; -- Gap
UPDATE Offre SET lat=49.298326, lng=4.032084   WHERE id_offre=114; -- Reims

-- ECOSERVICES (offres 57-59 + 115-117)
UPDATE Offre SET lat=46.353387, lng=3.303609   WHERE id_offre=57;  -- Moulins
UPDATE Offre SET lat=43.529742, lng=5.447427   WHERE id_offre=58;  -- Aix-en-Provence
UPDATE Offre SET lat=47.494340, lng=-0.554115  WHERE id_offre=59;  -- Angers
UPDATE Offre SET lat=50.950418, lng=1.844155   WHERE id_offre=115; -- Calais
UPDATE Offre SET lat=46.185372, lng=6.268434   WHERE id_offre=116; -- Annemasse
UPDATE Offre SET lat=49.443232, lng=1.099971   WHERE id_offre=117; -- Rouen
