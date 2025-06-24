-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2025 a las 05:02:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(100) DEFAULT NULL,
  `date_created_category` datetime DEFAULT current_timestamp(),
  `date_updated_category` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `name_category`, `date_created_category`, `date_updated_category`) VALUES
(1, 'Tecnología', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(2, 'Hogar', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(3, 'Moda', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(4, 'Deportes', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(5, 'Salud y Belleza', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(6, 'Juguetes', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(7, 'Libros', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(8, 'Alimentos', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(9, 'Electrodomésticos', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(10, 'Automotriz', '2025-06-20 20:28:45', '2025-06-20 20:28:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `name_client` varchar(100) DEFAULT NULL,
  `email_client` varchar(100) DEFAULT NULL,
  `password_client` varchar(255) DEFAULT NULL,
  `token_client` varchar(255) DEFAULT NULL,
  `token_exp_client` text DEFAULT NULL,
  `date_created_client` datetime DEFAULT current_timestamp(),
  `date_updated_client` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id_client`, `name_client`, `email_client`, `password_client`, `token_client`, `token_exp_client`, `date_created_client`, `date_updated_client`) VALUES
(1, 'Camila Suárez', 'camila@example.com', 'pass1', 'token1', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(2, 'Sebastián Torres', 'sebastian@example.com', 'pass2', 'token2', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(3, 'Valentina López', 'valentina@example.com', 'pass3', 'token3', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(4, 'Daniel Gómez', 'daniel@example.com', 'pass4', 'token4', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(5, 'Laura Martínez', 'laura@example.com', 'pass5', 'token5', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(6, 'Mateo Rodríguez', 'mateo@example.com', 'pass6', 'token6', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(7, 'Isabella Herrera', 'isabella@example.com', 'pass7', 'token7', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(8, 'Juan Pérez', 'juan@example.com', 'pass8', 'token8', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(9, 'Manuela Díaz', 'manuela@example.com', 'pass9', 'token9', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(10, 'Andrés Vargas', 'andres@example.com', 'pass10', 'token10', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(11, 'Sara Morales', 'sara@example.com', 'pass11', 'token11', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(12, 'Felipe Castillo', 'felipe@example.com', 'pass12', 'token12', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(13, 'Mariana Ruiz', 'mariana@example.com', 'pass13', 'token13', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(14, 'Carlos Mendoza', 'carlos@example.com', 'pass14', 'token14', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(15, 'Natalia Peña', 'natalia@example.com', 'pass15', 'token15', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(16, 'Julián Ortiz', 'julian@example.com', 'pass16', 'token16', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(17, 'Daniela Castro', 'daniela@example.com', 'pass17', 'token17', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(18, 'Tomás Gil', 'tomas@example.com', 'pass18', 'token18', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(19, 'Lucía Ramírez', 'lucia@example.com', 'pass19', 'token19', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45'),
(20, 'Emilio Cárdenas', 'emilio@example.com', 'pass20', 'token20', '2025-12-31 23:59:59', '2025-06-20 20:28:45', '2025-06-20 20:28:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(150) DEFAULT NULL,
  `id_category_product` int(11) DEFAULT NULL,
  `date_created_product` date DEFAULT current_timestamp(),
  `date_updated_product` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `name_product`, `id_category_product`, `date_created_product`, `date_updated_product`) VALUES
(1, 'Smartphone Android', 1, '2025-05-06', '2025-06-22 18:38:22'),
(2, 'Portátil HP', 1, '2025-05-06', '2025-06-22 18:38:25'),
(3, 'Tablet Samsung', 1, '2025-05-06', '2025-06-22 18:38:28'),
(4, 'Cámara de seguridad', 1, '2025-05-06', '2025-06-22 18:38:30'),
(5, 'Aspiradora robot', 2, '2025-05-06', '2025-06-22 18:38:32'),
(6, 'Sofá reclinable', 2, '2025-07-07', '2025-06-22 18:36:17'),
(7, 'Lámpara LED', 2, '2025-07-07', '2025-06-22 18:36:19'),
(8, 'Cortinas blackout', 2, '2025-07-07', '2025-06-22 18:36:22'),
(9, 'Chaqueta de cuero', 3, '2025-07-07', '2025-06-22 18:36:24'),
(10, 'Zapatillas deportivas', 3, '2025-07-07', '2025-06-22 18:36:26'),
(11, 'Camiseta estampada', 3, '2025-07-07', '2025-06-22 18:36:29'),
(12, 'Bolso elegante', 3, '2025-06-20', '2025-06-20 20:28:45'),
(13, 'Bicicleta de montaña', 4, '2025-06-20', '2025-06-20 20:28:45'),
(14, 'Guantes deportivos', 4, '2025-06-20', '2025-06-20 20:28:45'),
(15, 'Balón de fútbol', 4, '2025-06-20', '2025-06-20 20:28:45'),
(16, 'Casco para ciclismo', 4, '2025-06-20', '2025-06-20 20:28:45'),
(17, 'Proteína en polvo', 5, '2025-06-20', '2025-06-20 20:28:45'),
(18, 'Cepillo facial', 5, '2025-06-20', '2025-06-20 20:28:45'),
(19, 'Crema hidratante', 5, '2025-06-20', '2025-06-20 20:28:45'),
(20, 'Vitaminas multivitamínicas', 5, '2025-06-20', '2025-06-20 20:28:45'),
(21, 'Muñeca interactiva', 6, '2025-06-20', '2025-06-20 20:28:45'),
(22, 'Juego de construcción', 6, '2025-06-20', '2025-06-20 20:28:45'),
(23, 'Carro a control remoto', 6, '2025-06-20', '2025-06-20 20:28:45'),
(24, 'Peluche gigante', 6, '2025-06-20', '2025-06-20 20:28:45'),
(25, 'Novela romántica', 7, '2025-06-20', '2025-06-20 20:28:45'),
(26, 'Libro de cocina', 7, '2025-06-20', '2025-06-20 20:28:45'),
(27, 'Enciclopedia escolar', 7, '2025-06-20', '2025-06-20 20:28:45'),
(28, 'Agenda 2025', 7, '2025-06-20', '2025-06-20 20:28:45'),
(29, 'Café orgánico', 8, '2025-06-20', '2025-06-20 20:28:45'),
(30, 'Chocolates artesanales', 8, '2025-06-20', '2025-06-20 20:28:45'),
(31, 'Galletas integrales', 8, '2025-06-20', '2025-06-20 20:28:45'),
(32, 'Aceite de oliva', 8, '2025-06-20', '2025-06-20 20:28:45'),
(33, 'Refrigerador LG', 9, '2025-06-20', '2025-06-20 20:28:45'),
(34, 'Microondas Samsung', 9, '2025-06-20', '2025-06-20 20:28:45'),
(35, 'Licuadora Oster', 9, '2025-06-20', '2025-06-20 20:28:45'),
(36, 'Cafetera digital', 9, '2025-06-20', '2025-06-20 20:28:45'),
(37, 'Llanta 15 pulgadas', 10, '2025-06-20', '2025-06-20 20:28:45'),
(38, 'Batería de carro', 10, '2025-06-20', '2025-06-20 20:28:45'),
(39, 'Aditivo para motor', 10, '2025-06-20', '2025-06-20 20:28:45'),
(40, 'Espejos retrovisores', 10, '2025-06-20', '2025-06-20 20:28:45'),
(41, 'Monitor curvo 27\"', 1, '2025-06-20', '2025-06-20 20:28:45'),
(42, 'Teclado mecánico', 1, '2025-06-20', '2025-06-20 20:28:45'),
(43, 'Router WiFi 6', 1, '2025-06-20', '2025-06-20 20:28:45'),
(44, 'Cámara web HD', 1, '2025-06-20', '2025-06-20 20:28:45'),
(45, 'Mesa comedor 6 puestos', 2, '2025-06-20', '2025-06-20 20:28:45'),
(46, 'Colchón ortopédico', 2, '2025-06-20', '2025-06-20 20:28:45'),
(47, 'Zapatos formales', 3, '2025-06-20', '2025-06-20 20:28:45'),
(48, 'Sudadera deportiva', 3, '2025-06-20', '2025-06-20 20:28:45'),
(49, 'Reloj inteligente', 5, '2025-06-20', '2025-06-20 20:28:45'),
(50, 'Termo térmico', 4, '2025-06-20', '2025-06-20 20:28:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `email_client` (`email_client`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category_product` (`id_category_product`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `categories` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
