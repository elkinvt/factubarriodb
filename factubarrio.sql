-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2024 a las 01:01:56
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
-- Base de datos: `factubarrio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `iddireccion` int(11) NOT NULL,
  `tipo_via` varchar(20) NOT NULL,
  `numero_via` int(11) NOT NULL,
  `letra_bis` varchar(2) DEFAULT NULL,
  `numero_via_secundaria` int(11) NOT NULL,
  `numero_placa` int(11) NOT NULL,
  `detalles_adicionales` varchar(100) DEFAULT NULL,
  `barrio` varchar(50) NOT NULL DEFAULT 'desconocido',
  `ciudad` varchar(50) NOT NULL DEFAULT 'desconocido',
  `municipio` varchar(50) NOT NULL DEFAULT 'desconocido',
  `pais` varchar(50) NOT NULL DEFAULT 'desconocido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`iddireccion`),
  ADD KEY `idx_ciudad` (`ciudad`),
  ADD KEY `idx_barrio` (`barrio`),
  ADD KEY `idx_pais` (`pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `iddireccion` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
