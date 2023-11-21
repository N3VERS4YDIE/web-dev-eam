<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'controllers/products_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/shopping_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

try {
    $module = $_GET['module'];
    $id = $_GET['id'];

    $controllerName = $module . 'Controller';
    $controllerName::getInstance()->delete($id);
} catch (Exception $e) {
    echo json_encode(['error' => 'This item cannot be deleted because it is being used in another table.']);
}
