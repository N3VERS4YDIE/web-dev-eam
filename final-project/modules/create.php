<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'controllers/products_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/shopping_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

$module = $_GET['module'];
$controllerName = $module . 'Controller';
$controller = $controllerName::getInstance();
$controller->create($_POST);

if ($module == 'shopping') {
    echo json_encode(['table' => $controller->renderTable(false)]);
} else {
    $row = $controller->readAll()->fetch(PDO::FETCH_ASSOC);
    echo json_encode(['row' => $response = $controller->renderRow($row)]);
}

