<?php
require_once '../config/config.php';
require_once $FILE_BASE_ROOT . 'layout/templates/partials/header.php';
require_once $FILE_BASE_ROOT . 'controllers/products_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/shopping_controller.php';
require_once $FILE_BASE_ROOT . 'controllers/stock_controller.php';

$module = $_GET['module'];
$controllerName = $module . 'Controller';
$controller = $controllerName::getInstance();
?>
<div class="crud-container">
    <?php
    $controller->renderCreateForm();
    $controller->renderTable();
    ?>
</div>
<?php
require_once $FILE_BASE_ROOT . 'layout/templates/partials/footer.php';
