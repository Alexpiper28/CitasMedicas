-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2024 a las 08:16:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medicina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `fecha`, `hora`, `id_paciente`, `id_doctor`, `id_especialidad`, `observacion`, `estado`, `fecha_registro`) VALUES
(10, '2023-08-26', '09:12:00', 6, 7, 8, 'Ninguna1', 1, '2023-08-19 15:09:38'),
(16, '2024-01-25', '19:23:00', 6, 7, 6, 'sdsrsf', 2, '2024-01-25 14:17:42'),
(23, '2024-01-24', '14:27:00', 9, 7, 5, 'sdsrsf', 2, '2024-01-25 16:25:51'),
(24, '2024-01-24', '14:27:00', 9, 7, 5, 'sdsrsf', 2, '2024-01-25 16:26:52'),
(25, '2024-02-10', '16:32:00', 7, 6, 8, '2323', 1, '2024-01-25 16:27:22'),
(26, '2024-01-25', '18:34:00', 7, 6, 8, 'Dientes chuecos', 2, '2024-01-25 18:29:26'),
(27, '2024-07-15', '19:52:00', 11, 12, 17, 'Fractura de hueso', 2, '2024-07-15 22:50:29'),
(28, '2024-07-15', '21:50:00', 12, 10, 11, 'Me duele el corazón, quiero una revisión ', 2, '2024-07-16 00:49:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `cedula` int(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `correo` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`id`, `cedula`, `nombres`, `id_especialidad`, `sexo`, `telefono`, `fecha`, `correo`, `fecha_registro`) VALUES
(6, 101, 'Alex Castillo Cervantes', 8, 'Masculino', '99111656701', '2022-09-05', 'mugarte5672@gmail.com.mx', '2022-09-05 15:56:14'),
(7, 8, 'Emanuel Mugarte Gonzales', 5, 'Masculino', '934569873', '2023-08-19', 'Emanuel@hotmail.com', '2023-08-19 14:54:13'),
(9, 57, 'Kelly Castro Cervantes', 12, 'Femenino', '970876512', '2023-08-19', 'kelly@hotmail.com', '2023-08-19 14:58:13'),
(10, 122343, 'Ana Sanchez', 11, 'Femenino', '123456789', '2024-01-08', 'alex@gmail.com', '2024-01-25 16:28:48'),
(11, 1234, 'Luis Juan Sanchez Perez', 9, 'Masculino', '940786543', '2004-02-11', 'luis@gmail.com', '2024-01-25 19:09:16'),
(12, 12, 'Cristian Castro', 17, 'Masculino', '967543623', '1999-02-18', 'cristrianC@gmail.com', '2024-07-15 22:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `fecha`) VALUES
(1, 'Gastroenterología', '2022-08-25 01:20:04'),
(5, 'Oftalmología', '2022-08-25 01:51:36'),
(6, 'Ginecología y Obstetricia', '2022-08-25 01:51:51'),
(7, 'Urología', '2022-08-25 06:11:51'),
(8, 'Neurología', '2022-08-25 16:46:32'),
(9, 'Ortopedia', '2023-08-19 15:20:32'),
(10, 'Dermatología', '2024-01-24 15:44:18'),
(11, 'Cardiología', '2024-01-24 15:44:28'),
(12, 'Pediatría', '2024-01-24 15:44:35'),
(13, 'Medicina General', '2024-01-24 15:44:41'),
(16, 'Cirugía General', '2024-07-15 22:36:04'),
(17, 'Radiología', '2024-07-15 22:36:15'),
(18, 'Odontología', '2024-07-15 22:36:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `estado`) VALUES
(1, 'Atendido'),
(2, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_medico`
--

CREATE TABLE `historial_medico` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `antecedentes` text NOT NULL,
  `enfermedades` text NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `dias` varchar(50) NOT NULL,
  `id_doctor` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `dias`, `id_doctor`, `fecha`) VALUES
(1, 'Lunes, Jueves, Sabado', 6, '2022-08-25 06:02:19'),
(4, 'Domingos, Lunes, Viernes', 7, '2022-08-25 16:44:49'),
(5, 'Martes', 9, '2023-08-19 15:22:47'),
(6, 'Jueves', 6, '2024-01-24 15:29:10'),
(7, 'Lunes a Viernes', 11, '2024-01-25 19:12:18'),
(9, 'Lunes a viernes', 12, '2024-07-15 22:52:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp(),
  `estado` varchar(50) NOT NULL,
  `antecedentes` varchar(255) DEFAULT NULL,
  `enfermedades` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `sexo`, `correo`, `telefono`, `fecha`, `estado`, `antecedentes`, `enfermedades`) VALUES
(6, 'Johan Caceres', 'Masculino', 'usuario@gmail.com', '773', '2022-08-25 14:47:15', 'Pendiente', 'Cirugia de apendicitis en 2018, Historia familiar de enfermedades cardiacas, Diagnostico de TDAH en la infancia, No consume alcohol ni drogas, Historia de alergias estacionales, Consumo elevado de grasas saturadas, Problemas de sueño ocasionales, Cancer d', 'Gastritis cronica, Hipotiroidismo, Ansiedad generalizada, Esguince de rodilla, Hernia discal leve, Calculos biliares, Tendinitis en el hombro, Hipertension ocasional, Artritis leve, Sindrome del tunel carpiano.'),
(7, 'Francisco Ramirez', 'Masculino', 'yomero@gmail.com', '78637832', '2022-08-25 16:48:03', 'Atendido', 'Antecedentes de colesterol alto, Deportista aficionado, Cirugia de apendicitis en 2016, No alergias conocidas, Consumo ocasional de alcohol, Historia de problemas digestivos, Migracion a una nueva ciudad, Problemas familiares recientes, Estres laboral, Hi', 'Epilepsia controlada con medicacion, Tendinitis en el hombro derecho, Hipertension leve, Estres cronico, Sindrome del tunel carpiano, Artritis leve, Insomnio ocasional, Problemas respiratorios leves, Gripe estacional frecuente, Mareos ocasionales.'),
(8, 'Juan Torres', 'Masculino', 'Usuario@gmail.com', '1654684', '2022-08-27 13:33:30', 'Pendiente', 'Historial de migrañas frecuentes, No alergias conocidas, Depresion leve en la adolescencia, Problemas de ansiedad, Alergia al latex, Cirugia de rodilla en 2020, Historia de hipertension leve, Consumo de cafe elevado, Historia de enfermedades autoinmunes e', 'Depresion diagnosticada en 2021, Sindrome de ovario poliquistico, Diabetes tipo 1, Hipertension arterial, Sindrome de fatiga cronica, Asma leve, Osteoartritis en la cadera, Infecciones de las vias respiratorias superiores recurrentes, Artritis reumatoide '),
(9, 'Ernesto Cruz', 'Masculino', 'ernesto@gmail.com', '950345678', '2022-08-29 16:10:09', 'Atendido', 'Cirugia de apendicitis en 2018, Historia familiar de enfermedades cardiacas, Diagnostico de TDAH en la infancia, No consume alcohol ni drogas, Historia de alergias estacionales, Consumo elevado de grasas saturadas, Problemas de sueño ocasionales, Cancer d', 'Gastritis cronica, Hipotiroidismo, Ansiedad generalizada, Esguince de rodilla, Hernia discal leve, Calculos biliares, Tendinitis en el hombro, Hipertension ocasional, Artritis leve, Sindrome del tunel carpiano.\r\nEstado: En tratamiento con medicamentos.'),
(11, 'Luis Cris Gonzalez', 'Masculino', 'luis@gmail.com', '987654321', '2024-01-25 16:28:08', 'Pendiente', 'No tiene antecedentes familiares significativos, Fuma 5 cigarrillos al dia, Alergia a los mariscos, Operacion de hernia inguinal en 2015, Diabetes gestacional en el embarazo, Colesterol alto diagnosticado, Historia de migrañas, Enfermedad celiaca diagnost', 'Cancer de mama en remision, Artritis reumatoide moderada, Hipertension leve, Sindrome premenstrual severo, Infecciones recurrentes del tracto urinario, Osteoporosis, Eczema atopico, Fibromialgia, Sindrome de ovario poliquistico, Enfermedad de Crohn.'),
(12, 'Pamela Chavez', 'Femenino', 'pamela@gmail.com', '940321567', '2024-07-16 00:47:47', 'Pendiente', 'Hipertension desde hace 5 anos, Diabetes tipo 2 diagnosticada hace 3 anos, Alergia a la penicilina, Historial familiar de enfermedades cardiacas, Cirugia de apendicitis en 2019, Consumo de alcohol moderado, No fuma, Problemas de colesterol alto, Historial', 'Infarto agudo de miocardio en 2022, Calculos renales, Asma leve controlada, Depresion leve, Artritis osteoartritica, Sindrome de apnea del sueño, Esguince de tobillo recurrente, Candidiasis oral, Hipertiroidismo, Gastritis cronica.'),
(13, 'Juan Perez Garcia', 'Masculino', 'juan@gmail.com', '457897453', '2024-07-16 03:24:08', 'Atendido', 'Hipertension desde hace 5 anios, Alergia a la penicilina, Cirugia de apendicitis en 2010, Historia familiar de diabetes tipo 2.', 'Diabetes tipo 2 diagnosticada en 2021, Episodios de ansiedad desde 2019, Asma moderada; controlada con inhalador, Colesterol alto; actualmente en tratamiento con estatinas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Paciente'),
(4, 'Medico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombre`, `correo`, `contrasena`, `fecha`, `rol`) VALUES
(12, 'user', 'usuario@gmail.com', '12345', '2022-08-27 16:43:37', 2),
(13, 'Administrador', 'admin@softcodepm.com', '12345', '2022-08-29 14:22:36', 1),
(21, 'lenin1', 'lieni1@gmail.com', '12345', '2024-01-23 15:46:59', 2),
(24, 'luis', 'luis@gmail.com', '12345', '2024-01-25 17:23:01', 4),
(26, 'sandra', 'alex@gmail.com', '12345', '2024-01-25 19:49:45', 3),
(28, 'York', 'york@gmail.com', '12345', '2024-07-15 23:32:16', 4),
(29, 'cristy', 'cristy@gmial.com', '12345', '2024-07-15 23:42:03', 2),
(30, 'Kevin', 'kevin@gmail.com', '12345', '2024-07-16 00:25:35', 1),
(31, 'pamela', 'pamela@gmail.com', '12345', '2024-07-16 00:45:34', 3),
(32, 'patric', 'patric2@gmail.com', '12345', '2024-07-16 05:23:50', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_citas_pacientes` (`id_paciente`),
  ADD KEY `fk_citas_doctor` (`id_doctor`),
  ADD KEY `fk_citas_especialidades` (`id_especialidad`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_horario_doctor` (`id_doctor`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `permisos` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_citas_doctor` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `fk_citas_especialidades` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id`),
  ADD CONSTRAINT `fk_citas_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `historial_medico`
--
ALTER TABLE `historial_medico`
  ADD CONSTRAINT `historial_medico_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `fk_horario_doctor` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `permisos` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
