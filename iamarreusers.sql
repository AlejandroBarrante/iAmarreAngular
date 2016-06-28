-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-06-2016 a las 08:25:37
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iamarreusers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(6) NOT NULL COMMENT 'Identificador',
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'EMail',
  `telefono` int(9) DEFAULT NULL COMMENT 'Teléfono',
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado',
  `imagen` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `mail`, `telefono`, `estado`, `imagen`) VALUES
(36, 'Jacques Cousteau', 'cousteau@iamarre.com', 678927134, 'Navegando por los mares...', '/images/cousteau.jpg'),
(37, 'Cristobal Colón', 'cristobal@iamarre.com', 698427597, 'Tierra a la vista.', '/images/colon.jpg'),
(41, 'James Cook', 'cook@iamarre.com', 668456789, 'Qué frío hace aquí...', '/images/cook.jpg'),
(43, 'Francis Drake', 'fdrake@iamarre.com', 666333222, 'No soy pirata, soy corsario...aa', '/images/drake.jpg'),
(44, 'Fernando de Magallanes', 'fmagallanes@iamarre.com', 642756197, 'Me voy para Argentina...', '/images/maga.jpg'),
(45, 'Alain Colas', 'acolas@iamarre.com', 654782567, 'Vive le France!', '/images/colas.png'),
(46, 'Edward Teach', 'barbanegra@iamarre.com', 633487215, 'Arrr!', '/images/barba.jpg'),
(47, 'Americo Vespucio', 'amvespuccio@iamarre.com', 645892147, 'Un continente lleva mi nombre.', '/images/americo.jpg'),
(48, 'Ellen McArthur', 'ellen@iamarre.com', 782456126, 'Navegante retirada.', '/images/ellen.jpg'),
(49, 'Piri Reis', 'pirireis@iamarre.com', 620128709, 'Mi mapa es mejor que el tuyo.', '/images/piri.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
