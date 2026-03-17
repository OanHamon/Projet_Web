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
        $stmt = $this->conn->prepare($query);
        $stmt->execute($params);
        return $stmt;
    }

    public function getAll()
    {
        $query = "SELECT * FROM {$this->table}";
        $stmt = $this->executeQuery($query);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getById($id)
    {
        $query = "SELECT * FROM {$this->table} WHERE {$this->primaryKey} = :id";
        $stmt = $this->executeQuery($query, ['id' => $id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
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

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}












?>