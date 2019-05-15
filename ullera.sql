-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2019 a las 12:07:13
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `CulAmpolla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ullera`
--

CREATE TABLE `ullera` (
  `id_ullera` int(11) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `graduacio` int(11) NOT NULL,
  `tipu_muntura` enum('flotant','pasta','metàl·lica') NOT NULL,
  `color_montura1` varchar(15) NOT NULL,
  `color_montura2` varchar(15) NOT NULL,
  `color_vidre1` varchar(15) NOT NULL,
  `color_vidre2` varchar(15) NOT NULL,
  `preu` double NOT NULL,
  `id_proveidor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ullera`
--

INSERT INTO `ullera` (`id_ullera`, `marca_id`, `graduacio`, `tipu_muntura`, `color_montura1`, `color_montura2`, `color_vidre1`, `color_vidre2`, `preu`, `id_proveidor`) VALUES
(1, 1, 5, 'pasta', 'verd', 'verd', 'blanc', 'blau', 23.44, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ullera`
--
ALTER TABLE `ullera`
  ADD PRIMARY KEY (`id_ullera`),
  ADD KEY `id_marca` (`marca_id`),
  ADD KEY `id_proveidor` (`id_proveidor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ullera`
--
ALTER TABLE `ullera`
  MODIFY `id_ullera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ullera`
--
ALTER TABLE `ullera`
  ADD CONSTRAINT `ullera_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ullera_ibfk_2` FOREIGN KEY (`id_proveidor`) REFERENCES `proveidor` (`id_proveidor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
