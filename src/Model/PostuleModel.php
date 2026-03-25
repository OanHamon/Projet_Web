<?php
namespace App\Model;

use PDO;

class PostuleModel extends BaseModel
{
    protected $table = "Postule";


    public function checkFile($type,$filename, $id_entreprise) {
        $column = $type . '_url';
        $query = "
            SELECT {$column} FROM Postule 
            JOIN Offre ON Postule.id_offre = Offre.id_offre 
            WHERE {$column} = :filename AND Offre.id_entreprise = :id_entreprise

            ";

        $stmt = $this->executeQuery($query,
        ['filename' => $filename,
         'id_entreprise' => $id_entreprise,
        ] );

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

}
