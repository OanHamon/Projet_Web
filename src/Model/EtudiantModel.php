<?php
namespace App\Model;

use PDO;

class EtudiantModel extends BaseModel
{
    protected $table = "Etudiant";
    protected $primaryKey = "id_etudiant";
 

    public function getAllStudents(){

        $query = "SELECT * FROM Etudiant JOIN Utilisateur ON Etudiant.id_etudiant = Utilisateur.id_utilisateur; ";
        $stmt = $this->executeQuery($query);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }

    public function getAllStudentsNoPilote(){

        $query = "SELECT * FROM Etudiant JOIN Utilisateur ON Etudiant.id_etudiant = Utilisateur.id_utilisateur WHERE id_pilote IS NULL ";
        $stmt = $this->executeQuery($query);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }
}
