<?php
namespace App\Model;
use PDO;
use PDOException;


class OffreModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function getEntreprise($idOffre) // a refaire
    {
        $query = " 
        SELECT e.*
        FROM Entreprise e
        WHERE e.id_entreprise = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getAllWithEntreprise()
    {
        $query = "
        SELECT o.titre,o.description_carte,o.id_offre,e.nom,e.description_cartes
        FROM Offre o
        JOIN Entreprise e ON o.id_entreprise = e.id_entreprise
        ;";

        $stmt = $this->executeQuery($query, []);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCompetences($idOffre)
    {
        $query = "
        SELECT c.*
        FROM Competence c
        JOIN Competence_demander r ON r.id_competence = c.id_competence
        WHERE r.id_offre = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCandidats($idOffre)
    {
        $query = "
        SELECT u.*
        FROM Utilisateur u
        JOIN Postule p ON p.id_etudiant = u.id_utilisateur
        WHERE p.id_offre = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
