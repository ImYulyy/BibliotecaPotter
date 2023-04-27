-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2023 a las 02:21:19
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
-- Base de datos: `login1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contraseña`) VALUES
(1, 'dsad', 'wdawd', '0'),
(2, 'cxdcd', 'cdzcz', '0'),
(3, 'cxdcd', 'cdzcz', '0'),
(4, 'cxdcd', 'cdzcz', '0'),
(5, '11', '11', '11'),
(6, '11', '11', '11'),
(7, '222', '222', '222'),
(8, '222', '222', '222'),
(9, '333', '333', '333'),
(10, '555', '555', '555'),
(11, '555', '555', '555'),
(12, '77', '777', '77'),
(13, '77', '777', '77'),
(14, '77', '777', '77'),
(15, '77', '777', '77'),
(16, '88', '88', '88'),
(17, 'Jose', 'joose-antonioo2011@hotmail.com', '1234'),
(18, 'xsxs', 'xsxs', 'xsxs'),
(19, 'JosGP', 'frf', 'efe'),
(20, 'dfrsxf', 'joose-antonioo2011@hotmail.coe', 'fef'),
(21, 'Jos GP', 'joose-antonio2011hotmail.com', '1234'),
(22, 'JosGP', 'joose-antoni2011@hotmail.com', '1234'),
(23, 'JosGP', 'dcdzcdz', 'cdzczd'),
(24, 'JosGP', 'hyffhfyh', 'hyfhfhyf'),
(25, 'JosGP', 'joose-ao2011@hotmail.com', '1234'),
(26, 'fzcd', 'czcz', 'dzcxzc'),
(27, 'JosGP', 'fsfd', 'szdcx'),
(28, 'dacx', 'dczx', 'dcx'),
(29, 'bgb', 'bgbg', 'bgb'),
(30, 'vxgx', 'gxdvx', 'fvcfbv'),
(31, 'bcgh', 'bgbbc', 'bgbcb'),
(32, 'Meme Paz', 'paz0331@hotmail.com', '1410');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
