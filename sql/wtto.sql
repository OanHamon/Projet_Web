DROP DATABASE IF EXISTS `wtto`;
CREATE DATABASE `wtto`;
USE wtto;


-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 27 mars 2026 à 11:22
-- Version du serveur : 8.0.45-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wtto`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE `Admin` (
  `id_admin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Admin`
--

INSERT INTO `Admin` (`id_admin`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `Competence`
--

CREATE TABLE `Competence` (
  `id_competence` int NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `categorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Competence`
--

INSERT INTO `Competence` (`id_competence`, `nom`, `categorie`) VALUES
(1, 'Python', 'Technique'),
(2, 'JavaScript', 'Technique'),
(3, 'Java', 'Technique'),
(4, 'C++', 'Technique'),
(5, 'PHP', 'Technique'),
(6, 'SQL', 'Technique'),
(7, 'MongoDB', 'Technique'),
(8, 'PostgreSQL', 'Technique'),
(9, 'React', 'Technique'),
(10, 'Vue.js', 'Technique'),
(11, 'Angular', 'Technique'),
(12, 'Node.js', 'Technique'),
(13, 'Laravel', 'Technique'),
(14, 'Docker', 'Technique'),
(15, 'Git', 'Technique'),
(16, 'Linux', 'Technique'),
(17, 'Machine Learning', 'Technique'),
(18, 'Cybersécurité', 'Technique'),
(19, 'Gestion de projet', 'Social'),
(20, 'Communication', 'Social'),
(21, 'Travail en équipe', 'Social'),
(22, 'Rédaction', 'Social'),
(23, 'Créativité', 'Social'),
(24, 'Sens commercial', 'Social'),
(25, 'Analyse', 'Social');

-- --------------------------------------------------------

--
-- Structure de la table `Competence_Offre`
--

CREATE TABLE `Competence_Offre` (
  `id_offre` int NOT NULL,
  `id_competence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Competence_Offre`
--

INSERT INTO `Competence_Offre` (`id_offre`, `id_competence`) VALUES
(3, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(15, 1),
(18, 1),
(30, 1),
(37, 1),
(43, 1),
(61, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(76, 1),
(77, 1),
(80, 1),
(90, 1),
(100, 1),
(101, 1),
(1, 2),
(2, 2),
(5, 2),
(17, 2),
(60, 2),
(65, 2),
(67, 2),
(73, 2),
(107, 2),
(62, 3),
(64, 3),
(41, 4),
(42, 4),
(43, 4),
(45, 4),
(48, 4),
(49, 4),
(50, 4),
(64, 4),
(77, 4),
(100, 4),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(107, 4),
(108, 4),
(109, 4),
(4, 5),
(61, 5),
(66, 5),
(1, 6),
(4, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(12, 6),
(16, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(30, 6),
(50, 6),
(61, 6),
(62, 6),
(64, 6),
(66, 6),
(68, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(75, 6),
(76, 6),
(79, 6),
(80, 6),
(83, 6),
(84, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(95, 6),
(104, 6),
(109, 6),
(117, 6),
(68, 7),
(70, 7),
(1, 9),
(2, 9),
(67, 9),
(5, 10),
(61, 10),
(60, 11),
(1, 12),
(65, 12),
(4, 13),
(66, 13),
(3, 14),
(10, 14),
(14, 14),
(16, 14),
(17, 14),
(19, 14),
(20, 14),
(46, 14),
(62, 14),
(79, 14),
(80, 14),
(81, 14),
(82, 14),
(83, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(5, 15),
(6, 15),
(10, 15),
(11, 15),
(14, 15),
(16, 15),
(18, 15),
(20, 15),
(30, 15),
(41, 15),
(42, 15),
(45, 15),
(46, 15),
(48, 15),
(49, 15),
(60, 15),
(64, 15),
(65, 15),
(66, 15),
(67, 15),
(69, 15),
(75, 15),
(76, 15),
(81, 15),
(82, 15),
(83, 15),
(100, 15),
(101, 15),
(102, 15),
(104, 15),
(105, 15),
(107, 15),
(108, 15),
(3, 16),
(10, 16),
(11, 16),
(12, 16),
(14, 16),
(15, 16),
(16, 16),
(17, 16),
(18, 16),
(19, 16),
(20, 16),
(48, 16),
(49, 16),
(50, 16),
(62, 16),
(65, 16),
(74, 16),
(75, 16),
(77, 16),
(79, 16),
(80, 16),
(81, 16),
(82, 16),
(83, 16),
(107, 16),
(108, 16),
(109, 16),
(6, 17),
(7, 17),
(68, 17),
(69, 17),
(70, 17),
(73, 17),
(90, 17),
(11, 18),
(12, 18),
(13, 18),
(14, 18),
(15, 18),
(19, 18),
(74, 18),
(75, 18),
(76, 18),
(77, 18),
(78, 18),
(82, 18),
(91, 18),
(13, 19),
(21, 19),
(22, 19),
(23, 19),
(24, 19),
(25, 19),
(28, 19),
(29, 19),
(31, 19),
(38, 19),
(40, 19),
(44, 19),
(46, 19),
(47, 19),
(51, 19),
(52, 19),
(53, 19),
(54, 19),
(55, 19),
(56, 19),
(57, 19),
(58, 19),
(59, 19),
(71, 19),
(78, 19),
(81, 19),
(84, 19),
(85, 19),
(87, 19),
(88, 19),
(91, 19),
(92, 19),
(94, 19),
(95, 19),
(98, 19),
(99, 19),
(102, 19),
(103, 19),
(105, 19),
(106, 19),
(108, 19),
(111, 19),
(112, 19),
(113, 19),
(114, 19),
(115, 19),
(116, 19),
(117, 19),
(2, 20),
(8, 20),
(21, 20),
(23, 20),
(28, 20),
(31, 20),
(33, 20),
(34, 20),
(35, 20),
(37, 20),
(38, 20),
(39, 20),
(40, 20),
(44, 20),
(51, 20),
(52, 20),
(54, 20),
(55, 20),
(56, 20),
(60, 20),
(63, 20),
(84, 20),
(86, 20),
(88, 20),
(89, 20),
(91, 20),
(92, 20),
(93, 20),
(94, 20),
(96, 20),
(97, 20),
(98, 20),
(99, 20),
(106, 20),
(110, 20),
(111, 20),
(112, 20),
(113, 20),
(114, 20),
(116, 20),
(32, 21),
(33, 21),
(36, 21),
(39, 21),
(51, 21),
(52, 21),
(53, 21),
(55, 21),
(57, 21),
(63, 21),
(85, 21),
(93, 21),
(97, 21),
(98, 21),
(110, 21),
(111, 21),
(113, 21),
(115, 21),
(118, 21),
(13, 22),
(25, 22),
(27, 22),
(29, 22),
(31, 22),
(32, 22),
(33, 22),
(34, 22),
(35, 22),
(36, 22),
(38, 22),
(39, 22),
(40, 22),
(42, 22),
(44, 22),
(47, 22),
(51, 22),
(52, 22),
(53, 22),
(54, 22),
(55, 22),
(56, 22),
(57, 22),
(58, 22),
(59, 22),
(63, 22),
(78, 22),
(85, 22),
(86, 22),
(87, 22),
(89, 22),
(92, 22),
(93, 22),
(94, 22),
(96, 22),
(97, 22),
(98, 22),
(99, 22),
(102, 22),
(103, 22),
(106, 22),
(110, 22),
(111, 22),
(112, 22),
(113, 22),
(114, 22),
(115, 22),
(116, 22),
(117, 22),
(31, 23),
(32, 23),
(34, 23),
(35, 23),
(36, 23),
(37, 23),
(63, 23),
(67, 23),
(72, 23),
(86, 23),
(93, 23),
(94, 23),
(95, 23),
(96, 23),
(97, 23),
(110, 23),
(112, 23),
(21, 24),
(26, 24),
(28, 24),
(35, 24),
(86, 24),
(91, 24),
(92, 24),
(96, 24),
(99, 24),
(7, 25),
(8, 25),
(9, 25),
(22, 25),
(24, 25),
(25, 25),
(26, 25),
(27, 25),
(29, 25),
(34, 25),
(37, 25),
(41, 25),
(43, 25),
(44, 25),
(45, 25),
(47, 25),
(53, 25),
(54, 25),
(56, 25),
(57, 25),
(58, 25),
(59, 25),
(69, 25),
(71, 25),
(72, 25),
(74, 25),
(78, 25),
(79, 25),
(84, 25),
(85, 25),
(87, 25),
(88, 25),
(89, 25),
(90, 25),
(95, 25),
(100, 25),
(101, 25),
(103, 25),
(104, 25),
(105, 25),
(106, 25),
(109, 25),
(114, 25),
(115, 25),
(116, 25),
(117, 25);

-- --------------------------------------------------------

--
-- Structure de la table `Entreprise`
--

CREATE TABLE `Entreprise` (
  `id_entreprise` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_cartes` text COLLATE utf8mb4_unicode_ci,
  `phrase_intro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_entreprise` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` bigint DEFAULT NULL,
  `mdp` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Entreprise`
--

INSERT INTO `Entreprise` (`id_entreprise`, `nom`, `description_cartes`, `phrase_intro`, `description_entreprise`, `email`, `telephone`, `mdp`) VALUES
(1, 'Nexatech Solutions', 'Startup parisienne spécialisée en développement web et mobile. 120 collaborateurs. Projets innovants pour grands comptes et startups.', 'Construire le numérique de demain, aujourd\'hui.', '# 🚀 Nexatech Solutions – Présentation\n\n**Agence de développement web & mobile nouvelle génération**\n\n---\n\n## 🌍 Qui sommes-nous ?\nNexatech Solutions est une startup parisienne fondée en 2018, spécialisée dans la conception et le développement d\'applications web et mobiles sur mesure. Avec 120 collaborateurs passionnés, nous accompagnons aussi bien des startups en phase de lancement que des grands comptes dans leur transformation numérique.\n\nNotre philosophie : livrer des produits de qualité, dans les délais, avec une communication transparente.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Développement Web**\n- Applications React, Vue.js, Angular\n- Backends robustes (Node.js, Laravel, Django)\n- APIs REST et GraphQL\n\n### **Développement Mobile**\n- Applications iOS (Swift) et Android (Kotlin)\n- Cross-platform (Flutter, React Native)\n\n### **Cloud & DevOps**\n- Déploiement AWS, GCP, Azure\n- CI/CD, Docker, Kubernetes\n- Monitoring et observabilité\n\n---\n\n## 🎯 Nos valeurs\n- **Qualité avant tout** : chaque ligne de code compte\n- **Agilité** : nous nous adaptons aux besoins de nos clients\n- **Bienveillance** : un environnement de travail humain et stimulant\n- **Innovation** : nous encourageons l\'expérimentation\n\n---\n\n## 🎓 Rejoignez-nous\nChaque année, Nexatech accueille des stagiaires et alternants qui participent à de vrais projets clients. Vous serez encadré(e) par des développeurs seniors bienveillants et aurez rapidement des responsabilités.', 'rh@nexatech.fr', 145678901, 'nexatech2024'),
(2, 'DataSphere', 'Entreprise lyonnaise experte en data engineering et intelligence artificielle. 200 collaborateurs. Clients dans la santé, la finance et l\'industrie.', 'Transformer la donnée en valeur.', '# 📊 DataSphere – La donnée au cœur de tout\n\n**Expert en Data Engineering, Machine Learning et BI**\n\n---\n\n## 🌍 Qui sommes-nous ?\nDataSphere est une entreprise lyonnaise fondée en 2015, spécialisée dans la valorisation des données. Nous aidons nos clients à collecter, traiter, analyser et exploiter leurs données pour prendre de meilleures décisions.\n\nAvec 200 collaborateurs et des clients dans la santé, la finance et l\'industrie, nous sommes reconnus comme un acteur de référence dans le domaine de la data en France.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Data Engineering**\n- Pipelines ETL (Spark, Airflow, Kafka)\n- Lacs de données et entrepôts (Snowflake, BigQuery)\n- Streaming temps réel\n\n### **Machine Learning & IA**\n- Modèles prédictifs et recommandation\n- NLP et traitement du langage\n- Vision artificielle\n\n### **Business Intelligence**\n- Dashboards Power BI, Tableau, Metabase\n- Reporting automatisé\n- KPIs et suivi de performance\n\n---\n\n## 🎯 Nos valeurs\n- **Data-driven** : chaque décision s\'appuie sur les données\n- **Rigueur scientifique** : nous appliquons les meilleures pratiques\n- **Impact** : nos modèles ont un effet concret sur les métiers\n- **Curiosité** : nous encourageons la veille technologique\n\n---\n\n## 🎓 Rejoignez-nous\nDataSphere offre un environnement stimulant pour les profils data. Vous travaillerez sur des problématiques réelles avec des données à grande échelle.', 'carrieres@datasphere.fr', 472345678, 'datasphere2024'),
(3, 'CyberShield', 'Entreprise bordelaise spécialisée en cybersécurité. 80 collaborateurs. SOC, pentest, audit et conseil en sécurité des systèmes d\'information.', 'Protéger le numérique, sécuriser l\'avenir.', '# 🛡️ CyberShield – Experts en Cybersécurité\n\n**SOC | Pentest | Audit | Conseil SSI**\n\n---\n\n## 🌍 Qui sommes-nous ?\nCyberShield est une entreprise bordelaise fondée en 2016, dédiée à la protection des systèmes d\'information. Nous intervenons auprès d\'entreprises de toutes tailles, des PME aux grands groupes, pour les aider à évaluer, renforcer et surveiller leur sécurité informatique.\n\n---\n\n## 🛠️ Nos services\n\n### **SOC (Security Operations Center)**\n- Surveillance 24/7 des infrastructures\n- Détection et réponse aux incidents (SIEM, EDR)\n- Threat intelligence\n\n### **Tests d\'intrusion**\n- Pentest web, réseau, mobile\n- Red Team / Blue Team\n- Social engineering\n\n### **Audit & Conseil**\n- Audit ISO 27001 / RGPD\n- Analyse de risques\n- Rédaction de politiques de sécurité\n\n---\n\n## 🎯 Nos valeurs\n- **Éthique** : nous travaillons dans le respect strict des cadres légaux\n- **Excellence technique** : nos équipes se forment en continu\n- **Confidentialité** : discrétion absolue avec nos clients\n- **Pédagogie** : nous formons et sensibilisons les équipes de nos clients\n\n---\n\n## 🎓 Rejoignez-nous\nCyberShield recrute des profils passionnés par la sécurité informatique. Vous interviendrez sur des missions variées avec une grande montée en compétences.', 'jobs@cybershield.fr', 556789012, 'cybershield2024'),
(4, 'CloudNative', 'ESN nantaise spécialisée en architecture cloud et DevOps. 150 collaborateurs. Partenaire AWS, Azure et GCP certifié.', 'L\'infrastructure de demain, disponible aujourd\'hui.', '# ☁️ CloudNative – Experts Cloud & DevOps\n\n**Architecture Cloud | DevOps | Infrastructure as Code**\n\n---\n\n## 🌍 Qui sommes-nous ?\nCloudNative est une ESN nantaise fondée en 2017, spécialisée dans les architectures cloud natives et les pratiques DevOps. Nous sommes partenaires certifiés AWS, Microsoft Azure et Google Cloud Platform.\n\nNos 150 collaborateurs accompagnent les entreprises dans leur migration vers le cloud, l\'automatisation de leurs infrastructures et la mise en place de pipelines CI/CD robustes.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Cloud Public**\n- Migration et modernisation (lift & shift, re-architecture)\n- AWS, Azure, GCP — certifications avancées\n- FinOps : optimisation des coûts cloud\n\n### **DevOps & SRE**\n- Pipelines CI/CD (GitLab CI, GitHub Actions, Jenkins)\n- Infrastructure as Code (Terraform, Ansible, Pulumi)\n- Monitoring et observabilité (Prometheus, Grafana, Datadog)\n\n### **Conteneurs & Orchestration**\n- Docker, Kubernetes (EKS, AKS, GKE)\n- Helm, ArgoCD, Flux\n- Service mesh (Istio, Linkerd)\n\n---\n\n## 🎯 Nos valeurs\n- **Automatisation** : si ça peut être scripté, ça doit l\'être\n- **Fiabilité** : nos systèmes tiennent leurs SLA\n- **Open Source** : nous contribuons à la communauté\n- **Formation** : nous finançons les certifications cloud\n\n---\n\n## 🎓 Rejoignez-nous\nCloudNative offre un environnement technique de pointe. Vous travaillerez sur des architectures réelles en production.', 'talent@cloudnative.fr', 240123456, 'cloudnative2024'),
(5, 'Crédit Partenaires', 'Banque régionale indépendante. 500 collaborateurs. Spécialisée dans le crédit aux particuliers et PME. En pleine transformation digitale.', 'La banque de proximité qui vous ressemble.', '# 🏦 Crédit Partenaires – Banque de Proximité\n\n**Crédit aux particuliers | Financement PME | Épargne**\n\n---\n\n## 🌍 Qui sommes-nous ?\nCrédit Partenaires est une banque régionale indépendante fondée en 1978. Avec 500 collaborateurs répartis dans 45 agences, nous sommes l\'un des derniers acteurs bancaires 100% régionaux en France.\n\nNotre mission : offrir des solutions financières personnalisées à nos clients particuliers et entreprises, avec une relation humaine au cœur de chaque interaction.\n\n---\n\n## 🏗️ Nos activités\n\n### **Particuliers**\n- Crédits immobiliers et à la consommation\n- Épargne et placements\n- Assurances et prévoyance\n\n### **Professionnels & PME**\n- Financement de projets\n- Gestion de trésorerie\n- Leasing et crédit-bail\n\n### **Transformation Digitale**\n- Application mobile clients\n- Plateforme de gestion en ligne\n- Automatisation des processus internes\n\n---\n\n## 🎯 Nos valeurs\n- **Proximité** : nous connaissons nos clients par leur prénom\n- **Responsabilité** : financement éthique et durable\n- **Innovation** : nous modernisons nos outils sans perdre l\'humain\n- **Solidarité** : soutien aux projets locaux et associatifs\n\n---\n\n## 🎓 Rejoignez-nous\nCrédit Partenaires offre des stages enrichissants dans un environnement bancaire à taille humaine. Idéal pour comprendre le monde de la finance et de la relation client.', 'recrutement@creditpartenaires.fr', 345678901, 'creditp2024'),
(6, 'FinStart Conseil', 'Cabinet de conseil en finance d\'entreprise et M&A. 60 collaborateurs. Accompagnement des PME et ETI dans leurs opérations financières stratégiques.', 'Votre partenaire pour les décisions financières qui comptent.', '# 💼 FinStart Conseil – Cabinet de Conseil Financier\n\n**Finance d\'entreprise | M&A | Stratégie | Levée de fonds**\n\n---\n\n## 🌍 Qui sommes-nous ?\nFinStart Conseil est un cabinet de conseil financier indépendant fondé en 2010. Nos 60 consultants accompagnent les PME et ETI françaises dans leurs opérations financières stratégiques : fusions-acquisitions, levées de fonds, restructurations, valorisations.\n\nNotre différence : une approche sur mesure, des équipes disponibles et un engagement fort sur les résultats.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Fusions & Acquisitions (M&A)**\n- Due diligence financière\n- Valorisation d\'entreprises\n- Structuration des opérations\n\n### **Levées de fonds**\n- Capital-risque et private equity\n- Préparation des dossiers investisseurs\n- Accompagnement dans les négociations\n\n### **Conseil en stratégie financière**\n- Business plans et modèles financiers\n- Optimisation de la structure financière\n- Accompagnement à l\'introduction en bourse\n\n---\n\n## 🎯 Nos valeurs\n- **Excellence** : qualité irréprochable dans chaque mission\n- **Indépendance** : conseil objectif, sans conflit d\'intérêt\n- **Confidentialité** : discrétion absolue\n- **Engagement** : nous partageons les enjeux de nos clients\n\n---\n\n## 🎓 Rejoignez-nous\nFinStart Conseil offre des stages de haute intensité. Vous serez rapidement impliqué dans de vraies missions clients avec une forte valeur ajoutée.', 'rh@finstartconseil.fr', 156789012, 'finstart2024'),
(7, 'AssurPro', 'Courtier en assurances professionnelles. 180 collaborateurs. Spécialiste des risques entreprises, responsabilité civile et assurance construction.', 'Couvrir les risques pour libérer les projets.', '# 🔒 AssurPro – Courtier en Assurances Professionnelles\n\n**Assurance entreprises | RC Pro | Construction | Prévoyance**\n\n---\n\n## 🌍 Qui sommes-nous ?\nAssurPro est un courtier en assurances professionnelles fondé en 2001. Avec 180 collaborateurs, nous sommes spécialisés dans la protection des entreprises contre leurs risques professionnels.\n\nNous travaillons avec l\'ensemble des compagnies d\'assurance du marché pour proposer les meilleures solutions à nos clients.\n\n---\n\n## 🛠️ Nos activités\n\n### **Assurance Responsabilité**\n- RC professionnelle et décennale\n- Protection juridique\n- Cyber-risques\n\n### **Assurance Construction**\n- Tous Risques Chantier\n- Dommages-Ouvrage\n- Garantie de parfait achèvement\n\n### **Prévoyance & Santé**\n- Mutuelle collective\n- Prévoyance et retraite complémentaire\n- Épargne salariale\n\n---\n\n## 🎯 Nos valeurs\n- **Expertise** : maîtrise technique de l\'ensemble des risques professionnels\n- **Conseil** : nous guidons nos clients vers les meilleures solutions\n- **Réactivité** : disponibilité en cas de sinistre\n- **Intégrité** : transparence totale sur nos honoraires\n\n---\n\n## 🎓 Rejoignez-nous\nAssurPro propose des stages enrichissants au cœur du monde de l\'assurance. Vous développerez une expertise rare et très recherchée sur le marché.', 'carrieres@assurpro.fr', 467890123, 'assurpro2024'),
(8, 'Agence Horizon', 'Agence de communication globale basée à Paris. 90 collaborateurs. Stratégie de marque, publicité, digital et relations presse pour grands comptes.', 'Des idées qui marquent les esprits.', '# 🎨 Agence Horizon – Communication Globale\n\n**Stratégie de marque | Publicité | Digital | Relations Presse**\n\n---\n\n## 🌍 Qui sommes-nous ?\nAgence Horizon est une agence de communication globale fondée en 2008 à Paris. Avec 90 collaborateurs créatifs et stratèges, nous accompagnons les marques dans la construction et le développement de leur image.\n\nNos clients : des grands comptes nationaux et internationaux dans les secteurs du luxe, de la grande consommation, du tourisme et des services.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Stratégie de marque**\n- Identité visuelle et brand book\n- Positionnement et plateforme de marque\n- Architecture de marque\n\n### **Création publicitaire**\n- Campagnes TV, print, digital\n- Conception et production de contenus\n- Storytelling et brand content\n\n### **Communication Digitale**\n- Stratégie réseaux sociaux\n- SEO/SEA et marketing de contenu\n- Email marketing et automation\n\n### **Relations Presse**\n- Communiqués et conférences de presse\n- Influence et partenariats médias\n- Gestion de crise\n\n---\n\n## 🎯 Nos valeurs\n- **Créativité** : sortir des sentiers battus\n- **Stratégie** : la créativité au service des objectifs\n- **Collaboration** : travailler main dans la main avec nos clients\n- **Impact** : des campagnes qui produisent des résultats mesurables\n\n---\n\n## 🎓 Rejoignez-nous\nHorizon est le terrain idéal pour développer vos compétences en communication. Vous travaillerez sur des campagnes réelles pour des marques reconnues.', 'jobs@agencehorizon.fr', 145678912, 'horizon2024'),
(9, 'InfluenceMedia', 'Agence de marketing digital et influence. 50 collaborateurs. Spécialiste des campagnes social media, content marketing et influence pour marques lifestyle.', 'Amplifier votre voix là où votre audience vous attend.', '# 📱 InfluenceMedia – Marketing Digital & Influence\n\n**Social Media | Content Marketing | Influence | Analytics**\n\n---\n\n## 🌍 Qui sommes-nous ?\nInfluenceMedia est une agence de marketing digital fondée en 2019 à Lyon. Spécialisée dans le marketing d\'influence et le content marketing, nous aidons les marques lifestyle, beauté, mode et food à développer leur présence en ligne.\n\nAvec 50 collaborateurs passionnés par les nouvelles tendances digitales, nous gérons des campagnes pour des marques nationales et internationales.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Marketing d\'influence**\n- Identification et qualification des influenceurs\n- Gestion des partenariats et campagnes\n- Mesure des performances (KPIs, ROI)\n\n### **Content Marketing**\n- Stratégie éditoriale et calendrier de contenu\n- Production de contenus (texte, photo, vidéo)\n- Optimisation SEO\n\n### **Social Media Management**\n- Gestion quotidienne des réseaux sociaux\n- Community management\n- Publicité sociale (Meta Ads, TikTok Ads)\n\n### **Analytics & Reporting**\n- Dashboards de performance\n- Analyse de l\'audience\n- Recommandations data-driven\n\n---\n\n## 🎯 Nos valeurs\n- **Authenticité** : des partenariats sincères et transparents\n- **Créativité** : des contenus qui engagent vraiment\n- **Data** : des décisions basées sur les chiffres\n- **Tendances** : toujours un coup d\'avance\n\n---\n\n## 🎓 Rejoignez-nous\nInfluenceMedia est l\'agence idéale pour les profils créatifs et analytiques. Vous baignerez dans l\'univers des réseaux sociaux et du marketing digital au quotidien.', 'talent@influencemedia.fr', 472890123, 'influence2024'),
(10, 'Com\'Event', 'Agence événementielle et relations publiques. 70 collaborateurs. Organisation d\'événements corporate, salons professionnels et séminaires en France et Europe.', 'Créer des moments qui fédèrent et inspirent.', '# 🎉 Com\'Event – Agence Événementielle & RP\n\n**Événements Corporate | Salons | Séminaires | Relations Publiques**\n\n---\n\n## 🌍 Qui sommes-nous ?\nCom\'Event est une agence événementielle et de relations publiques fondée en 2005 à Bordeaux. Avec 70 collaborateurs, nous organisons chaque année plus de 150 événements pour des entreprises, institutions et associations.\n\nNotre expertise couvre l\'ensemble de la chaîne événementielle : de la conception au bilan post-événement, en passant par la logistique, la communication et les relations presse.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Événements Corporate**\n- Séminaires et conventions d\'entreprise\n- Soirées de gala et remises de prix\n- Team building et incentives\n\n### **Salons & Expositions**\n- Conception et construction de stands\n- Animation et expériences visiteurs\n- Gestion logistique\n\n### **Relations Publiques**\n- Relations presse et médias\n- Gestion de l\'image institutionnelle\n- Lobbying et affaires publiques\n\n### **Communication événementielle**\n- Identité visuelle des événements\n- Communication digitale avant/pendant/après\n- Live streaming et contenu vidéo\n\n---\n\n## 🎯 Nos valeurs\n- **Excellence opérationnelle** : zéro défaut le jour J\n- **Créativité** : des concepts originaux et mémorables\n- **Réactivité** : gestion des imprévus avec calme\n- **Durabilité** : événements éco-responsables\n\n---\n\n## 🎓 Rejoignez-nous\nCom\'Event offre une immersion totale dans le monde de l\'événementiel. Vous participerez à la conception et à l\'organisation d\'événements réels.', 'recrutement@comevent.fr', 556789123, 'comevent2024'),
(11, 'Ingénia Tech', 'Bureau d\'études en ingénierie industrielle. 300 collaborateurs. Conception mécanique, simulation numérique et gestion de projets pour secteurs automobile et aéronautique.', 'Concevoir avec précision, livrer avec excellence.', '# ⚙️ Ingénia Tech – Bureau d\'Études Industriel\n\n**Conception Mécanique | Simulation | Gestion de Projet | R&D**\n\n---\n\n## 🌍 Qui sommes-nous ?\nIngénia Tech est un bureau d\'études en ingénierie industrielle fondé en 1995 à Toulouse. Avec 300 collaborateurs, nous intervenons pour les plus grands donneurs d\'ordre des secteurs automobile et aéronautique.\n\nNotre expertise couvre l\'ensemble du cycle de développement produit : de la conception à la mise en production, en passant par la simulation et les essais.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Conception Mécanique**\n- Modélisation 3D (CATIA, SolidWorks, NX)\n- Design for Manufacturing (DFM)\n- Conception de systèmes complexes\n\n### **Simulation Numérique**\n- Calculs par éléments finis (Abaqus, ANSYS)\n- Simulation de crash et de fatigue\n- Dynamique des fluides (CFD)\n\n### **Gestion de Projet**\n- Pilotage de projets R&D\n- Coordination des équipes pluridisciplinaires\n- Gestion des risques techniques\n\n### **Essais & Validation**\n- Bancs d\'essais instrumentés\n- Campagnes de mesures\n- Corrélation calcul/essai\n\n---\n\n## 🎯 Nos valeurs\n- **Rigueur** : l\'ingénierie ne tolère pas l\'approximation\n- **Innovation** : nous intégrons les dernières technologies\n- **Travail en équipe** : la pluridisciplinarité est notre force\n- **Formation** : nous investissons dans nos collaborateurs\n\n---\n\n## 🎓 Rejoignez-nous\nIngénia Tech offre des stages techniques de haut niveau. Vous travaillerez sur des projets réels avec des ingénieurs expérimentés.', 'rh@ingeniatech.fr', 561890123, 'ingeniatech2024'),
(12, 'GreenBuild', 'Cabinet d\'ingénierie spécialisé en bâtiments durables et efficacité énergétique. 120 collaborateurs. Conseil et maîtrise d\'œuvre pour constructions HQE et BEPOS.', 'Bâtir mieux pour un avenir durable.', '# 🌿 GreenBuild – Ingénierie du Bâtiment Durable\n\n**HQE | BEPOS | Efficacité Énergétique | BIM | Maîtrise d\'Œuvre**\n\n---\n\n## 🌍 Qui sommes-nous ?\nGreenBuild est un cabinet d\'ingénierie spécialisé dans la construction durable et l\'efficacité énergétique des bâtiments. Fondé en 2012 à Grenoble, nous accompagnons maîtres d\'ouvrage, architectes et entreprises de construction dans la réalisation de bâtiments à faible impact environnemental.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Conception Énergétique**\n- Études thermiques (RT2020, RE2020)\n- Simulations thermiques dynamiques\n- Optimisation des systèmes CVC\n\n### **Bâtiment à Énergie Positive (BEPOS)**\n- Intégration de l\'énergie solaire (PV, thermique)\n- Pompes à chaleur et géothermie\n- Systèmes de stockage d\'énergie\n\n### **BIM (Building Information Modeling)**\n- Modélisation 3D des bâtiments\n- Coordination BIM et clash detection\n- Maquette numérique tout au long du cycle de vie\n\n### **Certifications & Labels**\n- HQE, BREEAM, LEED\n- BBC Rénovation, Passivhaus\n- Accompagnement à la certification E+C-\n\n---\n\n## 🎯 Nos valeurs\n- **Durabilité** : chaque bâtiment est conçu pour l\'avenir\n- **Innovation** : intégration des dernières solutions techniques\n- **Pédagogie** : nous expliquons nos choix à nos clients\n- **Engagement** : réduction mesurable de l\'empreinte carbone\n\n---\n\n## 🎓 Rejoignez-nous\nGreenBuild offre des stages au croisement de l\'ingénierie et du développement durable. Idéal pour les profils motivés par les enjeux environnementaux.', 'jobs@greenbuild.fr', 456789012, 'greenbuild2024'),
(13, 'Électro Ingénierie', 'Société d\'ingénierie électrique et électronique. 90 collaborateurs. Conception de systèmes embarqués, automatisme industriel et réseaux électriques pour l\'industrie.', 'L\'énergie et l\'électronique au service de l\'industrie.', '# ⚡ Électro Ingénierie – Systèmes Électriques & Embarqués\n\n**Systèmes Embarqués | Automatisme | Réseaux Électriques | SCADA**\n\n---\n\n## 🌍 Qui sommes-nous ?\nÉlectro Ingénierie est une société d\'ingénierie électrique et électronique fondée en 2003 à Nantes. Nos 90 ingénieurs et techniciens conçoivent des systèmes électriques complexes pour l\'industrie, l\'énergie et les transports.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Systèmes Embarqués**\n- Microcontrôleurs et microprocesseurs\n- Firmware C/C++ temps réel\n- Protocoles de communication (CAN, Modbus, Profibus)\n\n### **Automatisme Industriel**\n- Programmation d\'automates (Siemens, Schneider, Allen-Bradley)\n- Supervision SCADA (Wonderware, WinCC)\n- Robotique industrielle\n\n### **Réseaux Électriques**\n- Distribution HTA/BTA\n- Compensation d\'énergie réactive\n- Études de courts-circuits et de coordination\n\n### **IoT Industriel**\n- Capteurs et actionneurs connectés\n- Edge computing\n- Télémaintenance\n\n---\n\n## 🎯 Nos valeurs\n- **Expertise** : maîtrise technique dans tous nos domaines\n- **Fiabilité** : nos systèmes fonctionnent en toutes conditions\n- **Sécurité** : la sûreté des installations est notre priorité\n- **Adaptabilité** : chaque projet est unique\n\n---\n\n## 🎓 Rejoignez-nous\nÉlectro Ingénierie offre des stages techniques enrichissants. Vous travaillerez sur des projets industriels concrets avec des ingénieurs expérimentés.', 'recrutement@electroingenierie.fr', 240678901, 'electroing2024'),
(14, 'Groupe Avenir RH', 'Cabinet de conseil en ressources humaines et recrutement. 200 collaborateurs. Recrutement, formation, gestion des talents et conseil en organisation pour toutes tailles d\'entreprises.', 'Révéler et développer les talents d\'aujourd\'hui et de demain.', '# 👥 Groupe Avenir RH – Conseil en Ressources Humaines\n\n**Recrutement | Formation | Gestion des Talents | Conseil RH**\n\n---\n\n## 🌍 Qui sommes-nous ?\nGroupe Avenir RH est un cabinet de conseil en ressources humaines fondé en 2000. Avec 200 collaborateurs répartis dans 12 bureaux en France, nous accompagnons les entreprises dans toutes leurs problématiques RH.\n\nNotre conviction : les ressources humaines sont le premier actif stratégique d\'une entreprise.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Recrutement & Chasse de têtes**\n- Recrutement cadres et dirigeants\n- Assessment centers\n- Intégration et onboarding\n\n### **Formation & Développement**\n- Formations managériales et comportementales\n- Coaching individuel et collectif\n- E-learning et blended learning\n\n### **Gestion des Talents**\n- GPEC et plans de succession\n- Évaluation de la performance\n- Fidélisation et engagement\n\n### **Conseil en Organisation**\n- Diagnostic organisationnel\n- Conduite du changement\n- Transformation des modes de travail\n\n---\n\n## 🎯 Nos valeurs\n- **Humanité** : les personnes avant tout\n- **Éthique** : respect et équité dans toutes nos pratiques\n- **Excellence** : qualité de service irréprochable\n- **Partenariat** : relation durable avec nos clients\n\n---\n\n## 🎓 Rejoignez-nous\nAvenir RH offre une immersion dans le monde des ressources humaines. Vous développerez une vision 360° des problématiques RH en entreprise.', 'talent@avenirhr.fr', 145234567, 'avenirhr2024'),
(15, 'ConsultGroup', 'Cabinet de conseil en stratégie et management. 150 collaborateurs. Accompagnement des entreprises dans leur transformation, leur développement et l\'optimisation de leur performance.', 'Penser la stratégie, déployer l\'excellence.', '# 🎯 ConsultGroup – Conseil en Stratégie & Management\n\n**Stratégie | Transformation | Performance | Innovation**\n\n---\n\n## 🌍 Qui sommes-nous ?\nConsultGroup est un cabinet de conseil en stratégie et management fondé en 1998 à Paris. Nos 150 consultants accompagnent des entreprises de toutes tailles et de tous secteurs dans leurs projets de transformation et de développement.\n\nNotre approche : pragmatique, orientée résultats, avec une forte implication de nos équipes.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Stratégie d\'Entreprise**\n- Diagnostic stratégique\n- Plans de développement\n- Stratégies d\'internationalisation\n\n### **Transformation & Conduite du Changement**\n- Transformation digitale\n- Réorganisation et restructuration\n- Accompagnement au changement\n\n### **Performance Opérationnelle**\n- Lean management\n- Optimisation des processus\n- Réduction des coûts\n\n### **Innovation**\n- Open innovation\n- Design thinking\n- Accompagnement à l\'entrepreneuriat interne\n\n---\n\n## 🎯 Nos valeurs\n- **Pragmatisme** : des recommandations actionnables\n- **Rigueur** : analyses solides et méthodologie éprouvée\n- **Engagement** : nous allons jusqu\'au bout des missions\n- **Diversité** : équipes pluridisciplinaires et internationales\n\n---\n\n## 🎓 Rejoignez-nous\nConsultGroup offre des stages d\'excellence. Vous serez rapidement impliqué dans des missions stratégiques auprès de dirigeants.', 'carrieres@consultgroup.fr', 156234567, 'consultgroup2024'),
(16, 'EcoServices', 'Entreprise de services environnementaux et développement durable. 250 collaborateurs. Conseil RSE, gestion des déchets, bilan carbone et certification environnementale.', 'Agir concrètement pour un monde plus responsable.', '# 🌍 EcoServices – Services Environnementaux & RSE\n\n**RSE | Bilan Carbone | Gestion des Déchets | Certification Environnementale**\n\n---\n\n## 🌍 Qui sommes-nous ?\nEcoServices est une entreprise de services environnementaux fondée en 2009 à Lyon. Avec 250 collaborateurs, nous aidons les organisations privées et publiques à mesurer, réduire et compenser leur impact environnemental.\n\nDans un contexte de transition écologique accélérée, EcoServices se positionne comme un partenaire incontournable des entreprises engagées dans une démarche durable.\n\n---\n\n## 🛠️ Nos expertises\n\n### **Conseil RSE**\n- Diagnostic RSE et plan d\'action\n- Reporting extra-financier (CSRD, GRI)\n- Stratégie développement durable\n\n### **Bilan Carbone**\n- Mesure des émissions (scope 1, 2, 3)\n- Plans de réduction\n- Compensation carbone\n\n### **Gestion des Déchets**\n- Audit des filières déchets\n- Plans de réduction et valorisation\n- Économie circulaire\n\n### **Certification Environnementale**\n- ISO 14001, ISO 50001\n- Label RSE\n- Accompagnement B Corp\n\n---\n\n## 🎯 Nos valeurs\n- **Impact** : des actions concrètes et mesurables\n- **Transparence** : honnêteté dans les bilans et les objectifs\n- **Engagement** : nous appliquons ce que nous préconisons\n- **Pédagogie** : sensibiliser et former les équipes\n\n---\n\n## 🎓 Rejoignez-nous\nEcoServices offre des stages au cœur des enjeux environnementaux. Vous contribuerez directement à des projets à impact positif.', 'jobs@ecoservices.fr', 472123456, 'ecoservices2024'),
(17, 'Test Corporation', NULL, NULL, NULL, 'corp@mail.fr', NULL, '$2y$10$I05gYhREiS8kd3h08PpRX.OvtH7OThzOZQnnaNXDDe1a2SAr5xyXG');

