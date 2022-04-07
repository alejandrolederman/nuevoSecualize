-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2022 a las 00:50:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `payment_db`
--
CREATE DATABASE IF NOT EXISTS `payment_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `payment_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `object` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `billed_hours` decimal(10,0) NOT NULL,
  `billed_at` varchar(30) NOT NULL,
  `billing_currency` varchar(30) NOT NULL,
  `billed_amount` decimal(30,0) NOT NULL,
  `amount` int(30) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `needs_exchange` tinyint(1) NOT NULL,
  `echange_currency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `object`, `description`, `billed_hours`, `billed_at`, `billing_currency`, `billed_amount`, `amount`, `currency`, `needs_exchange`, `echange_currency`) VALUES
(1, 'Ppayent', 'pago', '2', '2020-04-01', 'clf', '2', 45000, 'clp', 0, 'clp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
