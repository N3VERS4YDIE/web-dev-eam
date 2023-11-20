<?php
require_once 'controller.php';

class ShoppingController extends Controller
{
    private static $instance;

    private function __construct()
    {
        $select_query = "SELECT S2.name 'Store', E.name 'Seller', C.name 'Client', P.name 'Product', S.quantity 'Quantity', P.price 'Product Price', S.quantity * P.price 'Total Product'
        FROM shopping S
        INNER JOIN stores S2 ON S.store_id = S2.id
        INNER JOIN employees E ON S.seller_id = E.id
        INNER JOIN clients C ON S.client_id = C.id
        INNER JOIN products P ON S.product_id = P.id
        ORDER BY S.quantity DESC";
        $formColums = [
            'store_id' => 'Store',
            'seller_id' => 'Seller',
            'client_id' => 'Client',
            'product_id' => 'Product',
            'quantity' => 'Quantity',
        ];
        $dropdowns = [
            'store_id' => 'SELECT id, name FROM stores',
            'seller_id' => 'SELECT id, name FROM employees WHERE employee_type_id = 7',
            'client_id' => 'SELECT id, name FROM clients',
            'product_id' => 'SELECT id, name FROM products',
        ];
        parent::__construct('shopping', $select_query, $formColums, $dropdowns);
    }

    public static function getInstance()
    {
        if (!isset(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }
}