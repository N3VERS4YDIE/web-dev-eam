<?php
  require_once('../../config/config.php');
  require_once($FILE_BASE_ROOT.'databases/databases.php');

  $elements = $_POST;
  
  if(count($elements) > 0 && count($elements['category_id']) > 0){
    foreach($elements['category_id'] as $index => $row){

      //$categoryId = $elements['category_id'][$index];
      $categoryId = $row;
      $name = $elements['name'][$index];
      $price = $elements['price'][$index];
      $details = $elements['details'][$index];

      $sql = "INSERT INTO products (name, price, details, category_id) VALUES (?,?,?,?)";
      $stmt= $pdo->prepare($sql);
      $stmt->execute([$name, $price, $details, $categoryId]);
    }
  }

  header("Location: ".$WEB_BASE_ROOT.'modules/products/index.php');
?>