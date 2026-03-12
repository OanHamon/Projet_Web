<?php
namespace App\Model;

use PDO;

class CompetenceModel extends BaseModel
{
    protected $table = "Competence";
    protected $primaryKey = "id_competence";

    public function getOffres($competenceId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Competence_demander r ON r.id_offre = o.id_offre
        WHERE r.id_competence = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $competenceId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}