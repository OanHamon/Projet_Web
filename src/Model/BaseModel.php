<?php
namespace App\Model;    
use App\Config\Database;
use PDO;
use PDOException;

class BaseModel extends Model
{
    protected $table;
    protected $primaryKey = 'id';

    protected function executeQuery($query, $params = [])
    {
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute($params);
            return $stmt;
        } catch (\PDOException $e) {
            error_log("DB Error: " . $e->getMessage());
            throw new \RuntimeException("Erreur base de données");
        }
    }
    public function getAll()
    {
        $query = "SELECT * FROM {$this->table}";
        $stmt = $this->executeQuery($query);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }

    public function getById($id)
    {
        $query = "SELECT * FROM {$this->table} WHERE {$this->primaryKey} = :id";
        $stmt = $this->executeQuery($query, ['id' => $id]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }

    public function deleteById($id)
    {
        $query = "DELETE FROM {$this->table} WHERE {$this->primaryKey} = :id";
        $stmt = $this->executeQuery($query, ['id' => $id]);
        return $stmt->rowCount();
    }

    public function insert($data)
    {
        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));

        $query = "INSERT INTO {$this->table} ($columns) VALUES ($placeholders)";

        $this->executeQuery($query, $data);

        return $this->conn->lastInsertId();
    }

    public function update($id, $data)
    {
        $setClause = implode(", ", array_map(function ($key) {
            return "$key = :$key";
        }, array_keys($data)));

        $query = "UPDATE {$this->table}
                  SET $setClause
                  WHERE {$this->primaryKey} = :{$this->primaryKey}";

        $data[$this->primaryKey] = $id;
        $stmt = $this->executeQuery($query, $data);

        return $stmt->rowCount();
    }

    public function find($conditions = [])
    {
        $query = "SELECT * FROM {$this->table}";
        $params = [];

        if (!empty($conditions)) {

            $where = [];

            foreach ($conditions as $key => $value) {
                $where[] = "$key = :$key";
                $params[$key] = $value;
            }

            $query .= " WHERE " . implode(" AND ", $where);
        }

        $stmt = $this->executeQuery($query, $params);

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }
}












?>