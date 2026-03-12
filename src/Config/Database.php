<?php
namespace App\Config;
use PDO;
use PDOException;

class Database {

    private $host = "localhost";
    private $db_name = "welcome_to_the_ocean_bdd"; //welcome_to_the_ocean_bdd
    private $username = "oanha"; //oanha
    private $password = "ohMY2244.";
    /**
            ohMY2244. //local oan
            3f0iM$7#eD!i*u //local bastien
    */

    public $conn;

    public function connect() {

        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name,
                $this->username,
                $this->password
            );

            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch(PDOException $exception) {
            echo "Erreur connexion : " . $exception->getMessage();
        }

        return $this->conn;
    }
}