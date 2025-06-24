-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2025 a las 04:58:27
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
-- Base de datos: `courses_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id_course` int(11) NOT NULL,
  `tittle_course` varchar(150) DEFAULT NULL,
  `description_course` text DEFAULT NULL,
  `id_instructor_course` int(11) DEFAULT 0,
  `image_course` varchar(255) DEFAULT NULL,
  `price_course` decimal(10,2) DEFAULT 0.00,
  `date_created_course` datetime DEFAULT current_timestamp(),
  `date_update_course` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id_course`, `tittle_course`, `description_course`, `id_instructor_course`, `image_course`, `price_course`, `date_created_course`, `date_update_course`) VALUES
(1, 'Curso de PHP Básico', 'Aprende las bases de PHP para desarrollo web.', 1, 'php.jpg', 49.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(2, 'Curso de HTML y CSS', 'Diseña sitios web responsivos con HTML y CSS.', 2, 'htmlcss.jpg', 29.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(3, 'Curso de JavaScript Moderno', 'Domina JavaScript desde cero.', 3, 'js.jpg', 59.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(4, 'MySQL Intermedio', 'Gestiona bases de datos de forma profesional.', 4, 'mysql.jpg', 39.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(5, 'Node.js y Express', 'Construye backends robustos con Node.', 5, 'node.jpg', 69.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(6, 'React para principiantes', 'Crea interfaces modernas con React.', 6, 'react.jpg', 79.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(7, 'Python desde cero', 'Curso completo de Python.', 7, 'python.jpg', 44.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(8, 'APIs REST con Django', 'Construcción de APIs con Django Rest Framework.', 8, 'django.jpg', 54.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(9, 'MongoDB esencial', 'Bases de datos NoSQL con MongoDB.', 9, 'mongodb.jpg', 34.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(10, 'Flutter & Dart', 'Desarrolla apps móviles con Flutter.', 10, 'flutter.jpg', 74.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(11, 'Java desde cero', 'Programación orientada a objetos en Java.', 1, 'java.jpg', 39.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(12, 'Laravel avanzado', 'Domina Laravel como un profesional.', 2, 'laravel.jpg', 59.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(13, 'C# y .NET', 'Aplicaciones modernas con C# y .NET.', 3, 'csharp.jpg', 49.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(14, 'Kotlin para Android', 'Desarrollo nativo en Android.', 4, 'kotlin.jpg', 45.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(15, 'Unity para juegos', 'Desarrolla juegos 2D y 3D.', 5, 'unity.jpg', 55.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(16, 'SQL completo', 'Consultas, joins y transacciones.', 6, 'sql.jpg', 39.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(17, 'Seguridad web básica', 'Buenas prácticas y OWASP.', 7, 'security.jpg', 42.50, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(18, 'DevOps con Docker', 'Automatiza despliegues con Docker.', 8, 'docker.jpg', 60.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(19, 'GIT y GitHub', 'Control de versiones y flujos de trabajo.', 9, 'git.jpg', 25.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(20, 'Vue.js moderno', 'Framework progresivo de JavaScript.', 10, 'vue.jpg', 67.99, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(21, 'Diseño UX/UI', 'Diseña experiencias agradables.', 1, 'ux.jpg', 58.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(22, 'Blender 3D', 'Modelado y animación 3D.', 2, 'blender.jpg', 48.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(23, 'C++ Intermedio', 'Programación avanzada en C++.', 3, 'cpp.jpg', 46.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(24, 'Swift para iOS', 'Crea apps iOS desde cero.', 4, 'swift.jpg', 68.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(25, 'Ruby on Rails', 'Framework para desarrollo rápido.', 5, 'rails.jpg', 53.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(26, 'Automatización con Python', 'Scripts útiles para automatizar tareas.', 6, 'python_auto.jpg', 35.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(27, 'Scrum & Agile', 'Metodologías ágiles explicadas.', 7, 'scrum.jpg', 41.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(28, 'Firebase para Web', 'Base de datos y autenticación fácil.', 8, 'firebase.jpg', 44.50, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(29, 'Linux desde cero', 'Aprende comandos y administración.', 9, 'linux.jpg', 36.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(30, 'Next.js avanzado', 'SSR y SSG con React.', 10, 'next.jpg', 70.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(31, 'Marketing Digital', 'Estrategias de SEO y SEM.', 1, 'marketing.jpg', 50.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(32, 'Diseño con Figma', 'Prototipa y diseña con Figma.', 2, 'figma.jpg', 47.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(33, 'IA con Python', 'Machine Learning y redes neuronales.', 3, 'ai.jpg', 66.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(34, 'Arduino y electrónica', 'Proyectos físicos con Arduino.', 4, 'arduino.jpg', 33.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(35, 'Excel para negocios', 'Formulas, gráficos y dashboards.', 5, 'excel.jpg', 30.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(36, 'Power BI', 'Visualiza datos profesionalmente.', 6, 'powerbi.jpg', 39.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(37, 'Photoshop básico', 'Edición de imágenes desde cero.', 7, 'ps.jpg', 31.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(38, 'After Effects', 'Animación y efectos visuales.', 8, 'ae.jpg', 65.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(39, 'Ciberseguridad', 'Protege sistemas y redes.', 9, 'cyber.jpg', 72.00, '2025-06-20 20:28:34', '2025-06-20 20:28:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructors`
--

