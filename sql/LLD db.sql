DROP DATABASE IF EXISTS `wtto`;
CREATE DATABASE `wtto`;
USE wtto;

CREATE TABLE Entreprise(
   id_entreprise INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   description_cartes TEXT,
   phrase_intro VARCHAR(100),
   description_entreprise TEXT,
   email VARCHAR(50) NOT NULL,
   telephone VARCHAR(50),
   mdp VARCHAR(256) NOT NULL,
   PRIMARY KEY(id_entreprise),
   UNIQUE(email)
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
   FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id_entreprise) ON DELETE CASCADE
);
ALTER TABLE Offre CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Pilote(
   id_pilote INT,
   PRIMARY KEY(id_pilote),
   FOREIGN KEY(id_pilote) REFERENCES Utilisateur(id_utilisateur) ON DELETE CASCADE
);

CREATE TABLE Admin(
   id_admin INT,
   PRIMARY KEY(id_admin),
   FOREIGN KEY(id_admin) REFERENCES Utilisateur(id_utilisateur) ON DELETE CASCADE
);

CREATE TABLE Etudiant(
   id_etudiant INT,
   id_pilote INT,
   PRIMARY KEY(id_etudiant),
   FOREIGN KEY(id_etudiant) REFERENCES Utilisateur(id_utilisateur) ON DELETE CASCADE,
   FOREIGN KEY(id_pilote) REFERENCES Pilote(id_pilote) ON DELETE SET NULL
);

CREATE TABLE Competence_Offre(
   id_offre INT,
   id_competence INT,
   PRIMARY KEY(id_offre, id_competence),
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre) ON DELETE CASCADE,
   FOREIGN KEY(id_competence) REFERENCES Competence(id_competence) ON DELETE CASCADE
);

CREATE TABLE Evaluation_entreprise(
   id_entreprise INT,
   id_utilisateur INT,
   note SMALLINT NOT NULL,
   PRIMARY KEY(id_entreprise, id_utilisateur),
   FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id_entreprise) ON DELETE CASCADE,
   FOREIGN KEY(id_utilisateur) REFERENCES Utilisateur(id_utilisateur) ON DELETE CASCADE
);

CREATE TABLE Postule(
   id_etudiant INT,
   id_offre INT,
   cv_url VARCHAR(50) NOT NULL,
   lm_url VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_etudiant, id_offre),
   FOREIGN KEY(id_etudiant) REFERENCES Etudiant(id_etudiant) ON DELETE CASCADE,
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre) ON DELETE CASCADE
);

CREATE TABLE Wishlist(
   id_etudiant INT,
   id_offre INT,
   PRIMARY KEY(id_etudiant, id_offre),
   FOREIGN KEY(id_etudiant) REFERENCES Etudiant(id_etudiant) ON DELETE CASCADE,
   FOREIGN KEY(id_offre) REFERENCES Offre(id_offre) ON DELETE CASCADE
);

CREATE TABLE Ville(
   id_ville INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   lat DECIMAL(8,6) NOT NULL,
   lng DECIMAL(8,6) NOT NULL,
   PRIMARY KEY(id_ville)
);