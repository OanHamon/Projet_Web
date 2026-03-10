<?php
namespace App\Model;
use App\Config\Database;

abstract class Model
{
    protected $conn;

    public function __construct()
    {
        $database = new Database();
        $this->conn = $database->connect();
    }
}