CREATE TABLE `instructors` (
  `id_instructor` int(11) NOT NULL,
  `name_instructor` varchar(100) DEFAULT NULL,
  `username_instructor` varchar(50) DEFAULT NULL,
  `email_instructor` varchar(100) DEFAULT NULL,
  `password_instructor` varchar(255) DEFAULT NULL,
  `token_instructor` varchar(255) DEFAULT NULL,
  `token_exp_instructor` text DEFAULT NULL,
  `date_created_instructor` datetime DEFAULT current_timestamp(),
  `date_updated_instructor` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructors`
--

INSERT INTO `instructors` (`id_instructor`, `name_instructor`, `username_instructor`, `email_instructor`, `password_instructor`, `token_instructor`, `token_exp_instructor`, `date_created_instructor`, `date_updated_instructor`) VALUES
(1, 'Carlos Ramírez', 'carlosr', 'carlos@example.com', 'pass1', 'token1', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(2, 'Ana Torres', 'anatorres', 'ana@example.com', 'pass2', 'token2', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(3, 'Luis Méndez', 'luism', 'luis@example.com', 'pass3', 'token3', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(4, 'Laura Ríos', 'laurarios', 'laura@example.com', 'pass4', 'token4', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(5, 'Pedro Gómez', 'pedrog', 'pedro@example.com', 'pass5', 'token5', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(6, 'Sofía Núñez', 'sofian', 'sofia@example.com', 'pass6', 'token6', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(7, 'David Castro', 'dcastro', 'david@example.com', 'pass7', 'token7', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(8, 'Marcela Díaz', 'marced', 'marcela@example.com', 'pass8', 'token8', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(9, 'Juan Ortega', 'juanor', 'juan@example.com', 'pass9', 'token9', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(10, 'Elena Salas', 'elenas', 'elena@example.com', 'pass10', 'token10', '2025-12-31', '2025-06-20 20:28:34', '2025-06-20 20:28:34'),
(11, NULL, NULL, 'correo@correo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NTA3MjI0MDYsImV4cCI6MTc1MDgwODgwNiwiZGF0YSI6eyJpZCI6MTEsImVtYWlsIjoiY29ycmVvQGNvcnJlby5jb20ifX0.Kwn7hRLKpFqq7v_Bha2d12JmRA8RRa_L28iBvPPHyoY', '1750808806', '2025-06-23 15:23:16', '2025-06-23 18:46:46'),
(12, NULL, NULL, 'correo@correo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', NULL, NULL, '2025-06-23 19:07:49', '2025-06-23 19:07:49'),
(13, NULL, NULL, 'correo@correo.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', NULL, NULL, '2025-06-23 21:35:23', '2025-06-23 21:35:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_course`);

--
-- Indices de la tabla `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id_instructor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id_course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id_instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`id_instructor_course`) REFERENCES `instructors` (`id_instructor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