-- --------------------------------------------------------

--
-- Structure de la table `Etudiant`
--

CREATE TABLE `Etudiant` (
  `id_etudiant` int NOT NULL,
  `id_pilote` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Etudiant`
--

INSERT INTO `Etudiant` (`id_etudiant`, `id_pilote`) VALUES
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 4),
(15, 4),
(16, 4);

-- --------------------------------------------------------

--
-- Structure de la table `Evaluation_entreprise`
--

CREATE TABLE `Evaluation_entreprise` (
  `id_entreprise` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `note` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Evaluation_entreprise`
--

INSERT INTO `Evaluation_entreprise` (`id_entreprise`, `id_utilisateur`, `note`) VALUES
(1, 5, 5),
(1, 6, 4),
(1, 7, 5),
(2, 8, 4),
(2, 9, 5),
(2, 10, 3),
(3, 11, 5),
(3, 12, 4),
(4, 13, 4),
(4, 14, 5),
(5, 5, 0),
(5, 15, 1),
(6, 6, 5),
(6, 16, 4),
(7, 7, 4),
(7, 8, 3),
(8, 9, 5),
(8, 10, 4),
(9, 11, 4),
(9, 12, 5),
(10, 13, 3),
(10, 14, 4),
(11, 5, 5),
(11, 15, 4),
(12, 6, 4),
(12, 16, 5),
(13, 7, 3),
(13, 8, 4),
(14, 9, 5),
(14, 10, 4),
(15, 11, 4),
(15, 12, 5),
(16, 13, 4),
(16, 14, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Offre`
--

CREATE TABLE `Offre` (
  `id_offre` int NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `lat` decimal(8,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL,
  `titre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_carte` text COLLATE utf8mb4_unicode_ci,
  `remuneration_par_mois` int DEFAULT NULL,
  `description_offre_de_stage` text COLLATE utf8mb4_unicode_ci,
  `id_entreprise` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Offre`
--

INSERT INTO `Offre` (`id_offre`, `date_debut`, `date_fin`, `lat`, `lng`, `titre`, `description_carte`, `remuneration_par_mois`, `description_offre_de_stage`, `id_entreprise`) VALUES
(1, '2025-04-01', '2025-09-30', 50.950418, 1.844155, 'Stage Développeur Full Stack React/Node.js', 'Stage 6 mois Paris. Développement d\'une plateforme SaaS B2B en React et Node.js au sein d\'une équipe agile de 8 personnes.', 1200, '# 🚀 Stage Développeur Full Stack – Nexatech Solutions\n**React | Node.js | PostgreSQL | Docker**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nAu sein de l\'équipe produit de Nexatech, vous contribuerez au développement d\'une plateforme SaaS B2B destinée aux PME. Vous travaillerez en méthode Scrum avec des sprints de 2 semaines.\n\n---\n\n## 🎯 Missions\n- Développement de composants React (TypeScript, hooks, context)\n- Conception et implémentation d\'APIs REST avec Node.js/Express\n- Modélisation et optimisation des requêtes PostgreSQL\n- Participation aux code reviews et rétroactions d\'équipe\n- Rédaction de tests unitaires et d\'intégration (Jest, Cypress)\n\n---\n\n## 🧰 Stack technique\n| Domaine | Technologies |\n|--------|--------------|\n| Frontend | React 18, TypeScript, TailwindCSS |\n| Backend | Node.js, Express, JWT |\n| BDD | PostgreSQL, Prisma |\n| DevOps | Docker, GitHub Actions |\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 en informatique\n- Maîtrise de JavaScript/TypeScript\n- Bases en SQL et Git\n- Curiosité et esprit d\'équipe', 1),
(2, '2025-05-01', '2025-10-31', 48.390394, -4.486076, 'Stage Développeur Mobile React Native', 'Stage 6 mois Paris. Développement de l\'application mobile cross-platform d\'un client grand compte en React Native.', 1150, '# 📱 Stage Développeur Mobile – Nexatech Solutions\n**React Native | TypeScript | Firebase | REST APIs**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe mobile de Nexatech pour développer une application iOS/Android pour un client dans le secteur du retail. L\'application est en cours de refonte complète.\n\n---\n\n## 🎯 Missions\n- Développement de fonctionnalités en React Native + TypeScript\n- Intégration des APIs REST du backend\n- Implémentation de notifications push (Firebase)\n- Tests sur appareils réels (iOS et Android)\n- Optimisation des performances et de l\'expérience utilisateur\n\n---\n\n## 🧰 Stack technique\n- React Native 0.73, TypeScript\n- Redux Toolkit, React Query\n- Firebase (Auth, Messaging, Analytics)\n- Fastlane pour la distribution\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 en développement mobile\n- Connaissance de React ou React Native\n- Sensibilité à l\'UX mobile\n- Rigueur dans les tests', 1),
(3, '2025-04-01', '2025-09-30', 43.949317, 4.805528, 'Stage DevOps & Infrastructure Cloud', 'Stage 6 mois Paris. Mise en place et amélioration des pipelines CI/CD et de l\'infrastructure cloud de l\'agence.', 1100, '# ☁️ Stage DevOps – Nexatech Solutions\n**Docker | Kubernetes | GitHub Actions | AWS**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous intégrerez l\'équipe infrastructure de Nexatech pour automatiser et fiabiliser les déploiements des projets clients.\n\n---\n\n## 🎯 Missions\n- Amélioration des pipelines CI/CD (GitHub Actions)\n- Containerisation des applications (Docker, Docker Compose)\n- Migration vers Kubernetes (EKS sur AWS)\n- Monitoring avec Prometheus et Grafana\n- Rédaction de documentation technique\n\n---\n\n## 🧰 Stack technique\n- Docker, Kubernetes (EKS)\n- GitHub Actions, Terraform\n- AWS (EC2, S3, RDS, EKS)\n- Prometheus, Grafana, Datadog\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 informatique ou systèmes\n- Bases Linux et scripting Bash/Python\n- Notions de Docker et CI/CD\n- Autonomie et rigueur', 1),
(4, '2025-06-01', '2025-11-30', 45.899247, 6.129384, 'Stage Développeur Backend PHP/Laravel', 'Stage 6 mois Paris. Développement de nouvelles fonctionnalités sur une plateforme e-commerce Laravel pour un client retail.', 1050, '# 🐘 Stage Développeur Backend PHP/Laravel – Nexatech\n**PHP 8 | Laravel 11 | MySQL | API REST**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous interviendrez sur le backend d\'une plateforme e-commerce développée sous Laravel pour un client dans le secteur du retail. Le projet est en production avec plus de 50 000 commandes par mois.\n\n---\n\n## 🎯 Missions\n- Développement de nouvelles fonctionnalités métier\n- Optimisation des requêtes SQL (MySQL, Eloquent)\n- Mise en place d\'APIs REST consommées par le frontend\n- Rédaction de tests unitaires (PHPUnit, Pest)\n- Participation aux revues de code\n\n---\n\n## 🧰 Stack technique\n- PHP 8.3, Laravel 11\n- MySQL, Redis (cache)\n- API REST, Sanctum\n- PHPUnit, Pest, Laravel Telescope\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 développement web\n- Maîtrise de PHP et notions de Laravel\n- SQL intermédiaire\n- Sens de la qualité du code', 1),
(5, '2025-04-15', '2025-10-15', 42.697283, 2.895397, 'Stage Développeur Frontend Vue.js', 'Stage 6 mois Lyon. Refonte de l\'interface d\'une application de gestion interne en Vue.js 3 pour une ETI industrielle.', 1000, '# 🟢 Stage Développeur Frontend Vue.js – Nexatech (Lyon)\n**Vue.js 3 | TypeScript | Pinia | Vite**\n📍 *Lyon – Part-Dieu*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous travaillerez sur la refonte complète de l\'interface utilisateur d\'une application de gestion interne pour un client industriel. Migration de Vue 2 vers Vue 3.\n\n---\n\n## 🎯 Missions\n- Migration des composants Vue 2 vers Vue 3 (Composition API)\n- Implémentation du state management avec Pinia\n- Consommation d\'APIs REST\n- Design responsive en collaboration avec le designer UX\n- Tests E2E avec Playwright\n\n---\n\n## 🧰 Stack technique\n- Vue.js 3, TypeScript, Pinia\n- Vite, Vitest, Playwright\n- TailwindCSS, Headless UI\n- GitLab CI\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 développement frontend\n- Maîtrise de JavaScript/TypeScript\n- Notions de Vue.js ou React\n- Sensibilité UX', 1),
(6, '2025-04-01', '2025-09-30', 46.204391, 5.225500, 'Stage Data Engineer – Pipelines Big Data', 'Stage 6 mois Lyon. Conception et optimisation de pipelines de données pour des clients dans la santé et la finance avec Spark et Airflow.', 1300, '# 📊 Stage Data Engineer – DataSphere\n**Apache Spark | Airflow | Kafka | Snowflake**\n📍 *Lyon – Confluence*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe Data Engineering de DataSphere pour travailler sur des pipelines de données à grande échelle pour des clients dans les secteurs de la santé et de la finance.\n\n---\n\n## 🎯 Missions\n- Conception de pipelines ETL avec Apache Spark (PySpark)\n- Orchestration des workflows avec Apache Airflow\n- Ingestion de données en streaming (Kafka)\n- Optimisation des requêtes sur Snowflake\n- Monitoring de la qualité des données (Great Expectations)\n\n---\n\n## 🧰 Stack technique\n| Couche | Technologies |\n|--------|--------------|\n| Ingestion | Kafka, Debezium |\n| Transformation | Spark, dbt |\n| Stockage | Snowflake, S3 |\n| Orchestration | Airflow |\n| Qualité | Great Expectations |\n\n---\n\n## 👤 Profil recherché\n- Master 2 Data Engineering ou informatique\n- Python avancé (pandas, PySpark)\n- SQL intermédiaire à avancé\n- Notions de Spark ou Airflow appréciées', 2),
(7, '2025-05-01', '2025-10-31', 47.322047, 5.041480, 'Stage Data Scientist – Machine Learning & NLP', 'Stage 6 mois Lyon. Développement de modèles de traitement du langage naturel pour automatiser l\'analyse de documents clients.', 1350, '# 🤖 Stage Data Scientist NLP – DataSphere\n**Python | Transformers | HuggingFace | MLflow**\n📍 *Lyon – Confluence*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous travaillerez sur des modèles NLP pour automatiser l\'extraction d\'informations clés dans des documents contractuels pour un client dans le secteur financier.\n\n---\n\n## 🎯 Missions\n- Fine-tuning de modèles de langage (BERT, CamemBERT)\n- Extraction d\'entités nommées (NER)\n- Classification automatique de documents\n- Déploiement de modèles avec MLflow et FastAPI\n- Évaluation et amélioration continue des performances\n\n---\n\n## 🧰 Stack technique\n- Python, HuggingFace Transformers\n- spaCy, NLTK, scikit-learn\n- MLflow, DVC, BentoML\n- PostgreSQL, Elasticsearch\n\n---\n\n## 👤 Profil recherché\n- Master 2 IA, Data Science ou NLP\n- Python avancé\n- Maîtrise des Transformers et du deep learning\n- Rigueur scientifique et sens de l\'expérimentation', 2),
(8, '2025-06-01', '2025-11-30', 49.894067, 2.295753, 'Stage Analyste BI & Data Visualisation', 'Stage 6 mois Lyon. Création de tableaux de bord décisionnels pour la direction générale d\'un groupe industriel client.', 1100, '# 📈 Stage Analyste BI – DataSphere\n**Power BI | DAX | SQL | Python**\n📍 *Lyon – Confluence*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe BI pour concevoir et déployer des tableaux de bord stratégiques pour la direction générale d\'un groupe industriel de 3 000 collaborateurs.\n\n---\n\n## 🎯 Missions\n- Recueil des besoins auprès des directions métier\n- Modélisation des données (Star Schema, Snowflake Schema)\n- Développement de rapports Power BI (DAX, M)\n- Mise en place d\'un catalogue de données\n- Formation des utilisateurs finaux\n\n---\n\n## 🧰 Stack technique\n- Power BI, DAX, Power Query (M)\n- SQL Server, Azure Synapse\n- Python (pandas, matplotlib)\n- dbt pour la transformation\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 data, statistiques ou business\n- Maîtrise de SQL\n- Power BI requis\n- Sens de la communication et pédagogie', 2),
(9, '2025-04-01', '2025-09-30', 43.611186, 1.439710, 'Stage Data Analyst – Santé & Données Médicales', 'Stage 6 mois Pau. Analyse de données médicales pour améliorer le suivi patient d\'un réseau de cliniques privées cliente.', 1200, '# 🏥 Stage Data Analyst Santé – DataSphere (Pau)\n**Python | SQL | Tableau | RGPD Santé**\n📍 *Pau*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous travaillerez sur des données médicales pseudonymisées pour améliorer le parcours patient d\'un réseau de cliniques privées. Un stage à fort impact sur la santé publique.\n\n---\n\n## 🎯 Missions\n- Analyse exploratoire de données médicales\n- Construction d\'indicateurs de suivi patient\n- Visualisation avec Tableau et Python (matplotlib, seaborn)\n- Veille sur la conformité RGPD et HDS\n- Présentation des résultats aux équipes médicales\n\n---\n\n## 🧰 Stack technique\n- Python (pandas, scikit-learn, matplotlib)\n- SQL (PostgreSQL)\n- Tableau Desktop\n- Jupyter Notebooks\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 data, statistiques ou santé publique\n- Python et SQL intermédiaires\n- Sensibilité aux enjeux éthiques des données de santé\n- Rigueur et discrétion', 2),
(10, '2025-05-15', '2025-11-15', 49.119308, 6.175715, 'Stage Ingénieur MLOps', 'Stage 6 mois Lyon. Mise en place d\'une plateforme MLOps pour industrialiser le déploiement des modèles de machine learning de l\'entreprise.', 1250, '# 🔧 Stage Ingénieur MLOps – DataSphere\n**MLflow | Kubeflow | Docker | Kubernetes**\n📍 *Lyon – Confluence*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous contribuerez à la construction de la plateforme MLOps interne de DataSphere, permettant d\'industrialiser le cycle de vie des modèles de machine learning.\n\n---\n\n## 🎯 Missions\n- Mise en place de MLflow pour le tracking des expériences\n- Containerisation des modèles (Docker, FastAPI)\n- Déploiement sur Kubernetes avec Kubeflow Pipelines\n- Monitoring des modèles en production (data drift, performance)\n- Documentation et formation des data scientists\n\n---\n\n## 🧰 Stack technique\n- MLflow, DVC, BentoML\n- Docker, Kubernetes, Helm\n- Python, FastAPI\n- Prometheus, Grafana\n\n---\n\n## 👤 Profil recherché\n- Bac+5 informatique ou Data Science\n- Python avancé\n- DevOps et Docker/Kubernetes\n- Intérêt pour le ML et l\'industrialisation', 2),
(11, '2025-03-01', '2025-08-31', 41.927227, 8.734064, 'Stage Analyste Cybersécurité – SOC', 'Stage 6 mois Bordeaux. Analyse des alertes de sécurité, investigation d\'incidents et amélioration des règles de détection au sein du SOC de l\'entreprise.', 1400, '# 🛡️ Stage Analyste SOC – CyberShield\n**SIEM | EDR | Threat Intelligence | MITRE ATT&CK**\n📍 *Bordeaux – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous intégrerez le SOC (Security Operations Center) de CyberShield pour participer à la surveillance et à la réponse aux incidents de sécurité pour nos clients.\n\n---\n\n## 🎯 Missions\n- Analyse et triage des alertes SIEM (Splunk, IBM QRadar)\n- Investigation des incidents de sécurité (forensique)\n- Amélioration des règles de détection\n- Rédaction de rapports d\'incidents\n- Veille sur les nouvelles menaces (CVE, threat intel)\n\n---\n\n## 🧰 Stack technique\n- Splunk, IBM QRadar (SIEM)\n- CrowdStrike, SentinelOne (EDR)\n- Wireshark, Zeek (analyse réseau)\n- MITRE ATT&CK framework\n\n---\n\n## 👤 Profil recherché\n- Master 2 cybersécurité ou réseaux\n- Connaissance des protocoles réseaux (TCP/IP, DNS, HTTP)\n- Linux avancé\n- Curiosité et persévérance face aux incidents complexes', 3),
(12, '2025-04-01', '2025-09-30', 43.125828, 5.930150, 'Stage Pentesteur Web & Applicatif', 'Stage 6 mois Bordeaux. Réalisation de tests d\'intrusion sur des applications web et des APIs pour des clients dans la finance et la santé.', 1450, '# 🔐 Stage Pentesteur – CyberShield\n**Pentest Web | API | OWASP | Burp Suite**\n📍 *Bordeaux – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous effectuerez des tests d\'intrusion sur des applications web et des APIs pour évaluer leur résistance aux attaques. Vous travaillerez en équipe Red Team.\n\n---\n\n## 🎯 Missions\n- Tests d\'intrusion boîte noire et boîte grise sur applications web\n- Tests d\'API (REST, GraphQL) selon OWASP API Security Top 10\n- Rédaction de rapports de pentest détaillés\n- Présentation des résultats aux clients\n- Veille sur les nouvelles vulnérabilités\n\n---\n\n## 🧰 Outils & Méthodes\n- Burp Suite Pro, OWASP ZAP\n- Metasploit, SQLMap, ffuf\n- Kali Linux\n- OWASP Testing Guide, PTES\n\n---\n\n## 👤 Profil recherché\n- Master 2 cybersécurité\n- Connaissance de l\'OWASP Top 10\n- Bases en Python ou Bash (scripting)\n- Éthique et respect du cadre légal', 3),
(13, '2025-05-01', '2025-10-31', 45.764043, 4.835659, 'Stage Consultant Cybersécurité & Conformité', 'Stage 6 mois Bordeaux. Accompagnement de clients PME dans leur mise en conformité RGPD et ISO 27001, audit de leur posture de sécurité.', 1250, '# 📋 Stage Consultant SSI & Conformité – CyberShield\n**ISO 27001 | RGPD | Analyse de risques | EBIOS RM**\n📍 *Bordeaux – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des PME dans leur démarche de mise en conformité RGPD et ISO 27001. Un rôle hybride technique et organisationnel.\n\n---\n\n## 🎯 Missions\n- Audit de la posture de sécurité des clients\n- Analyse de risques (méthode EBIOS RM)\n- Rédaction de politiques de sécurité (PSSI)\n- Accompagnement à la mise en conformité RGPD\n- Sensibilisation des collaborateurs clients\n\n---\n\n## 🧰 Méthodes & Référentiels\n- ISO 27001 / 27002\n- RGPD, CNIL\n- EBIOS Risk Manager\n- CIS Controls, NIST CSF\n\n---\n\n## 👤 Profil recherché\n- Master 2 cybersécurité, droit numérique ou management\n- Connaissance de l\'ISO 27001 et du RGPD\n- Qualités rédactionnelles\n- Sens de la pédagogie et de la relation client', 3),
(14, '2025-06-01', '2025-11-30', 47.218371, -1.553621, 'Stage Ingénieur Sécurité Cloud & DevSecOps', 'Stage 6 mois Bordeaux. Intégration des pratiques de sécurité dans les pipelines CI/CD de clients en transformation cloud.', 1350, '# 🔒 Stage DevSecOps – CyberShield\n**DevSecOps | SAST/DAST | Trivy | Vault**\n📍 *Bordeaux – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous aiderez des clients en migration cloud à intégrer la sécurité dès les phases de développement (shift left security).\n\n---\n\n## 🎯 Missions\n- Intégration d\'outils SAST dans les pipelines CI (SonarQube, Semgrep)\n- Tests de sécurité dynamiques (DAST) avec OWASP ZAP\n- Scan des images Docker (Trivy, Snyk)\n- Gestion des secrets (HashiCorp Vault)\n- Formation des équipes développement\n\n---\n\n## 🧰 Stack technique\n- GitLab CI / GitHub Actions\n- SonarQube, Semgrep, OWASP ZAP\n- Trivy, Snyk, Checkov\n- HashiCorp Vault, AWS Secrets Manager\n\n---\n\n## 👤 Profil recherché\n- Bac+5 cybersécurité ou DevOps\n- CI/CD et Docker\n- Connaissance des vulnérabilités applicatives\n- Esprit méthodique', 3),
(15, '2025-04-15', '2025-10-15', 44.808268, 1.215813, 'Stage Analyste Forensique & Réponse à Incident', 'Stage 6 mois Toulouse. Investigation forensique sur des incidents de sécurité réels, analyse de malwares et reconstruction de chronologies d\'attaque.', 1400, '# 🔍 Stage Forensique & Incident Response – CyberShield (Toulouse)\n**Forensique | Malware Analysis | Volatility | Wireshark**\n📍 *Toulouse*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe CSIRT de CyberShield pour investiguer des incidents de sécurité et analyser des malwares dans un laboratoire dédié.\n\n---\n\n## 🎯 Missions\n- Analyse forensique de disques et mémoire (Autopsy, Volatility)\n- Analyse statique et dynamique de malwares\n- Reconstruction de chronologies d\'attaque\n- Rédaction de rapports d\'investigation\n- Reverse engineering de code malveillant (Ghidra, IDA)\n\n---\n\n## 🧰 Outils\n- Volatility, Autopsy, FTK Imager\n- Wireshark, NetworkMiner\n- Ghidra, IDA Free, x64dbg\n- YARA, STIX/TAXII\n\n---\n\n## 👤 Profil recherché\n- Master 2 cybersécurité\n- Bases en assembleur x86/x64\n- Linux avancé\n- Curiosité intellectuelle et patience', 3),
(16, '2025-04-01', '2025-09-30', 43.710173, 7.261953, 'Stage Ingénieur Cloud AWS', 'Stage 6 mois Nantes. Migration d\'une architecture monolithique vers des microservices sur AWS pour un client e-commerce.', 1200, '# ☁️ Stage Ingénieur Cloud AWS – CloudNative\n**AWS | Terraform | Kubernetes | CI/CD**\n📍 *Nantes – Île de Nantes*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous participerez à la migration d\'une application e-commerce monolithique vers une architecture microservices sur AWS. Un projet technique ambitieux avec un fort impact business.\n\n---\n\n## 🎯 Missions\n- Conception de l\'architecture cible (ECS, EKS, RDS, SQS)\n- Écriture de l\'infrastructure en code (Terraform)\n- Mise en place des pipelines CI/CD (GitHub Actions)\n- Migration progressive des services\n- Optimisation des coûts cloud (FinOps)\n\n---\n\n## 🧰 Stack technique\n- AWS (ECS, EKS, RDS, S3, CloudFront, SQS)\n- Terraform, Packer\n- GitHub Actions, ArgoCD\n- Datadog, CloudWatch\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 informatique ou systèmes\n- Notions d\'AWS (certification SAA appréciée)\n- Docker et Kubernetes\n- Linux et scripting', 4),
(17, '2025-05-01', '2025-10-31', 48.938178, 2.037685, 'Stage Ingénieur Platform Engineering', 'Stage 6 mois Nantes. Construction d\'une Internal Developer Platform (IDP) pour améliorer la productivité des équipes de développement clients.', 1150, '# 🏗️ Stage Platform Engineering – CloudNative\n**Backstage | Kubernetes | GitOps | ArgoCD**\n📍 *Nantes – Île de Nantes*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous contribuerez à la construction d\'une Internal Developer Platform basée sur Backstage (CNCF) pour standardiser et accélérer le développement chez nos clients.\n\n---\n\n## 🎯 Missions\n- Déploiement et configuration de Backstage\n- Développement de plugins Backstage (TypeScript)\n- Mise en place de workflows GitOps (ArgoCD, Flux)\n- Construction de templates de projets standardisés\n- Documentation de la plateforme\n\n---\n\n## 🧰 Stack technique\n- Backstage (CNCF), TypeScript\n- Kubernetes, Helm\n- ArgoCD, Flux\n- GitHub, GitLab\n\n---\n\n## 👤 Profil recherché\n- Bac+5 informatique, DevOps ou SRE\n- Kubernetes intermédiaire\n- TypeScript/React (pour les plugins Backstage)\n- Intérêt pour l\'expérience développeur (DX)', 4),
(18, '2025-04-15', '2025-10-15', 43.649119, 4.006013, 'Stage SRE – Observabilité & Fiabilité', 'Stage 6 mois Nantes. Amélioration de l\'observabilité et de la fiabilité des systèmes clients grâce à l\'instrumentation et aux SLOs.', 1100, '# 🔭 Stage SRE – CloudNative\n**Prometheus | Grafana | OpenTelemetry | SLOs**\n📍 *Nantes – Île de Nantes*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous travaillerez sur l\'observabilité des systèmes clients pour réduire les MTTR et améliorer la fiabilité globale.\n\n---\n\n## 🎯 Missions\n- Instrumentation d\'applications (OpenTelemetry)\n- Création de tableaux de bord Grafana\n- Définition et suivi des SLI/SLO/SLA\n- Mise en place d\'alerting intelligent (PagerDuty)\n- Pratique du chaos engineering (Chaos Monkey, Litmus)\n\n---\n\n## 🧰 Stack technique\n- Prometheus, Grafana, Loki, Tempo\n- OpenTelemetry\n- PagerDuty, OpsGenie\n- Chaos Monkey, Litmus\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 systèmes, DevOps ou SRE\n- Linux avancé\n- Python ou Go (scripting)\n- Intérêt pour la fiabilité et la performance', 4),
(19, '2025-06-01', '2025-11-30', 46.603354, 1.888334, 'Stage Ingénieur Sécurité Cloud (CloudSec)', 'Stage 6 mois Nantes. Audit et renforcement de la sécurité des infrastructures cloud de clients, mise en place de Cloud Security Posture Management.', 1200, '# 🔐 Stage CloudSec – CloudNative\n**CSPM | IAM | Security Hub | Terraform**\n📍 *Nantes – Île de Nantes*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous contribuerez à sécuriser les infrastructures cloud de nos clients en mettant en place des outils de Cloud Security Posture Management (CSPM).\n\n---\n\n## 🎯 Missions\n- Audit des configurations cloud (AWS Security Hub, Prowler)\n- Mise en place d\'une politique IAM au moindre privilège\n- Chiffrement des données at-rest et in-transit\n- Compliance as Code (Checkov, Open Policy Agent)\n- Reporting et suivi des remédiations\n\n---\n\n## 🧰 Stack technique\n- AWS Security Hub, Prowler, ScoutSuite\n- Checkov, Open Policy Agent (OPA)\n- Terraform (sécurisation des ressources)\n- CloudTrail, GuardDuty\n\n---\n\n## 👤 Profil recherché\n- Bac+5 cybersécurité ou cloud\n- AWS et Terraform\n- Connaissance des bonnes pratiques de sécurité cloud\n- Rigueur et sens du détail', 4),
(20, '2025-04-01', '2025-09-30', 48.866667, 2.333333, 'Stage Ingénieur Azure DevOps', 'Stage 6 mois Bordeaux. Accompagnement d\'une ETI dans sa migration vers Azure et la mise en place de pratiques DevOps modernes.', 1100, '# 🔵 Stage Azure DevOps – CloudNative (Bordeaux)\n**Azure | Azure DevOps | Terraform | AKS**\n📍 *Bordeaux – Mériadeck*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez une ETI dans sa migration vers Microsoft Azure et la modernisation de ses pratiques de développement et de déploiement.\n\n---\n\n## 🎯 Missions\n- Migration de VMs on-premise vers Azure (IaaS, PaaS)\n- Configuration d\'Azure DevOps (pipelines, repos, boards)\n- Containerisation des applications (Docker, AKS)\n- Infrastructure as Code avec Terraform\n- Formation des équipes internes du client\n\n---\n\n## 🧰 Stack technique\n- Azure (VM, App Service, AKS, SQL, Storage)\n- Azure DevOps (Pipelines, Repos)\n- Terraform, Bicep\n- Docker, Kubernetes (AKS)\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 informatique ou systèmes\n- Notions d\'Azure et de CI/CD\n- Docker apprécié\n- Pédagogie pour la formation client', 4),
(21, '2025-04-01', '2025-09-30', 43.529742, 5.447427, 'Stage Chargé de Relations Clientèle – Agence', 'Stage 6 mois Bourges. Accueil et conseil des clients particuliers et professionnels, gestion des opérations courantes et participation à la vente de produits bancaires.', 900, '# 🏦 Stage Chargé de Relations Clientèle – Crédit Partenaires\n**Relation client | Conseil financier | Gestion de portefeuille**\n📍 *Bourges – Agence Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous serez accueilli(e) dans une agence bancaire de Crédit Partenaires pour développer vos compétences en relation client et en conseil financier.\n\n---\n\n## 🎯 Missions\n- Accueil physique et téléphonique des clients\n- Conseil et orientation vers les produits adaptés (épargne, crédit, assurance)\n- Suivi du portefeuille clients de votre tuteur\n- Participation aux entretiens de découverte\n- Gestion des opérations courantes (virements, ouvertures de compte)\n\n---\n\n## Compétences développées\n- Relation client en face à face\n- Connaissance des produits bancaires\n- Techniques de vente conseil\n- Réglementation bancaire et déontologie\n\n---\n\n## 👤 Profil recherché\n- Bac+2 à Bac+4 en banque, finance ou commerce\n- Excellent relationnel\n- Rigueur et sens de la confidentialité\n- Appétence pour le conseil', 5),
(22, '2025-05-01', '2025-10-31', 45.782384, 3.082646, 'Stage Analyste Risques de Crédit', 'Stage 6 mois Bourges. Analyse des dossiers de crédit particuliers et professionnels, évaluation des risques et rédaction d\'avis de crédit.', 1050, '# 📊 Stage Analyste Risques – Crédit Partenaires\n**Analyse financière | Scoring | Gestion des risques**\n📍 *Bourges – Direction Générale*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nAu sein de la Direction des Risques, vous analyserez des dossiers de crédit immobilier et professionnel pour évaluer leur risque et formuler des recommandations.\n\n---\n\n## 🎯 Missions\n- Analyse financière de dossiers de crédit (bilans, comptes de résultat)\n- Évaluation de la solvabilité des clients\n- Rédaction d\'avis de crédit motivés\n- Suivi du portefeuille de crédits à risque\n- Participation à l\'amélioration des modèles de scoring\n\n---\n\n## Compétences développées\n- Analyse financière et comptable\n- Évaluation des risques de crédit\n- Réglementation bancaire (Bâle III, IFRS 9)\n- Rigueur analytique\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 finance, banque ou comptabilité\n- Maîtrise d\'Excel (modélisation financière)\n- Rigueur et esprit analytique\n- Discrétion', 5),
(23, '2025-06-01', '2025-11-30', 43.301205, -0.368562, 'Stage Chef de Projet Digital – Transformation Bancaire', 'Stage 6 mois Bourges. Participation à la transformation digitale de la banque, gestion de projets d\'amélioration de l\'application mobile et de la plateforme en ligne.', 1100, '# 💻 Stage Chef de Projet Digital – Crédit Partenaires\n**Gestion de projet | UX | Agilité | Transformation digitale**\n📍 *Bourges – Direction Digitale*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous intégrerez la Direction Digitale pour contribuer aux projets de transformation numérique de la banque.\n\n---\n\n## 🎯 Missions\n- Recueil et formalisation des besoins métiers\n- Rédaction de user stories et de cahiers des charges\n- Coordination avec les équipes techniques et les prestataires\n- Suivi de l\'avancement des projets (Jira, Confluence)\n- Tests fonctionnels et recette utilisateur\n\n---\n\n## Compétences développées\n- Gestion de projet en méthode agile\n- Cahiers des charges et spécifications fonctionnelles\n- Relation avec les équipes IT\n- Vision de la transformation digitale bancaire\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 management, gestion de projet ou informatique\n- Intérêt pour la finance et le numérique\n- Sens de l\'organisation\n- Curiosité et adaptabilité', 5),
(24, '2025-04-15', '2025-10-15', 47.390458, 0.688764, 'Stage Contrôleur de Gestion', 'Stage 6 mois Bourges. Participation au contrôle budgétaire, à l\'analyse de la performance financière et à la production des reportings mensuels de la banque.', 1000, '# 📉 Stage Contrôleur de Gestion – Crédit Partenaires\n**Contrôle budgétaire | Reporting | Excel | Power BI**\n📍 *Bourges – Direction Financière*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nAu sein de la Direction Financière, vous contribuerez aux travaux de contrôle de gestion et de reporting financier.\n\n---\n\n## 🎯 Missions\n- Participation à l\'élaboration du budget et des prévisions\n- Production des reportings mensuels (P&L, tableau de bord)\n- Analyse des écarts budget/réalisé\n- Optimisation des outils de reporting (Power BI, Excel)\n- Support aux analyses ad hoc pour la direction\n\n---\n\n## Compétences développées\n- Contrôle budgétaire et analyse financière\n- Maîtrise avancée d\'Excel et Power BI\n- Présentation de données financières\n- Vision de la performance bancaire\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 finance, contrôle de gestion ou comptabilité\n- Excel avancé (TCD, formules complexes)\n- Power BI apprécié\n- Rigueur et sens du détail', 5),
(25, '2025-04-01', '2025-09-30', 43.948339, 0.191691, 'Stage Analyste M&A – Fusions & Acquisitions', 'Stage 6 mois Paris. Participation à des missions de conseil en fusions-acquisitions pour des PME et ETI : valorisation, due diligence et structuration des opérations.', 1400, '# 💼 Stage Analyste M&A – FinStart Conseil\n**M&A | Valorisation | Due Diligence | Modélisation financière**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous participerez activement à des missions de conseil en fusions-acquisitions pour des PME et ETI françaises. Un stage de haute intensité avec une forte exposition aux dirigeants.\n\n---\n\n## 🎯 Missions\n- Construction de modèles financiers (LBO, DCF, comparables)\n- Valorisation d\'entreprises (multiples, DCF, actif net réévalué)\n- Participation à la due diligence financière\n- Rédaction de mémorandums de cession et de teaser\n- Veille sectorielle et identification de cibles/acquéreurs\n\n---\n\n## Compétences développées\n- Modélisation financière avancée sous Excel\n- Techniques de valorisation\n- Processus M&A de A à Z\n- Qualités rédactionnelles et de présentation\n\n---\n\n## 👤 Profil recherché\n- Bac+5 finance, grande école de commerce ou d\'ingénieurs\n- Excel avancé (modélisation financière)\n- Intérêt fort pour la finance d\'entreprise\n- Rigueur et résistance au stress', 6),
(26, '2025-05-01', '2025-10-31', 45.185166, 0.721635, 'Stage Analyste Levée de Fonds & Capital-Risque', 'Stage 6 mois Paris. Accompagnement de startups et PME innovantes dans leur levée de fonds : préparation des dossiers, valorisation et mise en relation investisseurs.', 1350, '# 🚀 Stage Analyste Levée de Fonds – FinStart Conseil\n**Venture Capital | Pitchdeck | Valorisation | Due Diligence**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des startups et PME innovantes dans la préparation et l\'exécution de leurs levées de fonds auprès de fonds de capital-risque et de private equity.\n\n---\n\n## 🎯 Missions\n- Préparation des pitchdeck et mémorandums d\'investissement\n- Valorisation pré-money des sociétés\n- Analyse des term sheets et des contrats d\'investissement\n- Identification et approche des investisseurs potentiels\n- Suivi des due diligences\n\n---\n\n## Compétences développées\n- Écosystème startup et venture capital\n- Valorisation de sociétés innovantes\n- Négociation et structuration d\'opérations\n- Réseau professionnel dans la finance\n\n---\n\n## 👤 Profil recherché\n- Bac+5 finance ou grande école\n- Intérêt pour l\'entrepreneuriat et l\'innovation\n- Excel et PowerPoint avancés\n- Curiosité et sens du contact', 6),
(27, '2025-06-01', '2025-11-30', 47.910492, 1.904204, 'Stage Analyste Stratégie Financière & Business Plan', 'Stage 6 mois Paris. Elaboration de business plans et de plans stratégiques pour des dirigeants de PME en phase de développement ou de restructuration.', 1300, '# 📊 Stage Analyste Stratégie – FinStart Conseil\n**Business Plan | Stratégie | Modélisation | Présentation**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous aiderez des dirigeants de PME à formaliser leur stratégie de développement dans des business plans rigoreux et convaincants.\n\n---\n\n## 🎯 Missions\n- Diagnostic stratégique (SWOT, Porter, PESTEL)\n- Construction de business plans et de projections financières\n- Benchmark concurrentiel et analyse de marché\n- Rédaction de présentations stratégiques pour dirigeants\n- Suivi de la mise en œuvre des recommandations\n\n---\n\n## Compétences développées\n- Analyse stratégique et financière\n- Présentation à des décideurs\n- Conseil en entreprise\n- Vision globale des enjeux d\'une PME\n\n---\n\n## 👤 Profil recherché\n- Bac+5 finance, stratégie ou grande école\n- Excel et PowerPoint avancés\n- Sens de la synthèse et de la communication\n- Intérêt pour les PME', 6),
(28, '2025-04-01', '2025-09-30', 47.218637, -1.553621, 'Stage Chargé de Clientèle Assurances Professionnelles', 'Stage 6 mois Toulouse. Gestion d\'un portefeuille de clients professionnels, conseil en assurance RC Pro et construction, suivi des contrats.', 950, '# 🔒 Stage Chargé de Clientèle – AssurPro\n**Assurance professionnelle | RC Pro | Conseil | Gestion de portefeuille**\n📍 *Toulouse – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous intégrerez une équipe de chargés de clientèle pour gérer et développer un portefeuille de clients professionnels (artisans, TPE, PME).\n\n---\n\n## 🎯 Missions\n- Gestion quotidienne du portefeuille clients\n- Conseil et placement de contrats (RC Pro, multirisque)\n- Traitement des demandes de modifications et avenants\n- Accompagnement des clients en cas de sinistre\n- Prospection et développement commercial\n\n---\n\n## Compétences développées\n- Techniques d\'assurance professionnelle\n- Relation client B2B\n- Gestion administrative des contrats\n- Réglementation assurance (DDA)\n\n---\n\n## 👤 Profil recherché\n- Bac+2 à Bac+4 en assurance, banque ou commerce\n- Bon relationnel et sens du service\n- Rigueur administrative\n- Intérêt pour les métiers de l\'assurance', 7),
(29, '2025-05-01', '2025-10-31', 42.342950, -0.416667, 'Stage Gestionnaire Sinistres', 'Stage 6 mois Toulouse. Instruction et gestion des dossiers de sinistres pour les clients professionnels, coordination avec les compagnies d\'assurance et les experts.', 1000, '# 📋 Stage Gestionnaire Sinistres – AssurPro\n**Gestion de sinistres | Expertise | Droit des assurances**\n📍 *Toulouse – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nAu sein du service sinistres, vous instruirez des dossiers de sinistres complexes pour des clients professionnels et serez l\'interface entre les assurés et les compagnies d\'assurance.\n\n---\n\n## 🎯 Missions\n- Ouverture et instruction des dossiers de sinistres\n- Analyse des garanties contractuelles\n- Coordination avec les experts et les compagnies\n- Suivi des indemnisations et clôture des dossiers\n- Conseil aux clients sur leurs droits et recours\n\n---\n\n## Compétences développées\n- Droit des assurances et des contrats\n- Gestion de situations conflictuelles\n- Analyse de documents complexes\n- Négociation avec les compagnies\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 en droit, assurance ou gestion\n- Rigueur et méthode\n- Résistance au stress\n- Empathie et sens du service client', 7),
(30, '2025-06-01', '2025-11-30', 48.395335, -4.484734, 'Stage Développeur Python – Outils Internes', 'Stage 6 mois Toulouse. Développement d\'outils d\'automatisation et de reporting pour les équipes commerciales et de gestion d\'AssurPro.', 1050, '# 🐍 Stage Développeur Python – AssurPro\n**Python | Automatisation | Power BI | API**\n📍 *Toulouse – Centre*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous développerez des outils internes pour automatiser les tâches répétitives des équipes commerciales et améliorer le reporting.\n\n---\n\n## 🎯 Missions\n- Automatisation de la génération de documents (contrats, avenants)\n- Développement de scripts Python pour le traitement de données\n- Création de tableaux de bord Power BI\n- Intégration avec les APIs des compagnies d\'assurance partenaires\n- Documentation technique\n\n---\n\n## 🧰 Stack technique\n- Python (pandas, openpyxl, requests)\n- Power BI\n- APIs REST\n- SQL (MySQL)\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 informatique ou mathématiques\n- Python intermédiaire\n- SQL de base\n- Autonomie et sens pratique', 7),
(31, '2025-04-01', '2025-09-30', 45.184029, 0.721755, 'Stage Chef de Projet Communication', 'Stage 6 mois Paris. Coordination de campagnes de communication 360° pour des clients grands comptes dans les secteurs de la grande consommation et du luxe.', 1100, '# 🎨 Stage Chef de Projet Communication – Agence Horizon\n**Gestion de projet | Communication 360° | Relations clients**\n📍 *Paris – 9ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous serez l\'interface opérationnelle entre les clients et les équipes créatives de l\'agence. Un rôle central dans la mise en œuvre des campagnes de communication.\n\n---\n\n## 🎯 Missions\n- Coordination des équipes créatives, studio et production\n- Suivi des plannings et des budgets\n- Présentation des recommandations aux clients\n- Gestion des prestataires (photographes, imprimeurs, studios)\n- Compte-rendu et suivi post-campagne\n\n---\n\n## Compétences développées\n- Gestion de projet en agence\n- Relation client\n- Vision des métiers de la communication\n- Organisation et rigueur\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 communication, marketing ou gestion de projet\n- Excellent relationnel\n- Sens de l\'organisation\n- Curiosité créative', 8),
(32, '2025-05-01', '2025-10-31', 43.295097, -0.370797, 'Stage Concepteur-Rédacteur', 'Stage 6 mois Paris. Création de contenus créatifs pour des campagnes publicitaires multicanal (print, digital, TV) pour des marques grand public.', 1050, '# ✍️ Stage Concepteur-Rédacteur – Agence Horizon\n**Copywriting | Storytelling | Campagnes publicitaires | Brand content**\n📍 *Paris – 9ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous travaillerez en tandem avec un directeur artistique pour concevoir des campagnes publicitaires créatives pour des marques reconnues.\n\n---\n\n## 🎯 Missions\n- Conception d\'idées créatives en réponse aux briefs clients\n- Rédaction de copy pour tous supports (print, digital, TV, radio)\n- Participation aux brainstormings créatifs\n- Présentation des concepts aux équipes et aux clients\n- Veille créative et concurrentielle\n\n---\n\n## Compétences développées\n- Copywriting et storytelling\n- Compréhension des codes publicitaires\n- Travail en binôme créatif\n- Présentation et défense d\'idées\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 communication, lettres ou école de publicité\n- Excellentes qualités rédactionnelles\n- Créativité et originalité\n- Portfolio de créations apprécié', 8),
(33, '2025-06-01', '2025-11-30', 45.764043, 4.835659, 'Stage Responsable Relations Presse', 'Stage 6 mois Paris. Gestion des relations presse pour des clients du secteur tourisme et luxe : rédaction de communiqués, organisation de conférences de presse, suivi des retombées.', 1100, '# 📰 Stage Relations Presse – Agence Horizon\n**RP | Rédaction | Presse | Influence | Événements médias**\n📍 *Paris – 9ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous gérerez les relations presse pour des clients dans les secteurs du tourisme et du luxe, en étant l\'interface entre les marques et les journalistes.\n\n---\n\n## 🎯 Missions\n- Rédaction et diffusion de communiqués et dossiers de presse\n- Organisation de conférences de presse et voyages de presse\n- Gestion et entretien du fichier médias\n- Suivi et mesure des retombées presse (Cision, Meltwater)\n- Veille médiatique quotidienne\n\n---\n\n## Compétences développées\n- Techniques de relations presse\n- Rédaction journalistique\n- Réseau dans les médias\n- Gestion d\'événements médias\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 communication, journalisme ou lettres\n- Excellentes qualités rédactionnelles\n- Réseau journalistes un plus\n- Rigueur et disponibilité', 8),
(34, '2025-04-15', '2025-10-15', 43.610769, 3.876716, 'Stage Planneur Stratégique', 'Stage 6 mois Paris. Réalisation d\'études stratégiques et de veilles concurrentielles pour guider la création publicitaire et les recommandations aux clients.', 1150, '# 🎯 Stage Planneur Stratégique – Agence Horizon\n**Stratégie de marque | Études | Insights consommateurs | Positionnement**\n📍 *Paris – 9ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous nourrirez la réflexion stratégique de l\'agence en réalisant des études de marché, des analyses consommateurs et des veilles sectorielles.\n\n---\n\n## 🎯 Missions\n- Analyse des tendances de consommation\n- Études qualitatives et quantitatives\n- Rédaction de notes stratégiques et de briefs créatifs\n- Veille concurrentielle et sectorielle\n- Présentation des insights aux équipes créatives et aux clients\n\n---\n\n## Compétences développées\n- Analyse et synthèse d\'informations complexes\n- Compréhension des comportements consommateurs\n- Rédaction stratégique\n- Présentation à des équipes pluridisciplinaires\n\n---\n\n## 👤 Profil recherché\n- Bac+5 marketing, communication ou sciences sociales\n- Curiosité intellectuelle et esprit analytique\n- Qualités rédactionnelles\n- Intérêt pour les marques et la publicité', 8),
(35, '2025-04-01', '2025-09-30', 46.204391, 5.225500, 'Stage Chargé de Campagnes Influence Marketing', 'Stage 6 mois Lyon. Gestion de campagnes d\'influence pour des marques lifestyle et beauté : identification d\'influenceurs, briefing, suivi et mesure des performances.', 1000, '# 📱 Stage Influence Marketing – InfluenceMedia\n**Influence | Social Media | Briefing | KPIs | Créateurs de contenu**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous gérerez des campagnes d\'influence de bout en bout pour des marques lifestyle et beauté, de la sélection des influenceurs à la mesure des résultats.\n\n---\n\n## 🎯 Missions\n- Identification et qualification d\'influenceurs (micro, macro, nano)\n- Rédaction des briefs créatifs\n- Coordination des créateurs de contenu\n- Suivi des publications et vérification de la conformité\n- Reporting des performances (reach, engagement, conversions)\n\n---\n\n## Compétences développées\n- Marketing d\'influence et fonctionnement des réseaux sociaux\n- Gestion de relations avec des créateurs de contenu\n- Analyse de données (KPIs social media)\n- Autonomie et organisation\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 marketing, communication ou digital\n- Maîtrise des réseaux sociaux (Instagram, TikTok, YouTube)\n- Sens de l\'organisation\n- Connaissance des univers lifestyle/beauté appréciée', 9),
(36, '2025-05-01', '2025-10-31', 43.529742, 5.447427, 'Stage Community Manager & Content Creator', 'Stage 6 mois Lyon. Animation des réseaux sociaux de clients dans le secteur food et lifestyle, création de contenus engageants et gestion des communautés.', 950, '# 🎬 Stage Community Manager – InfluenceMedia\n**Community Management | Création de contenu | Réseaux sociaux | Engagement**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous animerez les réseaux sociaux de marques food et lifestyle, en créant des contenus engageants et en gérant les interactions avec les communautés.\n\n---\n\n## 🎯 Missions\n- Création et programmation de contenus (posts, stories, reels)\n- Animation et modération des communautés\n- Rédaction de captions et adaptation du ton de marque\n- Veille sur les tendances des réseaux sociaux\n- Reporting mensuel des performances\n\n---\n\n## Compétences développées\n- Community management\n- Création de contenus visuels (Canva, Adobe Express)\n- Copywriting pour les réseaux sociaux\n- Analyse des statistiques social media\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 communication ou marketing digital\n- Créatif(ve) et à l\'aise avec les réseaux sociaux\n- Maîtrise de Canva ou outils similaires\n- Sens de l\'écriture et du storytelling', 9),
(37, '2025-06-01', '2025-11-30', 47.076668, 2.399602, 'Stage Data Analyst Marketing Digital', 'Stage 6 mois Lyon. Analyse des performances des campagnes digitales, construction de tableaux de bord et formulation de recommandations d\'optimisation.', 1050, '# 📊 Stage Data Analyst Marketing – InfluenceMedia\n**Google Analytics | Meta Ads | Data Studio | A/B Testing**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous analyserez les performances des campagnes digitales et social media pour optimiser le ROI de nos clients.\n\n---\n\n## 🎯 Missions\n- Analyse des données de campagnes (Meta Ads, Google Ads, TikTok Ads)\n- Construction de dashboards de reporting (Looker Studio, Tableau)\n- Tests A/B sur les contenus et les audiences\n- Formulation de recommandations d\'optimisation\n- Veille sur les évolutions des algorithmes des plateformes\n\n---\n\n## Compétences développées\n- Analyse de données marketing\n- Maîtrise des outils analytics\n- ROI et attribution des campagnes\n- Présentation de résultats à des clients\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 marketing digital, data ou statistiques\n- Google Analytics, Meta Business Manager\n- Excel/Google Sheets avancé\n- Curiosité pour les données', 9),
(38, '2025-04-01', '2025-09-30', 43.603811, 1.445060, 'Stage Chef de Projet Événementiel', 'Stage 6 mois Bordeaux. Organisation d\'événements corporate (séminaires, conventions, soirées de gala) pour des clients grands comptes dans toute la France.', 1000, '# 🎉 Stage Chef de Projet Événementiel – Com\'Event\n**Événements corporate | Logistique | Coordination | Budget**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous coordonnerez l\'organisation d\'événements corporate de A à Z, de la conception à la clôture, pour des clients grands comptes.\n\n---\n\n## 🎯 Missions\n- Participation aux appels d\'offres et conception des propositions\n- Recherche et négociation avec les prestataires (traiteurs, lieux, AV)\n- Coordination logistique avant et pendant l\'événement\n- Gestion du budget et des imprévus\n- Bilan et retour d\'expérience post-événement\n\n---\n\n## Compétences développées\n- Organisation et gestion de projet événementiel\n- Négociation avec les prestataires\n- Gestion du stress et des imprévus\n- Sens du service et de la qualité\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 événementiel, communication ou gestion\n- Excellent sens de l\'organisation\n- Polyvalence et réactivité\n- Disponibilité (déplacements ponctuels)', 10),
(39, '2025-05-01', '2025-10-31', 43.529742, 5.447427, 'Stage Chargé de Relations Publiques & Institutionnelles', 'Stage 6 mois Bordeaux. Gestion des relations avec les médias, les institutions et les partenaires stratégiques pour des clients du secteur public et des associations.', 1000, '# 🤝 Stage Relations Publiques – Com\'Event\n**RP | Institutions | Partenariats | Communication institutionnelle**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous gérerez les relations institutionnelles et publiques de clients du secteur public et associatif, en développant leur réseau de partenaires.\n\n---\n\n## 🎯 Missions\n- Identification et approche de partenaires institutionnels\n- Rédaction de dossiers de partenariat\n- Organisation de rencontres et de tables rondes\n- Suivi des relations avec les élus et institutions\n- Veille réglementaire et institutionnelle\n\n---\n\n## Compétences développées\n- Techniques de relations publiques\n- Communication institutionnelle\n- Réseau dans les institutions et associations\n- Rédaction formelle et diplomatique\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 communication, sciences politiques ou droit\n- Intérêt pour la sphère publique et institutionnelle\n- Qualités rédactionnelles\n- Sens du protocole', 10),
(40, '2025-06-01', '2025-11-30', 46.355348, 3.303125, 'Stage Coordinateur Logistique Événements', 'Stage 6 mois Bordeaux. Gestion de la logistique opérationnelle des événements : transport, hébergement, restauration, technique AV et décoration.', 900, '# 🚚 Stage Coordinateur Logistique – Com\'Event\n**Logistique événementielle | Prestataires | Budget | Opérationnel**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous serez en charge de la logistique opérationnelle des événements organisés par Com\'Event : de la réservation des prestataires à la gestion sur site.\n\n---\n\n## 🎯 Missions\n- Recherche et réservation des prestataires (lieux, transport, hôtels)\n- Gestion des demandes techniques (AV, scénographie, mobilier)\n- Coordination sur site le jour de l\'événement\n- Suivi du budget logistique\n- Gestion des imprévus et ajustements de dernière minute\n\n---\n\n## Compétences développées\n- Logistique et coordination opérationnelle\n- Négociation avec les fournisseurs\n- Gestion du budget et optimisation des coûts\n- Réactivité et gestion du stress\n\n---\n\n## 👤 Profil recherché\n- Bac+2 à Bac+4 logistique, tourisme ou événementiel\n- Sens de l\'organisation et polyvalence\n- Permis B apprécié\n- Disponibilité (week-ends ponctuels)', 10);
INSERT INTO `Offre` (`id_offre`, `date_debut`, `date_fin`, `lat`, `lng`, `titre`, `description_carte`, `remuneration_par_mois`, `description_offre_de_stage`, `id_entreprise`) VALUES
(41, '2025-04-01', '2025-09-30', 48.389235, -4.486060, 'Stage Ingénieur Calcul Structures', 'Stage 6 mois Toulouse. Réalisation de calculs par éléments finis pour la validation de pièces structurales dans le secteur aéronautique.', 1300, '# ⚙️ Stage Ingénieur Calcul – Ingénia Tech\n**Éléments finis | ANSYS | Abaqus | Mécanique des structures**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des études de calcul par éléments finis pour valider des pièces structurales de systèmes aéronautiques en cours de développement.\n\n---\n\n## 🎯 Missions\n- Modélisation géométrique et maillage des pièces\n- Définition des cas de charge et conditions aux limites\n- Réalisation des calculs (statique, dynamique, fatigue)\n- Interprétation des résultats et rédaction des rapports\n- Corrélation calcul/essai\n\n---\n\n## 🧰 Outils\n- ANSYS Mechanical, Abaqus\n- CATIA V5/V6 (modélisation)\n- Python (post-traitement)\n- NASTRAN (apprécié)\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur mécanique, matériaux ou aéronautique\n- Bases en mécanique des structures\n- Maîtrise d\'un logiciel FEA (ANSYS, Abaqus, NASTRAN)\n- Rigueur et sens de l\'analyse', 11),
(42, '2025-05-01', '2025-10-31', 47.394144, 0.684840, 'Stage Ingénieur Conception Mécanique 3D', 'Stage 6 mois Toulouse. Conception et modélisation 3D de sous-systèmes mécaniques pour des équipements automobiles, de la maquette numérique aux plans de définition.', 1250, '# 🔧 Stage Ingénieur Conception Mécanique – Ingénia Tech\n**CATIA V5 | SolidWorks | Conception 3D | Plans de définition**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous concevrez des sous-systèmes mécaniques pour des équipements automobiles, de la modélisation 3D jusqu\'aux plans de définition pour la fabrication.\n\n---\n\n## 🎯 Missions\n- Modélisation 3D de pièces et d\'assemblages (CATIA V5/SolidWorks)\n- Rédaction des plans de définition\n- Analyse de la faisabilité de fabrication (DFM/DFA)\n- Participation aux revues de conception\n- Gestion documentaire du projet\n\n---\n\n## 🧰 Outils\n- CATIA V5 ou SolidWorks\n- ENOVIA (PDM)\n- AutoCAD (2D complémentaire)\n- Excel (suivi de projet)\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur mécanique, productique ou génie industriel\n- Maîtrise de CATIA V5 ou SolidWorks\n- Connaissance des tolérances et cotation fonctionnelle\n- Rigueur et précision', 11),
(43, '2025-06-01', '2025-11-30', 45.772584, 4.827298, 'Stage Ingénieur Simulation Thermique & Fluides', 'Stage 6 mois Toulouse. Réalisation d\'études CFD pour l\'optimisation du refroidissement de systèmes électroniques embarqués dans le secteur aéronautique.', 1350, '# 🌡️ Stage Ingénieur CFD – Ingénia Tech\n**CFD | ANSYS Fluent | Star-CCM+ | Thermique**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des simulations de dynamique des fluides (CFD) pour optimiser le refroidissement de boîtiers électroniques embarqués dans des avions.\n\n---\n\n## 🎯 Missions\n- Modélisation des géométries d\'échange thermique\n- Paramétrage et réalisation des simulations CFD\n- Post-traitement et interprétation des résultats\n- Propositions d\'optimisation des designs\n- Rédaction des rapports techniques\n\n---\n\n## 🧰 Outils\n- ANSYS Fluent, Star-CCM+\n- CATIA V5 (import géométrie)\n- Python (post-traitement)\n- MATLAB (validation analytique)\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur mécanique des fluides ou thermique\n- Notions de CFD\n- Maîtrise d\'ANSYS Fluent ou Star-CCM+ appréciée\n- Rigueur scientifique', 11),
(44, '2025-04-15', '2025-10-15', 48.850753, 2.384985, 'Stage Ingénieur Chef de Projet R&D', 'Stage 6 mois Toulouse. Pilotage d\'un projet de R&D en conception mécanique innovante : coordination des équipes pluridisciplinaires, suivi planning et risques.', 1200, '# 📋 Stage Chef de Projet R&D – Ingénia Tech\n**Gestion de projet | R&D | Coordination | Planification**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous piloterez un projet de R&D en ingénierie mécanique, en coordonnant des équipes pluridisciplinaires (mécaniciens, thermiciens, électroniciens).\n\n---\n\n## 🎯 Missions\n- Élaboration et suivi du planning projet (MS Project, Jira)\n- Coordination des équipes pluridisciplinaires\n- Gestion des risques techniques et planning\n- Animation des revues de projet\n- Reporting auprès du management et du client\n\n---\n\n## Compétences développées\n- Gestion de projet en contexte industriel\n- Coordination pluridisciplinaire\n- Communication technique et managériale\n- Vision système d\'un projet R&D\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur (toutes spécialités)\n- Leadership et sens de l\'organisation\n- Aisance relationnelle\n- Anglais technique', 11),
(45, '2025-04-01', '2025-09-30', 47.322047, 5.041480, 'Stage Ingénieur Thermique & Énergétique du Bâtiment', 'Stage 6 mois Grenoble. Réalisation d\'études thermiques dynamiques pour des bâtiments tertiaires et résidentiels dans le cadre de la RE2020.', 1200, '# 🌿 Stage Ingénieur Thermique – GreenBuild\n**RE2020 | STD | Bâtiments à énergie positive | BEPOS**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des études thermiques dynamiques pour des projets de construction neuve et de rénovation, dans le cadre de la réglementation RE2020.\n\n---\n\n## 🎯 Missions\n- Simulations thermiques dynamiques (DesignBuilder, TRNSYS)\n- Optimisation des systèmes CVC (chauffage, ventilation, climatisation)\n- Calculs énergétiques et bilan carbone\n- Dimensionnement des systèmes d\'énergies renouvelables\n- Rédaction des notes de calcul et rapports\n\n---\n\n## 🧰 Outils\n- DesignBuilder, TRNSYS, PLEIADES\n- AutoCAD, Revit (extraction données)\n- Excel (bilans énergétiques)\n- Logiciels RE2020\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur génie civil, énergie ou environnement\n- Bases en thermique du bâtiment\n- Logiciels de STD appréciés\n- Sensibilité aux enjeux environnementaux', 12),
(46, '2025-05-01', '2025-10-31', 45.764043, 4.835659, 'Stage Coordinateur BIM', 'Stage 6 mois Grenoble. Coordination BIM de projets de construction durable : gestion de la maquette numérique, détection de conflits et formation des équipes projet.', 1150, '# 🏗️ Stage Coordinateur BIM – GreenBuild\n**BIM | Revit | Navisworks | IFC | Autodesk**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous coordonnerez le BIM sur des projets de construction durable, en gérant la maquette numérique et en assurant la cohérence entre les différents corps de métier.\n\n---\n\n## 🎯 Missions\n- Coordination des maquettes BIM multi-disciplinaires\n- Détection et résolution des conflits (clash detection)\n- Mise en place et respect de la convention BIM\n- Formation des équipes projet aux outils BIM\n- Extraction des données pour les études thermiques et énergétiques\n\n---\n\n## 🧰 Outils\n- Revit, ArchiCAD\n- Navisworks, Solibri\n- BIM 360 / ACC (Autodesk)\n- IFC, BCF\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur génie civil, architecture ou BIM\n- Maîtrise de Revit\n- Connaissance du processus BIM\n- Sens de la coordination et de la communication', 12),
(47, '2025-06-01', '2025-11-30', 46.204391, 5.225500, 'Stage Chargé de Certification & Labels Environnementaux', 'Stage 6 mois Grenoble. Accompagnement des projets de construction dans l\'obtention de certifications HQE, BREEAM et BBC Rénovation.', 1100, '# 🏅 Stage Certification Environnementale – GreenBuild\n**HQE | BREEAM | BBC Rénovation | Audit | Conformité**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des projets de construction neuve et de rénovation dans l\'obtention de certifications environnementales (HQE, BREEAM, BBC).\n\n---\n\n## 🎯 Missions\n- Analyse des projets par rapport aux référentiels de certification\n- Constitution des dossiers de certification\n- Coordination avec les équipes de maîtrise d\'œuvre\n- Participation aux audits de certification\n- Veille réglementaire et normative\n\n---\n\n## Compétences développées\n- Référentiels de certifications environnementales\n- Analyse de conformité et audit\n- Coordination de projets de construction\n- Réglementation environnementale du bâtiment\n\n---\n\n## 👤 Profil recherché\n- Master 2 génie civil, environnement ou architecture\n- Intérêt fort pour la construction durable\n- Rigueur et sens du détail\n- Qualités rédactionnelles', 12),
(48, '2025-04-01', '2025-09-30', 45.782384, 3.082646, 'Stage Ingénieur Systèmes Embarqués', 'Stage 6 mois Nantes. Développement firmware en C/C++ pour des automates industriels connectés destinés à des sites de production agroalimentaires.', 1200, '# ⚡ Stage Ingénieur Systèmes Embarqués – Électro Ingénierie\n**C/C++ | Microcontrôleurs | Protocoles industriels | RTOS**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous développerez le firmware d\'automates industriels connectés pour des clients dans le secteur agroalimentaire.\n\n---\n\n## 🎯 Missions\n- Développement firmware en C/C++ sur microcontrôleurs STM32\n- Implémentation de protocoles de communication (Modbus, CAN)\n- Tests unitaires et intégration système\n- Débogage et optimisation du code embarqué\n- Rédaction de la documentation technique\n\n---\n\n## 🧰 Stack technique\n- C/C++, RTOS (FreeRTOS)\n- STM32CubeIDE, Keil MDK\n- Modbus RTU/TCP, CAN Bus\n- Oscilloscope, analyseur de protocole\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur électronique, informatique embarquée\n- C/C++ maîtrisé\n- Notions de microcontrôleurs\n- Curiosité pour le hardware', 13),
(49, '2025-05-01', '2025-10-31', 47.902733, 1.909251, 'Stage Ingénieur Automatisme & SCADA', 'Stage 6 mois Nantes. Programmation d\'automates Siemens et développement d\'interfaces de supervision SCADA pour des lignes de production industrielles.', 1150, '# 🤖 Stage Ingénieur Automatisme – Électro Ingénierie\n**Siemens S7 | TIA Portal | WinCC | SCADA**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous programmerez des automates industriels Siemens et développerez des interfaces de supervision pour des lignes de production.\n\n---\n\n## 🎯 Missions\n- Programmation d\'automates S7-1500 (TIA Portal, ladder, ST)\n- Développement d\'interfaces SCADA (WinCC, Ignition)\n- Mise en service et tests sur ligne de production\n- Rédaction des dossiers de définition fonctionnelle\n- Formation des opérateurs\n\n---\n\n## 🧰 Outils\n- Siemens TIA Portal (S7-300/400/1500)\n- WinCC, Ignition (SCADA)\n- Profinet, Profibus\n- SolidEdge (synoptiques)\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur automatisme, électronique ou génie industriel\n- Notions d\'automates programmables\n- Esprit terrain et pratique\n- Rigeur et sécurité', 13),
(50, '2025-06-01', '2025-11-30', 44.104144, 1.084011, 'Stage Ingénieur Études Électriques', 'Stage 6 mois Nantes. Réalisation d\'études électriques (bilans de puissance, schémas HTA/BTA, calculs de court-circuit) pour des projets industriels.', 1100, '# ⚡ Stage Ingénieur Études Électriques – Électro Ingénierie\n**Caneco BT/HTA | ECODIAL | Schémas électriques | Normes NFC**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des études électriques complètes pour des projets industriels : du bilan de puissance aux schémas de câblage.\n\n---\n\n## 🎯 Missions\n- Réalisation des bilans de puissance\n- Calculs de dimensionnement des câbles et protections (Caneco BT)\n- Calculs de courts-circuits (ECODIAL, SKM PowerTools)\n- Rédaction des schémas électriques (AutoCAD Electrical, SEE Electrical)\n- Application des normes NFC 15-100 et IEC 60364\n\n---\n\n## 🧰 Outils\n- Caneco BT/HTA, ECODIAL\n- AutoCAD Electrical, SEE Electrical\n- SKM PowerTools\n- Excel (bilans de puissance)\n\n---\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur génie électrique\n- Bases en dimensionnement électrique\n- Connaissance des normes électriques\n- Rigueur et précision', 13),
(51, '2025-04-01', '2025-09-30', 41.927227, 8.734064, 'Stage Chargé de Recrutement', 'Stage 6 mois Paris. Gestion du processus de recrutement de A à Z pour des postes cadres et non-cadres dans des secteurs variés.', 1000, '# 👥 Stage Chargé de Recrutement – Groupe Avenir RH\n**Recrutement | Sourcing | Entretiens | Assessment**\n📍 *Paris – 2ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous gérerez le processus de recrutement de A à Z pour des clients dans des secteurs variés : rédaction d\'annonces, sourcing, entretiens et présentation des candidats.\n\n---\n\n## 🎯 Missions\n- Rédaction et diffusion des annonces de recrutement\n- Sourcing de candidats (LinkedIn, CVthèques, cooptation)\n- Conduite des entretiens téléphoniques et en présentiel\n- Rédaction des synthèses et présentation aux clients\n- Suivi des candidats et des recrutements\n\n---\n\n## Compétences développées\n- Techniques de sourcing et d\'entretien\n- Connaissance du marché de l\'emploi\n- Relation client et gestion des attentes\n- Pratique des outils RH (ATS)\n\n---\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 RH, psychologie ou commerce\n- Sens de l\'écoute et empathie\n- Capacité à gérer plusieurs processus simultanément\n- Aisance relationnelle', 14),
(52, '2025-05-01', '2025-10-31', 45.184029, 0.721755, 'Stage Consultant Formation & Développement RH', 'Stage 6 mois Paris. Conception et déploiement de programmes de formation pour des clients entreprises : analyse des besoins, ingénierie pédagogique et suivi.', 1050, '# 📚 Stage Consultant Formation – Groupe Avenir RH\n**Ingénierie pédagogique | Formation | GPEC | E-learning**\n📍 *Paris – 2ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous concevrez et déploierez des programmes de formation pour des clients entreprises, de l\'analyse des besoins à l\'évaluation des résultats.\n\n---\n\n## 🎯 Missions\n- Analyse des besoins en formation (entretiens avec les managers)\n- Ingénierie pédagogique et conception des modules\n- Coordination des formateurs internes et externes\n- Animation de sessions de formation (soft skills)\n- Évaluation de l\'efficacité des formations\n\n---\n\n## Compétences développées\n- Ingénierie de formation\n- Animation de groupes\n- Conseil RH\n- Connaissance des dispositifs de formation (CPF, plan de développement)\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 RH, psychologie du travail ou sciences de l\'éducation\n- Intérêt pour la pédagogie et le développement des compétences\n- Aisance à l\'oral\n- Sens de l\'organisation', 14),
(53, '2025-06-01', '2025-11-30', 48.086399, -1.680527, 'Stage Consultant RH & Gestion des Talents', 'Stage 6 mois Paris. Accompagnement de clients dans la mise en place d\'outils de gestion des talents : évaluation de la performance, plans de succession et engagement.', 1100, '# 🌟 Stage Consultant Talents – Groupe Avenir RH\n**GPEC | Évaluation | Talent Management | Engagement**\n📍 *Paris – 2ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des DRH dans la structuration de leur politique de gestion des talents.\n\n---\n\n## 🎯 Missions\n- Conception d\'outils d\'évaluation des compétences\n- Mise en place de plans de succession\n- Réalisation d\'enquêtes d\'engagement (conception, analyse)\n- Accompagnement à la mise en place de l\'entretien annuel\n- Benchmark des pratiques RH innovantes\n\n---\n\n## Compétences développées\n- Gestion des talents et GPEC\n- Psychologie organisationnelle\n- Conseil en entreprise\n- Analyse de données RH\n\n---\n\n## 👤 Profil recherché\n- Bac+5 RH, psychologie du travail ou management\n- Sens analytique\n- Discrétion et éthique\n- Aisance relationnelle avec les dirigeants', 14),
(54, '2025-04-01', '2025-09-30', 43.610769, 3.876716, 'Stage Consultant Junior en Stratégie', 'Stage 6 mois Paris. Participation à des missions de conseil en stratégie pour des PME et ETI : diagnostic, recommandations et accompagnement à la mise en œuvre.', 1300, '# 🎯 Stage Consultant Stratégie – ConsultGroup\n**Stratégie | Diagnostic | Recommandations | Transformation**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous intégrerez une équipe de conseil pour accompagner des dirigeants de PME et ETI dans leurs décisions stratégiques.\n\n---\n\n## 🎯 Missions\n- Réalisation de diagnostics stratégiques (entretiens, analyses)\n- Analyse de données et benchmarks sectoriels\n- Rédaction de recommandations stratégiques\n- Préparation et animation de réunions clients\n- Suivi de la mise en œuvre des recommandations\n\n---\n\n## Compétences développées\n- Méthodes de conseil en stratégie\n- Analyse et synthèse d\'informations complexes\n- Communication avec des dirigeants\n- Vision globale des enjeux d\'entreprise\n\n---\n\n## 👤 Profil recherché\n- Bac+5 grande école de commerce ou d\'ingénieurs\n- Esprit analytique et synthétique\n- Excellentes qualités rédactionnelles et orales\n- Curiosité intellectuelle', 15),
(55, '2025-05-01', '2025-10-31', 50.629250, 3.057256, 'Stage Consultant Transformation Organisationnelle', 'Stage 6 mois Paris. Accompagnement de grandes entreprises dans leurs projets de réorganisation et de conduite du changement.', 1250, '# 🔄 Stage Consultant Transformation – ConsultGroup\n**Conduite du changement | Lean | Processus | Organisation**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des grandes entreprises dans leurs projets de transformation organisationnelle.\n\n---\n\n## 🎯 Missions\n- Cartographie et analyse des processus existants\n- Identification des axes d\'amélioration\n- Accompagnement au changement (communication, formation)\n- Animation d\'ateliers de travail avec les équipes\n- Suivi et mesure des indicateurs de transformation\n\n---\n\n## Compétences développées\n- Analyse organisationnelle\n- Conduite du changement\n- Lean management et amélioration continue\n- Facilitation et animation d\'ateliers\n\n---\n\n## 👤 Profil recherché\n- Bac+5 management, ingénierie ou grande école\n- Sens de la relation humaine\n- Capacité à gérer les résistances au changement\n- Écoute et pédagogie', 15),
(56, '2025-06-01', '2025-11-30', 44.933393, -0.173251, 'Stage Analyste Performance Opérationnelle', 'Stage 6 mois Paris. Diagnostic et optimisation des processus opérationnels de clients industriels et de services pour améliorer leur efficience.', 1200, '# 📊 Stage Analyste Performance – ConsultGroup\n**Lean | Six Sigma | Processus | KPIs | Optimisation**\n📍 *Paris – 8ème arrondissement*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des diagnostics de performance opérationnelle et proposerez des plans d\'amélioration pour des clients dans l\'industrie et les services.\n\n---\n\n## 🎯 Missions\n- Analyse des processus opérationnels (VSM, cartographie)\n- Identification des gaspillages et des dysfonctionnements\n- Construction des plans d\'amélioration continue\n- Accompagnement à la mise en œuvre des actions\n- Mesure des gains réalisés\n\n---\n\n## Compétences développées\n- Lean management et Six Sigma\n- Analyse de données opérationnelles\n- Conseil terrain\n- Présentation de résultats à des managers\n\n---\n\n## 👤 Profil recherché\n- Bac+5 ingénierie, management ou grande école\n- Approche terrain et pragmatique\n- Sens de l\'analyse\n- Aisance relationnelle', 15),
(57, '2025-04-01', '2025-09-30', 46.353387, 3.303609, 'Stage Consultant RSE & Développement Durable', 'Stage 6 mois Lyon. Accompagnement d\'entreprises dans l\'élaboration de leur stratégie RSE, la rédaction de leurs rapports extra-financiers et la mise en place d\'actions concrètes.', 1050, '# 🌍 Stage Consultant RSE – EcoServices\n**RSE | CSRD | Reporting extra-financier | Stratégie durable**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des entreprises de tailles variées dans l\'élaboration et la mise en œuvre de leur stratégie RSE.\n\n---\n\n## 🎯 Missions\n- Diagnostic RSE (analyse des parties prenantes, matérialité)\n- Élaboration de la stratégie et du plan d\'action RSE\n- Rédaction des rapports extra-financiers (CSRD, GRI, DPEF)\n- Suivi des indicateurs RSE\n- Sensibilisation des équipes internes des clients\n\n---\n\n## Compétences développées\n- Référentiels RSE (GRI, CSRD, ISO 26000)\n- Analyse de matérialité\n- Rédaction de rapports formels\n- Conseil en stratégie durable\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 développement durable, management ou sciences sociales\n- Connaissance des enjeux RSE\n- Qualités rédactionnelles\n- Sens de la conviction et de la pédagogie', 16),
(58, '2025-05-01', '2025-10-31', 43.529742, 5.447427, 'Stage Chargé de Mission Bilan Carbone', 'Stage 6 mois Lyon. Réalisation de bilans carbone (scope 1, 2, 3) pour des entreprises des secteurs industrie et services, et élaboration de plans de réduction.', 1000, '# 🌱 Stage Bilan Carbone – EcoServices\n**Bilan Carbone | GHG Protocol | Décarbonation | Scope 3**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous réaliserez des bilans carbone pour des entreprises industrielles et de services, en couvrant l\'ensemble des scopes d\'émissions.\n\n---\n\n## 🎯 Missions\n- Collecte des données d\'émissions auprès des clients\n- Calcul des émissions scope 1, 2 et 3 (méthode Bilan Carbone ADEME)\n- Identification des postes d\'émissions prioritaires\n- Élaboration des plans de réduction\n- Présentation des résultats aux dirigeants\n\n---\n\n## Compétences développées\n- Méthode Bilan Carbone® et GHG Protocol\n- Analyse des chaînes de valeur\n- Stratégies de décarbonation\n- Communication avec des dirigeants d\'entreprise\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 environnement, énergie ou ingénierie\n- Rigueur dans le traitement des données\n- Intérêt fort pour le changement climatique\n- Sens de la communication', 16),
(59, '2025-06-01', '2025-11-30', 47.494340, -0.554115, 'Stage Chargé de Mission Économie Circulaire', 'Stage 6 mois Lyon. Accompagnement d\'entreprises industrielles dans la mise en place de démarches d\'économie circulaire : réduction des déchets, recyclage et valorisation.', 950, '# ♻️ Stage Économie Circulaire – EcoServices\n**Économie circulaire | Déchets | Recyclage | Éco-conception**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n---\n\n## 📝 Présentation du stage\nVous accompagnerez des entreprises industrielles dans la transition vers l\'économie circulaire.\n\n---\n\n## 🎯 Missions\n- Audit des flux de déchets et des ressources\n- Identification des opportunités de réduction et valorisation\n- Mise en relation avec des filières de recyclage et de réemploi\n- Accompagnement à la mise en place de l\'éco-conception\n- Reporting et suivi des indicateurs économie circulaire\n\n---\n\n## Compétences développées\n- Diagnostic des flux de matières\n- Économie circulaire et écologie industrielle\n- Réseau des filières de valorisation\n- Gestion de projet environnemental\n\n---\n\n## 👤 Profil recherché\n- Bac+4/5 environnement, chimie ou génie des procédés\n- Intérêt pour l\'industrie et l\'environnement\n- Capacité d\'analyse\n- Sens du terrain', 16),
(60, '2025-04-01', '2025-09-30', 48.683832, 6.200654, 'Stage Développeur Angular & TypeScript', 'Stage 6 mois Paris. Développement de nouvelles fonctionnalités sur une application de gestion RH en Angular pour un client grand compte du secteur industrie.', 1100, '# 🔺 Stage Développeur Angular – Nexatech Solutions\n**Angular | TypeScript | RxJS | NgRx**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe frontend de Nexatech pour développer et maintenir une application de gestion RH utilisée par 5 000 collaborateurs d\'un grand groupe industriel.\n\n## 🎯 Missions\n- Développement de composants Angular (v17, standalone)\n- Gestion de l\'état avec NgRx\n- Intégration des APIs REST du backend Java\n- Rédaction de tests unitaires (Karma, Jest)\n- Participation aux cérémonies Scrum\n\n## 🧰 Stack technique\n- Angular 17, TypeScript, RxJS\n- NgRx, Angular Material\n- Jest, Cypress\n- GitLab CI\n\n## 👤 Profil recherché\n- Bac+4/5 développement frontend\n- Maîtrise de TypeScript\n- Notions d\'Angular ou React\n- Rigueur et autonomie', 1),
(61, '2025-05-15', '2025-11-15', 44.104144, 1.084011, 'Stage Développeur Full Stack Python/Django', 'Stage 6 mois Bordeaux. Développement de nouvelles fonctionnalités sur une plateforme de gestion documentaire Django pour un cabinet d\'avocats client.', 1050, '# 🐍 Stage Développeur Full Stack Django – Nexatech (Bordeaux)\n**Python | Django | PostgreSQL | Vue.js**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous travaillerez sur une plateforme de gestion documentaire pour un cabinet d\'avocats, en charge du backend Django et d\'une interface Vue.js.\n\n## 🎯 Missions\n- Développement de vues et APIs Django REST Framework\n- Modélisation de la base de données PostgreSQL\n- Développement d\'interfaces Vue.js 3\n- Mise en place de tâches asynchrones (Celery, Redis)\n- Tests unitaires et d\'intégration\n\n## 🧰 Stack technique\n- Python 3.12, Django 5, DRF\n- PostgreSQL, Redis, Celery\n- Vue.js 3, Pinia\n- Docker, GitHub Actions\n\n## 👤 Profil recherché\n- Bac+4/5 développement web\n- Python intermédiaire\n- Bases SQL solides\n- Curiosité et autonomie', 1),
(62, '2025-06-01', '2025-11-30', 46.554650, 3.334612, 'Stage Développeur Java Spring Boot', 'Stage 6 mois Toulouse. Développement de microservices Java Spring Boot pour une plateforme de gestion de flottes de véhicules.', 1100, '# ☕ Stage Développeur Java Spring Boot – Nexatech (Toulouse)\n**Java | Spring Boot | Kafka | Kubernetes**\n📍 *Toulouse – Capitole*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous intégrerez l\'équipe backend pour développer des microservices dans le cadre d\'une plateforme IoT de gestion de flottes de véhicules.\n\n## 🎯 Missions\n- Développement de microservices Spring Boot\n- Consommation et production d\'événements Kafka\n- Développement d\'APIs REST et gRPC\n- Rédaction de tests JUnit et Mockito\n- Déploiement sur Kubernetes\n\n## 🧰 Stack technique\n- Java 21, Spring Boot 3, Spring Cloud\n- Apache Kafka\n- PostgreSQL, Redis\n- Kubernetes, Helm\n\n## 👤 Profil recherché\n- Bac+4/5 développement logiciel\n- Java intermédiaire\n- Notions de Spring ou Maven\n- Intérêt pour les systèmes distribués', 1),
(63, '2025-04-15', '2025-10-15', 48.583148, 7.747882, 'Stage UX/UI Designer', 'Stage 6 mois Paris. Conception des interfaces utilisateur d\'une application SaaS B2B, de la recherche utilisateur au prototype haute fidélité.', 1000, '# 🎨 Stage UX/UI Designer – Nexatech Solutions\n**Figma | Design System | Recherche utilisateur | Prototypage**\n📍 *Paris – 11ème arrondissement*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe produit pour concevoir et améliorer l\'expérience utilisateur d\'une application SaaS B2B destinée aux équipes RH.\n\n## 🎯 Missions\n- Réalisation de recherches utilisateurs (interviews, tests)\n- Conception de wireframes et prototypes sur Figma\n- Contribution au Design System de l\'agence\n- Collaboration étroite avec les développeurs frontend\n- Tests d\'usabilité et itérations\n\n## 🧰 Outils\n- Figma, FigJam\n- Maze (tests utilisateurs)\n- Storybook (intégration Design System)\n\n## 👤 Profil recherché\n- Bac+4/5 design UX/UI ou école de design\n- Maîtrise de Figma\n- Portfolio de projets UX\n- Empathie et sens de la communication', 1),
(64, '2025-05-01', '2025-10-31', 42.697283, 2.895397, 'Stage Développeur C# .NET', 'Stage 6 mois Grenoble. Développement d\'une application de pilotage industriel en C# .NET pour un client du secteur de l\'énergie.', 1100, '# 🔷 Stage Développeur C# .NET – Nexatech (Grenoble)\n**C# | .NET 8 | WPF | SQL Server**\n📍 *Grenoble – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez une application Windows de supervision et de pilotage d\'installations industrielles pour un client du secteur de l\'énergie.\n\n## 🎯 Missions\n- Développement d\'interfaces WPF (MVVM)\n- Développement de services .NET (API REST)\n- Intégration de protocoles industriels (OPC-UA)\n- Tests unitaires et d\'intégration\n- Rédaction de la documentation technique\n\n## 🧰 Stack technique\n- C# .NET 8, WPF, MVVM\n- SQL Server, Entity Framework\n- OPC-UA, SignalR\n- Azure DevOps\n\n## 👤 Profil recherché\n- Bac+4/5 développement logiciel\n- C# ou Java intermédiaire\n- Notions de bases de données\n- Curiosité pour le domaine industriel', 1),
(65, '2025-06-01', '2025-11-30', 47.745457, 7.338664, 'Stage Développeur Backend Go', 'Stage 6 mois Nantes. Développement de services haute performance en Go pour une plateforme de traitement de flux de données IoT.', 1150, '# 🐹 Stage Développeur Backend Go – Nexatech (Nantes)\n**Go | gRPC | Kafka | Redis**\n📍 *Nantes – Île de Nantes*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe backend pour développer des services Go haute performance dans le cadre d\'une plateforme IoT traitant des millions d\'événements par jour.\n\n## 🎯 Missions\n- Développement de services en Go (routines, channels)\n- Exposition d\'APIs gRPC et REST\n- Consommation de flux Kafka\n- Optimisation des performances et profiling\n- Tests unitaires et benchmarks\n\n## 🧰 Stack technique\n- Go 1.23, gRPC, gin\n- Apache Kafka, Redis\n- PostgreSQL\n- Prometheus, Grafana\n\n## 👤 Profil recherché\n- Bac+5 développement logiciel ou systèmes\n- C, Java ou Python maîtrisé (Go appris rapidement)\n- Intérêt pour les systèmes haute performance\n- Curiosité et autonomie', 1),
(66, '2025-04-01', '2025-09-30', 43.604652, 3.879946, 'Stage Développeur Symfony/PHP', 'Stage 6 mois Strasbourg. Développement de fonctionnalités sur une application de gestion événementielle en Symfony 7 pour un client du secteur culturel.', 1050, '# 🎵 Stage Développeur Symfony – Nexatech (Strasbourg)\n**PHP | Symfony 7 | Doctrine | API Platform**\n📍 *Strasbourg – Centre*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous travaillerez sur une application de billetterie et de gestion d\'événements culturels développée avec Symfony 7 et une API Platform.\n\n## 🎯 Missions\n- Développement de fonctionnalités Symfony (controllers, services, events)\n- Modélisation et optimisation des entités Doctrine\n- Développement d\'endpoints API Platform (JSON-LD)\n- Rédaction de tests PHPUnit et Behat\n- Participation aux revues de code\n\n## 🧰 Stack technique\n- PHP 8.3, Symfony 7, API Platform\n- Doctrine ORM, MySQL\n- RabbitMQ (messages async)\n- Docker, GitLab CI\n\n## 👤 Profil recherché\n- Bac+4/5 développement web\n- PHP et bases de Symfony\n- SQL intermédiaire\n- Rigueur dans le code', 1),
(67, '2025-05-01', '2025-10-31', 48.070686, 7.358513, 'Stage Développeur React Native & Expo', 'Stage 6 mois Rouen. Développement d\'une application mobile de suivi de chantiers pour des artisans du BTP.', 950, '# 📱 Stage Développeur React Native – Nexatech (Rouen)\n**React Native | Expo | TypeScript | SQLite**\n📍 *Rouen – Centre*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez une application mobile cross-platform permettant aux artisans de gérer leurs chantiers, devis et factures en mobilité.\n\n## 🎯 Missions\n- Développement de fonctionnalités React Native (Expo SDK)\n- Implémentation du mode hors-ligne (SQLite, Watermelon DB)\n- Intégration d\'une API REST backend\n- Tests sur appareils iOS et Android\n- Publication sur les stores (Expo EAS Build)\n\n## 🧰 Stack technique\n- React Native (Expo), TypeScript\n- WatermelonDB, SQLite\n- React Query, Zustand\n- Expo EAS\n\n## 👤 Profil recherché\n- Bac+4/5 développement mobile ou web\n- React ou React Native\n- Autonomie et sens des responsabilités', 1),
(68, '2025-04-01', '2025-09-30', 44.837789, -0.579180, 'Stage Ingénieur Data – Qualité des données', 'Stage 6 mois Toulouse. Mise en place d\'un framework de qualité des données pour un lac de données d\'un grand groupe industriel client.', 1200, '# 🔍 Stage Data Quality Engineer – DataSphere (Toulouse)\n**Great Expectations | dbt | Python | Snowflake**\n📍 *Toulouse*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous contribuerez à la mise en place d\'une culture data quality au sein du lac de données d\'un grand groupe industriel : profiling, règles métier, alerting.\n\n## 🎯 Missions\n- Profilage statistique des données sources\n- Définition et implémentation des règles de qualité (Great Expectations)\n- Mise en place de tests dbt pour la couche transformation\n- Dashboard de suivi de la qualité (Metabase)\n- Formation des équipes data clients\n\n## 🧰 Stack technique\n- Python, Great Expectations, dbt\n- Snowflake, S3\n- Airflow (orchestration)\n- Metabase\n\n## 👤 Profil recherché\n- Master 2 Data Engineering ou informatique\n- Python et SQL maîtrisés\n- Rigueur et sens de la pédagogie', 2),
(69, '2025-05-01', '2025-10-31', 45.764043, 4.835659, 'Stage Data Scientist – Computer Vision', 'Stage 6 mois Paris. Développement de modèles de vision par ordinateur pour automatiser le contrôle qualité visuel sur des lignes de production industrielles.', 1400, '# 👁️ Stage Data Scientist Vision – DataSphere (Paris)\n**PyTorch | YOLO | OpenCV | MLflow**\n📍 *Paris*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez des modèles de vision par ordinateur pour détecter des défauts sur des pièces industrielles en temps réel.\n\n## 🎯 Missions\n- Constitution et annotation du dataset d\'images\n- Fine-tuning de modèles YOLO v8 pour la détection de défauts\n- Optimisation pour l\'inférence temps réel (ONNX, TensorRT)\n- Déploiement sur edge devices (NVIDIA Jetson)\n- Évaluation et rapport de performances\n\n## 🧰 Stack technique\n- Python, PyTorch, OpenCV\n- YOLO v8, ONNX, TensorRT\n- MLflow, DVC\n- NVIDIA Jetson (edge)\n\n## 👤 Profil recherché\n- Master 2 IA ou vision artificielle\n- PyTorch avancé\n- Expérience en vision appréciée', 2),
(70, '2025-06-01', '2025-11-30', 48.573405, 7.752111, 'Stage Data Engineer – Streaming Temps Réel', 'Stage 6 mois Bordeaux. Conception d\'une architecture de traitement de données en temps réel pour un opérateur télécom client.', 1300, '# ⚡ Stage Data Engineer Streaming – DataSphere (Bordeaux)\n**Kafka | Flink | Python | Cassandra**\n📍 *Bordeaux*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous concevrez et implémenterez une architecture de streaming pour traiter des millions d\'événements réseau par seconde pour un opérateur télécom.\n\n## 🎯 Missions\n- Conception de l\'architecture de streaming (Kafka + Flink)\n- Développement de jobs Flink (Java/Python)\n- Modélisation du stockage (Cassandra, ClickHouse)\n- Monitoring et alerting en temps réel\n- Documentation de l\'architecture\n\n## 🧰 Stack technique\n- Apache Kafka, Apache Flink\n- Cassandra, ClickHouse\n- Python, Java\n- Grafana, Prometheus\n\n## 👤 Profil recherché\n- Master 2 Data Engineering\n- Python ou Java avancé\n- Notions de Kafka ou Flink appréciées', 2),
(71, '2025-04-15', '2025-10-15', 48.117266, -1.677793, 'Stage Analyste BI Finance & Contrôle de Gestion', 'Stage 6 mois Lyon. Construction d\'un système de reporting financier consolidé pour la direction financière d\'un groupe de distribution.', 1150, '# 💰 Stage Analyste BI Finance – DataSphere\n**Power BI | DAX | Azure Synapse | Finance**\n📍 *Lyon – Confluence*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous construirez un système de reporting financier consolidé permettant à la direction financière d\'un groupe de distribution de piloter ses 120 magasins.\n\n## 🎯 Missions\n- Modélisation du Data Warehouse (Azure Synapse)\n- Développement de rapports Power BI Premium (DAX complexe)\n- Automatisation des consolidations financières\n- Formation des contrôleurs de gestion\n- Mise en place d\'alertes et d\'abonnements\n\n## 🧰 Stack technique\n- Power BI Premium, DAX, Power Query\n- Azure Synapse Analytics\n- SQL Server, Excel\n- Azure Data Factory\n\n## 👤 Profil recherché\n- Bac+5 finance, data ou contrôle de gestion\n- Power BI et DAX maîtrisés\n- Compréhension des états financiers', 2),
(72, '2025-05-15', '2025-11-15', 44.010136, 1.355647, 'Stage Data Analyst – Marketing & E-commerce', 'Stage 6 mois Rennes. Analyse des comportements d\'achat et optimisation du tunnel de conversion pour une plateforme e-commerce client.', 1100, '# 🛍️ Stage Data Analyst E-commerce – DataSphere (Rennes)\n**Google Analytics | Python | A/B Testing | Looker**\n📍 *Rennes*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous analyserez les données comportementales d\'une plateforme e-commerce à 2M de visiteurs/mois pour identifier les leviers d\'optimisaon du taux de conversion.\n\n## 🎯 Missions\n- Analyse du parcours client (funnel, heatmaps)\n- Conception et analyse de tests A/B\n- Segmentation clients et personnalisation\n- Construction de dashboards Looker\n- Recommandations d\'optimisation\n\n## 🧰 Stack technique\n- Python (pandas, scipy)\n- GA4, Mixpanel\n- Looker Studio, BigQuery\n- Optimizely (A/B tests)\n\n## 👤 Profil recherché\n- Bac+4/5 data, marketing ou statistiques\n- Python et SQL\n- Curiosité pour le e-commerce et l\'UX', 2),
(73, '2025-06-01', '2025-11-30', 47.748418, 7.339746, 'Stage Ingénieur IA Générative & LLMs', 'Stage 6 mois Lille. Développement d\'une solution RAG (Retrieval-Augmented Generation) pour l\'automatisation du service client d\'une compagnie d\'assurance.', 1500, '# 🤖 Stage IA Générative LLM – DataSphere (Lille)\n**LLM | RAG | LangChain | Vector DB**\n📍 *Lille*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez une solution d\'IA générative permettant à des agents du service client de répondre instantanément à des questions complexes sur les contrats d\'assurance.\n\n## 🎯 Missions\n- Architecture et implémentation d\'un système RAG\n- Indexation de bases documentaires (Pinecone, Weaviate)\n- Prompt engineering et fine-tuning\n- Évaluation des réponses (RAGAs, BLEU)\n- Déploiement et monitoring\n\n## 🧰 Stack technique\n- Python, LangChain, LlamaIndex\n- OpenAI / Mistral / Claude\n- Pinecone, Weaviate (vector DBs)\n- FastAPI, Docker\n\n## 👤 Profil recherché\n- Master 2 IA ou NLP\n- Python avancé et bases du deep learning\n- Passionné(e) par les LLMs', 2),
(74, '2025-04-01', '2025-09-30', 44.563214, 6.079303, 'Stage Analyste Threat Intelligence', 'Stage 6 mois Paris. Collecte, analyse et diffusion du renseignement sur les menaces cyber pour alimenter le SOC et les équipes de réponse à incident.', 1400, '# 🕵️ Stage Analyste Threat Intel – CyberShield (Paris)\n**OSINT | MITRE ATT&CK | CTI | STIX/TAXII**\n📍 *Paris*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe CTI (Cyber Threat Intelligence) pour surveiller le paysage des menaces, analyser les TTPs des acteurs malveillants et produire des bulletins de renseignement.\n\n## 🎯 Missions\n- Collecte et analyse de renseignements (OSINT, dark web)\n- Profilage des groupes d\'attaquants (APT)\n- Production de bulletins et de rapports CTI\n- Alimentation des outils SIEM et SOAR\n- Veille et analyse des nouvelles vulnérabilités (CVE)\n\n## 🧰 Outils\n- MITRE ATT&CK, STIX/TAXII\n- Maltego, Shodan, VirusTotal\n- MISP (plateforme CTI)\n- OpenCTI\n\n## 👤 Profil recherché\n- Master 2 cybersécurité\n- Culture générale de la menace cyber\n- Anglais technique courant\n- Esprit analytique et curiosité', 3),
(75, '2025-05-01', '2025-10-31', 46.580224, 0.340375, 'Stage Ingénieur Sécurité Réseaux', 'Stage 6 mois Lyon. Audit et durcissement des architectures réseau de clients PME/ETI : firewall, segmentation, VPN et monitoring.', 1300, '# 🌐 Stage Sécurité Réseaux – CyberShield (Lyon)\n**Firewall | Zero Trust | Wireshark | Cisco**\n📍 *Lyon*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des clients PME et ETI dans l\'audit et le renforcement de leurs architectures réseau.\n\n## 🎯 Missions\n- Audit des architectures réseau (firewall, VLAN, DMZ)\n- Tests de pénétration réseau (interne et périmétrique)\n- Recommandations de segmentation et Zero Trust\n- Configuration et durcissement de firewalls (Fortinet, Palo Alto)\n- Rédaction des rapports techniques et des plans de remédiation\n\n## 🧰 Outils\n- Nmap, Nessus, Metasploit\n- Wireshark, Zeek\n- Fortinet, Cisco (IOS)\n- OWASP Testing Guide\n\n## 👤 Profil recherché\n- Master 2 réseaux et sécurité\n- Protocoles réseau maîtrisés (TCP/IP, BGP, OSPF)\n- Linux avancé\n- Rigueur et éthique', 3),
(76, '2025-06-01', '2025-11-30', 43.295097, -0.370797, 'Stage Développeur Outil Sécurité Python', 'Stage 6 mois Nantes. Développement d\'outils internes d\'automatisation de la sécurité (scanner, parser de logs, dashboard SIEM).', 1250, '# 🛠️ Stage Développeur Sécurité – CyberShield (Nantes)\n**Python | API sécurité | Automatisation | Django**\n📍 *Nantes*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez des outils internes permettant d\'automatiser les tâches répétitives des analystes SOC et de centraliser les données de sécurité.\n\n## 🎯 Missions\n- Développement de scripts Python pour l\'automatisation SOC\n- Intégration d\'APIs de sécurité (VirusTotal, Shodan, OTX)\n- Développement d\'un dashboard de supervision Django\n- Parsers de logs et corrélation d\'événements\n- Documentation et tests\n\n## 🧰 Stack technique\n- Python (requests, asyncio, FastAPI)\n- Django, PostgreSQL\n- APIs : VirusTotal, Shodan, MISP\n- Docker, Celery\n\n## 👤 Profil recherché\n- Bac+4/5 informatique avec intérêt pour la sécurité\n- Python avancé\n- Sens de l\'automatisation', 3),
(77, '2025-04-15', '2025-10-15', 49.443232, 1.099971, 'Stage Expert Malware & Reverse Engineering', 'Stage 6 mois Toulouse. Analyse avancée de malwares sophistiqués et contribution à la base de connaissances des menaces de l\'équipe CERT.', 1500, '# 🦠 Stage Reverse Engineering – CyberShield (Toulouse)\n**Ghidra | IDA Pro | Assembleur | YARA**\n📍 *Toulouse*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe CERT pour analyser des malwares complexes (ransomwares, stealers, RATs) et produire des rapports d\'analyse et des règles de détection.\n\n## 🎯 Missions\n- Analyse statique (désassemblage avec Ghidra/IDA Pro)\n- Analyse dynamique (sandbox, hooks)\n- Rédaction de rapports d\'analyse détaillés\n- Rédaction de règles YARA et Sigma\n- Contribution à la base MISP\n\n## 🧰 Outils\n- Ghidra, IDA Free, x64dbg\n- Any.run, Cuckoo Sandbox\n- YARA, Sigma\n- Python (automation)\n\n## 👤 Profil recherché\n- Master 2 cybersécurité, offensive ou systèmes bas niveau\n- Assembleur x86/x64\n- Curiosité et persévérance', 3),
(78, '2025-05-01', '2025-10-31', 48.573405, 7.752111, 'Stage Consultant RGPD & Protection des Données', 'Stage 6 mois Metz. Accompagnement de clients industriels dans leur mise en conformité RGPD : registre des traitements, DPA, PIA.', 1200, '# 📜 Stage Consultant RGPD – CyberShield (Metz)\n**RGPD | Privacy by Design | Audit | Conformité**\n📍 *Metz*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des clients industriels dans leur démarche de mise en conformité RGPD en jouant le rôle de DPO externalisé.\n\n## 🎯 Missions\n- Constitution et mise à jour du registre des traitements\n- Réalisation d\'analyses d\'impact (PIA/AIPD)\n- Rédaction des clauses contractuelles (DPA, CCT)\n- Sensibilisation des collaborateurs\n- Veille réglementaire CNIL et EDPB\n\n## Compétences développées\n- Droit des données personnelles\n- Privacy by Design\n- Gestion de projet conformité\n\n## 👤 Profil recherché\n- Master 2 droit du numérique, cybersécurité ou management\n- Connaissance du RGPD\n- Qualités rédactionnelles et relationnelles', 3),
(79, '2025-04-01', '2025-09-30', 45.166672, 5.716670, 'Stage Ingénieur FinOps Cloud', 'Stage 6 mois Paris. Optimisation des coûts cloud (AWS, Azure, GCP) de clients grands comptes : analyse, recommandations et mise en place de gouvernance.', 1200, '# 💰 Stage Ingénieur FinOps – CloudNative (Paris)\n**FinOps | AWS Cost Explorer | Terraform | Cloud Governance**\n📍 *Paris*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous aiderez des clients grands comptes à optimiser leurs dépenses cloud en mettant en place des pratiques FinOps (Cloud Financial Management).\n\n## 🎯 Missions\n- Analyse des factures cloud (AWS, Azure, GCP)\n- Identification des ressources sous-utilisées ou mal dimensionnées\n- Mise en place du tagging et de la gouvernance\n- Recommandations d\'optimisation (Reserved Instances, Spot)\n- Construction de dashboards de suivi budgétaire\n\n## 🧰 Outils\n- AWS Cost Explorer, Azure Cost Management\n- Infracost, CloudHealth\n- Terraform (rightsizing)\n- Power BI ou Grafana\n\n## 👤 Profil recherché\n- Bac+4/5 cloud ou finance\n- Notions d\'AWS et/ou Azure\n- Sens de l\'analyse financière', 4),
(80, '2025-05-01', '2025-10-31', 45.899247, 6.129384, 'Stage Ingénieur GCP & BigQuery', 'Stage 6 mois Lyon. Accompagnement d\'une ETI dans sa migration vers Google Cloud Platform et la mise en place d\'une architecture data moderne sur BigQuery.', 1150, '# 🌩️ Stage Ingénieur GCP – CloudNative (Lyon)\n**GCP | BigQuery | Dataflow | Terraform**\n📍 *Lyon*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez une ETI dans sa migration vers GCP et la mise en place d\'une architecture analytique moderne sur BigQuery.\n\n## 🎯 Missions\n- Migration des bases de données on-premise vers Cloud SQL / BigQuery\n- Développement de pipelines Dataflow (Apache Beam)\n- Infrastructure as Code (Terraform pour GCP)\n- Mise en place de IAM et de la gouvernance GCP\n- Formation des équipes internes\n\n## 🧰 Stack technique\n- GCP (GCS, BigQuery, Dataflow, Cloud Run)\n- Terraform, Cloud Build\n- Apache Beam, dbt\n- Looker Studio\n\n## 👤 Profil recherché\n- Bac+4/5 cloud ou data engineering\n- Notions de GCP ou BigQuery\n- Terraform appréciée', 4),
(81, '2025-06-01', '2025-11-30', 49.253933, 4.034254, 'Stage Architecte Solutions Cloud', 'Stage 6 mois Marseille. Participation à la conception d\'architectures cloud pour des projets clients dans les secteurs de la santé et du retail.', 1200, '# 🏗️ Stage Architecte Cloud – CloudNative (Marseille)\n**Cloud Architecture | Well-Architected | Terraform | Multi-cloud**\n📍 *Marseille*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous participerez à la conception d\'architectures cloud pour des projets stratégiques clients en vous appuyant sur les frameworks Well-Architected des trois grands cloud providers.\n\n## 🎯 Missions\n- Participation aux ateliers de définition d\'architecture\n- Rédaction des Architecture Decision Records (ADR)\n- Proof of Concept sur des nouvelles technologies\n- Évaluation des architectures existantes (Well-Architected Review)\n- Présentation des recommandations aux clients\n\n## 🧰 Outils\n- AWS, Azure, GCP\n- Terraform, Pulumi\n- Draw.io, Confluence (documentation)\n- AWS Well-Architected Tool\n\n## 👤 Profil recherché\n- Bac+5 cloud, systèmes ou informatique\n- AWS, Azure ou GCP certifié ou en cours\n- Curiosité intellectuelle et bon sens', 4),
(82, '2025-04-15', '2025-10-15', 43.561501, 1.448454, 'Stage Ingénieur Kubernetes & Service Mesh', 'Stage 6 mois Strasbourg. Déploiement et administration de clusters Kubernetes multi-tenant avec mise en place de service mesh Istio.', 1150, '# ⚙️ Stage Kubernetes & Istio – CloudNative (Strasbourg)\n**Kubernetes | Istio | Helm | GitOps**\n📍 *Strasbourg*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous travaillerez sur la mise en place de clusters Kubernetes multi-tenant avec service mesh Istio pour des clients ayant des exigences élevées en matière de sécurité et d\'observabilité.\n\n## 🎯 Missions\n- Déploiement et configuration de clusters EKS/AKS\n- Mise en place d\'Istio (mTLS, traffic management, observabilité)\n- Gestion des releases avec Helm et ArgoCD\n- Politiques réseau et sécurité (OPA Gatekeeper)\n- Troubleshooting et optimisation\n\n## 🧰 Stack technique\n- Kubernetes, Istio, Linkerd\n- Helm, ArgoCD, Kustomize\n- OPA Gatekeeper, Falco\n- Kiali, Jaeger\n\n## 👤 Profil recherché\n- Bac+5 DevOps, SRE ou systèmes\n- Kubernetes intermédiaire\n- Linux avancé', 4),
(83, '2025-05-15', '2025-11-15', 47.749648, 7.337930, 'Stage Ingénieur CI/CD & Automatisation', 'Stage 6 mois Reims. Mise en place et amélioration des pipelines CI/CD de clients dans l\'industrie pharmaceutique : automatisation, tests et conformité.', 1100, '# 🔄 Stage CI/CD & Automatisation – CloudNative (Reims)\n**GitLab CI | Jenkins | SonarQube | Ansible**\n📍 *Reims*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous automatiserez les pipelines de livraison logicielle de clients dans l\'industrie pharmaceutique, avec des contraintes de traçabilité et de conformité 21 CFR Part 11.\n\n## 🎯 Missions\n- Conception et mise en place de pipelines CI/CD (GitLab CI)\n- Intégration des contrôles de qualité (SonarQube, tests)\n- Automatisation de la configuration (Ansible)\n- Mise en place de la traçabilité et des audits\n- Documentation des processus\n\n## 🧰 Stack technique\n- GitLab CI, Jenkins\n- SonarQube, Nexus\n- Ansible, Terraform\n- Docker, Kubernetes\n\n## 👤 Profil recherché\n- Bac+4/5 DevOps ou informatique\n- CI/CD et Docker\n- Rigueur et sens de la documentation', 4);
INSERT INTO `Offre` (`id_offre`, `date_debut`, `date_fin`, `lat`, `lng`, `titre`, `description_carte`, `remuneration_par_mois`, `description_offre_de_stage`, `id_entreprise`) VALUES
(84, '2025-04-01', '2025-09-30', 45.833619, 1.261105, 'Stage Data Analyst – Performance Commerciale', 'Stage 6 mois Bourges. Analyse des performances commerciales du réseau d\'agences, construction d\'indicateurs et aide à la décision pour la direction commerciale.', 1000, '# 📊 Stage Data Analyst Commercial – Crédit Partenaires\n**Excel | Power BI | SQL | CRM**\n📍 *Bourges – Direction Commerciale*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez la Direction Commerciale pour analyser les performances du réseau de 45 agences et construire des outils d\'aide à la décision.\n\n## 🎯 Missions\n- Extraction et analyse des données de performance (CRM, SI)\n- Construction de tableaux de bord Power BI\n- Analyse des écarts objectifs/réalisé par agence et par produit\n- Préparation des comités commerciaux mensuels\n- Recommandations d\'actions correctives\n\n## Compétences développées\n- Analyse de la performance commerciale\n- Maîtrise de Power BI et Excel\n- Connaissance des produits bancaires\n- Communication avec des décideurs\n\n## 👤 Profil recherché\n- Bac+4/5 banque, finance ou data\n- Excel et Power BI\n- Aisance relationnelle', 5),
(85, '2025-05-01', '2025-10-31', 47.494340, -0.554115, 'Stage Chargé de Conformité & Compliance Bancaire', 'Stage 6 mois Bourges. Participation aux travaux de conformité réglementaire (LCB-FT, MIF II, RGPD) et au suivi des contrôles internes.', 1050, '# ⚖️ Stage Conformité Bancaire – Crédit Partenaires\n**LCB-FT | MIF II | Conformité | Contrôle interne**\n📍 *Bourges – Direction Conformité*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous assisterez la Direction de la Conformité dans ses travaux de veille réglementaire et de contrôle du respect des normes bancaires.\n\n## 🎯 Missions\n- Veille réglementaire (ACPR, AMF, BCE)\n- Participation aux contrôles LCB-FT (LAB/LAT)\n- Mise à jour des procédures internes\n- Suivi du plan de contrôle permanent\n- Formation des collaborateurs aux nouvelles réglementations\n\n## Compétences développées\n- Réglementation bancaire et financière\n- Contrôle interne\n- Rédaction de procédures\n- Rigueur et confidentialité\n\n## 👤 Profil recherché\n- Bac+4/5 droit, compliance ou finance\n- Intérêt pour la réglementation bancaire\n- Rigueur et discrétion', 5),
(86, '2025-06-01', '2025-11-30', 43.600000, 3.883333, 'Stage Marketing Bancaire & Communication Client', 'Stage 6 mois Bourges. Contribution aux campagnes marketing du réseau d\'agences et développement de la communication multicanal auprès des clients.', 950, '# 📢 Stage Marketing Bancaire – Crédit Partenaires\n**Marketing | Communication | CRM | Campagnes**\n📍 *Bourges – Direction Marketing*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez la Direction Marketing pour concevoir et déployer des campagnes ciblées auprès des clients particuliers et professionnels de la banque.\n\n## 🎯 Missions\n- Segmentation de la base clients (CRM)\n- Conception de campagnes emailing et SMS\n- Suivi et analyse des performances (taux d\'ouverture, conversion)\n- Contribution à la stratégie réseaux sociaux\n- Coordination avec les agences de communication\n\n## Compétences développées\n- Marketing bancaire et CRM\n- Communication multicanal\n- Analyse des performances marketing\n- Connaissance des produits bancaires\n\n## 👤 Profil recherché\n- Bac+4/5 marketing ou communication\n- Sens créatif et analytique\n- Aisance rédactionnelle', 5),
(87, '2025-04-01', '2025-09-30', 45.182245, 5.721940, 'Stage Analyste Private Equity & LBO', 'Stage 6 mois Paris. Analyse de dossiers d\'investissement en private equity, construction de modèles LBO et participation aux due diligences.', 1500, '# 📈 Stage Analyste Private Equity – FinStart Conseil\n**LBO | Private Equity | Modélisation | Due Diligence**\n📍 *Paris – 8ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous participerez à des missions d\'analyse et de conseil en private equity, de la sourcing de cibles à la clôture des transactions.\n\n## 🎯 Missions\n- Construction de modèles LBO (Excel avancé)\n- Analyse financière approfondie des cibles\n- Participation aux due diligences (financière, stratégique)\n- Rédaction de mémos d\'investissement\n- Veille sectorielle et identification de cibles\n\n## Compétences développées\n- Modélisation LBO et valorisation\n- Processus d\'investissement en PE\n- Analyse financière avancée\n- Réseau dans le monde financier\n\n## 👤 Profil recherché\n- Bac+5 grande école de commerce ou d\'ingénieurs\n- Excel très avancé\n- Résistance au stress\n- Intérêt pour l\'investissement', 6),
(88, '2025-05-01', '2025-10-31', 46.603354, 1.888334, 'Stage Analyste Restructuring & Retournement', 'Stage 6 mois Paris. Accompagnement d\'entreprises en difficulté dans leur restructuration financière et opérationnelle.', 1400, '# 🔄 Stage Analyste Restructuring – FinStart Conseil\n**Restructuring | Plan de continuation | Trésorerie | Négociation**\n📍 *Paris – 8ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des PME en difficulté dans leur processus de restructuration financière (procédures collectives, plans de continuation, négociation avec les créanciers).\n\n## 🎯 Missions\n- Diagnostic financier d\'urgence (cash burn, liquidité)\n- Construction de plans de trésorerie prévisionnels\n- Analyse des options de restructuration\n- Accompagnement dans les procédures amiables (mandat ad hoc, conciliation)\n- Interface avec les créanciers et actionnaires\n\n## Compétences développées\n- Gestion de crise financière\n- Droit des entreprises en difficulté\n- Négociation sous pression\n- Analyse financière en conditions dégradées\n\n## 👤 Profil recherché\n- Bac+5 finance ou droit des affaires\n- Résistance au stress\n- Esprit analytique rapide', 6),
(89, '2025-06-01', '2025-11-30', 48.805855, 2.120355, 'Stage Analyste Immobilier & Financement', 'Stage 6 mois Paris. Conseil en financement de projets immobiliers complexes (promotion, investissement) et structuration des montages financiers.', 1350, '# 🏢 Stage Analyste Immobilier – FinStart Conseil\n**Immobilier | Financement de projet | Valorisation | CRE**\n📍 *Paris – 8ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous interviendrez sur des missions de conseil en financement de projets immobiliers commerciaux et résidentiels.\n\n## 🎯 Missions\n- Modélisation financière de projets immobiliers (DCF, cash flows)\n- Structuration des financements (dette, fonds propres, mezzanine)\n- Analyse des marchés immobiliers locaux\n- Rédaction de mémorandums de financement\n- Relation avec les banques et les investisseurs\n\n## Compétences développées\n- Finance immobilière\n- Structuration de financements complexes\n- Connaissance des marchés immobiliers\n- Modélisation financière avancée\n\n## 👤 Profil recherché\n- Bac+5 finance ou école avec spécialisation immobilier\n- Excel modélisation\n- Intérêt pour l\'immobilier', 6),
(90, '2025-04-01', '2025-09-30', 43.949317, 4.805528, 'Stage Actuariat & Tarification', 'Stage 6 mois Bordeaux. Participation aux travaux de tarification des risques professionnels et modélisation actuarielle pour le portefeuille RC Pro.', 1200, '# 📐 Stage Actuariat – AssurPro (Bordeaux)\n**R | Python | Actuariat | Tarification | SAS**\n📍 *Bordeaux*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe actuarielle pour développer et affiner les modèles de tarification des contrats de responsabilité professionnelle.\n\n## 🎯 Missions\n- Analyse statistique du portefeuille sinistres\n- Construction et calibration de modèles GLM (fréquence/coût)\n- Tests de significativité des variables tarifaires\n- Backtesting et validation des modèles\n- Rédaction de notes actuarielles\n\n## 🧰 Outils\n- R (ou Python), SAS\n- Excel (tableaux croisés, modèles)\n- SQL (extraction des données)\n\n## 👤 Profil recherché\n- Master 2 actuariat, statistiques ou mathématiques appliquées\n- R ou Python statistiques\n- Rigueur mathématique', 7),
(91, '2025-05-01', '2025-10-31', 42.697283, 2.895397, 'Stage Chargé de Mission Cyber-Assurance', 'Stage 6 mois Toulouse. Développement de l\'offre cyber-assurance d\'AssurPro : analyse des risques cyber des clients, tarification et gestion des sinistres cyber.', 1100, '# 🔐 Stage Cyber-Assurance – AssurPro\n**Cyber-risques | Assurance | Analyse de risques | Sinistres**\n📍 *Toulouse*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous participerez au développement de l\'offre cyber-assurance d\'AssurPro, un marché en forte croissance.\n\n## 🎯 Missions\n- Évaluation de la maturité cyber des clients (questionnaires, outils)\n- Participation à la tarification des risques cyber\n- Gestion des premiers dossiers de sinistres cyber\n- Veille sur les tendances du marché cyber-assurance\n- Contribution au développement de l\'offre produit\n\n## Compétences développées\n- Techniques d\'assurance cyber\n- Évaluation des risques numériques\n- Relation avec les DSI clients\n- Veille marché assurance\n\n## 👤 Profil recherché\n- Bac+4/5 assurance, cybersécurité ou risques\n- Intérêt pour la cybersécurité et l\'assurance\n- Curiosité et adaptabilité', 7),
(92, '2025-06-01', '2025-11-30', 44.837789, -0.579180, 'Stage Chargé de Développement Commercial', 'Stage 6 mois Toulouse. Développement du portefeuille de clients professionnels d\'AssurPro sur la région Occitanie.', 1000, '# 🤝 Stage Développement Commercial – AssurPro\n**Prospection | Négociation | Assurance | B2B**\n📍 *Toulouse – Occitanie*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez l\'équipe commerciale pour développer le portefeuille de clients professionnels sur la région Occitanie.\n\n## 🎯 Missions\n- Identification et qualification de prospects (artisans, PME, professions libérales)\n- Prise de rendez-vous et réalisation de démos\n- Élaboration et négociation des propositions commerciales\n- Suivi et relance des prospects\n- Reporting commercial hebdomadaire\n\n## Compétences développées\n- Techniques de vente B2B\n- Connaissance des produits d\'assurance professionnelle\n- Gestion d\'un pipeline commercial\n- Résilience et persévérance\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 commerce ou assurance\n- Goût pour le challenge commercial\n- Mobilité sur la région Occitanie', 7),
(93, '2025-04-01', '2025-09-30', 43.710173, 7.261953, 'Stage Social Media Manager', 'Stage 6 mois Paris. Animation des réseaux sociaux de clients grands comptes du secteur luxe et beauté, création de contenus et gestion des communautés.', 1050, '# 📱 Stage Social Media Manager – Agence Horizon\n**Social Media | Content | Analytics | Luxe**\n📍 *Paris – 9ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous animerez les réseaux sociaux de marques prestigieuses dans les secteurs du luxe, de la beauté et de la gastronomie.\n\n## 🎯 Missions\n- Planification et publication de contenus (Instagram, TikTok, LinkedIn)\n- Community management (modération, réponses)\n- Coordination avec les équipes créatives et photo\n- Analyse des performances et reporting mensuel\n- Veille sur les tendances des plateformes\n\n## Compétences développées\n- Community management pour marques premium\n- Maîtrise des outils de planification (Hootsuite, Sprout Social)\n- Analytics social media\n- Compréhension des codes du luxe\n\n## 👤 Profil recherché\n- Bac+4/5 communication ou marketing digital\n- Maîtrise des réseaux sociaux\n- Sensibilité aux univers luxe/beauté', 8),
(94, '2025-05-01', '2025-10-31', 47.218371, -1.553621, 'Stage Chargé de Production Publicitaire', 'Stage 6 mois Paris. Coordination de la production de contenus publicitaires (photo, vidéo, print) pour des campagnes grands comptes.', 1050, '# 🎬 Stage Production Publicitaire – Agence Horizon\n**Production | Tournage | Print | Coordination**\n📍 *Paris – 9ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous coordonnerez la production de contenus publicitaires (shootings photo, tournages vidéo, fabrication print) pour des campagnes grandes marques.\n\n## 🎯 Missions\n- Coordination des shootings photo et tournages vidéo\n- Gestion des prestataires (photographes, réalisateurs, studios)\n- Suivi de la fabrication print (imprimeurs, sérigraphes)\n- Gestion des délais et des budgets de production\n- Interface entre équipes créatives et techniques\n\n## Compétences développées\n- Logistique de production publicitaire\n- Gestion de prestataires créatifs\n- Organisation et rigueur\n- Connaissance des formats publicitaires\n\n## 👤 Profil recherché\n- Bac+4/5 communication, production ou cinéma\n- Sens de l\'organisation\n- Intérêt pour la publicité et la créativité', 8),
(95, '2025-06-01', '2025-11-30', 48.117266, -1.677793, 'Stage Analyste Data & Mesure des Campagnes', 'Stage 6 mois Paris. Mesure de l\'efficacité des campagnes de communication et construction d\'outils de reporting pour les clients de l\'agence.', 1100, '# 📊 Stage Data & Mesure – Agence Horizon\n**Data | Attribution | ROI | Reporting**\n📍 *Paris – 9ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous contribuerez à développer la culture data de l\'agence en construisant des outils de mesure et d\'analyse des performances des campagnes.\n\n## 🎯 Missions\n- Mise en place des plans de taggage et de tracking\n- Construction de tableaux de bord de performance (Looker Studio)\n- Analyse de l\'attribution multi-touch\n- Rédaction des bilans de campagne\n- Présentation des résultats aux clients\n\n## Compétences développées\n- Mesure d\'efficacité publicitaire\n- Maîtrise des outils analytics\n- Attribution et ROI des campagnes\n- Communication data aux non-spécialistes\n\n## 👤 Profil recherché\n- Bac+4/5 marketing digital, data ou statistiques\n- GA4, Google Ads, Meta Ads\n- Curiosité analytique', 8),
(96, '2025-04-01', '2025-09-30', 48.858093, 2.294694, 'Stage Chargé de Partenariats Marques & Créateurs', 'Stage 6 mois Lyon. Développement et gestion des partenariats entre marques clientes et créateurs de contenu dans les secteurs food, voyage et lifestyle.', 1000, '# 🤝 Stage Partenariats – InfluenceMedia\n**Partenariats | Négociation | Créateurs | Marques**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez et gérerez les partenariats entre les marques clientes de l\'agence et les créateurs de contenu les plus pertinents.\n\n## 🎯 Missions\n- Identification de nouveaux créateurs (Instagram, YouTube, TikTok)\n- Négociation des conditions de partenariat\n- Suivi des collaborations et validation des contenus\n- Construction d\'une base de données de créateurs\n- Reporting des performances des partenariats\n\n## Compétences développées\n- Négociation commerciale\n- Connaissance de l\'écosystème créateurs\n- Gestion de partenariats\n- Réseau dans le monde de l\'influence\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 commerce, communication ou marketing\n- Réseau dans l\'influence\n- Aisance relationnelle', 9),
(97, '2025-05-01', '2025-10-31', 45.764043, 4.835659, 'Stage Vidéaste & Créateur de Contenu', 'Stage 6 mois Lyon. Création de contenus vidéo courts (Reels, TikTok, YouTube Shorts) pour des marques lifestyle et food de l\'agence.', 1000, '# 🎥 Stage Vidéaste – InfluenceMedia\n**Vidéo | Montage | Réseaux sociaux | Storytelling**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous créerez des contenus vidéo courts et engageants pour les marques clientes de l\'agence sur les plateformes TikTok, Instagram et YouTube.\n\n## 🎯 Missions\n- Tournage et réalisation de courtes vidéos\n- Montage vidéo (CapCut, Premiere Pro, Final Cut)\n- Adaptation des contenus aux formats et codes de chaque plateforme\n- Suivi des tendances et adaptation créative\n- Reporting des performances vidéo\n\n## Compétences développées\n- Production vidéo mobile et studio\n- Montage pour les réseaux sociaux\n- Connaissance des algorithmes vidéo\n- Storytelling court format\n\n## 👤 Profil recherché\n- Formation vidéo, audiovisuel ou communication\n- Maîtrise du montage vidéo\n- Portfolio de créations\n- Sens créatif et réactivité', 9),
(98, '2025-04-01', '2025-09-30', 47.218371, -1.553621, 'Stage Chargé de Communication Événementielle', 'Stage 6 mois Bordeaux. Conception et déploiement des stratégies de communication autour des événements organisés par l\'agence.', 1000, '# 📣 Stage Communication Événementielle – Com\'Event\n**Communication | Événementiel | Réseaux sociaux | Relations presse**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous concevrez et déploierez les stratégies de communication pour les événements de l\'agence : avant, pendant et après.\n\n## 🎯 Missions\n- Création des contenus de communication (site, réseaux sociaux)\n- Relations presse et gestion des accréditations médias\n- Couverture live des événements (réseaux sociaux, photos)\n- Gestion de la communication de crise événementielle\n- Bilan communication post-événement\n\n## Compétences développées\n- Communication événementielle 360°\n- Relations presse\n- Gestion de contenu en temps réel\n- Organisation et réactivité\n\n## 👤 Profil recherché\n- Bac+4/5 communication, journalisme ou événementiel\n- Maîtrise des réseaux sociaux\n- Disponibilité lors des événements', 10),
(99, '2025-05-01', '2025-10-31', 43.610769, 3.876716, 'Stage Chargé de Développement Commercial Événementiel', 'Stage 6 mois Bordeaux. Prospection et développement du portefeuille clients de l\'agence sur les segments corporate et institutionnel.', 1000, '# 💼 Stage Commercial – Com\'Event\n**Prospection | Appels d\'offres | Événementiel | B2B**\n📍 *Bordeaux – Chartrons*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous développerez le portefeuille clients de l\'agence en identifiant de nouvelles opportunités dans les secteurs corporate et institutionnel.\n\n## 🎯 Missions\n- Identification et qualification de prospects\n- Participation à la réponse aux appels d\'offres\n- Réalisation de présentations et pitches commerciaux\n- Suivi des relations avec les clients existants\n- Veille concurrentielle et sectorielle\n\n## Compétences développées\n- Développement commercial B2B\n- Appels d\'offres événementiels\n- Présentation et persuasion\n- Réseau dans le secteur événementiel\n\n## 👤 Profil recherché\n- Bac+3 à Bac+5 commerce ou événementiel\n- Sens commercial et persévérance\n- Aisance à l\'oral', 10),
(100, '2025-04-01', '2025-09-30', 49.119308, 6.175715, 'Stage Ingénieur Matériaux & Procédés', 'Stage 6 mois Toulouse. Caractérisation mécanique de matériaux composites pour applications aéronautiques et rédaction de fiches matériaux.', 1250, '# 🔬 Stage Ingénieur Matériaux – Ingénia Tech\n**Composites | Caractérisation | CFRP | Essais mécaniques**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous caractériserez mécaniquement des matériaux composites à matrice polymère renforcée de fibres de carbone (CFRP) pour des applications de structure aéronautique.\n\n## 🎯 Missions\n- Réalisation d\'essais mécaniques (traction, compression, flexion, fatigue)\n- Analyse des résultats et rédaction des fiches matériaux\n- Comparaison avec les bases de données matériaux (ESDU, MIL-HDBK)\n- Participation aux campagnes d\'essais\n- Rédaction de rapports techniques\n\n## 🧰 Outils\n- Bancs d\'essais (MTS, Instron)\n- DIC (Digital Image Correlation)\n- Python ou MATLAB (post-traitement)\n- CATIA V5 (maquettes numériques)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur matériaux, mécanique ou aéronautique\n- Bases en mécanique des matériaux\n- Rigueur expérimentale', 11),
(101, '2025-05-01', '2025-10-31', 46.603354, 1.888334, 'Stage Ingénieur Acoustique & Vibrations', 'Stage 6 mois Toulouse. Réalisation d\'analyses vibratoires et acoustiques sur des sous-systèmes mécaniques aéronautiques.', 1300, '# 🔊 Stage Ingénieur Acoustique – Ingénia Tech\n**NVH | Vibrations | Ansys | Acquisition de données**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous réaliserez des analyses vibratoires et acoustiques (NVH) sur des composants de structures aéronautiques pour prédire et réduire les niveaux de bruit et de vibration.\n\n## 🎯 Missions\n- Réalisation de mesures vibratoires sur bancs d\'essais\n- Analyses modales expérimentales (EMA)\n- Calculs vibro-acoustiques (FEM, BEM)\n- Corrélation mesures/calculs\n- Rédaction des rapports et notes de calcul\n\n## 🧰 Outils\n- ANSYS (Modal, Harmonic, Random Vibrations)\n- LMS SCADAS (acquisition)\n- MATLAB (post-traitement)\n- Python\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur mécanique, acoustique ou vibrations\n- Bases en mécanique vibratoire\n- Appétence pour l\'expérimentation', 11),
(102, '2025-06-01', '2025-11-30', 44.837789, -0.579180, 'Stage Ingénieur Méthodes & Industrialisation', 'Stage 6 mois Toulouse. Préparation de la mise en production de nouvelles pièces aéronautiques : gammes d\'usinage, outillages et procédés.', 1200, '# 🏭 Stage Méthodes & Industrialisation – Ingénia Tech\n**Industrialisation | Gammes | DFM | CAO**\n📍 *Toulouse – Blagnac*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous préparerez l\'industrialisation de nouvelles pièces mécaniques aéronautiques : définition des gammes d\'usinage, conception des outillages et qualification des procédés.\n\n## 🎯 Missions\n- Analyse de la définition produit (cotation fonctionnelle, tolérances)\n- Rédaction des gammes d\'usinage et de montage\n- Conception des outillages de fabrication (CATIA V5)\n- Qualification des procédés de fabrication\n- Gestion du REX (retours d\'expérience)\n\n## 🧰 Outils\n- CATIA V5 (conception outillages)\n- ERP (SAP ou équivalent)\n- MS Project (planning)\n- Excel (suivi qualité)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur génie mécanique ou productique\n- CATIA V5 maîtrisé\n- Rigueur et méthode', 11),
(103, '2025-04-15', '2025-10-15', 43.295097, -0.370797, 'Stage Ingénieur Systèmes & Architecture', 'Stage 6 mois Paris. Définition et validation de l\'architecture système d\'un équipement embarqué pour l\'industrie de défense.', 1350, '# 🛸 Stage Ingénieur Systèmes – Ingénia Tech (Paris)\n**Ingénierie système | MBSE | SysML | Résilience**\n📍 *Paris – La Défense*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous contribuerez à la définition et à la validation de l\'architecture système d\'un équipement embarqué pour l\'industrie de défense, en appliquant les méthodes d\'ingénierie système (MBSE).\n\n## 🎯 Missions\n- Analyse des exigences système (DOORS NG)\n- Modélisation de l\'architecture en SysML (Capella, MagicDraw)\n- Analyse des modes de défaillance (AMDEC)\n- Participation aux revues d\'ingénierie (PDR, CDR)\n- Rédaction de spécifications techniques\n\n## 🧰 Outils\n- Capella / Eclipse Modeling (SysML)\n- IBM DOORS NG (gestion exigences)\n- MS Office (rapports, présentations)\n- CATIA V5 (interface conception)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur systèmes, aéronautique ou défense\n- Bases en ingénierie système\n- Rigueur et capacité d\'abstraction', 11),
(104, '2025-04-01', '2025-09-30', 41.927227, 8.734064, 'Stage Ingénieur Réseaux Électriques & ENR', 'Stage 6 mois Grenoble. Dimensionnement de systèmes de production d\'énergies renouvelables (photovoltaïque, éolien) pour des bâtiments tertiaires.', 1150, '# ☀️ Stage Ingénieur ENR – GreenBuild\n**Photovoltaïque | Éolien | PVsyst | Stockage**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous dimensionnerez des installations de production d\'énergies renouvelables (solaire PV, éolien petit format) pour des bâtiments à énergie positive.\n\n## 🎯 Missions\n- Dimensionnement des installations photovoltaïques (PVsyst)\n- Études d\'intégration architecturale (BIPV)\n- Calculs de rentabilité et de temps de retour sur investissement\n- Dimensionnement des systèmes de stockage (batteries)\n- Dossiers de demande de raccordement\n\n## 🧰 Outils\n- PVsyst, PVSOL\n- SketchUp, AutoCAD\n- Excel (bilans financiers)\n- Revit (BIM intégration)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur énergie, électrotechnique ou génie civil\n- Intérêt pour les ENR\n- Notions de PVsyst appréciées', 12),
(105, '2025-05-01', '2025-10-31', 45.899247, 6.129384, 'Stage Ingénieur Eau & Réseaux CVC', 'Stage 6 mois Grenoble. Dimensionnement des réseaux de plomberie, de ventilation et de climatisation pour des projets de construction tertiaire et résidentielle.', 1100, '# 💧 Stage Ingénieur CVC/Plomberie – GreenBuild\n**CVC | Plomberie | Dimensionnement | AutoCAD**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous réaliserez les études de conception des réseaux CVC (chauffage, ventilation, climatisation) et de plomberie pour des projets de construction tertiaire et résidentielle.\n\n## 🎯 Missions\n- Dimensionnement des réseaux de chauffage et de refroidissement\n- Calculs de charges thermiques et aérauliques\n- Dimensionnement des installations de ventilation (VMC, double flux)\n- Rédaction des notes de calcul et des plans\n- Coordination avec les autres corps d\'état\n\n## 🧰 Outils\n- AutoCAD, Revit MEP\n- Pleiades, DesignBuilder\n- Covadis (réseaux)\n- Excel (dimensionnement)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur génie civil, énergie ou thermique\n- Bases en CVC\n- Notions de Revit MEP appréciées', 12),
(106, '2025-06-01', '2025-11-30', 44.933393, -0.173251, 'Stage Chargé de Mission Rénovation Énergétique', 'Stage 6 mois Grenoble. Accompagnement de copropriétés et de bâtiments tertiaires dans leurs projets de rénovation énergétique et d\'obtention d\'aides financières.', 1050, '# 🏠 Stage Rénovation Énergétique – GreenBuild\n**Rénovation | MaPrimeRénov | DPE | CEE**\n📍 *Grenoble – Europole*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des copropriétés et des bâtiments tertiaires dans leurs projets de rénovation énergétique, du diagnostic initial à la réception des travaux.\n\n## 🎯 Missions\n- Réalisation d\'audits énergétiques (DPE, audit global)\n- Définition des bouquets de travaux optimaux\n- Montage des dossiers d\'aides (MaPrimeRénov, CEE, subventions)\n- Suivi des travaux et réception\n- Mesure des gains énergétiques post-travaux\n\n## Compétences développées\n- Audit énergétique et DPE\n- Aides financières à la rénovation\n- Gestion de projet de rénovation\n- Relation avec les maîtres d\'ouvrage\n\n## 👤 Profil recherché\n- Master 2 génie civil, énergie ou environnement\n- Intérêt pour la rénovation énergétique\n- Aisance relationnelle', 12),
(107, '2025-04-01', '2025-09-30', 49.894067, 2.295753, 'Stage Ingénieur IoT Industriel', 'Stage 6 mois Nantes. Conception et déploiement d\'une solution IoT pour la télésurveillance d\'équipements industriels dans le secteur de l\'eau.', 1200, '# 📡 Stage IoT Industriel – Électro Ingénierie\n**IoT | MQTT | LoRaWAN | Node-RED | Edge**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous concevrez et déploierez une solution IoT permettant la télésurveillance et la maintenance prédictive d\'équipements de traitement des eaux.\n\n## 🎯 Missions\n- Sélection et intégration des capteurs (pression, débit, niveau)\n- Développement du firmware embarqué (C, MicroPython)\n- Configuration du protocole LoRaWAN\n- Développement du tableau de bord (Node-RED, Grafana)\n- Tests et déploiement sur site\n\n## 🧰 Stack technique\n- C, MicroPython (edge)\n- LoRaWAN, MQTT\n- Node-RED, InfluxDB, Grafana\n- AWS IoT Core ou Azure IoT Hub\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur systèmes embarqués ou électronique\n- C ou Python\n- Curiosité pour le hardware et les protocoles IoT', 13),
(108, '2025-05-01', '2025-10-31', 46.185372, 6.268434, 'Stage Ingénieur Robotique Industrielle', 'Stage 6 mois Nantes. Programmation et intégration de robots industriels (Kuka, Fanuc) pour des lignes de production agroalimentaires.', 1150, '# 🤖 Stage Robotique Industrielle – Électro Ingénierie\n**Robotique | Kuka | Fanuc | Vision artificielle**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous programmerez et intégrerez des robots industriels pour automatiser des tâches de manutention et d\'assemblage sur des lignes de production agroalimentaires.\n\n## 🎯 Missions\n- Programmation de robots Kuka (KRL) et Fanuc (TP)\n- Intégration de systèmes de vision pour le guidage robot\n- Configuration des IHM et de la sécurité machine\n- Tests et mise en service sur ligne de production\n- Rédaction de la documentation de mise en œuvre\n\n## 🧰 Outils\n- Kuka WorkVisual, KUKA.Sim\n- Fanuc ROBOGUIDE\n- Vision industrielle (Keyence, Cognex)\n- TIA Portal (intégration automate)\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur robotique, automatisme ou mécatronique\n- Notions de programmation robot\n- Terrain et pragmatisme', 13),
(109, '2025-06-01', '2025-11-30', 44.298142, -0.845055, 'Stage Ingénieur Efficacité Énergétique Industrielle', 'Stage 6 mois Nantes. Audit de la consommation énergétique de sites industriels et mise en place de solutions d\'économie d\'énergie.', 1100, '# ⚡ Stage Efficacité Énergétique – Électro Ingénierie\n**Audit énergétique | ISO 50001 | Variateurs | Compensation**\n📍 *Nantes – Saint-Herblain*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous réaliserez des audits de consommation énergétique sur des sites industriels et proposerez des plans d\'actions pour réduire les coûts énergétiques.\n\n## 🎯 Missions\n- Collecte et analyse des données de consommation\n- Identification des gisements d\'économies (éclairage, moteurs, air comprimé)\n- Dimensionnement de solutions techniques (variateurs, condensateurs)\n- Calcul du ROI et présentation aux clients industriels\n- Accompagnement à la démarche ISO 50001\n\n## Compétences développées\n- Audit énergétique industriel\n- Techniques d\'efficacité énergétique\n- Présentation à des décideurs industriels\n- Normes ISO 50001\n\n## 👤 Profil recherché\n- Master 2 ou ingénieur électrotechnique, énergie ou génie industriel\n- Bases en électrotechnique\n- Sens de l\'analyse', 13),
(110, '2025-04-01', '2025-09-30', 47.748418, 7.339746, 'Stage Consultant Marque Employeur', 'Stage 6 mois Paris. Développement et déploiement de la stratégie de marque employeur de clients entreprises en tension de recrutement.', 1050, '# 🌟 Stage Marque Employeur – Groupe Avenir RH\n**Marque employeur | Communication RH | Réseaux sociaux | Attractivité**\n📍 *Paris – 2ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des DRH dans la construction et le déploiement de leur stratégie de marque employeur pour attirer les meilleurs talents.\n\n## 🎯 Missions\n- Diagnostic de l\'image employeur actuelle\n- Définition de la proposition de valeur employeur (EVP)\n- Déploiement sur les canaux de communication (LinkedIn, JobBoards)\n- Création de contenus (témoignages collaborateurs, vidéos)\n- Mesure de l\'attractivité et du ROI\n\n## Compétences développées\n- Marque employeur et communication RH\n- Stratégie de contenu\n- Outils de sourcing et d\'attraction\n- Mesure de l\'efficacité RH\n\n## 👤 Profil recherché\n- Bac+4/5 RH, communication ou marketing\n- Créativité et sens de la communication\n- Intérêt pour les enjeux d\'attractivité', 14),
(111, '2025-05-01', '2025-10-31', 48.117266, -1.677793, 'Stage Consultant RH Régional', 'Stage 6 mois Bordeaux. Recrutement, accompagnement à la mobilité et conseil RH auprès de PME régionales clientes du cabinet.', 1000, '# 👥 Stage Consultant RH Régional – Groupe Avenir RH (Bordeaux)\n**Recrutement | Mobilité | Conseil | PME**\n📍 *Bordeaux*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous rejoindrez le bureau de Bordeaux pour accompagner des PME régionales dans leurs besoins RH variés : recrutement, mobilité interne, restructuration.\n\n## 🎯 Missions\n- Gestion de missions de recrutement (cadres et non-cadres)\n- Accompagnement de collaborateurs en mobilité (outplacement)\n- Conseil RH ad hoc auprès des DRH des clients PME\n- Animation d\'ateliers de recherche d\'emploi\n- Développement commercial (prospection de nouveaux clients)\n\n## Compétences développées\n- Recrutement et conseil RH\n- Accompagnement individuel\n- Relation client B2B\n- Connaissance du tissu économique régional\n\n## 👤 Profil recherché\n- Bac+4/5 RH, psychologie ou commerce\n- Polyvalence et sens du service\n- Mobilité sur la région Aquitaine', 14),
(112, '2025-04-01', '2025-09-30', 47.324888, 5.042244, 'Stage Consultant Innovation & Open Innovation', 'Stage 6 mois Paris. Accompagnement de grandes entreprises dans leur démarche d\'open innovation : identification de startups, partenariats et projets pilotes.', 1300, '# 💡 Stage Consultant Innovation – ConsultGroup\n**Open Innovation | Startups | Partenariats | Design Thinking**\n📍 *Paris – 8ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des grandes entreprises dans le déploiement de leurs programmes d\'open innovation : veille, identification de startups partenaires, structuration des collaborations.\n\n## 🎯 Missions\n- Veille sur les startups et les nouvelles technologies\n- Identification de partenaires innovants pour les clients\n- Structuration des partenariats startup/grand groupe\n- Animation d\'ateliers d\'idéation (Design Thinking)\n- Suivi des pilotes et des POC\n\n## Compétences développées\n- Écosystème startups et innovation\n- Méthodes d\'innovation (Design Thinking, Lean)\n- Gestion de partenariats\n- Présentation à des dirigeants\n\n## 👤 Profil recherché\n- Bac+5 grande école de commerce ou d\'ingénieurs\n- Curiosité pour les nouvelles technologies\n- Dynamisme et créativité', 15),
(113, '2025-05-01', '2025-10-31', 44.556900, 6.079600, 'Stage Consultant Transformation Digitale', 'Stage 6 mois Paris. Accompagnement de PME dans leur transformation numérique : diagnostic, roadmap digitale et gestion du changement.', 1250, '# 💻 Stage Consultant Digital – ConsultGroup\n**Transformation digitale | Agilité | Change management | Roadmap**\n📍 *Paris – 8ème*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des PME et ETI dans leur transformation numérique, de la définition de la stratégie digitale au déploiement des premiers chantiers.\n\n## 🎯 Missions\n- Diagnostic de la maturité numérique (modèle CMMI)\n- Définition de la roadmap de transformation digitale\n- Accompagnement au changement (formation, communication)\n- Suivi de la mise en œuvre des priorités\n- Mesure des gains et reporting\n\n## Compétences développées\n- Transformation digitale\n- Gestion du changement\n- Conduite de projets SI\n- Communication avec des non-techniciens\n\n## 👤 Profil recherché\n- Bac+5 management, ingénierie ou grande école\n- Intérêt pour le digital\n- Pédagogie et écoute', 15),
(114, '2025-06-01', '2025-11-30', 49.298326, 4.032084, 'Stage Consultant Supply Chain & Opérations', 'Stage 6 mois Lyon. Diagnostic et optimisation des chaînes logistiques de clients industriels et de distribution.', 1200, '# 🔗 Stage Consultant Supply Chain – ConsultGroup (Lyon)\n**Supply Chain | Lean | S&OP | Optimisation**\n📍 *Lyon*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous réaliserez des diagnostics et des missions d\'optimisation des chaînes logistiques pour des clients dans l\'industrie et la grande distribution.\n\n## 🎯 Missions\n- Cartographie de la chaîne logistique end-to-end\n- Identification des ruptures et des gaspillages\n- Optimisation des stocks et des délais\n- Mise en place de processus S&OP\n- Accompagnement à la mise en œuvre des actions\n\n## Compétences développées\n- Supply chain management\n- Lean et amélioration continue\n- Gestion de stocks et prévisions\n- Présentation à des directeurs opérationnels\n\n## 👤 Profil recherché\n- Bac+5 ingénierie, logistique ou grande école\n- Approche terrain\n- Sens de l\'analyse', 15),
(115, '2025-04-01', '2025-09-30', 50.950418, 1.844155, 'Stage Chargé de Mission Eau & Biodiversité', 'Stage 6 mois Lyon. Accompagnement d\'entreprises dans l\'évaluation et la réduction de leurs impacts sur les ressources en eau et la biodiversité.', 1000, '# 🌊 Stage Eau & Biodiversité – EcoServices\n**Biodiversité | TNS | Eau | Empreinte naturelle**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des entreprises dans la mesure et la réduction de leurs impacts sur les ressources en eau et la biodiversité, un enjeu croissant dans le cadre de la CSRD.\n\n## 🎯 Missions\n- Diagnostic de l\'empreinte eau et biodiversité\n- Application des référentiels TNS (The Natural Step)\n- Construction de plans d\'action eau et biodiversité\n- Reporting CSRD (indicateurs eau et biodiversité)\n- Sensibilisation des équipes\n\n## Compétences développées\n- Enjeux eau et biodiversité en entreprise\n- Référentiels et indicateurs environnementaux\n- Conseil en développement durable\n- Rédaction de rapports environnementaux\n\n## 👤 Profil recherché\n- Master 2 environnement, écologie ou développement durable\n- Sensibilité aux enjeux naturalistes\n- Qualités rédactionnelles', 16),
(116, '2025-05-01', '2025-10-31', 46.185372, 6.268434, 'Stage Chef de Projet Transition Énergétique', 'Stage 6 mois Lyon. Accompagnement d\'entreprises dans la définition et la mise en œuvre de leurs plans de transition énergétique.', 1050, '# ⚡ Stage Transition Énergétique – EcoServices\n**Énergie | Efficacité | ENR | Transition**\n📍 *Lyon – Presqu\'île*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des entreprises de tailles variées dans la définition de leur stratégie de transition énergétique : efficacité, ENR, flexibilité.\n\n## 🎯 Missions\n- Audit de la consommation énergétique des entreprises\n- Identification des leviers de réduction (efficacité, ENR)\n- Construction des plans de transition énergétique\n- Accompagnement dans les appels d\'offres d\'électricité verte (PPA)\n- Reporting et suivi des indicateurs\n\n## Compétences développées\n- Gestion de projet de transition énergétique\n- Connaissance des technologies ENR\n- Analyse coûts-bénéfices\n- Conseil en stratégie durable\n\n## 👤 Profil recherché\n- Master 2 énergie, environnement ou ingénierie\n- Intérêt pour la transition énergétique\n- Sens de l\'analyse', 16),
(117, '2025-06-01', '2025-11-30', 49.443232, 1.099971, 'Stage Consultant Finance Verte & Green Finance', 'Stage 6 mois Paris. Accompagnement d\'entreprises dans l\'accès aux financements verts (green bonds, prêts à impact) et la structuration de leur stratégie de financement durable.', 1100, '# 💚 Stage Finance Verte – EcoServices (Paris)\n**Green Finance | Green Bonds | ESG | Impact**\n📍 *Paris*\n⏳ *Durée : 6 mois*\n\n## 📝 Présentation du stage\nVous accompagnerez des entreprises dans leur accès aux instruments de finance verte et dans la structuration de leur reporting ESG à destination des investisseurs.\n\n## 🎯 Missions\n- Veille sur les produits de finance verte (green bonds, sustainability-linked loans)\n- Accompagnement dans la préparation des dossiers de financement\n- Structuration des indicateurs ESG pour les investisseurs\n- Rédaction des frameworks green bonds (GBP, SBP)\n- Présentation aux investisseurs et financeurs\n\n## Compétences développées\n- Finance verte et marchés de capitaux durables\n- ESG et reporting investisseur\n- Analyse financière\n- Communication avec des acteurs financiers\n\n## 👤 Profil recherché\n- Master 2 finance, développement durable ou grande école\n- Intérêt pour la finance et l\'ESG\n- Qualités rédactionnelles et analytiques', 16),
(118, '2026-03-28', '2026-04-01', 43.344181, 3.215986, 'apiculteur', 'tu prend du miel', 0, '# 🍯miel', 17);

-- --------------------------------------------------------

--
-- Structure de la table `Pilote`
--

CREATE TABLE `Pilote` (
  `id_pilote` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Pilote`
--

INSERT INTO `Pilote` (`id_pilote`) VALUES
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `Postule`
--

CREATE TABLE `Postule` (
  `id_etudiant` int NOT NULL,
  `id_offre` int NOT NULL,
  `cv_url` varchar(50) NOT NULL,
  `lm_url` varchar(50) NOT NULL,
  `date_postulation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `id_utilisateur` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`id_utilisateur`, `nom`, `prenom`, `email`, `mdp`) VALUES
(1, 'admin', 'admin', 'admin@mail.fr', '$2y$10$86f3lPX/noE3XXsXMWl.4egejB9QQHoMizYtA4EfksnTZ.3Gp.zN.'),
(2, 'Moreau', 'Antoine', 'antoine.moreau@ecole.fr', '$2y$10$hashedpwd2'),
(3, 'Bernard', 'Julie', 'julie.bernard@ecole.fr', '$2y$10$hashedpwd3'),
(4, 'Lefebvre', 'Maxime', 'maxime.lefebvre@ecole.fr', '$2y$10$hashedpwd4'),
(5, 'Martin', 'Sophie', 'sophie.martin@etudiant.fr', '$2y$10$hashedpwd5'),
(6, 'Petit', 'Lucas', 'lucas.petit@etudiant.fr', '$2y$10$hashedpwd6'),
(7, 'Durand', 'Emma', 'emma.durand@etudiant.fr', '$2y$10$hashedpwd7'),
(8, 'Leroy', 'Nathan', 'nathan.leroy@etudiant.fr', '$2y$10$hashedpwd8'),
(9, 'Simon', 'Chloé', 'chloe.simon@etudiant.fr', '$2y$10$hashedpwd9'),
(10, 'Laurent', 'Hugo', 'hugo.laurent@etudiant.fr', '$2y$10$hashedpwd10'),
(11, 'Michel', 'Léa', 'lea.michel@etudiant.fr', '$2y$10$hashedpwd11'),
(12, 'Garcia', 'Tom', 'tom.garcia@etudiant.fr', '$2y$10$hashedpwd12'),
(13, 'Roux', 'Inès', 'ines.roux@etudiant.fr', '$2y$10$hashedpwd13'),
(14, 'Vincent', 'Paul', 'paul.vincent@etudiant.fr', '$2y$10$hashedpwd14'),
(15, 'Fournier', 'Marie', 'marie.fournier@etudiant.fr', '$2y$10$hashedpwd15'),
(16, 'Morel', 'Théo', 'theo.morel@etudiant.fr', '$2y$10$hashedpwd16');

-- --------------------------------------------------------

--
-- Structure de la table `Ville`
--

CREATE TABLE `Ville` (
  `id_ville` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Ville`
--

INSERT INTO `Ville` (`id_ville`, `nom`, `lat`, `lng`) VALUES
(1, 'Paris', 48.8566130, 2.352222),
(2, 'Marseille', 43.2964820, 5.369780),
(3, 'Lyon', 45.7640430, 4.835659),
(4, 'Toulouse', 43.6046520, 1.444209),
(5, 'Nice', 43.7101730, 7.261953),
(6, 'Nantes', 47.2183710, -1.553621),
(7, 'Montpellier', 43.6107690, 3.876716),
(8, 'Strasbourg', 48.5734050, 7.752111),
(9, 'Bordeaux', 44.8377890, -0.579180),
(10, 'Lille', 50.6292500, 3.057256),
(11, 'Rennes', 48.1172660, -1.677793),
(12, 'Reims', 49.2583290, 4.031696),
(13, 'Saint-Étienne', 45.4396950, 4.387178),
(14, 'Toulon', 43.1242280, 5.928000),
(15, 'Le Havre', 49.4943700, 0.107929),
(16, 'Grenoble', 45.1885290, 5.724524),
(17, 'Dijon', 47.3220470, 5.041480),
(18, 'Angers', 47.4784190, -0.563166),
(19, 'Nîmes', 43.8366990, 4.360054),
(20, 'Villeurbanne', 45.7719440, 4.890170),
(21, 'Saint-Denis', 48.9361810, 2.357443),
(22, 'Le Mans', 48.0061100, 0.199556),
(23, 'Aix-en-Provence', 43.5297420, 5.447427),
(24, 'Clermont-Ferrand', 45.7772220, 3.087025),
(25, 'Brest', 48.3903940, -4.486076),
(26, 'Limoges', 45.8336190, 1.261105),
(27, 'Tours', 47.3941440, 0.684840),
(28, 'Amiens', 49.8950360, 2.302077),
(29, 'Perpignan', 42.6886590, 2.894833),
(30, 'Metz', 49.1193090, 6.175716),
(31, 'Besançon', 47.2378290, 6.024053),
(32, 'Boulogne-Billancourt', 48.8322280, 2.241634),
(33, 'Orléans', 47.9029640, 1.909251),
(34, 'Mulhouse', 47.7508390, 7.335888),
(35, 'Rouen', 49.4432320, 1.099971),
(36, 'Caen', 49.1828630, -0.370679),
(37, 'Nancy', 48.6920540, 6.184417),
(38, 'Argenteuil', 48.9472090, 2.246684),
(39, 'Montreuil', 48.8640490, 2.443220),
(40, 'Saint-Paul', -21.0095620, 55.270733),
(41, 'Roubaix', 50.6927040, 3.174966),
(42, 'Tourcoing', 50.7239340, 3.160018),
(43, 'Nanterre', 48.8924270, 2.206976),
(44, 'Avignon', 43.9493170, 4.805528),
(45, 'Vitry-sur-Seine', 48.7871690, 2.403362),
(46, 'Créteil', 48.7903670, 2.455570),
(47, 'Poitiers', 46.5802240, 0.340375),
(48, 'Dunkerque', 51.0343680, 2.376776),
(49, 'Versailles', 48.8048650, 2.120355),
(50, 'Courbevoie', 48.8953290, 2.256223),
(51, 'Colombes', 48.9189650, 2.254574),
(52, 'Asnières-sur-Seine', 48.9115920, 2.287243),
(53, 'Aulnay-sous-Bois', 48.9383590, 2.494893),
(54, 'Saint-Pierre', -21.3412680, 55.478516),
(55, 'Rueil-Malmaison', 48.8761410, 2.189626),
(56, 'Saint-Maur-des-Fossés', 48.7948440, 2.493584),
(57, 'Champigny-sur-Marne', 48.8178630, 2.515473),
(58, 'La Rochelle', 46.1603290, -1.151139),
(59, 'Antibes', 43.5804180, 7.125102),
(60, 'Calais', 50.9512900, 1.858686),
(61, 'Saint-Nazaire', 47.2734970, -2.213848),
(62, 'Saint-Quentin', 49.8488900, 3.287700),
(63, 'Drancy', 48.9253640, 2.445306),
(64, 'Noisy-le-Grand', 48.8498510, 2.563434),
(65, 'Issy-les-Moulineaux', 48.8218980, 2.277020),
(66, 'Levallois-Perret', 48.8954350, 2.288981),
(67, 'La Seyne-sur-Mer', 43.1039310, 5.883389),
(68, 'Quimper', 47.9960900, -4.102215),
(69, 'Vanves', 48.8231190, 2.287324),
(70, 'Sarcelles', 48.9974490, 2.381976),
(71, 'Lorient', 47.7482520, -3.370244),
(72, 'Sète', 43.4028370, 3.692448),
(73, 'Pessac', 44.8071860, -0.632768),
(74, 'Ivry-sur-Seine', 48.8150550, 2.387180),
(75, 'Maisons-Alfort', 48.8119570, 2.434394),
(76, 'Évry-Courcouronnes', 48.6326330, 2.440970),
(77, 'Clichy', 48.9043090, 2.309720),
(78, 'Cergy', 49.0366760, 2.060789),
(79, 'Béziers', 43.3441810, 3.215986),
(80, 'Ajaccio', 41.9192290, 8.738635),
(81, 'Mérignac', 44.8301090, -0.643254),
(82, 'Niort', 46.3231970, -0.458740),
(83, 'Le Blanc-Mesnil', 48.9369490, 2.461952),
(84, 'Pantin', 48.8948460, 2.409252),
(85, 'Tarbes', 43.2328190, 0.078080),
(86, 'Dax', 43.7105310, -1.053698),
(87, 'Rezé', 47.1848970, -1.549870),
(88, 'Saint-Priest', 45.6961860, 4.938955),
(89, 'Aubervilliers', 48.9101290, 2.384049),
(90, 'Montauban', 44.0170390, 1.355396),
(91, 'Vannes', 47.6582360, -2.760847),
(92, 'Salon-de-Provence', 43.6407160, 5.097598),
(93, 'Saint-Herblain', 47.2173240, -1.631072),
(94, 'Meaux', 48.9601020, 2.878041),
(95, 'Narbonne', 43.1834020, 3.003427),
(96, 'Chambéry', 45.5646010, 5.917781),
(97, 'Bourges', 47.0810130, 2.398782),
(98, 'Cholet', 47.0607070, -0.878395),
(99, 'Mantes-la-Jolie', 48.9951010, 1.709948),
(100, 'Belfort', 47.6389270, 6.863849),
(101, 'Arras', 50.2930100, 2.781940);

-- --------------------------------------------------------

--
-- Structure de la table `Wishlist`
--

CREATE TABLE `Wishlist` (
  `id_etudiant` int NOT NULL,
  `id_offre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `Competence`
--
ALTER TABLE `Competence`
  ADD PRIMARY KEY (`id_competence`);

--
-- Index pour la table `Competence_Offre`
--
ALTER TABLE `Competence_Offre`
  ADD PRIMARY KEY (`id_offre`,`id_competence`),
  ADD KEY `id_competence` (`id_competence`);

--
-- Index pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_pilote` (`id_pilote`);

--
-- Index pour la table `Evaluation_entreprise`
--
ALTER TABLE `Evaluation_entreprise`
  ADD PRIMARY KEY (`id_entreprise`,`id_utilisateur`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `Offre`
--
ALTER TABLE `Offre`
  ADD PRIMARY KEY (`id_offre`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `Pilote`
--
ALTER TABLE `Pilote`
  ADD PRIMARY KEY (`id_pilote`);

--
-- Index pour la table `Postule`
--
ALTER TABLE `Postule`
  ADD PRIMARY KEY (`id_etudiant`,`id_offre`),
  ADD KEY `id_offre` (`id_offre`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `Ville`
--
ALTER TABLE `Ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- Index pour la table `Wishlist`
--
ALTER TABLE `Wishlist`
  ADD PRIMARY KEY (`id_etudiant`,`id_offre`),
  ADD KEY `id_offre` (`id_offre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Competence`
--
ALTER TABLE `Competence`
  MODIFY `id_competence` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `Entreprise`
--
ALTER TABLE `Entreprise`
  MODIFY `id_entreprise` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `Offre`
--
ALTER TABLE `Offre`
  MODIFY `id_offre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `Ville`
--
ALTER TABLE `Ville`
  MODIFY `id_ville` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `Admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `Utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Competence_Offre`
--
ALTER TABLE `Competence_Offre`
  ADD CONSTRAINT `Competence_Offre_ibfk_1` FOREIGN KEY (`id_offre`) REFERENCES `Offre` (`id_offre`) ON DELETE CASCADE,
  ADD CONSTRAINT `Competence_Offre_ibfk_2` FOREIGN KEY (`id_competence`) REFERENCES `Competence` (`id_competence`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD CONSTRAINT `Etudiant_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `Utilisateur` (`id_utilisateur`) ON DELETE CASCADE,
  ADD CONSTRAINT `Etudiant_ibfk_2` FOREIGN KEY (`id_pilote`) REFERENCES `Pilote` (`id_pilote`) ON DELETE SET NULL;

--
-- Contraintes pour la table `Evaluation_entreprise`
--
ALTER TABLE `Evaluation_entreprise`
  ADD CONSTRAINT `Evaluation_entreprise_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `Entreprise` (`id_entreprise`) ON DELETE CASCADE,
  ADD CONSTRAINT `Evaluation_entreprise_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Offre`
--
ALTER TABLE `Offre`
  ADD CONSTRAINT `Offre_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `Entreprise` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Pilote`
--
ALTER TABLE `Pilote`
  ADD CONSTRAINT `Pilote_ibfk_1` FOREIGN KEY (`id_pilote`) REFERENCES `Utilisateur` (`id_utilisateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Postule`
--
ALTER TABLE `Postule`
  ADD CONSTRAINT `Postule_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `Etudiant` (`id_etudiant`) ON DELETE CASCADE,
  ADD CONSTRAINT `Postule_ibfk_2` FOREIGN KEY (`id_offre`) REFERENCES `Offre` (`id_offre`) ON DELETE CASCADE;

--
-- Contraintes pour la table `Wishlist`
--
ALTER TABLE `Wishlist`
  ADD CONSTRAINT `Wishlist_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `Etudiant` (`id_etudiant`) ON DELETE CASCADE,
  ADD CONSTRAINT `Wishlist_ibfk_2` FOREIGN KEY (`id_offre`) REFERENCES `Offre` (`id_offre`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
