-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-04-2023 a las 19:24:50
-- Versión del servidor: 8.0.32-0ubuntu0.22.04.2
-- Versión de PHP: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motoweb`
--
CREATE DATABASE IF NOT EXISTS `motoweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `motoweb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--
-- Creación: 26-04-2023 a las 17:15:33
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE `eventos` (
  `codEvento` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `provincia` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cartel` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- RELACIONES PARA LA TABLA `eventos`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardados`
--
-- Creación: 26-04-2023 a las 17:21:42
--

DROP TABLE IF EXISTS `guardados`;
CREATE TABLE `guardados` (
  `codUsuario` int NOT NULL,
  `codEvento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- RELACIONES PARA LA TABLA `guardados`:
--   `codEvento`
--       `eventos` -> `codEvento`
--   `codUsuario`
--       `usuarios` -> `codUsuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--
-- Creación: 26-04-2023 a las 17:10:43
--

DROP TABLE IF EXISTS `inscripciones`;
CREATE TABLE `inscripciones` (
  `codUsuario` int NOT NULL,
  `codRuta` int NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- RELACIONES PARA LA TABLA `inscripciones`:
--   `codRuta`
--       `rutas` -> `codRuta`
--   `codUsuario`
--       `usuarios` -> `codUsuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--
-- Creación: 26-04-2023 a las 16:15:18
--

DROP TABLE IF EXISTS `rutas`;
CREATE TABLE `rutas` (
  `codRuta` int NOT NULL,
  `mapa` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `recorrido` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tiempo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `distancia` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `provincia` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- RELACIONES PARA LA TABLA `rutas`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 26-04-2023 a las 16:08:40
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `codUsuario` int NOT NULL,
  `usuario` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `edad` int NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `moto` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- RELACIONES PARA LA TABLA `usuarios`:
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`codEvento`);

--
-- Indices de la tabla `guardados`
--
ALTER TABLE `guardados`
  ADD KEY `FK_Evento` (`codEvento`),
  ADD KEY `FK_User` (`codUsuario`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD KEY `FK_Usuario` (`codUsuario`),
  ADD KEY `FK_Ruta` (`codRuta`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`codRuta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codUsuario`),
  ADD UNIQUE KEY `identificador_usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `codEvento` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `codRuta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codUsuario` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `guardados`
--
ALTER TABLE `guardados`
  ADD CONSTRAINT `FK_Evento` FOREIGN KEY (`codEvento`) REFERENCES `eventos` (`codEvento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_User` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `FK_Ruta` FOREIGN KEY (`codRuta`) REFERENCES `rutas` (`codRuta`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Usuario` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
