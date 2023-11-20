-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-11-2023 a las 06:00:30
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eam_20232final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `details`) VALUES
(1, 'Nestle', 'Nestle'),
(2, 'Palmolive', 'Palmolive INC.'),
(3, 'Colgate', 'Colgate'),
(4, '3M', '3M International'),
(5, 'Colombina', 'Colombina Compañia Colombiana de Dulces.'),
(6, 'Universal', 'Universal fabricantes de elementos para la cocina'),
(7, 'Pepsi CO', 'Pepsi Cola International'),
(8, 'Coca Cola', 'The Coca Cola Company'),
(9, 'La Reina', 'Productos Alimenticios La Reina'),
(10, 'Alpina', 'Alpina, productos lácteos de C0lombia'),
(11, 'Licores de Antioquia - FLA', 'Fabrica de Licores de Antioquia - FLA'),
(12, 'Productos Rey', 'Productos Rey. Artículos de limpieza para el hogar'),
(13, 'JGB', 'JGB Fabricante de productos de limpieza'),
(14, 'Babaria', 'Fabrica de licores y bebidas Babaria S.A.'),
(15, 'Zenú', 'Zenú - Productos Alimenticios'),
(16, 'Postobón', 'Postobón - Fabrica de Refrescos y otros productos comestibles'),
(17, 'Del Valle', 'Del Valle - Fabrica de Refrescos y otros productos comestibles'),
(18, 'Productos Diana', 'Productos alimenticios Diana\r\n'),
(19, 'De La cumbre', 'De La cumbre - Bebidas a base de uvas. Compañia Chilena'),
(20, 'LG Electronics', 'LG Electronics'),
(21, 'Samsung Electronics', 'Samsung Electronics'),
(22, 'Hewlett Packard - HP', 'Hewlett Packard Company'),
(23, 'Whirpool', 'Whirpool Electronics');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`) VALUES
(1, 'Productos Alimenticios', 'Productos Alimenticios'),
(2, 'Productos de Limpieza', 'Productos de Limpieza para el hogar'),
(3, 'Bebidas Alcohólicas', 'Bebidas Alcohólicas'),
(4, 'Bebidas Sin Alcohol', 'Bebidas Sin Alcohol'),
(5, 'Productos para el cuidado de la piel', 'Productos para el cuidado de la piel'),
(6, 'Medicamentos', 'Medicamentos'),
(7, 'Productos de Papelería', 'Productos de Papelería'),
(8, 'Productos para el hogar y cocina', 'Productos para el hogar y cocina'),
(9, 'Herramientas para el hogar', 'Herramientas para el hogar'),
(10, 'Herramientas para la industria', 'Herramientas para la industria'),
(11, 'Otros productos', 'Otros productos sin categorizar'),
(12, 'Electrónicos', 'Productos Electrónicos'),
(13, 'Linea Blanca', 'Productos de Linea Blanca'),
(14, 'Electródomesticos', 'Productos Electródomesticos'),
(15, 'Ropa', 'Ropa'),
(16, 'Calzado', 'Calzado'),
(17, 'Ropa Interior', NULL),
(18, 'Maquillaje', 'Maquillaje'),
(19, 'Juguetes', 'Juguetes'),
(20, 'Cristalería', 'Cristalería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `population` int(10) UNSIGNED NOT NULL,
  `zip_prefix` int(4) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `population`, `zip_prefix`, `state_id`) VALUES
(1, 'Buga', 325609, 20982, 1),
(2, 'Darien', 87651, 20906, 1),
(3, 'Cali', 1209876, 20001, 1),
(4, 'Buenaventura', 501034, 20061, 1),
(5, 'Armenia', 432066, 63001, 3),
(6, 'Calarcá', 98702, 63002, 3),
(7, 'Medellín', 2565098, 640001, 2),
(8, 'Envigado', 789654, 640014, 2),
(9, 'Ibarra', 16000, 568076, 8),
(10, 'Otavalo', 42000, 568041, 8),
(11, 'Guayaquil', 2786098, 561001, 9),
(12, 'Daule', 160542, 563076, 9),
(13, 'Barcelona', 820000, 582918, 4),
(14, 'Anaco', 110876, 5820812, 4),
(15, 'Maracay', 1309761, 5860981, 5),
(16, 'La Victoria', 140000, 5863801, 5),
(17, 'Chagres', 48651, 610931, 6),
(18, 'Santa Isabel', 56871, 610761, 6),
(19, 'Chitré', 49209, 61076, 7),
(20, 'Parita', 10108, 61073, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `document_type_id` int(10) UNSIGNED NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `birthday` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `lastname`, `gender_id`, `document_type_id`, `document_number`, `country_id`, `birthday`) VALUES
(1, 'Maria del Carmen', 'Bermudez Zapata', 2, 1, '46981726', 1, '1997-03-19'),
(2, 'José Albeiro', 'Rodriguez Muños', 1, 2, 'VE2371928321', 2, '1991-09-23'),
(3, 'Alexander', 'Rivas', 1, 1, '16547098', 1, '2001-04-14'),
(4, 'Mercedes', 'Aguilar', 2, 2, 'VE98710292', 2, '2003-11-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `phone_code`) VALUES
(1, 'Colombia', '+57'),
(2, 'Venezuela', '+58'),
(3, 'Ecuador', '+593'),
(4, 'Panamá', '+507');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_type`
--

