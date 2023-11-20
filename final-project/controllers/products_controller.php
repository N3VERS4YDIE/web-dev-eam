<?php
require_once 'controller.php';

class ProductsController extends Controller
{
    private static $instance;

    private function __construct()
    {
        $select_query = "SELECT P.id, P.name 'Product', P.price 'Price', P.details 'Details', C.name 'Category', B.name 'Brand', MC.name 'Manufacturing Country', P.manufacturing_date 'Manufacturing Date'
        FROM products P
        INNER JOIN categories C ON P.category_id = C.id
        INNER JOIN brands B ON P.brand_id = B.id
        INNER JOIN countries MC ON P.manufacturing_country_id = MC.id
        ORDER BY id DESC";
        $formColums = [
            'name' => 'Product',
            'price' => 'Price',
            'details' => 'Details',
            'category_id' => 'Category',
            'brand_id' => 'Brand',
            'manufacturing_country_id' => 'Manufacturing Country',
            'manufacturing_date' => 'Manufacturing Date',
        ];
        $dropdowns = [
            'category_id' => 'SELECT id, name FROM categories ORDER BY name ASC',
            'brand_id' => 'SELECT id, name FROM brands ORDER BY name ASC',
            'manufacturing_country_id' => 'SELECT id, name FROM countries ORDER BY name ASC',
        ];
        parent::__construct('products', $select_query, $formColums, $dropdowns);
    }

    public static function getInstance()
    {
        if (!isset(self::$instance)) {
            self::$instance = new self();
        }
        return self::$instance;
    }
}