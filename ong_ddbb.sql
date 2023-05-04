-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2023 a las 11:04:29
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
-- Base de datos: `ong_ddbb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AsignacionVoluntariosONGs`
--

CREATE TABLE `AsignacionVoluntariosONGs` (
  `voluntario_ID` int(11) NOT NULL,
  `ONG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AsignacionVoluntariosProyectos`
--

CREATE TABLE `AsignacionVoluntariosProyectos` (
  `voluntario_ID` int(11) NOT NULL,
  `proyecto_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ONG`
--

CREATE TABLE `ONG` (
  `ID` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `telefono` text NOT NULL,
  `correo_electronico` text NOT NULL,
  `area_de_accion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ONG`
--

INSERT INTO `ONG` (`ID`, `nombre`, `direccion`, `telefono`, `correo_electronico`, `area_de_accion`) VALUES
(1, 'Asociación de Protección de Animales', 'Calle Petunias 67, Ciudad Jardín', '562322212', 'apamigos@correo.com', 'Protección animal'),
(2, 'Fundación Océanos Azules', 'Avenida del Mar 89, Costa Azul', '114599909', 'fundaocenaz@correo.com', 'Protección del medio ambiente'),
(3, 'Ayuda sin Fronteras', 'Calle 23 de Enero 45, Pueblo Nuevo', '211332578', 'ayudafro@correo.com', 'Asistencia social'),
(4, 'Asociación Emprendedores Verdes', 'Calle Amapolas 12, Los Pinos', '643872340', 'aempver@correo.com', 'Emprendimiento sostenible'),
(5, 'Red de Apoyo a Personas con Discapacidad', 'Calle Girasoles 23, Centro', '871234567', 'rediscap@correo.com', 'Apoyo a discapacitados'),
(6, 'Asociación para la Lucha contra el Cáncer', 'Avenida de la Esperanza 67, Las Rosas', '334455666', 'alcancer@correo.com', 'Prevención del cáncer'),
(7, 'Fundación Pro-Ayuda a la Infancia', 'Calle de los Niños Perdidos 12, La Colina', '915876543', 'fuprainf@correo.com', 'Asistencia a niños'),
(8, 'Asociación Cultural para la Difusión del Arte', 'Calle del Arte 34, Centro', '910122345', 'asoculart@correo.com', 'Difusión cultural'),
(9, 'Asociación para el Fomento del Deporte', 'Avenida del Deporte 45, Polideportivo', '621001122', 'asofondep@correo.com', 'Fomento del deporte'),
(10, 'Asociación de Mujeres Empresarias', 'Calle del Emprendimiento 56, Los Olivos', '654321098', 'amujemp@correo.com', 'Empoderamiento femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proyecto`
--

CREATE TABLE `Proyecto` (
  `ID` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_de_finalizacion` date DEFAULT NULL,
  `estado` text NOT NULL,
  `ONG_responsable_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Proyecto`
--

INSERT INTO `Proyecto` (`ID`, `nombre`, `descripcion`, `fecha_de_inicio`, `fecha_de_finalizacion`, `estado`, `ONG_responsable_ID`) VALUES
(1, 'Reciclaje de plásticos', 'Proyecto para la recolección y reciclaje de plásticos en la ciudad', '2022-01-01', '2022-12-31', 'En progreso', 2),
(2, 'Programa de apoyo escolar', 'Programa para brindar apoyo escolar a niños y jóvenes de bajos recursos', '2021-09-01', '2022-06-30', 'En progreso', 7),
(3, 'Construcción de viviendas', 'Proyecto para la construcción de viviendas para familias necesitadas', '2023-01-01', '2023-12-31', 'Planeado', 1),
(4, 'Campaña de donación de alimentos', 'Campaña para recolectar alimentos no perecederos para familias en situación de vulnerabilidad', '2021-11-15', '2021-12-15', 'Finalizado', 3),
(5, 'Proyecto de conservación de la naturaleza', 'Proyecto para la conservación de áreas naturales en peligro', '2023-03-01', NULL, 'Planeado', 2),
(6, 'Programa de apoyo a personas mayores', 'Programa para brindar apoyo a personas mayores que viven solas', '2022-06-01', '2023-05-31', 'En progreso', 5),
(7, 'Proyecto de construcción de un centro de atención a víctimas de violencia', 'Proyecto para la construcción de un centro de atención a víctimas de violencia', '2023-07-01', NULL, 'Planeado', 4),
(8, 'Campaña de prevención del cáncer', 'Campaña para la prevención del cáncer de mama', '2022-10-01', '2022-10-31', 'Finalizado', 6),
(9, 'Proyecto de formación de emprendedores', 'Proyecto para la formación de emprendedores en el sector sostenible', '2021-07-01', '2022-06-30', 'En progreso', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Voluntario`
--

CREATE TABLE `Voluntario` (
  `ID` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `telefono` text NOT NULL,
  `correo_electronico` text NOT NULL,
  `fecha_de_incorporacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Voluntario`
--

INSERT INTO `Voluntario` (`ID`, `nombre`, `apellido`, `fecha_de_nacimiento`, `telefono`, `correo_electronico`, `fecha_de_incorporacion`) VALUES
(1, 'María', 'González', '1995-05-05', '722345678', 'mariagonzalez@gmail.com', '2022-03-05'),
(2, 'Pablo', 'Sánchez', '1998-12-15', '613443322', 'pablosanchez@hotmail.com', '2023-01-02'),
(3, 'Lucía', 'Fernández', '1991-09-01', '698774433', 'luciafer@gmail.com', '2021-11-10'),
(4, 'Manuel', 'Martínez', '1993-06-23', '611889900', 'manuelmartinez@yahoo.com', '2020-02-15'),
(5, 'Ana', 'Ramírez', '1997-08-08', '677994455', 'anaramirez@gmail.com', '2022-05-01'),
(6, 'Pedro', 'Gómez', '1990-03-15', '600112233', 'pedrogomez@hotmail.com', '2022-02-01'),
(7, 'Sofía', 'Pérez', '1999-10-22', '691445566', 'sofiaperez@gmail.com', '2023-03-05'),
(8, 'David', 'Hernández', '1992-12-25', '622332211', 'davidhernandez@yahoo.com', '2021-08-12'),
(9, 'Elena', 'Gutiérrez', '1996-04-18', '688776655', 'elenagutierrez@hotmail.com', '2022-06-01'),
(10, 'Carlos', 'Ruiz', '1998-07-12', '711223344', 'carlosruiz@gmail.com', '2020-12-15'),
(11, 'Marta', 'Jiménez', '1994-01-30', '622998877', 'martajimenez@yahoo.com', '2021-02-01'),
(12, 'José', 'Vega', '1997-11-20', '610223344', 'josevega@gmail.com', '2022-04-01'),
(13, 'Carmen', 'Torres', '1993-05-10', '699443322', 'carmen.torres@gmail.com', '2020-09-01'),
(14, 'Jorge', 'González', '1991-02-14', '655667788', 'jorgegonzalez@hotmail.com', '2021-03-15'),
(15, 'Alicia', 'Sánchez', '1996-09-18', '688776655', 'aliciasanchez@yahoo.com', '2023-02-01'),
(16, 'Diego', 'Hernández', '1995-06-11', '611223344', 'diegohernandez@gmail.com', '2020-06-01'),
(17, 'Sara', 'García', '1998-08-03', '622223344', 'saragarcia@hotmail.com', '2022-05-01'),
(18, 'Fernando', 'López', '1993-03-12', '611334455', 'fernandolopez@gmail.com', '2021-07-01'),
(19, 'Isabel', 'Martínez', '1997-12-25', '622001122', 'isabelmartinez@yahoo.com', '2023-01-01'),
(20, 'Alberto', 'Gómez', '1992-02-20', '677889900', 'albertogomez@hotmail.com', '2020-12-01'),
(21, 'Laura', 'Pérez', '1995-09-29', '691445566', 'lauraperez@yahoo.com', '2022-03-15'),
(22, 'Luis', 'Fernández', '1994-04-01', '622998877', 'luisfernandez@gmail.com', '2021-06-01'),
(23, 'Raquel', 'Ramírez', '1996-07-14', '677778899', 'raquelramirez@hotmail.com', '2020-09-01'),
(24, 'Javier', 'García', '1991-11-18', '655889900', 'javiergarcia@yahoo.com', '2021-02-15'),
(25, 'Roberto', 'Vega', '1998-10-02', '622112233', 'robertovega@gmail.com', '2022-06-01'),
(26, 'Paula', 'Torres', '1995-02-27', '688773322', 'paulatorres@hotmail.com', '2021-08-01'),
(27, 'Gabriel', 'González', '1993-09-03', '677660066', 'gabrielgonzalez@yahoo.com', '2022-03-01'),
(28, 'Marina', 'Sánchez', '1994-05-07', '691114477', 'marinasanchez@gmail.com', '2020-12-01'),
(29, 'Antonio', 'Hernández', '1997-01-10', '622334455', 'antoniohernandez@hotmail.com', '2023-04-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AsignacionVoluntariosONGs`
--
ALTER TABLE `AsignacionVoluntariosONGs`
  ADD PRIMARY KEY (`voluntario_ID`,`ONG_ID`),
  ADD KEY `ONG_ID` (`ONG_ID`);

--
-- Indices de la tabla `AsignacionVoluntariosProyectos`
--
ALTER TABLE `AsignacionVoluntariosProyectos`
  ADD PRIMARY KEY (`voluntario_ID`,`proyecto_ID`),
  ADD KEY `proyecto_ID` (`proyecto_ID`);

--
-- Indices de la tabla `ONG`
--
ALTER TABLE `ONG`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Proyecto`
--
ALTER TABLE `Proyecto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ONG_responsable_ID` (`ONG_responsable_ID`);

--
-- Indices de la tabla `Voluntario`
--
ALTER TABLE `Voluntario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ONG`
--
ALTER TABLE `ONG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Proyecto`
--
ALTER TABLE `Proyecto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Voluntario`
--
ALTER TABLE `Voluntario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `AsignacionVoluntariosONGs`
--
ALTER TABLE `AsignacionVoluntariosONGs`
  ADD CONSTRAINT `AsignacionVoluntariosONGs_ibfk_1` FOREIGN KEY (`voluntario_ID`) REFERENCES `Voluntario` (`ID`),
  ADD CONSTRAINT `AsignacionVoluntariosONGs_ibfk_2` FOREIGN KEY (`ONG_ID`) REFERENCES `ONG` (`ID`);

--
-- Filtros para la tabla `AsignacionVoluntariosProyectos`
--
ALTER TABLE `AsignacionVoluntariosProyectos`
  ADD CONSTRAINT `AsignacionVoluntariosProyectos_ibfk_1` FOREIGN KEY (`voluntario_ID`) REFERENCES `Voluntario` (`ID`),
  ADD CONSTRAINT `AsignacionVoluntariosProyectos_ibfk_2` FOREIGN KEY (`proyecto_ID`) REFERENCES `Proyecto` (`ID`);

--
-- Filtros para la tabla `Proyecto`
--
ALTER TABLE `Proyecto`
  ADD CONSTRAINT `Proyecto_ibfk_1` FOREIGN KEY (`ONG_responsable_ID`) REFERENCES `ONG` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
