<?php
namespace App\Model;

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
