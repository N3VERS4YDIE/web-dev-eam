<?php
require_once $FILE_BASE_ROOT . 'databases/databases.php';

class DAO
{
    protected PDO $pdo;
    protected string $table;
    private string $selectQuery;
    private string $insertQuery;

    public function __construct($table, $selectQuery)
    {
        $this->pdo = DatabaseConnection::getInstance()->getPdo();
        $this->table = $table;
        $this->selectQuery = $selectQuery;
    }

    public function create($data)
    {
        print_r(array_keys($data));
        $stmt = $this->pdo->prepare("INSERT INTO {$this->table} (" . implode(',', array_keys($data)) . ") VALUES (:" . implode(',:', array_keys($data)) . ")");
        foreach ($data as $key => $value) {
            $stmt->bindValue(":{$key}", $value);
        }
        return $stmt->execute();
    }

    public function readAll($defaultSelectQuery = false)
    {
        if ($this->selectQuery && !$defaultSelectQuery) {
            $sql = $this->selectQuery;
        } else {
            $sql = "SELECT * FROM {$this->table} ORDER BY id";
        }
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt;
    }

    public function readById($id)
    {
        $sql = "SELECT * FROM {$this->table} WHERE id='{$id}'";
        return $this->pdo->query($sql);
    }

    public function update($id, $data)
    {
        $sql_updates = [];
        foreach ($data as $key => $value) {
            $sql_updates[] = "{$key}=:{$key}";
        }
        $stmt = $this->pdo->prepare("UPDATE {$this->table} SET " . implode(',', $sql_updates) . " WHERE id=:id");
        foreach ($data as $key => $value) {
            $stmt->bindValue(":{$key}", $value);
        }
        $stmt->bindValue(":id", $id);
        return $stmt->execute();
    }

    public function delete($id)
    {
        $sql = "DELETE FROM {$this->table} WHERE id='{$id}'";
        return $this->pdo->query($sql);
    }
}