CREATE TABLE `document_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_type`
--

INSERT INTO `document_type` (`id`, `name`, `details`) VALUES
(1, 'Cédula de Ciudadanía', 'Cédula de Ciudadanía (Empleada en Colombia)'),
(2, 'Cédula de Extrajería', 'Cédula de Extranjería (Empleada en Colombia por extranjeros residentes)'),
(3, 'Tarjeta de Identidad', 'Tarjeta de Identidad (Empleada en Colombia por menores de Edad)'),
(4, 'Pasaporte', 'Pasaporte (De uso internacional)'),
(5, 'NUIP', 'NUIP - Número único de identificación Personal (Empleado en algunos países de habla hispana)'),
(6, 'NIP ', 'NIP - Número único de identificación Personal (Empleado en algunos países de habla hispana)'),
(7, 'Cédula de Identificación Personal', 'CIP - Cédula de Identificación Personal (Empleada en Panamá)'),
(8, 'Cédula de Identificación', 'Cédula de Identificación - (Empleada por los extranjeros resientes en Ecuador)'),
(9, 'Cédula de Identidad', 'Cédula de Identidad (Documento Oficial de los ciudadanos Venezolanos)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `employee_type_id` int(10) UNSIGNED NOT NULL,
  `document_type_id` int(10) UNSIGNED NOT NULL,
  `document_number` varchar(50) NOT NULL,
  `store_where_works` int(10) UNSIGNED NOT NULL,
  `employee_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `name`, `lastname`, `employee_type_id`, `document_type_id`, `document_number`, `store_where_works`, `employee_code`) VALUES
(1, 'Juan Carlos (seller)', 'Gamboa Pardo', 7, 1, '10987650909', 3, 'EXAXM09871'),
(2, 'Maria Fernanda (seller)', 'Restrepo Osorio', 7, 2, 'VE18023725181', 3, 'EXAXM1609865'),
(3, 'José Luis (seller)', 'Grajares', 5, 1, '1096221541', 4, 'OLAXM11908'),
(4, 'Rodrigo (Stock Manager)', 'Estrada', 8, 2, 'VE100987162', 3, 'EXAXM1609865'),
(5, 'Julian (Stock Manager)', 'Rios', 8, 2, 'VE201918282', 4, 'EXAXM09654'),
(6, 'Nubia', 'Arroyo', 5, 1, '16543879', 6, 'ACAXM9817261');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_types`
--

CREATE TABLE `employee_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employee_types`
--

INSERT INTO `employee_types` (`id`, `name`, `details`) VALUES
(1, 'Personal de Recurso Humano', 'Personal de Recurso Humano'),
(2, 'Personal de Servicios de Aseo', 'Personal de Servicios de Aseo'),
(3, 'Personal de Servicios Administrativos', 'Personal de Servicios Administrativos'),
(4, 'Personal Directivo', 'Personal Directivo'),
(5, 'Líderes de Área', 'Líderes de Área'),
(6, 'Personal de Seguridad', 'Personal de Seguridad'),
(7, 'Vendedor', 'Vendedor'),
(8, 'Administrador de Inventario', 'Persona encargada de realizar la Administración del Inventario/Stock');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genders`
--

INSERT INTO `genders` (`id`, `name`, `details`) VALUES
(1, 'Masculino', 'Masculino - Varón de la especie humana'),
(2, 'Femenino', 'Femenino - Hembra de la especie humana'),
(3, 'NS/NR', 'No sabe/No responde'),
(4, 'Otro', 'Se identifica con otro género diferente a los que se encuentran en el listado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float(10,2) UNSIGNED NOT NULL,
  `details` text DEFAULT NULL,
  `manufacturing_country_id` int(10) UNSIGNED NOT NULL,
  `manufacturing_date` date NOT NULL DEFAULT current_timestamp(),
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `details`, `manufacturing_country_id`, `manufacturing_date`, `category_id`, `brand_id`) VALUES
(3, 'Pegante Sintetico Transparente', 13456.09, 'Pegante Sintetico Transparente de Uso industrial', 4, '2020-08-12', 11, 4),
(4, 'Yogurt Alpina Fresa x 225Ml', 2456.25, 'Yogurt Alpina Sabor Fresa Envase individual x225Ml', 1, '2023-09-02', 1, 10),
(5, 'Yogurt Alpina Mora 1Litro', 16540.25, 'Yogurt Alpina sabor Mora x 1000ML. Envase reutilizable.', 1, '2023-08-30', 1, 10),
(6, 'Club Colombia Dorada Lata', 3500.00, 'Cerveza Club Colombia Dorada. Lata x 300 ML.', 3, '2023-04-10', 3, 14),
(7, 'Jabón Palmolive en Barra 200gr', 2454.90, 'Jabón Palmolive en Barra x 200gr. ', 2, '2022-12-28', 2, 2),
(8, 'Cola Granulada x 350 gr', 6540.00, 'Cola Granulada Tarrito Rojo. Presentación envase x 350 gramos.', 3, '2023-01-23', 6, 13),
(9, 'Arroz Integral Diana x 2Kilos', 12098.50, 'Arroz Integral Diana empaque x 2 kilos.', 3, '2023-02-13', 1, 1),
(10, 'Leche Condensada x 150gr', 5460.00, 'Leche condensada lata x 150 gramos.', 3, '2023-02-25', 1, 1),
(11, 'Licuadora Frasco Vidrio Universal 1.5L', 245900.00, 'Licuadora con frasco de vidrio marca universal. Capacidad 1500 ML.', 4, '2021-10-14', 14, 6),
(12, 'Coca Cola x 2.5L', 15850.00, 'Coca Cola x 2500 ML envase no retornable', 3, '2023-01-23', 4, 8),
(13, 'Televisor 55\" 4K LG', 1678900.00, 'Televisor LG de 55\" 4K Smart TV', 4, '2023-03-14', 12, 20),
(14, 'Televisor 60\" 4K Samsung', 2468900.00, 'Televisor 60\" 4K Samsung', 4, '2020-12-17', 12, 21),
(15, 'Salchichas para perros x 6', 3560.00, 'Salchichas para perros x 6 marca Zenú.', 1, '2023-04-04', 1, 15),
(16, 'Lavadora de 24 Lbs Whirpool', 4521800.00, 'Lavadora de 24 Lbs Whirpool', 4, '2021-07-22', 13, 23),
(17, 'Lavadora 20Lb Samsung', 2980000.00, 'Lavadora 20 libras marca Samsung', 4, '2021-08-24', 13, 21),
(18, 'Aceite para muebles  3 en 1 x 200 ML', 18760.00, 'Aceite 3 en 1 para limpieza de muebles y elementos de madera barnizados.', 2, '2021-08-24', 2, 4),
(19, 'Aceite Lubricantes  3 en 1 x 250 ML', 12560.00, 'Aceite 3 en 1 para lubricar elementos metálicos oxidados.', 2, '2021-09-27', 2, 4),
(20, 'Cartucho Reemplazo para Impresora HP 610 Black', 67500.00, 'Cartucho Reemplazo para Impresora HP 610 Black x 70ML.', 2, '2022-12-13', 7, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping`
--

CREATE TABLE `shopping` (
  `store_id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shopping`
--

INSERT INTO `shopping` (`store_id`, `seller_id`, `client_id`, `product_id`, `quantity`, `date`) VALUES
(3, 3, 1, 5, 2, '2023-11-14'),
(3, 3, 1, 6, 6, '2023-11-14'),
(3, 3, 1, 7, 3, '2023-11-14'),
(3, 3, 1, 8, 1, '2023-11-14'),
(3, 2, 3, 4, 3, '2023-11-14'),
(3, 2, 3, 5, 3, '2023-11-14'),
(3, 2, 3, 6, 12, '2023-11-14'),
(3, 2, 3, 7, 1, '2023-11-14'),
(4, 2, 4, 9, 3, '2023-11-14'),
(4, 2, 4, 10, 2, '2023-11-14'),
(4, 2, 4, 15, 2, '2023-11-14'),
(4, 2, 4, 5, 1, '2023-11-14'),
(3, 3, 4, 20, 1, '2023-11-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL,
  `state_code` varchar(5) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id`, `name`, `details`, `state_code`, `country_id`) VALUES
(1, 'Vale del Cauca', 'Departamento del Valle del Cauca', '02', 1),
(2, 'Antióquia', 'Departamento de Antióquia', '06', 1),
(3, 'Quindío', 'Departamento del Quindío', '63', 1),
(4, 'Anzoátegui', 'Estado de Anzoátegui en Venezuela', '621', 2),
(5, 'Aragua', 'Estado de Aragua en Venezuela', '604', 2),
(6, 'Colón', 'Estado de Colón en Panamá', '596', 4),
(7, 'Herrera', 'Estado de Herrera en Panamá', '591', 4),
(8, 'Imbabura', 'Estado de Imbabura en Ecuador', '569', 3),
(9, 'Guayas', 'Estado de Guayas en Ecuador', '569', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `stock_admin_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `details` text DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `store_id`, `stock_admin_id`, `product_id`, `quantity`, `details`, `date`) VALUES
(1, 3, 4, 6, 12000, 'Surtido de 12k Ceevezas Club Colombia dorada', '2023-11-14'),
(2, 3, 4, 8, 800, 'Surtido de 800 Cola Granulada x 350gr', '2023-11-14'),
(3, 3, 4, 7, 2400, 'Initial Stock', '2023-11-14'),
(4, 3, 4, 3, 160, 'Initial Stock', '2023-11-14'),
(5, 3, 4, 4, 360, 'Initial Stock', '2023-11-14'),
(6, 3, 4, 5, 360, 'Initial Stock', '2023-11-14'),
(7, 4, 5, 9, 600, 'Initial Stock', '2023-11-14'),
(8, 4, 5, 12, 1200, 'Initial Stock', '2023-11-14'),
(9, 4, 5, 11, 200, 'Initial Stock', '2023-11-14'),
(10, 4, 5, 6, 3600, 'Initial Stock', '2023-11-14'),
(11, 3, 4, 15, 1000, 'Surtido de Salchichas para perros x 6 unidades', '2023-11-14'),
(12, 3, 4, 17, 50, 'Surtido de 50 lavadoras Samsung de 20 Libras de capacidad', '2023-11-14'),
(13, 4, 5, 14, 60, 'Surtido de Televisores Samsung de 60\".', '2023-11-14'),
(14, 3, 4, 11, 45, 'Surtido de Lavadoras Universal Frasco de Vidrio 1.5 litros ', '2023-11-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `addresses` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `store_chains_id` int(10) UNSIGNED NOT NULL,
  `store_types_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id`, `name`, `addresses`, `details`, `city_id`, `store_chains_id`, `store_types_id`) VALUES
(3, 'Almacén Exito - Unicentro', 'Almacén Exito - Unicentro. Ubicado el local 06 Primer Piso', 'Almacén Exito - Unicentro. Ubicado en Armenia - Quindío, Colombia.', 5, 1, 1),
(4, 'Almacén Olimpica - Portal del Quindío.', 'Piso 1, entrada lateral del CC', 'Almacén Olimpica - Portal del Quindío. Ubicado Armenia - Quindío, Colombia.', 5, 2, 1),
(5, 'Tienda Alkomprar - Unicentro Armenia.', 'Primer piso Local 13.', 'Tienda Alkomprar - Unicentro Armenia. Ubicada en Armenia - Quindío, Colombia.', 5, 5, 3),
(6, 'Arturo Calle - Calle 21. Armenia - Q.', 'Calle 21 #15-27.', 'Arturo Calle - Calle 21. Armenia - Q. Ubicada en la Ciudad de Armenia - Quindío, Colombia', 5, 9, 4),
(7, 'Teinda Ktronix - Unicentro (Cali)', 'Calle 5ta #122-56. Unicentro Cali', 'Tienda Ktronix de la Call5 5ta #122-56. Unicentro Cali. Ubicada en Cali - Valle del Cauca, Colombia.', 3, 7, 3),
(8, 'Makro - Unicentro (Cali)', 'Calle 5ta #122-56. Unicentro Cali', 'Makro de la Call5 5ta #122-56. Unicentro Cali. Ubicada en Cali - Valle del Cauca, Colombia.', 3, 11, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_chains`
--

CREATE TABLE `store_chains` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `store_chains`
--

INSERT INTO `store_chains` (`id`, `name`, `details`) VALUES
(1, 'Grupo Éxito', 'Grupo Éxito'),
(2, 'Cadena de Tiendas Olimpica', 'Cadena de Tiendas Olimpica'),
(3, 'Tiendas Jumbo', 'Tiendas Jumbo'),
(4, 'Falabella', 'Falabella'),
(5, 'Alkomprar', 'Alkomprar'),
(6, 'Alkosto', 'Alkosto'),
(7, 'Ktronix', 'Ktronix'),
(8, 'Carulla', 'Carulla'),
(9, 'Arturo Calle', 'Tiendad de Ropa Arturo Calle'),
(10, 'Homecenter', 'Articulos para la construcción y el hogar'),
(11, 'Tiendas Makro', 'Tiendas Makro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_types`
--

CREATE TABLE `store_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `store_types`
--

INSERT INTO `store_types` (`id`, `name`, `details`) VALUES
(1, 'Supermercados de Cadena', 'Supermercados de Cadena con productos variados'),
(2, 'Mini Mercados', 'Mini Mercados'),
(3, 'Tiendas de Electródomesticos', 'Tiendas de Electródomesticos'),
(4, 'Tiendas de Ropa', 'Tiendas de Ropa'),
(5, 'Super Mercados', 'Super Mercados'),
(6, 'Hiper Mercado', 'Hiper Mercado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zip_prefix` (`zip_prefix`),
  ADD KEY `state_id` (`state_id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `document_type_id` (`document_type_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_code` (`phone_code`);

--
-- Indices de la tabla `document_type`
--
ALTER TABLE `document_type`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_type_id` (`document_type_id`),
  ADD KEY `store_where_works` (`store_where_works`),
  ADD KEY `employee_code` (`employee_code`),
  ADD KEY `employee_type_id` (`employee_type_id`);

--
-- Indices de la tabla `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `manofacturing_country_id` (`manufacturing_country_id`);

--
-- Indices de la tabla `shopping`
--
ALTER TABLE `shopping`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `stock_admin_id` (`stock_admin_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `store_chains_id` (`store_chains_id`),
  ADD KEY `store_types_id` (`store_types_id`);

--
-- Indices de la tabla `store_chains`
--
ALTER TABLE `store_chains`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `store_types`
--
ALTER TABLE `store_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `store_chains`
--
ALTER TABLE `store_chains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `store_types`
--
ALTER TABLE `store_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`),
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`);

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`employee_type_id`) REFERENCES `employee_types` (`id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`store_where_works`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`manufacturing_country_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `shopping_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `shopping_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `shopping_ibfk_3` FOREIGN KEY (`seller_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `shopping_ibfk_4` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`stock_admin_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `stores_ibfk_2` FOREIGN KEY (`store_chains_id`) REFERENCES `store_chains` (`id`),
  ADD CONSTRAINT `stores_ibfk_3` FOREIGN KEY (`store_types_id`) REFERENCES `store_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
