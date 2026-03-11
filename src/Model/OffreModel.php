<?php
namespace App\Model;
use PDO;
use PDOException;


class OffreModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function getEntreprise($idOffre)
    {
        $query = "
        SELECT e.*
        FROM Entreprise e
        JOIN Proposer p ON p.id_entreprise = e.id_entreprise
        WHERE p.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getAllWithEntreprise()
    {
        $query = "
        SELECT o.titre,o.description_carte,o.id_offre,e.nom
        FROM Offre o
        JOIN Proposer p ON p.id_offre = o.id_offre
        JOIN Entreprise e ON e.id_entreprise = p.id_entreprise
        ";

        $stmt = $this->executeQuery($query, []);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCompetences($idOffre)
    {
        $query = "
        SELECT c.*
        FROM Competence c
        JOIN Requerir r ON r.id_competence = c.id_competence
        WHERE r.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCandidats($idOffre)
    {
        $query = "
        SELECT u.*
        FROM Utilisateur u
        JOIN Postule p ON p.id_utilisateur = u.id_utilisateur
        WHERE p.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
