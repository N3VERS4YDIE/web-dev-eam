<?php
class DatabaseConnection
{
  private static $instance;
  private PDO $pdo;

  private function __construct()
  {
    global $db_host, $db_port, $db_name, $db_user, $db_pwd;

    $dns = 'mysql:host=' . $db_host . ';port=' . $db_port . ';dbname=' . $db_name;
    $this->pdo = new PDO($dns, $db_user, $db_pwd);
  }

  public static function getInstance()
  {
    if (!isset(self::$instance)) {
      self::$instance = new self();
    }
    return self::$instance;
  }

  public function getPdo()
  {
    return $this->pdo;
  }
}
