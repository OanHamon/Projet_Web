DROP DATABASE IF EXISTS `wtto`;
CREATE DATABASE `wtto`;
USE wtto;

CREATE TABLE Entreprise(
   id_entreprise INT AUTO_INCREMENT,
   nom VARCHAR(50),
   description_cartes TEXT,
   phrase_intro VARCHAR(100),
   description_entreprise TEXT,
   email VARCHAR(50),
   telephone VARCHAR(50),
   mdp VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_entreprise)
);
ALTER TABLE Entreprise CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Competence(
   id_competence INT AUTO_INCREMENT,
   nom VARCHAR(50),
   categorie VARCHAR(50),
   PRIMARY KEY(id_competence)
);

CREATE TABLE Utilisateur(
   id_utilisateur INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   email VARCHAR(50) NOT NULL,
   mdp VARCHAR(256) NOT NULL,
   PRIMARY KEY(id_utilisateur),
   UNIQUE(email)
);

CREATE TABLE Offre(
   id_offre INT AUTO_INCREMENT,
   date_debut DATE,
   date_fin DATE,
   lat DECIMAL(8,6),
   lng DECIMAL(8,6),
   titre VARCHAR(50),
   description_carte TEXT,
   remuneration_par_mois INT,
   description_offre_de_stage TEXT,
   id_entreprise INT NOT NULL,
   PRIMARY KEY(id_offre),
   FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id_entreprise)
);
ALTER TABLE Offre CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Pilote(
   id_pilote INT,
   PRIMARY KEY(id_pilote),
   FOREIGN KEY(id_pilote) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Admin(
   id_admin INT,
   PRIMARY KEY(id_admin),
   FOREIGN KEY(id_admin) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Etudiant(
   id_etudiant INT,
   id_pilote INT,
   PRIMARY KEY(id_etudiant),
   FOREIGN KEY(id_etudiant) REFERENCES Utilisateur(id_utilisateur),
   FOREIGN KEY(id_pilote) REFERENCES Pilote(id_pilote)
);

CREATE TABLE Competence_Offre(
   id_offre INT,
   id_competence INT,
   PRIMARY KEY(id_offre, id_competence),
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre),
   FOREIGN KEY(id_competence) REFERENCES Competence(id_competence)
);

CREATE TABLE Evaluation_entreprise(
   id_entreprise INT,
   id_utilisateur INT,
   note SMALLINT NOT NULL,
   PRIMARY KEY(id_entreprise, id_utilisateur),
   FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id_entreprise),
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Postule(
   id_etudiant INT,
   id_offre INT,
   cv_url VARCHAR(50) NOT NULL,
   lm_url VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_etudiant, id_offre),
   FOREIGN KEY(id_etudiant) REFERENCES Etudiant(id_etudiant),
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre)
);

CREATE TABLE Wishlist(
   id_etudiant INT,
   id_offre INT,
   PRIMARY KEY(id_etudiant, id_offre),
   FOREIGN KEY(id_etudiant) REFERENCES Etudiant(id_etudiant),
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre)
);

CREATE TABLE Ville(
   id_ville INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   lat DECIMAL(8,6) NOT NULL,
   lng DECIMAL(8,6) NOT NULL,
   PRIMARY KEY(id_ville)
);

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