<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'layout/templates/partials/header.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

$module = $_GET['module'];
$id = $_GET['id'];

/** @var ProductController|ShoppingController|StockController $controllerName */
$controllerName = $module . 'Controller';
$controllerName::getInstance()->delete($id);

header("Location: " . $WEB_BASE_ROOT . 'modules/' . $module);
