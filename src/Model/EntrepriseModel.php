<?php
namespace App\Model;
use PDO;
use PDOException;


class EntrepriseModel extends BaseModel
{
    protected $table = "Entreprise";
    protected $primaryKey = "id_entreprise";

    public function getOffres($entrepriseId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        WHERE o.id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEvaluation($entrepriseId)
    {
        $query = "
        SELECT AVG(note) as moyenne
        FROM Evaluation_entreprise
        WHERE id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getCompetences($entrepriseId)
    {
        $query = "
        SELECT DISTINCT c.*
        FROM Competence c
        JOIN Competence_Offre r ON r.id_competence = c.id_competence
        JOIN Offre o ON o.id_offre = r.id_offre
        WHERE o.id_entreprise = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
