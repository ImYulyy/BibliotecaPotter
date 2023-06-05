-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2023 a las 02:21:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

-- Crear la base de datos `login1`
CREATE DATABASE IF NOT EXISTS `login1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login1`;

-- Estructura de tabla para la tabla `usuarios`
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcado de datos para la tabla `usuarios`
INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contraseña`) VALUES
(1, 'Juan Perez', 'juan@example.com', 'password123'),
(2, 'Maria Lopez', 'maria@example.com', 'password456'),
(3, 'Pedro Rodriguez', 'pedro@example.com', 'password789'),
(4, 'Ana Martinez', 'ana@example.com', 'passwordabc'),
(5, 'Luis Garcia', 'luis@example.com', 'passwordxyz'),
(6, 'Laura Torres', 'laura@example.com', 'passworddef'),
(7, 'Carlos Sanchez', 'carlos@example.com', 'passwordghi');

-- Índices para tablas volcadas

-- Indices de la tabla `usuarios`
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT de las tablas volcadas

-- AUTO_INCREMENT de la tabla `usuarios`
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
