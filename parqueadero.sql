-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-06-2023 a las 05:48:51
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

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

DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(255) NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_pago` varchar(255) NOT NULL,
  `fecha_ingreso` varchar(255) NOT NULL,
  `nombre_espacio` varchar(10) NOT NULL,
  `estado` enum('activo','inactivo','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `placa`, `tipo_vehiculo`, `tipo_pago`, `fecha_ingreso`, `nombre_espacio`, `estado`) VALUES
(1, 'KNH28F', 'Moto', 'Dia', 'Mon Jun 19 23:24:51 COT 2023', 'm1', 'activo'),
(2, 'ANM548', 'Carro', 'Hora', 'Mon Jun 19 23:26:58 COT 2023', 'c9', 'activo'),
(3, 'ALB47F', 'Moto', 'Dia', 'Thu Jun 22 10:42:17 COT 2023', 'M2', 'activo'),
(4, 'MHL49G', 'Carro', 'Dia', 'Thu Jun 22 10:43:06 COT 2023', 'C1', 'activo'),
(5, 'AQW12F', 'Moto', 'Hora', 'Fri Jun 23 09:11:57 COT 2023', 'M3', 'activo'),
(6, 'AQS13G', 'Moto', 'Hora', 'Fri Jun 23 10:09:36 COT 2023', 'M8', 'activo'),
(7, 'WSD12H', 'Moto', 'Hora', 'Fri Jun 23 10:18:01 COT 2023', 'M4', 'activo'),
(8, 'KLU43F', 'Moto', 'Hora', 'Fri Jun 23 18:46:32 COT 2023', 'M9', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

DROP TABLE IF EXISTS `membresias`;
CREATE TABLE IF NOT EXISTS `membresias` (
  `propietario` varchar(255) NOT NULL,
  `telefono` double NOT NULL,
  `tipo_vehiculo` varchar(255) NOT NULL,
  `tipo_membresia` varchar(255) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `fecha_inicio` varchar(255) NOT NULL,
  `fecha_vencimiento` varchar(255) NOT NULL,
  `total` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`propietario`, `telefono`, `tipo_vehiculo`, `tipo_membresia`, `placa`, `fecha_inicio`, `fecha_vencimiento`, `total`) VALUES
('Andrey', 3103836118, 'Moto', 'Mensual', 'KHJ43F', 'Tue Jun 20 10:32:46 COT 2023', 'Thu Jul 20 10:32:46 COT 2023', 0),
('Monsalve', 314785621, 'Carro', 'Mensual', 'BLQ47F', 'Tue Jun 20 18:00:40 COT 2023', 'Wed Jul 05 18:00:40 COT 2023', 40000),
('MonsoDev', 3457896255, 'Carro', 'Mensual', 'ASQ89F', 'Tue Jun 20 18:08:08 COT 2023', 'Thu Jul 20 18:08:08 COT 2023', 40000),
('Oscar Loaiza', 3145896864, 'Moto', 'Quincenal', 'FGH56G', 'Fri Jun 23 18:41:28 COT 2023', 'Sat Jul 08 18:41:28 COT 2023', 15000),
('Diego Legarda', 3124784542, 'Carro', 'Mensual', 'LOI32G', 'Fri Jun 23 18:49:35 COT 2023', 'Sun Jul 23 18:49:35 COT 2023', 40000),
('Gordito Monso', 3478965412, 'Moto', 'Quincenal', 'AZX33H', 'Fri Jun 23 19:51:58 COT 2023', 'Sat Jul 08 19:51:58 COT 2023', 15000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
