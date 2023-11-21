<?php
require_once 'controller.php';

class StockController extends Controller
{
    private static StockController $instance;

    public function __construct()
    {
        $select_query = "SELECT S.id, S2.name 'Store', E.name 'Stock Manager', P.name 'Product', S.quantity 'Quantity', P.price 'Product Price', S.quantity * P.price 'Total Product'
        FROM stock S
        INNER JOIN stores S2 ON S.store_id = S2.id
        INNER JOIN employees E ON S.stock_admin_id = E.id
        INNER JOIN products P ON S.product_id = P.id
        ORDER BY S.id DESC";
        $formColums = [
            'store_id' => 'Store',
            'stock_admin_id' => 'Stock Manager',
            'product_id' => 'Product',
            'quantity' => 'Quantity',
            'details' => 'Details',
        ];
        $dropdowns = [
            'store_id' => 'SELECT id, name FROM stores',
            'stock_admin_id' => 'SELECT id, name FROM employees WHERE employee_type_id = 8',
            'product_id' => 'SELECT id, name FROM products',
        ];
        parent::__construct('stock', $select_query, $formColums, $dropdowns);
    }

    public static function getInstance(): StockController
    {
        if (!isset(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }
}
