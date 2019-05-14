-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-05-2019 a las 07:53:28
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_guerreros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clan`
--

DROP TABLE IF EXISTS `clan`;
CREATE TABLE IF NOT EXISTS `clan` (
  `ID_CLAN` char(1) NOT NULL,
  `NOMBRE_CLAN` varchar(20) NOT NULL,
  `PAIS` char(5) NOT NULL,
  PRIMARY KEY (`ID_CLAN`),
  KEY `PAIS` (`PAIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clan`
--

INSERT INTO `clan` (`ID_CLAN`, `NOMBRE_CLAN`, `PAIS`) VALUES
('1', 'VIKINGOS', 'GROEN'),
('2', 'SAMURAIS', 'JAPON'),
('3', 'CABALLEROS', 'GER'),
('4', 'WULING', 'CHINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guerrero`
--

DROP TABLE IF EXISTS `guerrero`;
CREATE TABLE IF NOT EXISTS `guerrero` (
  `ID_GUERRERO` char(2) NOT NULL,
  `ID_CLAN` char(1) NOT NULL,
  `NOMBRE_GUERRERO` varchar(20) NOT NULL,
  `EDAD` int(11) NOT NULL,
  PRIMARY KEY (`ID_GUERRERO`),
  KEY `ID_CLAN` (`ID_CLAN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `guerrero`
--

INSERT INTO `guerrero` (`ID_GUERRERO`, `ID_CLAN`, `NOMBRE_GUERRERO`, `EDAD`) VALUES
('1', '1', 'ARTURO', 25),
('2', '1', 'ELISA', 21),
('3', '1', 'GEORGE', 34),
('4', '2', 'RAGNAR', 25),
('5', '2', 'KRIS', 21),
('6', '2', 'THOR', 27),
('7', '3', 'YATO', 22),
('8', '3', 'UMI', 19),
('9', '3', 'RYU', 34),
('10', '4', 'JIANG', 43),
('11', '4', 'LEE', 26),
('12', '4', 'TIANDI', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
CREATE TABLE IF NOT EXISTS `localizacion` (
  `PAIS` char(5) NOT NULL,
  `CONTINENTE` char(20) NOT NULL,
  PRIMARY KEY (`PAIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`PAIS`, `CONTINENTE`) VALUES
('CHINA', 'ASIA'),
('JAPON', 'ASIA'),
('GROEN', 'EUROPA'),
('GER', 'EUROPA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
