-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2023 a las 19:04:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_pago` varchar(255) NOT NULL,
  `fecha_ingreso` varchar(255) NOT NULL,
  `nombre_espacio` varchar(10) NOT NULL,
  `estado` enum('activo','inactivo','','') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `placa`, `tipo_vehiculo`, `tipo_pago`, `fecha_ingreso`, `nombre_espacio`, `estado`) VALUES
(1, 'KNH28F', 'Moto', 'Dia', 'Mon Jun 19 23:24:51 COT 2023', 'm1', 'activo'),
(2, 'ANM548', 'Carro', 'Hora', 'Mon Jun 19 23:26:58 COT 2023', 'c9', 'activo'),
(3, 'ALB47F', 'Moto', 'Dia', 'Thu Jun 22 10:42:17 COT 2023', 'M2', 'activo'),
(4, 'MHL49G', 'Carro', 'Dia', 'Thu Jun 22 10:43:06 COT 2023', 'C1', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `propietario` varchar(255) NOT NULL,
  `telefono` double NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_membresia` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `fecha_inicio` varchar(255) NOT NULL,
  `fecha_vencimiento` varchar(255) NOT NULL,
  `total` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`propietario`, `telefono`, `tipo_vehiculo`, `tipo_membresia`, `placa`, `fecha_inicio`, `fecha_vencimiento`, `total`) VALUES
('Andrey', 3103836118, 'Moto', 'Mensual', 'KHJ43F', 'Tue Jun 20 10:32:46 COT 2023', 'Thu Jul 20 10:32:46 COT 2023', 0),
('Monsalve', 314785621, 'Carro', 'Mensual', 'BLQ47F', 'Tue Jun 20 18:00:40 COT 2023', 'Wed Jul 05 18:00:40 COT 2023', 40000),
('MonsoDev', 3457896255, 'Carro', 'Mensual', 'ASQ89F', 'Tue Jun 20 18:08:08 COT 2023', 'Thu Jul 20 18:08:08 COT 2023', 40000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
