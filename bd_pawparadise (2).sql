-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2025 a las 18:20:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_pawparadise`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_orden`
--

CREATE TABLE `detalles_orden` (
  `id_detalle` int(11) NOT NULL,
  `id_orden` int(11) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_orden`
--

INSERT INTO `detalles_orden` (`id_detalle`, `id_orden`, `nombre_producto`, `precio`, `cantidad`) VALUES
(1, 1, 'HOLLIDAY MV Perros Cardio', 60.50, 2),
(2, 2, 'HOLLIDAY MV Perros Cardio', 60.50, 2),
(3, 3, 'HOLLIDAY MV Perros Cardio', 60.50, 2),
(4, 4, 'HOLLIDAY MV Perros Cardio', 60.50, 2),
(5, 5, 'HOLLIDAY MV Perros Cardio', 60.50, 2),
(6, 6, 'BRAVECTO TABLETA DE 4.5 KG A 10 KG (PERROS)', 106.88, 1),
(7, 6, 'Alimento hÃºmedo para Gatos Fancy Feast Casserole sabor atÃºn y salmÃ³n en lata de 85gr', 6.00, 1),
(8, 8, 'Nature\'s Miracle Spray Platino Avanzado Calmante Gato 236ml', 49.90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `especie` varchar(100) DEFAULT NULL,
  `raza` varchar(100) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `edad` varchar(20) DEFAULT NULL,
  `enfermedad` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`id`, `nombre`, `especie`, `raza`, `sexo`, `edad`, `enfermedad`, `usuario_id`) VALUES
(1, 'Paris', 'perro', 'meztiso', 'mas', '6', 'gfcjcfgjch', 7),
(2, 'Paris', 'perro', 'meztiso', 'mas', '6', 'gfcjcfgjch', 8),
(3, 'Paris', 'perro', 'meztiso', 'mas', '6', 'gfcjcfgjch', 9),
(4, 'uno', 'canino', 'perro', 'macho', '4', 'cancer', 10),
(5, 'leonardo', 'canino', 'racista', 'indefinido', '18', 'alergico a los pobres', 11),
(6, 'leonardo', 'canino', 'racista', 'indefinido', '18', 'alergico a los pobres', 12),
(7, 'uno', 'canino', 'perro', 'macho', '4', 'cancer', 13),
(8, 'uno', 'canino', 'perro', 'macho', '4', 'cancer', 14),
(9, 'leonardo', 'canino', 'perro', 'indefinido', '4', 'alergico a los pobres', 15),
(10, 'kjhbj', 'canino', 'perro', 'indefinido', '18', 'alergico a los pobres', 16),
(11, 'leonardo', 'canino', 'perro', 'indefinido', '4', 'alergico a los pobres', 17),
(12, 'Dakota', 'perro', 'mestiza', 'femenino', '5', 'dolor en los huesos', 18),
(13, 'cristofer', 'perro', 'chusco', 'indefinido', '18', 'cancer de huevo', 19),
(14, 'cristofer', 'Perro', 'PequeÃ±es', 'Macho', '4', 'Ninguna', 23),
(15, 'Cachorreo', 'Ambulante', 'Fino', 'indefinido', '21', 'Clasista', 24),
(16, 'pancho', 'perro', 'mestiza', 'macho', '4', 'ninguna', 25),
(17, 'abc', 'canino', 'mestizo', 'macho', '4', 'ninguno', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numero_tarjeta` varchar(20) NOT NULL,
  `mes_vencimiento` varchar(20) NOT NULL,
  `anio_vencimiento` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id_orden`, `nombre_completo`, `correo`, `numero_tarjeta`, `mes_vencimiento`, `anio_vencimiento`, `cvv`, `fecha`) VALUES
(1, 'diego barboza', 'ghj@gmail.com', '4111111111111111', 'JN', 2025, 123, '2025-06-29 17:04:17'),
(2, 'diego barboza', 'ghj@gmail.com', '4111111111111111', 'JN', 2025, 123, '2025-06-29 17:23:53'),
(3, 'diego barboza', 'ghj@gmail.com', '4111111111111111', 'JN', 2025, 123, '2025-06-29 17:24:37'),
(4, 'diego barboza', 'ghj@gmail.com', '4111111111111111', 'JN', 2025, 123, '2025-06-29 17:24:55'),
(5, 'Geremy panta', '123456@gmail.com', '4111111111111222', 'JN', 2026, 123, '2025-06-29 17:25:41'),
(6, 'diego ccollatupa', 'ghj@gmail.com', '111122223345', 'JN', 2026, 147, '2025-06-30 02:32:16'),
(7, 'Geremy panta', '123456@gmail.com', '1111444422227894', 'junio', 2026, 159, '2025-06-30 03:59:56'),
(8, 'Omar', '147852@gmail.com', '111144446668', 'Diciembre', 2026, 147, '2025-06-30 15:24:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tarjeta` varchar(20) DEFAULT NULL,
  `mes` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `cvv` varchar(4) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(20) DEFAULT NULL,
  `fecha_pago` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `nombre`, `email`, `tarjeta`, `mes`, `anio`, `cvv`, `total`, `metodo_pago`, `fecha_pago`) VALUES
(3, 'Diego Barboza', 'diego147@gmail.com', '1111222233337854', 'JN', '2026', '159', 134.90, 'tarjeta', '2025-07-16 16:06:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `password`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, 'Diego', 'diego@gmail.com', '12345'),
(8, 'Diego', 'diego@gmail.com', '45654645'),
(9, 'Geremy', 'dhfjghjgh@gmail.com', '12345'),
(10, 'dIEGO', '1233@gmail.com', '123456'),
(11, 'gemremy', 'g123456@gmail.com', '123456'),
(12, 'gemremy', 'g123456@gmail.com', '123456'),
(13, 'diego', 'g123456@gmail.com', '1234'),
(14, 'diego', 'g123456@gmail.com', '1234'),
(15, 'dIEGO', 'g123456@gmail.com', '2544'),
(16, 'gemremy', 'g123456@gmail.com', '558554'),
(17, 'dIEGO', 'g123456@gmail.com', '2544'),
(18, 'Omar', '147852@gmail.com', '123456'),
(19, 'IRIS', 'ira@gmail.com', '123456'),
(20, 'gemremy', 'g123456@gmail.com', '65498'),
(21, 'iris', '1233@gmail.com', '213546'),
(22, 'dIEGO', '1233@gmail.com', '3543587'),
(23, 'Iris', 'Iris147@gmail.com', '123456'),
(24, 'Leo', 'Vendedor159@gmail.com', '123456'),
(25, 'Geremy', 'geremny123@gmail.com', '123456'),
(26, 'Diego Barboza', 'diego147@gmail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalles_orden`
--
ALTER TABLE `detalles_orden`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_orden` (`id_orden`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id_orden`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalles_orden`
--
ALTER TABLE `detalles_orden`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_orden`
--
ALTER TABLE `detalles_orden`
  ADD CONSTRAINT `detalles_orden_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
