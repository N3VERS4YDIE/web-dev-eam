<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'layout/templates/partials/header.php';
require_once $FILE_BASE_ROOT . 'controllers/products_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

$module = $_GET['module'];
$id = $_GET['id'] ?? null;

$controllerName = $module . 'Controller';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $controllerName::getInstance()->update($id, $_POST);
    header("Location: " . $WEB_BASE_ROOT . 'modules?module=' . $module);
}

$controllerName::getInstance()->renderEditForm();
