<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'layout/templates/partials/header.php';
require_once $FILE_BASE_ROOT . 'controllers/products_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/shopping_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

$module = $_GET['module'];
$controllerName = $module . 'Controller';
$controllerName::getInstance()->create($_POST);
header("Location: " . $WEB_BASE_ROOT . 'modules/' . $module);
