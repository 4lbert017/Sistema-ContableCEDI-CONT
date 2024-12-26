-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-12-2024 a las 23:06:13
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemacontable`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoría`
--

DROP TABLE IF EXISTS `categoría`;
CREATE TABLE IF NOT EXISTS `categoría` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoría`
--

INSERT INTO `categoría` (`id`, `nombre`) VALUES
(1, 'Imagenología'),
(2, 'Laboratorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE IF NOT EXISTS `cuentas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` enum('Activo','Pasivo','Egreso','Capital','Ingreso') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=776 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `nombre`, `tipo`, `descripcion`) VALUES
(1, 'CAJA LAB PARAISO', 'Activo', 'Caja del laboratorio Paraíso'),
(2, 'MOB Y EQUIPO HIDALGO', 'Activo', 'Mobiliario y equipo en Hidalgo'),
(3, 'HSBC', 'Activo', 'Cuenta bancaria HSBC'),
(4, 'MOB Y EQUIPO FACTOR H', 'Activo', 'Mobiliario y equipo Factor H'),
(5, 'MOB Y EQUIPO CUPILCO', 'Activo', 'Mobiliario y equipo en Cupilco'),
(6, 'CAJA LAB TECOLUTILLA', 'Activo', 'Caja del laboratorio Tecolutilla'),
(7, 'CAJA LAB ALDAMA', 'Activo', 'Caja del laboratorio Aldama'),
(8, 'CAJA LAB CUPILCO', 'Activo', 'Caja del laboratorio Cupilco'),
(9, 'VEHICULO MARCH', 'Activo', 'Vehículo March'),
(10, 'MOB Y EQUIPO PARAISO RECEPCION', 'Activo', 'Mobiliario y equipo en recepción de Paraíso'),
(11, 'CLIENTES', 'Activo', 'Cuentas por cobrar de clientes'),
(12, 'CAJA CHICA JALPA', 'Activo', 'Caja chica de Jalpa'),
(13, 'CAJA JALPA', 'Activo', 'Caja de Jalpa'),
(14, 'MOB Y EQUIPO FACTURACION', 'Activo', 'Mobiliario y equipo para facturación'),
(15, 'INVERLAT', 'Activo', 'Inversiones Latinas'),
(16, 'IVA POR PAGAR', 'Pasivo', 'Impuesto al valor agregado por pagar'),
(17, 'CAJA CHICA LABORATORIO', 'Activo', 'Caja chica del laboratorio'),
(18, 'CAJA TECOLUTILLA', 'Activo', 'Caja de Tecolutilla'),
(19, 'ADQUISICION EDIFICIO', 'Activo', 'Adquisición de edificio'),
(20, 'EQUIPO COATRON LABORATORIO', 'Activo', 'Equipo Coatron del laboratorio'),
(21, 'EQUIPO DE COMPUTO', 'Activo', 'Equipo de cómputo'),
(22, 'RESERVA EQUIPOS', 'Activo', 'Reserva de equipos'),
(23, 'MOB Y EQUIPO CHILTEPEC', 'Activo', 'Mobiliario y equipo en Chiltepec'),
(24, 'MOB Y EQUIPO PARAISO LAB', 'Activo', 'Mobiliario y equipo del laboratorio Paraíso'),
(25, 'EQUIPO DE COMPUTO ULTRASONIDO', 'Activo', 'Equipo de cómputo para ultrasonido'),
(26, 'EQUIPO COMPUTO CALIDAD', 'Activo', 'Equipo de cómputo para calidad'),
(27, 'INNOVACION Y TECNOLOGIA', 'Activo', 'Innovación y tecnología'),
(28, 'INNOV Y TEC RECEPCION', 'Activo', 'Innovación y tecnología en recepción'),
(29, 'CAJA LAB BELLOTE', 'Activo', 'Caja del laboratorio Bellote'),
(30, 'MOB Y EQUIPO INTENDENCIA', 'Activo', 'Mobiliario y equipo de intendencia'),
(31, 'DEPOSITOS PENDIENTES', 'Activo', 'Depósitos pendientes'),
(32, 'EQUIPO COMPUTO FACTOR HUMANO', 'Activo', 'Equipo de cómputo para factor humano'),
(33, 'VEHICULO AVEO', 'Activo', 'Vehículo Aveo'),
(34, 'CAJA CHICA ALDAMA', 'Activo', 'Caja chica de Aldama'),
(35, 'EQUIPO COMPUTO CONTABILIDAD', 'Activo', 'Equipo de cómputo para contabilidad'),
(36, 'CAJA CHICA TECOLUTILLA', 'Activo', 'Caja chica de Tecolutilla'),
(37, 'CAJA CHICA CUPILCO', 'Activo', 'Caja chica de Cupilco'),
(38, 'EQUIPO RAYOS X PORTATIL', 'Activo', 'Equipo portátil de rayos X'),
(39, 'MOB Y EQUIPO LABORATORIO', 'Activo', 'Mobiliario y equipo de laboratorio'),
(40, 'EQUIPO COMPUTO ADMON', 'Activo', 'Equipo de cómputo para administración'),
(41, 'VEHICULO FRONTIER', 'Activo', 'Vehículo Frontier'),
(42, 'MOB Y EQUIPO TECO IMAGEN', 'Activo', 'Mobiliario y equipo de Teco Imagen'),
(43, 'MOB Y EQUIPO RECEPCION', 'Activo', 'Mobiliario y equipo para recepción'),
(44, 'MOB Y EQUIPO JALPA', 'Activo', 'Mobiliario y equipo en Jalpa'),
(45, 'CAJA CHICA CHILTEPEC', 'Activo', 'Caja chica de Chiltepec'),
(46, 'CAJA LAB CARLOS GREEN', 'Activo', 'Caja del laboratorio Carlos Green'),
(47, 'DIFERENCIA FACTURACION', 'Activo', 'Diferencias en facturación'),
(48, 'EQUIPO COMPUTO MARKETING', 'Activo', 'Equipo de cómputo para marketing'),
(49, 'EQUIPO COMPUTO RECEPCION', 'Activo', 'Equipo de cómputo en recepción'),
(50, 'MOB Y EQUIPO ULTRASONIDO', 'Activo', 'Mobiliario y equipo de ultrasonido'),
(51, 'ALMACEN CONSUMIBLES (TONER)', 'Activo', 'Almacén de consumibles como tóner'),
(52, 'MOB Y EQUIPO GERENCIA FISCAL', 'Activo', 'Mobiliario y equipo para gerencia fiscal'),
(53, 'MOB Y EQUIPO FACTOR H FISCAL', 'Activo', 'Mobiliario y equipo Factor H Fiscal'),
(54, 'MOB Y EQUIPO RAYOS X', 'Activo', 'Mobiliario y equipo de rayos X'),
(55, 'INNOV Y TEC PARAISO LAB', 'Activo', 'Innovación y tecnología para el laboratorio Paraíso'),
(56, 'MOB Y EQUIPO ELECTRO', 'Activo', 'Mobiliario y equipo electro'),
(57, 'MOB Y EQUIPO CONTABILIDAD', 'Activo', 'Mobiliario y equipo para contabilidad'),
(58, 'EQUIPO DE COMPUTO LABORATORIO', 'Activo', 'Equipo de cómputo para laboratorio'),
(59, 'CAJA CHICA PARAISO', 'Activo', 'Caja chica de Paraíso'),
(60, 'EQUIPO RAYOS X PARAISO', 'Activo', 'Equipo de rayos X en Paraíso'),
(61, 'INNOV Y TECNOLOGIA CUPILCO', 'Activo', 'Innovación y tecnología en Cupilco'),
(62, 'ALMACEN INSUMOS', 'Activo', 'Almacén de insumos'),
(63, 'ALMACEN PAPELERIA', 'Activo', 'Almacén de papelería'),
(64, 'ALMACEN REACTIVOS LABORATORIO', 'Activo', 'Almacén de reactivos de laboratorio'),
(65, 'ALMACEN MARKETING', 'Activo', 'Almacén para marketing'),
(66, 'EQUIPO RAYOS X TECOLUTILLA', 'Activo', 'Equipo de rayos X en Tecolutilla'),
(67, 'ALMACEN MAT LIMPIEZA', 'Activo', 'Almacén de materiales de limpieza'),
(68, 'MOB Y EQUIPO MERCADOTECNIA', 'Activo', 'Mobiliario y equipo para mercadotecnia'),
(69, 'INNOV Y TECNOLOGIA MERCADOTECNIA', 'Activo', 'Innovación y tecnología para mercadotecnia'),
(70, 'INNOV Y TEC ADMON', 'Activo', 'Innovación y tecnología para administración'),
(71, 'INNOV Y TECNOLOGIA LABORATORIO', 'Activo', 'Innovación y tecnología para laboratorio'),
(72, 'MOB Y EQUIPO ALDAMA', 'Activo', 'Mobiliario y equipo en Aldama'),
(73, 'CAJA', 'Activo', 'Caja general'),
(74, 'BANAMEX', 'Activo', 'Cuenta bancaria Banamex'),
(75, 'IVA ACREDITABLE', 'Activo', 'Impuesto al valor agregado acreditable'),
(76, 'INVERSION JALPA', 'Activo', 'Inversión en Jalpa'),
(77, 'CAJA LAB CHILTEPEC', 'Activo', 'Caja del laboratorio Chiltepec'),
(78, 'MOB Y EQUIPO ADMINISTRACION.', 'Activo', 'Mobiliario y equipo de administración'),
(79, 'INVERSION SOCIO', 'Activo', 'Inversión de socio'),
(80, 'EQUIPO COMPUTO LAB ALDAMA', 'Activo', 'Equipo de cómputo del laboratorio Aldama'),
(81, 'CAJA CHICA HIDALGO', 'Activo', 'Caja chica de Hidalgo'),
(82, 'INNOV Y TEC PARAISO IMAGEN', 'Activo', 'Innovación y tecnología para imagen en Paraíso'),
(83, 'MOB Y EQUIPO HUIMANGUILLO', 'Activo', 'Mobiliario y equipo en Huimanguillo'),
(84, 'EQUIPO COMPUTO CUPILCO', 'Activo', 'Equipo de cómputo en Cupilco'),
(85, 'EQUIPO RAYOS X MATRIZ', 'Activo', 'Equipo de rayos X en la matriz'),
(86, 'EQUIPO DE COMPUTO PARAISO IMAGEN', 'Activo', 'Equipo de cómputo en Paraíso Imagen'),
(87, 'EQUIPO DE COMPUTO IMAGEN TECO', 'Activo', 'Equipo de cómputo para imagen en Teco'),
(88, 'MOB. Y EQUIPO ULTRASONIDO PARAISO', 'Activo', 'Mobiliario y equipo de ultrasonido en Paraíso'),
(89, 'MOB. Y EQUIPO RAYOS X PARAISO', 'Activo', 'Mobiliario y equipo de rayos X en Paraíso'),
(90, 'ALMACEN INSUMOS LABORATORIO', 'Activo', 'Almacén de insumos para laboratorio'),
(91, 'INNOV Y TEC ALDAMA', 'Activo', 'Innovación y tecnología en Aldama'),
(92, 'CAJA LAB HUIMANGUILLO', 'Activo', 'Caja del laboratorio Huimanguillo'),
(93, 'CAJA LAB HIDALGO', 'Activo', 'Caja del laboratorio Hidalgo'),
(94, 'INNOV Y TEC TECO IMAGEN', 'Activo', 'Innovación y tecnología para imagen en Teco'),
(95, 'MOB Y EQUIPO OFICINA', 'Activo', 'Mobiliario y equipo de oficina'),
(96, 'EQUIPO ULTRASONIDO', 'Activo', 'Equipo de ultrasonido'),
(97, 'VEHICULO', 'Activo', 'Vehículo general'),
(98, 'CUENTAS POR COBRAR', 'Activo', 'Cuentas pendientes por cobrar'),
(99, 'EQUIPO COMPUTO RAYOS X', 'Activo', 'Equipo de cómputo para rayos X'),
(100, 'MOB Y EQUIPO MASTOGRAFIA', 'Activo', 'Mobiliario y equipo para mastografía'),
(101, 'INVERSION PARAISO', 'Activo', 'Inversión en Paraíso'),
(102, 'INNOV Y TECNOLOGIA USG', 'Activo', 'Innovación y tecnología para ultrasonidos (USG)'),
(103, 'MOB Y EQUIPO TECO LABORATORIO', 'Activo', 'Mobiliario y equipo para laboratorio en Teco'),
(104, 'MOB Y EQUIPO ALDAMA RX', 'Activo', 'Mobiliario y equipo de rayos X en Aldama'),
(105, 'CAJA CHICA', 'Activo', 'Caja chica general'),
(106, 'EQUIPO COMPUTO TECO RECEPCION', 'Activo', 'Equipo de cómputo para recepción en Teco'),
(107, 'EQUIPO ULTRASONIDO PARAISO', 'Activo', 'Equipo de ultrasonido en Paraíso'),
(108, 'EQUIPOS LABORATORIO', 'Activo', 'Equipos diversos para laboratorio'),
(109, 'MOB Y EQUIPO PARAISO RECEPCION', 'Activo', 'Mobiliario y equipo en recepción de Paraíso'),
(110, 'EQUIPO COMPUTO FACTURACION', 'Activo', 'Equipo de cómputo para facturación'),
(111, 'EQUIPOS IMAGENOLOGIA', 'Activo', 'Equipos para imagenología'),
(112, 'CAJA LABORATORIO', 'Activo', 'Caja general del laboratorio'),
(113, 'CAJA PARAISO', 'Activo', 'Caja general de Paraíso'),
(114, 'MOB Y EQUIPO TECNOLOGIA DE LA INFORMACION', 'Activo', 'Mobiliario y equipo para tecnología de la información'),
(115, 'EQUIPOS CONTRAINCENDIOS', 'Activo', 'Equipos contra incendios'),
(116, 'EQUIPO TOMOGRAFO', 'Activo', 'Equipo de tomografía'),
(117, 'MOBILIARIO Y EQUIPO ALMACEN', 'Activo', 'Mobiliario y equipo para almacén'),
(118, 'MOBILIARIO Y EQUIPO', 'Activo', 'Mobiliario y equipo general'),
(119, 'MOB Y EQUIPO CALIDAD', 'Activo', 'Mobiliario y equipo para control de calidad'),
(120, 'CAJA LAB AYAPA', 'Activo', 'Caja general del laboratorio Ayapa'),
(121, 'EQUIPO DE QS', 'Activo', 'Equipo para QS (química sanguínea)'),
(122, 'GASTOS POR COMPROBAR', 'Activo', 'Gastos pendientes por comprobar'),
(123, 'EQUIPO COMPUTO RAYOS X', 'Activo', 'Equipo de cómputo para rayos X'),
(124, 'DOCUMENTOS POR COBRAR', 'Activo', 'Documentos pendientes por cobrar'),
(125, 'EQUIPO DE BH', 'Activo', 'Equipo para biometría hemática (BH)'),
(126, 'MEMORIA ANALITICA RAYOS X', 'Activo', 'Memoria analítica para rayos X'),
(127, 'CAPITAL CONTABLE', 'Capital', 'Capital contable general'),
(128, 'UTILIDAD ANTES DEL ISR', 'Capital', 'Utilidad antes de calcular el ISR'),
(129, 'GASOLINA LAB CUPILCO', 'Egreso', 'Gastos de gasolina del laboratorio en Cupilco'),
(130, 'ORDEN MEDICAS MARKETING', 'Egreso', 'Gastos de órdenes médicas para marketing'),
(131, 'MAQ. CULTIVO HIDALGO', 'Egreso', 'Gastos de maquinaria para cultivo en Hidalgo'),
(132, 'CERTIFICADO MEDICO', 'Egreso', 'Gastos de certificados médicos'),
(133, 'PUBLICIDAD LAB.TECO', 'Egreso', 'Gastos de publicidad del laboratorio en Teco'),
(134, 'MAQ. DIAG. ALDAMA', 'Egreso', 'Gastos de maquinaria para diagnóstico en Aldama'),
(135, 'INCENTIVO EMPLEADOS ALDAMA', 'Egreso', 'Incentivos para empleados de Aldama'),
(136, 'PAPELERIA LAB.TECOLUTILLA', 'Egreso', 'Gastos de papelería para el laboratorio en Tecolutilla'),
(137, 'DEPRECIACION EQUIPO ULTRASONIDO', 'Egreso', 'Depreciación del equipo de ultrasonido'),
(138, 'MAQ. CULTIVO PARAISO', 'Egreso', 'Gastos de maquinaria para cultivo en Paraíso'),
(139, 'VACACIONES LAB. PARAISO', 'Egreso', 'Gastos de vacaciones del personal del laboratorio en Paraíso'),
(140, 'INSUMOS LAB ALDAMA', 'Egreso', 'Gastos de insumos para el laboratorio en Aldama'),
(141, 'TRASLADO M. COCOHITAL', 'Egreso', 'Gastos de traslado a CocoHital'),
(142, 'MAT LIMPIEZA ALDAMA', 'Egreso', 'Gastos de materiales de limpieza en Aldama'),
(143, 'TRASLADO M. HUIMANGUILLO', 'Egreso', 'Gastos de traslado a Huimanguillo'),
(144, 'CONSULTORIO MEDICO', 'Egreso', 'Gastos del consultorio médico'),
(145, 'MAQ. PATOLOGA PARAISO', 'Egreso', 'Gastos de maquinaria para patología en Paraíso'),
(146, 'GASOLINA LAB TECOLUTILLA', 'Egreso', 'Gastos de gasolina del laboratorio en Tecolutilla'),
(147, 'MAQ. PATOLOGA ALDAMA', 'Egreso', 'Gastos de maquinaria para patología en Aldama'),
(148, 'PUBLICIDAD LAB. HIDALGO', 'Egreso', 'Gastos de publicidad para el laboratorio en Hidalgo'),
(149, 'SUELDO TECNOLOGIA DE INFORMACION', 'Egreso', 'Gastos de sueldos en tecnología de la información'),
(150, 'GASOLINA ALDAMA', 'Egreso', 'Gastos de gasolina en Aldama'),
(151, 'IMSS E INFONAVIT', 'Egreso', 'Gastos de aportaciones al IMSS e Infonavit'),
(152, 'GASOLINA RAYOS X', 'Egreso', 'Gastos de gasolina para rayos X'),
(153, 'LUZ ALDAMA', 'Egreso', 'Gastos de luz en Aldama'),
(154, 'PUBLICIDAD LAB. PARAISO', 'Egreso', 'Gastos de publicidad para el laboratorio en Paraíso'),
(155, 'GASTOS SIN GRAVAR', 'Egreso', 'Gastos sin gravar'),
(156, 'COMISIONES BANCARIAS', 'Egreso', 'Gastos de comisiones bancarias'),
(157, 'MTTO CLIMAS TECO IMAGEN', 'Egreso', 'Mantenimiento de climas en Teco Imagen'),
(158, 'MAQ. CULTIVO TECO', 'Egreso', 'Gastos de maquinaria para cultivo en Teco'),
(159, 'SOCIO A', 'Egreso', 'Pagos al socio A'),
(160, 'SOCIO B', 'Egreso', 'Pagos al socio B'),
(161, 'INSUMOS HIDALGO', 'Egreso', 'Gastos de insumos en Hidalgo'),
(162, '% DRA. LUZ ADRIANA', 'Egreso', 'Porcentaje para la Dra. Luz Adriana'),
(163, 'TRASLADO M. TECO', 'Egreso', 'Gastos de traslado a Teco'),
(164, 'VIAJES', 'Egreso', 'Gastos de viajes'),
(165, 'SEGURO DE DESEMPLEO', 'Egreso', 'Pagos de seguro de desempleo'),
(166, 'MAQUILA CULTIVOS', 'Egreso', 'Gastos de maquila de cultivos'),
(167, 'RENTA VEHICULO', 'Egreso', 'Gastos por renta de vehículo'),
(168, 'LAVANDERIA', 'Egreso', 'Gastos de lavandería'),
(169, 'PRESTAMO INVERLAT', 'Egreso', 'Préstamo recibido de INVERLAT'),
(170, 'SEGURO DE VIDA', 'Egreso', 'Gastos por seguro de vida'),
(171, 'MAQ. PATOLOGA TECO', 'Egreso', 'Gastos de maquinaria para patología en Teco'),
(172, 'ISR RETENIDO', 'Egreso', 'Impuesto sobre la renta retenido'),
(173, 'SUELDO LAS FLORES', 'Egreso', 'Gastos de sueldo en Las Flores'),
(174, 'ISR', 'Egreso', 'Pago del impuesto sobre la renta'),
(175, 'TRASLADO M. ADICAR', 'Egreso', 'Gastos de traslado a Adicar'),
(176, 'SUELDO LAB CUPILCO', 'Egreso', 'Sueldos del laboratorio en Cupilco'),
(177, 'MAQ. DIAG. PARAISO', 'Egreso', 'Gastos de maquinaria para diagnóstico en Paraíso'),
(178, 'INSUMOS LAB TECO', 'Egreso', 'Gastos de insumos para el laboratorio en Teco'),
(179, 'MAQ. DIAG. TECOLUTILLA', 'Egreso', 'Gastos de maquinaria para diagnóstico en Tecolutilla'),
(180, 'PAPELERIA LAB. PARAISO', 'Egreso', 'Gastos de papelería para el laboratorio en Paraíso'),
(181, 'MAQ. CULTIVO ALDAMA', 'Egreso', 'Gastos de maquinaria para cultivo en Aldama'),
(182, 'MANTENIMIENTO VEHICULOS', 'Egreso', 'Gastos de mantenimiento de vehículos'),
(183, 'PUBLICIDAD LAB. ALDAMA', 'Egreso', 'Gastos de publicidad para el laboratorio en Aldama'),
(184, 'TRASLADO M. ALDAMA', 'Egreso', 'Gastos de traslado a Aldama'),
(185, 'TRASLADO M. CUPILCO', 'Egreso', 'Gastos de traslado a Cupilco'),
(186, 'TRASLADO M. HIDALGO', 'Egreso', 'Gastos de traslado a Hidalgo'),
(187, 'SUELDO COCOHITAL', 'Egreso', 'Gastos de sueldos en Cocohital'),
(188, 'MAQ. DIAG. HIDALGO', 'Egreso', 'Gastos de maquinaria para diagnóstico en Hidalgo'),
(189, 'BRIGADA ALDAMA', 'Egreso', 'Gastos de brigada en Aldama'),
(190, 'BRIGADA LAB. TECO.', 'Egreso', 'Gastos de brigada en el laboratorio Teco'),
(191, 'MTTO EQUIPO RX MATRIZ', 'Egreso', 'Mantenimiento de equipos de rayos X en la matriz'),
(192, 'TELEFONOS DE MEXICO', 'Egreso', 'Gastos de teléfonos de México'),
(193, 'PAPELERIA RECEP CUPILCO', 'Egreso', 'Gastos de papelería en la recepción de Cupilco'),
(194, 'BRIGADA LABORATORIO', 'Egreso', 'Gastos de brigadas en laboratorio'),
(195, 'FLETES LABORATORIO', 'Egreso', 'Gastos de fletes del laboratorio'),
(196, 'PUBLICIDAD', 'Egreso', 'Gastos generales de publicidad'),
(197, 'MAT LIMPIEZA HIDALGO', 'Egreso', 'Gastos de materiales de limpieza en Hidalgo'),
(198, 'PUBLICIDAD HUIMANGUILLO', 'Egreso', 'Gastos de publicidad en Huimanguillo'),
(199, 'BRIGADA IMAGENOLOGIA', 'Egreso', 'Gastos de brigadas de imagenología'),
(200, 'INTERESES PAGADOS', 'Egreso', 'Gastos de intereses pagados'),
(201, 'BRIGADA IMAGEN TECO', 'Egreso', 'Gastos de brigadas de imagen en Teco'),
(202, 'SUELDO LAB HIDALGO', 'Egreso', 'Gastos de sueldos del laboratorio en Hidalgo'),
(203, 'SUELDO LAB ALDAMA', 'Egreso', 'Gastos de sueldos del laboratorio en Aldama'),
(204, 'SUELDO LAB TECOLUTILLA', 'Egreso', 'Gastos de sueldos del laboratorio en Tecolutilla'),
(205, 'SUBSIDIO AL EMPLEO PARAISO RX', 'Egreso', 'Subsidio al empleo en rayos X en Paraíso'),
(206, 'BRIGADA PARAISO IMAGEN', 'Egreso', 'Gastos de brigadas de imagen en Paraíso'),
(207, 'PAPELERIA MARKETING', 'Egreso', 'Gastos de papelería para marketing'),
(208, 'IMSS E INFONAVIT TECOLUTILLA', 'Egreso', 'Gastos de aportaciones al IMSS e Infonavit en Tecolutilla'),
(209, 'CONSUMIBLES CHILTEPEC', 'Egreso', 'Gastos de consumibles en Chiltepec'),
(210, 'MTTO EDIFICIO RAYOS X', 'Egreso', 'Gastos de mantenimiento del edificio de rayos X'),
(211, 'MTTO EDIFICIO TECO IMAGEN', 'Egreso', 'Gastos de mantenimiento del edificio de imagen en Teco'),
(212, 'MTTO EDIFICIO PARAISO IMAGEN', 'Egreso', 'Gastos de mantenimiento del edificio de imagen en Paraíso'),
(213, 'LUZ', 'Egreso', 'Gastos de luz general'),
(214, 'MAT LIMPIEZA USG', 'Egreso', 'Materiales de limpieza para ultrasonidos (USG)'),
(215, 'BRIGADA CUPILCO', 'Egreso', 'Gastos de brigadas en Cupilco'),
(216, 'PAPELERIA CALIDAD', 'Egreso', 'Gastos de papelería para control de calidad'),
(217, 'SUELDO CALIDAD', 'Egreso', 'Gastos de sueldos en el área de calidad'),
(218, 'GASOLINA PARAISO LAB.', 'Egreso', 'Gastos de gasolina para el laboratorio en Paraíso'),
(219, 'VACACIONES PARAISO RX', 'Egreso', 'Gastos de vacaciones para el área de rayos X en Paraíso'),
(220, 'DESECHOS', 'Egreso', 'Gastos de manejo y eliminación de desechos'),
(221, 'MAT LIMPIEZA LAB TECOLUTILLA', 'Egreso', 'Materiales de limpieza para el laboratorio en Tecolutilla'),
(222, 'MAQ. PATOLOGA CUPILCO', 'Egreso', 'Gastos de maquinaria para patología en Cupilco'),
(223, 'INSUMOS MASTOGRAFIA', 'Egreso', 'Gastos de insumos para mastografía'),
(224, 'ISH', 'Egreso', 'Pago de impuesto sobre hospedaje (ISH)'),
(225, 'MAT LIMPIEZA INTENDENCIA', 'Egreso', 'Materiales de limpieza para el área de intendencia'),
(226, 'IMSS E INF PARAISO IMAGEN', 'Egreso', 'Aportaciones al IMSS e Infonavit en el área de imagen en Paraíso'),
(227, 'PUBLICIDAD MECOACAN', 'Egreso', 'Gastos de publicidad en Mecoacán'),
(228, 'MAQ. DIAG. LAS FLORES', 'Egreso', 'Gastos de maquinaria para diagnóstico en Las Flores'),
(229, 'INSUMOS LAB CUPILCO', 'Egreso', 'Gastos de insumos para el laboratorio en Cupilco'),
(230, 'TRASLADO M. CHILTEPEC', 'Egreso', 'Gastos de traslado a Chiltepec'),
(231, 'TELCEL LABORATORIO', 'Egreso', 'Gastos de telefonía móvil para el laboratorio'),
(232, 'INSUMOS FACTOR HUMANO', 'Egreso', 'Gastos de insumos para el área de factor humano'),
(233, 'SUELDO LAB PARAISO', 'Egreso', 'Gastos de sueldos del laboratorio en Paraíso'),
(234, 'COMISION POR APERTURA', 'Egreso', 'Pago de comisiones por apertura'),
(235, 'PAPELERIA LAB. CUPILCO', 'Egreso', 'Gastos de papelería para el laboratorio en Cupilco'),
(236, 'GRATIFICACION', 'Egreso', 'Pagos de gratificaciones'),
(237, 'MAQ. CULTIVO LAS FLORES', 'Egreso', 'Gastos de maquinaria para cultivo en Las Flores'),
(238, 'LUZ PARAISO LAB.', 'Egreso', 'Gastos de luz para el laboratorio en Paraíso'),
(239, 'PAPELERIA LAB. HIDALGO', 'Egreso', 'Gastos de papelería para el laboratorio en Hidalgo'),
(240, 'INCENTIVO EMPLEADOS LAB PARAISO', 'Egreso', 'Incentivos para empleados del laboratorio en Paraíso'),
(241, 'MAQ. DIAG. CARLOS GREEN', 'Egreso', 'Gastos de maquinaria para diagnóstico en Carlos Green'),
(242, 'MTTO CLIMAS ULTRASONIDO PARAISO', 'Egreso', 'Gastos de mantenimiento de climas en el área de ultrasonido en Paraíso'),
(243, 'INSUMOS CONTABILIDAD', 'Egreso', 'Gastos de insumos para el área de contabilidad'),
(244, 'INSUMOS RAYOS X PARAISO', 'Egreso', 'Gastos de insumos para rayos X en Paraíso'),
(245, 'INSUMOS RX TECOLUTILLA', 'Egreso', 'Gastos de insumos para rayos X en Tecolutilla'),
(246, 'INSUMOS ULTRASONIDO PARAISO', 'Egreso', 'Gastos de insumos para ultrasonido en Paraíso'),
(247, 'MTTO EQUIPO RX PARAISO', 'Egreso', 'Gastos de mantenimiento de equipo de rayos X en Paraíso'),
(248, 'IMSS E INF PARAISO LAB', 'Egreso', 'Aportaciones al IMSS e Infonavit en el laboratorio de Paraíso'),
(249, 'SUBSIDIO AL EMPLEO PARAISO LAB', 'Egreso', 'Subsidio al empleo en el laboratorio de Paraíso'),
(250, 'RENTA LAB MECOACAN', 'Egreso', 'Gastos de renta del laboratorio en Mecoacán'),
(251, 'REINSTALACION SERVICIOS', 'Egreso', 'Gastos de reinstalación de servicios'),
(252, 'MAT LIMPIEZA CUPILCO', 'Egreso', 'Gastos de materiales de limpieza en Cupilco'),
(253, 'LUZ RAYOS X MATRIZ', 'Egreso', 'Gastos de luz para rayos X en la matriz'),
(254, 'SUELDO LAB MECOACAN', 'Egreso', 'Gastos de sueldos del laboratorio en Mecoacán'),
(255, 'INSUMOS RAYOS X', 'Egreso', 'Gastos de insumos para rayos X'),
(256, 'INSUMOS ULTRASONIDO', 'Egreso', 'Gastos de insumos para ultrasonido'),
(257, 'TELMEX LABORATORIO', 'Egreso', 'Gastos de Telmex para el laboratorio'),
(258, 'SUELDOS', 'Egreso', 'Gastos de sueldos generales'),
(259, 'SUBSIDIO AL EMPLEO', 'Egreso', 'Gastos de subsidios al empleo'),
(260, 'PAPELERIA LAB. ALDAMA', 'Egreso', 'Gastos de papelería para el laboratorio en Aldama'),
(261, 'MAQ. ELECTRO ALDAMA', 'Egreso', 'Gastos de maquinaria eléctrica en Aldama'),
(262, 'RECARGA EXTINTORES', 'Egreso', 'Gastos de recarga de extintores'),
(263, '% DOCTOR PARAISO', 'Egreso', 'Porcentaje asignado a doctor en Paraíso'),
(264, 'FESTIVIDADES', 'Egreso', 'Gastos relacionados con festividades'),
(265, 'TELMEX LABORATORIO PARAISO', 'Egreso', 'Gastos de Telmex para el laboratorio en Paraíso'),
(266, 'UNIFORMES LABORATORIO', 'Egreso', 'Gastos de uniformes para laboratorio'),
(267, 'UNIFORMES IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de uniformes para imagenología en Paraíso'),
(268, 'UNIFORMES IMAGENOLOGIA', 'Egreso', 'Gastos de uniformes para imagenología'),
(269, 'RENTA LAB HIDALGO', 'Egreso', 'Gastos de renta del laboratorio en Hidalgo'),
(270, 'CONSUMIBLES', 'Egreso', 'Gastos generales de consumibles'),
(271, 'TRASPASO GASTOS', 'Egreso', 'Gastos por traspaso de cuentas'),
(272, 'FESTIVIDADES LAB PARAISO', 'Egreso', 'Gastos de festividades para el laboratorio en Paraíso'),
(273, 'TELMEX IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de Telmex en el área de imagenología en Paraíso'),
(274, 'AGUINALDO PARAISO', 'Egreso', 'Gastos de aguinaldos en Paraíso'),
(275, 'LUZ IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de luz en imagenología en Paraíso'),
(276, 'GASOLINA PARAISO USG', 'Egreso', 'Gastos de gasolina para ultrasonido en Paraíso'),
(277, 'PAPELERIA PARAISO IMAGEN', 'Egreso', 'Gastos de papelería para imagen en Paraíso'),
(278, 'MTTO CLIMAS LABORATORIO', 'Egreso', 'Gastos de mantenimiento de climas en el laboratorio'),
(279, 'MTTO CLIMAS ULTRASONIDO', 'Egreso', 'Gastos de mantenimiento de climas en ultrasonido'),
(280, 'INTERNET ALDAMA', 'Egreso', 'Gastos de internet en Aldama'),
(281, 'MAT LIMPIEZA LABORATORIO', 'Egreso', 'Materiales de limpieza para laboratorio'),
(282, 'APORTACIONES ESPECIALES', 'Egreso', 'Aportaciones especiales realizadas'),
(283, 'MTTO EDIFICIO LABORATORIO', 'Egreso', 'Gastos de mantenimiento del edificio del laboratorio'),
(284, 'CONSUMIBLES LABORATORIO', 'Egreso', 'Gastos de consumibles para laboratorio'),
(285, 'INCENTIVO EMPLEADOS PARAISO IMAGEN', 'Egreso', 'Incentivos para empleados en el área de imagen en Paraíso'),
(286, 'MTTO CLIMAS PARAISO RX', 'Egreso', 'Gastos de mantenimiento de climas en rayos X en Paraíso'),
(287, 'RENTA CUPILCO', 'Egreso', 'Gastos de renta en Cupilco'),
(288, 'AGUA PARAISO', 'Egreso', 'Gastos de agua en Paraíso'),
(289, 'CONSUMIBLES PARAISO IMAGEN', 'Egreso', 'Gastos de consumibles para imagen en Paraíso'),
(290, 'HERRAMIENTAS', 'Egreso', 'Gastos de herramientas generales'),
(291, 'FESTIVIDADES IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de festividades en imagenología en Paraíso'),
(292, 'MAT LIMPIEZA PARAISO IMAGEN', 'Egreso', 'Materiales de limpieza para imagen en Paraíso'),
(293, 'PAPELERIA LABORATORIO', 'Egreso', 'Gastos de papelería para laboratorio'),
(294, 'COMISION DRS LABORATORIO', 'Egreso', 'Comisiones para doctores del laboratorio'),
(295, 'MTTO VEHICULO LABORATORIO', 'Egreso', 'Gastos de mantenimiento de vehículos del laboratorio'),
(296, 'MTTO VEHICULO PARAISO IMAGEN', 'Egreso', 'Gastos de mantenimiento de vehículos en imagenología en Paraíso'),
(297, 'MTTO EQUIPOS LABORATORIO', 'Egreso', 'Gastos de mantenimiento de equipos del laboratorio'),
(298, 'MTTO EQUIPO IMAGEN PARAISO', 'Egreso', 'Gastos de mantenimiento de equipos de imagen en Paraíso'),
(299, 'GASTOS ADMINISTRATIVOS', 'Egreso', 'Gastos generales administrativos'),
(300, 'SUELDO LABORATORIO', 'Egreso', 'Gastos de sueldos en laboratorio'),
(301, 'MTTO CLIMAS', 'Egreso', 'Gastos de mantenimiento de climas'),
(302, 'RENTA PARAISO IMAGEN', 'Egreso', 'Gastos de renta para imagenología en Paraíso'),
(303, 'RENTA LAB PARAISO', 'Egreso', 'Gastos de renta del laboratorio en Paraíso'),
(304, 'RENTA LAB TECOLUTILLA', 'Egreso', 'Gastos de renta del laboratorio en Tecolutilla'),
(305, 'RENTA LAB ALDAMA', 'Egreso', 'Gastos de renta del laboratorio en Aldama'),
(306, 'MAQUILA ENDOSCOPIA', 'Egreso', 'Gastos de maquila en endoscopia'),
(307, 'MAQUILA ELECTROCARDIOGRAMA', 'Egreso', 'Gastos de maquila en electrocardiograma'),
(308, 'LUZ LABORATORIO TECO', 'Egreso', 'Gastos de luz en el laboratorio de Teco'),
(309, 'INSUMOS IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de insumos para imagenología en Paraíso'),
(310, 'RENTA LAB COMALCALCO', 'Egreso', 'Gastos de renta del laboratorio en Comalcalco'),
(311, 'TELMEX TECOLUTILLA LAB', 'Egreso', 'Gastos de Telmex en el laboratorio de Tecolutilla'),
(312, 'TELMEX IMAGENOLOGIA TECOLUTILLA', 'Egreso', 'Gastos de Telmex para imagenología en Tecolutilla'),
(313, 'COMISION DRS', 'Egreso', 'Comisiones para doctores'),
(314, 'INCENTIVO DRS ALDAMA', 'Egreso', 'Incentivos para doctores en Aldama'),
(315, 'BECARIOS TECOLUTILLA LAB', 'Egreso', 'Gastos de becarios en el laboratorio de Tecolutilla'),
(316, 'MTTO EQUIPO VARIOS', 'Egreso', 'Gastos de mantenimiento para varios equipos'),
(317, 'LUZ TECO IMAGEN', 'Egreso', 'Gastos de luz en el área de imagen en Teco'),
(318, 'VIATICOS ADMON', 'Egreso', 'Gastos de viáticos del área administrativa'),
(319, 'PUBLICIDAD LABORATORIO', 'Egreso', 'Gastos de publicidad del laboratorio'),
(320, 'COMISION DRS PARAISO LAB.', 'Egreso', 'Comisiones para doctores en el laboratorio de Paraíso'),
(321, 'MAQ. DIAG. CUPILCO', 'Egreso', 'Gastos de maquinaria para diagnóstico en Cupilco'),
(322, 'IMPUESTO AL VALOR AGREGADO', 'Egreso', 'Pago del impuesto al valor agregado (IVA)'),
(323, 'RETENCIONES DE IVA', 'Egreso', 'Retenciones del IVA'),
(324, 'ISR RET POR SALARIOS.', 'Egreso', 'Retenciones del ISR por salarios'),
(325, 'ISR RET PAGO A TERCEROS', 'Egreso', 'Retenciones del ISR por pagos a terceros'),
(326, 'IEPS', 'Egreso', 'Pago del impuesto especial sobre producción y servicios (IEPS)'),
(327, 'RENTA TECOLUTILLA IMAGEN', 'Egreso', 'Gastos de renta para imagenología en Tecolutilla'),
(328, 'GASTOS LEGALES', 'Egreso', 'Gastos relacionados con asuntos legales'),
(329, 'MTTO EQUIPO RX TECOLUTILLA', 'Egreso', 'Mantenimiento de equipo de rayos X en Tecolutilla'),
(330, 'PUBLICIDAD PARAISO IMAGENOLOGIA', 'Egreso', 'Gastos de publicidad en imagenología en Paraíso'),
(331, 'POSADA LABORATORIO', 'Egreso', 'Gastos de posadas para el laboratorio'),
(332, 'POSADA IMAGENOLOGIA', 'Egreso', 'Gastos de posadas para imagenología'),
(333, 'LUZ LABORATORIO', 'Egreso', 'Gastos de luz general en el laboratorio'),
(334, 'IMSS E INFONAVIT LABORATORIO', 'Egreso', 'Aportaciones al IMSS e Infonavit para el laboratorio'),
(335, 'SUBSIDIO AL EMPLEO LABORATORIO', 'Egreso', 'Subsidios al empleo en el laboratorio'),
(336, 'MAQ. PATOLOGA HIDALGO', 'Egreso', 'Gastos de maquinaria para patología en Hidalgo'),
(337, 'GASOLINA LABORATORIO', 'Egreso', 'Gastos de gasolina para el laboratorio'),
(338, '% DR. TECOLUTILLA', 'Egreso', 'Porcentaje asignado al doctor en Tecolutilla'),
(339, 'ROBO', 'Egreso', 'Gastos relacionados con pérdidas por robo'),
(340, 'FLETES', 'Egreso', 'Gastos por servicios de fletes'),
(341, 'MAT LIMPIEZA IMAGEN TECOLUTILLA', 'Egreso', 'Gastos de materiales de limpieza para imagenología en Tecolutilla'),
(342, 'SUELDO TECOLUTILLA RX', 'Egreso', 'Gastos de sueldos en el área de rayos X en Tecolutilla'),
(343, '% DOCTOR COMALCALCO', 'Egreso', 'Porcentaje asignado al doctor en Comalcalco'),
(344, 'PRESTAMO TELMEX', 'Egreso', 'Préstamo relacionado con servicios de Telmex'),
(345, '% TECNICOS', 'Egreso', 'Porcentaje asignado a técnicos'),
(346, 'MAT LIMPIEZA RECEP CUPILCO', 'Egreso', 'Materiales de limpieza para la recepción en Cupilco'),
(347, 'INCENTIVO EMPLEADOS TECO IMAGEN', 'Egreso', 'Incentivos para empleados en el área de imagen en Teco'),
(348, 'SERVICIO AGUA POTABLE JALPA', 'Egreso', 'Gastos por el servicio de agua potable en Jalpa'),
(349, 'SUELDO RADIOLOGO TECOLUTILLA', 'Egreso', 'Gastos de sueldo del radiólogo en Tecolutilla'),
(350, '% QUIMICOS', 'Egreso', 'Porcentaje asignado a químicos'),
(351, 'PAPELERIA TECOLUTILLA', 'Egreso', 'Gastos de papelería en Tecolutilla'),
(352, 'GASOLINA TECOLUTILLA IMAGEN', 'Egreso', 'Gastos de gasolina para imagenología en Tecolutilla'),
(353, 'PUBLICIDAD TECOLUTILLA IMAGEN', 'Egreso', 'Gastos de publicidad para imagenología en Tecolutila'),
(354, 'COMISION DRS TECO LAB.', 'Egreso', 'Comisiones para doctores en el laboratorio de Teco'),
(355, 'DOSIMETROS', 'Egreso', 'Gastos de dosímetros'),
(356, 'RENTA COPIADORA', 'Egreso', 'Gastos de renta de copiadoras'),
(357, 'PROPINAS', 'Egreso', 'Gastos relacionados con propinas'),
(358, 'SEGURO DAÑOS', 'Egreso', 'Gastos de seguros por daños'),
(359, 'GARANTIA', 'Egreso', 'Gastos de garantías'),
(360, 'TELMEX JALPA', 'Egreso', 'Gastos de Telmex en Jalpa'),
(361, 'GASOLINA', 'Egreso', 'Gastos generales de gasolina'),
(362, 'PAPELERIA IMAGENOLOGIA', 'Egreso', 'Gastos de papelería para imagenología'),
(363, 'AGUINALDO', 'Egreso', 'Gastos de aguinaldos'),
(364, 'INSUMOS LABORATORIO', 'Egreso', 'Gastos de insumos para el laboratorio'),
(365, 'AGUA TECOLUTILLA', 'Egreso', 'Gastos de agua en Tecolutila'),
(366, 'TELEFONIA MOVIL', 'Egreso', 'Gastos de telefonía móvil'),
(367, 'INCENTIVO DRS', 'Egreso', 'Incentivos para doctores'),
(368, 'CAPACITACION', 'Egreso', 'Gastos relacionados con capacitaciones'),
(369, 'GASOLINA ULTRASONIDO', 'Egreso', 'Gastos de gasolina para el área de ultrasonido'),
(370, 'UNIFORMES RX MATRIZ', 'Egreso', 'Gastos de uniformes para rayos X en la matriz'),
(371, 'PUBLICIDAD LAB. CUPILCO', 'Egreso', 'Gastos de publicidad para el laboratorio en Cupilco'),
(372, 'TRASLADO M. PARAISO', 'Egreso', 'Gastos de traslado a Paraíso'),
(373, 'MAQ. CULTIVO CUPILCO', 'Egreso', 'Gastos de maquinaria para cultivo en Cupilco'),
(374, 'COMISION DR ZAPATA', 'Egreso', 'Comisiones para el doctor Zapata'),
(375, 'BONO CEDICOM', 'Egreso', 'Bonos otorgados por Cedicom'),
(376, 'PRIMA VACACIONAL', 'Egreso', 'Gastos de primas vacacionales'),
(377, 'TRASLADO MUESTRAS', 'Egreso', 'Gastos por traslado de muestras'),
(378, 'MAQUILA PATOLOGA', 'Egreso', 'Gastos de maquila para patología'),
(379, 'PRESTAMO', 'Egreso', 'Gastos relacionados con préstamos'),
(380, 'CANACO', 'Egreso', 'Gastos relacionados con CANACO'),
(381, '% DRA CASTAÑEDA (CARLOS GREEN)', 'Egreso', 'Porcentaje asignado a la Dra. Castañeda en Carlos Green'),
(382, 'GASTOS VARIOS', 'Egreso', 'Gastos varios no especificados'),
(383, 'SUELDO IMAGENOLOGIA PARAISO', 'Egreso', 'Gastos de sueldos en imagenología en Paraíso'),
(384, 'INTERESES BANAMEX', 'Egreso', 'Gastos de intereses de cuentas con Banamex'),
(385, 'PRIMA VACACIONAL LAB', 'Egreso', 'Gastos de primas vacacionales en el laboratorio'),
(386, 'INCENTIVO EMPLEADOS LABORATORIO', 'Egreso', 'Incentivos para empleados del laboratorio'),
(387, 'CABLECOM PARAISO', 'Egreso', 'Gastos de Cablecom en Paraíso'),
(388, 'TENENCIA VEHICULOS', 'Egreso', 'Gastos relacionados con la tenencia de vehículos'),
(389, 'VACACIONES', 'Egreso', 'Gastos de vacaciones generales'),
(390, 'VACACIONES PARAISO USG', 'Egreso', 'Gastos de vacaciones en el área de ultrasonido en Paraíso'),
(391, 'INTERNET CUPILCO', 'Egreso', 'Gastos de internet en Cupilco'),
(392, 'CABLECOM', 'Egreso', 'Gastos de Cablecom generales'),
(393, 'AGUINALDO TECOLUTILLA', 'Egreso', 'Gastos de aguinaldos en Tecolutila'),
(394, 'BOTIQUIN MEDICO', 'Egreso', 'Gastos relacionados con el botiquín médico'),
(395, 'MTTO INNOV. Y TECNOLOGIA', 'Egreso', 'Gastos de mantenimiento en innovación y tecnología'),
(396, 'MAQUILA DIAGNOSTICA', 'Egreso', 'Gastos de maquila diagnóstica'),
(397, 'MTTO EQUIPO COMPUTO', 'Egreso', 'Gastos de mantenimiento de equipos de cómputo'),
(398, 'RENTA LAS FLORES', 'Egreso', 'Gastos de renta en Las Flores'),
(399, 'MANTENIMIENTO EDIFICIO', 'Egreso', 'Gastos de mantenimiento de edificios'),
(400, 'SEGURO AUTO', 'Egreso', 'Gastos relacionados con seguros de autos'),
(401, 'RESPONSABLE SANITARIO', 'Egreso', 'Gastos relacionados con el responsable sanitario'),
(402, 'UNIFORMES TECNOLOGIA DE LA INFORMACION', 'Egreso', 'Gastos de uniformes para el área de tecnología de la información'),
(403, 'VIATICOS MERCADOTECNIA', 'Egreso', 'Gastos de viáticos para el área de mercadotecnia'),
(404, 'SUELDO RADIOLOGO COMALCALCO', 'Egreso', 'Gastos de sueldo del radiólogo en Comalcalco'),
(405, '% TECNICO PARAISO', 'Egreso', 'Porcentaje asignado a técnicos en Paraíso'),
(406, 'SUELDO RADIOLOGO PARAISO', 'Egreso', 'Gastos de sueldo del radiólogo en Paraíso'),
(407, 'IMPUESTO ESTATAL PLACAS', 'Egreso', 'Pago de impuestos estatales para placas de vehículos'),
(408, 'MTTO INNOV Y TEC. LABORATORIO', 'Egreso', 'Gastos de mantenimiento para innovación y tecnología en el laboratorio'),
(409, 'INCENTIVOS ADICAR', 'Egreso', 'Incentivos asignados a ADICAR'),
(410, 'AGUA', 'Egreso', 'Gastos generales de agua'),
(411, 'MTTO EQUIPOS IMAGENOLOGIA', 'Egreso', 'Gastos de mantenimiento de equipos en imagenología'),
(412, 'AGUINALDO LABORATORIO', 'Egreso', 'Gastos de aguinaldos en el laboratorio'),
(413, 'FESTIVIDADES LABORATORIO', 'Egreso', 'Gastos de festividades en el laboratorio'),
(414, 'MTTO CLIMAS CUPILCO', 'Egreso', 'Gastos de mantenimiento de climas en Cupilco'),
(415, 'INTERNET MATRIZ', 'Egreso', 'Gastos de internet en la matriz'),
(416, 'MTTO VEHICULO MARKETING', 'Egreso', 'Gastos de mantenimiento de vehículos para marketing'),
(417, 'BECARIOS ALDAMA', 'Egreso', 'Gastos relacionados con becarios en Aldama'),
(418, 'AYUDA MEDICA TECOLUTILLA RX', 'Egreso', 'Gastos de ayudas médicas en el área de rayos X en Tecolutila'),
(419, 'AYUDA MEDICA RAYOS X', 'Egreso', 'Gastos de ayudas médicas en rayos X'),
(420, 'CONSUMIBLES HIDALGO', 'Egreso', 'Gastos de consumibles en Hidalgo'),
(421, 'MTTO EDIFICIO HIDALGO', 'Egreso', 'Gastos de mantenimiento del edificio en Hidalgo'),
(422, 'APERITIVO EMP PARAISO LABORATORIO', 'Egreso', 'Gastos de aperitivos para empleados del laboratorio en Paraíso'),
(423, 'UNIFORMES SERVICIOS GENERALES', 'Egreso', 'Gastos de uniformes para servicios generales'),
(424, 'MTTO EQUIPO COMPUTO RECEPCION', 'Egreso', 'Gastos de mantenimiento de equipos de cómputo en recepción'),
(425, 'AYUDA TRANSPORTE EL BELLOTE', 'Egreso', 'Gastos de ayudas de transporte en El Bellote'),
(426, 'SUELDO CHILTEPEC', 'Egreso', 'Gastos de sueldos en Chiltepec'),
(427, 'GASOLINA CHILTEPEC', 'Egreso', 'Gastos de gasolina en Chiltepec'),
(428, 'RESPONSIVA LABORATORIO', 'Egreso', 'Gastos relacionados con responsivas del laboratorio'),
(429, 'GASOLINA HIDALGO', 'Egreso', 'Gastos de gasolina en Hidalgo'),
(430, 'APERITIVO EMP TECOLUTILLA LAB', 'Egreso', 'Gastos de aperitivos para empleados del laboratorio en Tecolutila'),
(431, 'SUB EMPLEO JALPA', 'Egreso', 'Subsidio al empleo en Jalpa'),
(432, 'IMSS E INFONAVIT CUPILCO', 'Egreso', 'Aportaciones al IMSS e Infonavit en Cupilco'),
(433, 'SUBSIDIO AL EMPLEO CUPILCO', 'Egreso', 'Subsidio al empleo en Cupilco'),
(434, 'CONSUMIBLES ALMACEN', 'Egreso', 'Gastos de consumibles en almacén'),
(435, 'TELCEL PARAISO', 'Egreso', 'Gastos de telefonía móvil (Telcel) en Paraíso'),
(436, 'MAQ. PATOLOGA JALPA', 'Egreso', 'Gastos de maquinaria para patología en Jalpa'),
(437, 'AGUA HUIMANGUILLO', 'Egreso', 'Gastos de agua en Huimanguillo'),
(438, 'MTTO CLIMAS EDIFICIO ANTIGUO', 'Egreso', 'Mantenimiento de climas en el edificio antiguo'),
(439, 'DESECHOS RAYOS X', 'Egreso', 'Gastos de manejo de desechos en rayos X'),
(440, 'INSUMOS RAYOS X ALDAMA', 'Egreso', 'Gastos de insumos para rayos X en Aldama'),
(441, 'MTTO CLIMAS CONSULTORIO DR WILLIAMS', 'Egreso', 'Gastos de mantenimiento de climas en el consultorio del Dr. Williams'),
(442, 'TELCEL ALDAMA', 'Egreso', 'Gastos de telefonía móvil (Telcel) en Aldama'),
(443, 'TELCEL MERCADOTECNIA', 'Egreso', 'Gastos de telefonía móvil (Telcel) para mercadotecnia'),
(444, 'UNIFORMES CHILTEPEC', 'Egreso', 'Gastos de uniformes en Chiltepec'),
(445, 'TELCEL CALIDAD', 'Egreso', 'Gastos de telefonía móvil (Telcel) en el área de calidad'),
(446, 'UNIFORMES SUPERVISORES', 'Egreso', 'Gastos de uniformes para supervisores'),
(447, 'TELCEL TECOLUTILLA', 'Egreso', 'Gastos de telefonía móvil (Telcel) en Tecolutila'),
(448, 'PUBLICIDAD LAB JALPA', 'Egreso', 'Gastos de publicidad para el laboratorio en Jalpa'),
(449, 'DEPRECIACION EQUIPO RAYOS X JALPA', 'Egreso', 'Depreciación de equipos de rayos X en Jalpa'),
(450, 'INSUMOS CHILTEPEC', 'Egreso', 'Gastos de insumos en Chiltepec'),
(451, 'MTTO. EQUIPO LAB PARAISO', 'Egreso', 'Mantenimiento de equipos de laboratorio en Paraíso'),
(452, 'PAPELERIA CHILTEPEC', 'Egreso', 'Gastos de papelería en Chiltepec'),
(453, 'TRASLADO M. JALPA', 'Egreso', 'Gastos de traslado a Jalpa'),
(454, 'AYUDA RENTA', 'Egreso', 'Gastos relacionados con ayudas de renta'),
(455, 'PROYECTO FACTOR HUMANO', 'Egreso', 'Gastos relacionados con el proyecto de factor humano'),
(456, 'TELCEL ADMON', 'Egreso', 'Gastos de telefonía móvil (Telcel) en el área administrativa'),
(457, 'GASTOS TEAPA', 'Egreso', 'Gastos generales en Teapa'),
(458, 'VACACIONES RX JALPA', 'Egreso', 'Gastos de vacaciones en el área de rayos X en Jalpa'),
(459, 'MTTO CLIMAS MASTOGRAFIA', 'Egreso', 'Gastos de mantenimiento de climas en el área de mastografía'),
(460, 'RENTA MASTOGRAFIA', 'Egreso', 'Gastos de renta para mastografía'),
(461, 'MTTO CLIMAS RAYOS X', 'Egreso', 'Gastos de mantenimiento de climas en el área de rayos X'),
(462, 'MTTO CLIMAS ADMON', 'Egreso', 'Gastos de mantenimiento de climas en el área administrativa'),
(463, 'MTTO CLIMAS RECEPCION', 'Egreso', 'Gastos de mantenimiento de climas en recepción'),
(464, 'RESP SANITARIO PARAISO', 'Egreso', 'Gastos del responsable sanitario en Paraíso'),
(465, 'INCENTIVO EMPLEADOS CUPILCO', 'Egreso', 'Incentivos para empleados en Cupilco'),
(466, 'INSUMOS HUIMANGUILLO', 'Egreso', 'Gastos de insumos en Huimanguillo'),
(467, 'CONSUMIBLES IMAGEN TECOLUTILLA', 'Egreso', 'Gastos de consumibles en imagenología en Tecolutila'),
(468, 'SUELDO HUIMANGUILLO', 'Egreso', 'Gastos de sueldos en Huimanguillo'),
(469, 'VACACIONES RADIOLOGO', 'Egreso', 'Gastos de vacaciones del radiólogo'),
(470, 'MAT LIMPIEZA F.H', 'Egreso', 'Gastos de materiales de limpieza en el área de factor humano'),
(471, 'MTTO EDIFICIO FACTOR HUMANO', 'Egreso', 'Gastos de mantenimiento del edificio para el área de factor humano'),
(472, 'MTTO CLIMAS FACTOR HUMANO', 'Egreso', 'Gastos de mantenimiento de climas en el área de factor humano'),
(473, 'MTTO EDIFICIO ADMON', 'Egreso', 'Gastos de mantenimiento del edificio en el área administrativa'),
(474, 'COMISION DRS CHILTEPEC', 'Egreso', 'Comisiones para doctores en Chiltepec'),
(475, 'MAT LIMPIEZA RECEPCION', 'Egreso', 'Gastos de materiales de limpieza en recepción'),
(476, 'CONSUMIBLES CALIDAD', 'Egreso', 'Gastos de consumibles en el área de calidad'),
(477, 'IMPUESTO 2019', 'Egreso', 'Pago de impuestos del año 2019'),
(478, 'BONO PROFESION', 'Egreso', 'Pago de bonos profesionales'),
(479, 'MAQ. PATOLOGA HUIMANGUILLO', 'Egreso', 'Gastos de maquinaria para patología en Huimanguillo'),
(480, 'DESECHOS LAB TECO', 'Egreso', 'Gastos de desechos en el laboratorio de Teco'),
(481, 'SUELDO ULTRASONIDO', 'Egreso', 'Gastos de sueldos en el área de ultrasonido'),
(482, 'AGUINALDO JALPA', 'Egreso', 'Gastos de aguinaldos en Jalpa'),
(483, 'INSUMOS INTENDENCIA', 'Egreso', 'Gastos de insumos para el área de intendencia'),
(484, 'AGUA POTABLE', 'Egreso', 'Gastos de agua potable'),
(485, 'RENTA HUIMANGUILLO', 'Egreso', 'Gastos de renta en Huimanguillo'),
(486, 'GASOLINA HUIMANGUILLO', 'Egreso', 'Gastos de gasolina en Huimanguillo'),
(487, 'UNIFORMES HIDALGO', 'Egreso', 'Gastos de uniformes en Hidalgo'),
(488, 'MTTO CLIMAS CALIDAD', 'Egreso', 'Gastos de mantenimiento de climas en el área de calidad'),
(489, 'UNIFORMES HUIMANGUILLO', 'Egreso', 'Gastos de uniformes en Huimanguillo'),
(490, 'APERITIVO EMP TECOLUTILLA RX', 'Egreso', 'Gastos de aperitivos para empleados en el área de rayos X en Tecolutila'),
(491, 'PAPELERIA HUIMANGUILLO', 'Egreso', 'Gastos de papelería en Huimanguillo'),
(492, 'MAT LIMPIEZA HUIMANGUILLO', 'Egreso', 'Gastos de materiales de limpieza en Huimanguillo'),
(493, 'PAPELERIA FACTOR HUMANO', 'Egreso', 'Gastos de papelería en el área de factor humano'),
(494, 'LUZ MASTOGRAFIA', 'Egreso', 'Gastos de luz en el área de mastografía'),
(495, 'CONSUMIBLES HUIMANGUILLO', 'Egreso', 'Gastos de consumibles en Huimanguillo'),
(496, 'VACACIONES LAB TECO', 'Egreso', 'Gastos de vacaciones en el laboratorio de Teco'),
(497, 'MAQ. DIAG. HUIMANGUILLO', 'Egreso', 'Gastos de maquinaria para diagnóstico en Huimanguillo'),
(498, 'MAQ. CULTIVO HUIMANGUILLO', 'Egreso', 'Gastos de maquinaria para cultivo en Huimanguillo'),
(499, 'COMISION DRS HUIMANGUILLO', 'Egreso', 'Comisiones para doctores en Huimanguillo'),
(500, 'UNIFORMES TECO LAB', 'Egreso', 'Gastos de uniformes para el laboratorio de Teco'),
(501, 'MTTO EQUIPO MASTOGRAFIA', 'Egreso', 'Gastos de mantenimiento de equipos en mastografía'),
(502, 'AYUDA MEDICA TECOLUTILLA LAB', 'Egreso', 'Ayudas médicas en el laboratorio de Tecolutilla'),
(503, 'AYUDA MEDICA RECEPCION', 'Egreso', 'Ayudas médicas en recepción'),
(504, 'AYUDA EDUCACIONAL FACTOR HUMANO', 'Egreso', 'Ayudas educacionales en el área de factor humano'),
(505, 'PROTECCION CIVIL', 'Egreso', 'Gastos relacionados con protección civil'),
(506, 'MTTO EDIFICIO INTENDENCIA', 'Egreso', 'Gastos de mantenimiento del edificio de intendencia'),
(507, 'MTTO MOBILIARIO FACTOR HUMANO', 'Egreso', 'Gastos de mantenimiento de mobiliario en el área de factor humano'),
(508, 'AYUDA TRANSPORTE TECO LAB', 'Egreso', 'Ayudas de transporte en el laboratorio de Teco'),
(509, 'REGISTRO MARCA', 'Egreso', 'Gastos relacionados con el registro de marcas'),
(510, 'MTTO EQUIPO USG TECOLUTILLA', 'Egreso', 'Gastos de mantenimiento de equipos de ultrasonido en Tecolutilla'),
(511, 'AYUDA TRANSPORTE PARAISO RX', 'Egreso', 'Ayudas de transporte en el área de rayos X en Paraíso'),
(512, 'SUELDO ALDAMA RX', 'Egreso', 'Gastos de sueldos en el área de rayos X en Aldama'),
(513, 'AYUDA TRANSPORTE RECEPCION', 'Egreso', 'Ayudas de transporte en recepción'),
(514, 'TELCEL FACTURACION', 'Egreso', 'Gastos de telefonía móvil (Telcel) en el área de facturación'),
(515, 'AYUDA MEDICA MERCADOTECNIA', 'Egreso', 'Ayudas médicas en el área de mercadotecnia'),
(516, 'MTTO EQUIPO COMPUTO USG', 'Egreso', 'Gastos de mantenimiento de equipos de cómputo en el área de ultrasonido'),
(517, 'AYUDA MEDICA LABORATORIO', 'Egreso', 'Ayudas médicas en el laboratorio'),
(518, 'LUZ ALDAMA IMAGEN', 'Egreso', 'Gastos de luz en el área de imagen en Aldama'),
(519, 'AYUDA EDUCACIONAL CONTABILIDAD', 'Egreso', 'Ayudas educacionales en el área de contabilidad'),
(520, 'AYUDA EDUCACIONAL RECEPCION', 'Egreso', 'Ayudas educacionales en recepción'),
(521, 'DESECHOS LAB ALDAMA', 'Egreso', 'Gastos de desechos en el laboratorio de Aldama'),
(522, 'SUELDO TECOLUTILLA RECEPCION', 'Egreso', 'Gastos de sueldos en la recepción de Tecolutilla'),
(523, 'GASOLINA BELLOTE', 'Egreso', 'Gastos de gasolina en Bellote'),
(524, 'UNIFORMES VIGILANCIA', 'Egreso', 'Gastos de uniformes para el área de vigilancia'),
(525, 'DESECHOS CHILTEPEC', 'Egreso', 'Gastos de desechos en Chiltepec'),
(526, 'REPARTO UTILIDADES LABORATORIO', 'Egreso', 'Gastos de reparto de utilidades en el laboratorio'),
(527, 'REPARTO UTILIDADES IMAGEN', 'Egreso', 'Gastos de reparto de utilidades en el área de imagenología'),
(528, 'TRASLADO M. AYAPA', 'Egreso', 'Gastos de traslado en Ayapa'),
(529, 'COMISION DRS BELLOTE', 'Egreso', 'Comisiones para doctores en Bellote'),
(530, 'IMPUESTO NOMINA CUPILCO', 'Egreso', 'Pago de impuestos sobre nómina en Cupilco'),
(531, 'IMPUESTO NOMINA TECOLUTILLA', 'Egreso', 'Pago de impuestos sobre nómina en Tecolutilla'),
(532, 'GASOLINA ALDAMA IMAGEN', 'Egreso', 'Gastos de gasolina en el área de imagen en Aldama'),
(533, 'IMPUESTO NOMINA LABORATORIO', 'Egreso', 'Pago de impuestos sobre nómina en el laboratorio'),
(534, 'AYUDA TRANSPORTE TECO RX', 'Egreso', 'Ayudas de transporte en el área de rayos X en Teco'),
(535, 'INSUMOS CARLOS GREEN', 'Egreso', 'Gastos de insumos en Carlos Green'),
(536, 'PAPELERIA CARLOS GREEN', 'Egreso', 'Gastos de papelería en Carlos Green'),
(537, 'PAPELERIA MASTOGRAFIA', 'Egreso', 'Gastos de papelería en el área de mastografía'),
(538, 'TELCEL CUPILCO', 'Egreso', 'Gastos de telefonía móvil (Telcel) en Cupilco'),
(539, 'TELCEL PROVEEDORES', 'Egreso', 'Gastos de telefonía móvil (Telcel) para proveedores'),
(540, 'SUELDO VIGILANCIA', 'Egreso', 'Gastos de sueldos en el área de vigilancia'),
(541, 'MANTENIMIENTO EDIFICIO NUEVO', 'Egreso', 'Gastos de mantenimiento en el edificio nuevo'),
(542, 'AYUDA MEDICA ALDAMA', 'Egreso', 'Ayudas médicas en Aldama'),
(543, 'PAPELERIA TECOLUTILLA RAYOS X', 'Egreso', 'Gastos de papelería en el área de rayos X en Tecolutilla'),
(544, 'IMPUESTO NOMINA', 'Egreso', 'Pago de impuestos sobre nómina'),
(545, 'VACACIONES ALMACEN', 'Egreso', 'Gastos de vacaciones en almacén'),
(546, 'AYUDA EDUCACIONAL MERCADOTECNIA', 'Egreso', 'Ayudas educacionales en el área de mercadotecnia'),
(547, 'MTTO INNOV Y TEC. PARAISO LABORATORIO', 'Egreso', 'Mantenimiento en innovación y tecnología en el laboratorio de Paraíso'),
(548, 'INSUMOS USG TECOLUTILLA', 'Egreso', 'Gastos de insumos en el área de ultrasonido en Tecolutilla'),
(549, 'MAT LIMPIEZA CHILTEPEC', 'Egreso', 'Gastos de materiales de limpieza en Chiltepec'),
(550, 'CONSUMIBLES ELECTRO', 'Egreso', 'Gastos de consumibles eléctricos'),
(551, 'DEPRECIACION EQUIPO USG TECOLUTILLA', 'Egreso', 'Depreciación de equipos de ultrasonido en Tecolutilla'),
(552, 'APERITIVO EMPLEADOS', 'Egreso', 'Gastos de aperitivos para empleados'),
(553, 'SUBSIDIO AL EMPLEO TECO LAB', 'Egreso', 'Subsidios al empleo en el laboratorio de Teco'),
(554, 'BECARIOS', 'Egreso', 'Gastos relacionados con becarios'),
(555, 'PRIMA VACACIONAL ALMACEN', 'Egreso', 'Gastos de primas vacacionales en almacén'),
(556, 'BECARIOS PARAISO LABORATORIO', 'Egreso', 'Gastos relacionados con becarios en el laboratorio de Paraíso'),
(557, 'SUELDO RECEPCION PARAISO', 'Egreso', 'Gastos de sueldos en la recepción de Paraíso'),
(558, 'MTTO CLIMAS ALMACEN', 'Egreso', 'Gastos de mantenimiento de climas en almacén'),
(559, 'INSUMOS CALIDAD', 'Egreso', 'Gastos de insumos en el área de calidad'),
(560, 'MAT LIMPIEZA CALIDAD', 'Egreso', 'Gastos de materiales de limpieza en el área de calidad'),
(561, 'DESECHOS LAB HIDALGO', 'Egreso', 'Gastos de desechos en el laboratorio de Hidalgo'),
(562, 'DESECHOS LAB HUIMANGUILLO', 'Egreso', 'Gastos de desechos en el laboratorio de Huimanguillo'),
(563, 'APERITIVO EMP LABORATORIO', 'Egreso', 'Gastos de aperitivos para empleados del laboratorio'),
(564, 'DESECHOS LAB CUPILCO', 'Egreso', 'Gastos de desechos en el laboratorio de Cupilco'),
(565, 'PUBLICIDAD CHILTEPEC', 'Egreso', 'Gastos de publicidad en Chiltepec'),
(566, 'IMSS E INFONAVIT TECO LAB', 'Egreso', 'Aportaciones al IMSS e Infonavit para el laboratorio de Teco'),
(567, 'MTTO EQUIPO COMPUTO ADMON', 'Egreso', 'Gastos de mantenimiento de equipos de cómputo en el área administrativa'),
(568, 'MAQ DIAG EL BELLOTE', 'Egreso', 'Gastos de maquinaria para diagnóstico en El Bellote'),
(569, 'UNIFORMES BECARIOS', 'Egreso', 'Gastos de uniformes para becarios'),
(570, 'AYUDA TRANSPORTE TECNOLOGIA', 'Egreso', 'Ayudas de transporte en el área de tecnología'),
(571, 'AYUDA TRANSPORTE RAYOS X', 'Egreso', 'Ayudas de transporte en el área de rayos X'),
(572, 'AYUDA TRANSPORTE FACTOR HUMANO', 'Egreso', 'Ayudas de transporte en el área de factor humano'),
(573, 'AYUDA TRANSPORTE MASTOGRAFIA', 'Egreso', 'Ayudas de transporte en el área de mastografía'),
(574, 'AYUDA TRANSPORTE CALIDAD', 'Egreso', 'Ayudas de transporte en el área de calidad'),
(575, 'AYUDA TRANSPORTE LABORATORIO', 'Egreso', 'Ayudas de transporte en el laboratorio'),
(576, 'BECARIO PARAISO RX', 'Egreso', 'Gastos relacionados con becarios en el área de rayos X en Paraíso'),
(577, 'TELCEL FACTOR HUMANO', 'Egreso', 'Gastos de telefonía móvil (Telcel) en el área de factor humano'),
(578, 'DESECHOS LAB PARAISO', 'Egreso', 'Gastos de desechos en el laboratorio de Paraíso'),
(579, 'AYUDA MEDICA CONTABILIDAD', 'Egreso', 'Ayudas médicas en el área de contabilidad'),
(580, 'AYUDA TRANSPORTE CHILTEPEC', 'Egreso', 'Ayudas de transporte en Chiltepec'),
(581, 'AYUDA TRANSPORTE PARAISO LAB', 'Egreso', 'Ayudas de transporte en el laboratorio de Paraíso'),
(582, 'TELCEL HUIMANGUILLO', 'Egreso', 'Gastos de telefonía móvil (Telcel) en Huimanguillo'),
(583, 'BECARIOS TECOLUTILLA RX', 'Egreso', 'Gastos relacionados con becarios en el área de rayos X en Tecolutilla'),
(584, 'AYUDA TRANSPORTE PARAISO IMAGEN', 'Egreso', 'Ayudas de transporte en el área de imagen en Paraíso'),
(585, 'CONSUMIBLES FACTOR HUMANO', 'Egreso', 'Gastos de consumibles en el área de factor humano'),
(586, 'BECARIOS LABORATORIO', 'Egreso', 'Gastos relacionados con becarios en el laboratorio'),
(587, 'MTTO CLIMAS PARAISO LABORATORIO', 'Egreso', 'Gastos de mantenimiento de climas en el laboratorio de Paraíso'),
(588, 'LUZ ELECTROCARDIOGRAMA', 'Egreso', 'Gastos de luz en el área de electrocardiograma'),
(589, 'MTTO CLIMAS MARKETING', 'Egreso', 'Gastos de mantenimiento de climas en el área de marketing'),
(590, 'PACAL', 'Egreso', 'Gastos relacionados con PACAL'),
(591, 'PUBLICIDAD EL BELLOTE', 'Egreso', 'Gastos de publicidad en El Bellote'),
(592, 'AYUDA TRANSPORTE ALDAMA', 'Egreso', 'Ayudas de transporte en Aldama'),
(593, 'AYUDA EDUCACIONAL ALMACEN', 'Egreso', 'Ayudas educacionales en almacén'),
(594, 'AYUDA MEDICA ULTRASONIDO', 'Egreso', 'Ayudas médicas en el área de ultrasonido'),
(595, 'AYUDA MEDICA HUIMANGUILLO', 'Egreso', 'Ayudas médicas en Huimanguillo'),
(596, 'IMPUESTO SOBRE NOMINA', 'Egreso', 'Pago de impuestos sobre nómina'),
(597, 'INSUMOS ELECTRO', 'Egreso', 'Gastos de insumos eléctricos'),
(598, 'FESTIVIDADES LAB. TECOLUTILLA', 'Egreso', 'Gastos de festividades en el laboratorio de Tecolutilla'),
(599, 'MTTO EDIFICIO MARKETING', 'Egreso', 'Gastos de mantenimiento del edificio para marketing'),
(600, 'FESTIVIDADES HIDALGO', 'Egreso', 'Gastos de festividades en Hidalgo'),
(601, 'FINIQUITOS', 'Egreso', 'Gastos por finiquitos de empleados'),
(602, 'CONSUMIBLES MERCADOTECNIA', 'Egreso', 'Gastos de consumibles en el área de mercadotecnia'),
(603, 'MAT LIMPIEZA MERCADOTECNIA', 'Egreso', 'Gastos de materiales de limpieza en mercadotecnia'),
(604, 'INCENTIVO EMPLEADOS', 'Egreso', 'Incentivos otorgados a empleados'),
(605, 'INSUMOS MERCADOTECNIA', 'Egreso', 'Gastos de insumos en mercadotecnia');
INSERT INTO `cuentas` (`id`, `nombre`, `tipo`, `descripcion`) VALUES
(606, 'DEPRECIACION EQUIPO USG PARAISO', 'Egreso', 'Depreciación de equipos de ultrasonido en Paraíso'),
(607, 'MAT LIMPIEZA PARAISO LAB.', 'Egreso', 'Gastos de materiales de limpieza en el laboratorio de Paraíso'),
(608, 'SUELDO ELECTRO', 'Egreso', 'Gastos de sueldos en el área de electrocardiograma'),
(609, 'SUELDO ALMACEN', 'Egreso', 'Gastos de sueldos en almacén'),
(610, 'BONO FESTIVIDAD', 'Egreso', 'Bonos otorgados por festividades'),
(611, 'SUELDO MATERNIDAD GPE', 'Egreso', 'Gastos de sueldos por maternidad en GPE'),
(612, 'DEPRECIACION EQUIPO RX', 'Egreso', 'Depreciación de equipos de rayos X'),
(613, 'TRASLADO M. EL BELLOTE', 'Egreso', 'Gastos de traslado en El Bellote'),
(614, 'UNIFORMES CALIDAD', 'Egreso', 'Gastos de uniformes en el área de calidad'),
(615, 'MAQ. PATOLOGA MECOACAN', 'Egreso', 'Gastos de maquinaria para patología en Mecoacán'),
(616, 'MAQ. DIAG. CHILTEPEC', 'Egreso', 'Gastos de maquinaria para diagnóstico en Chiltepec'),
(617, 'BRIGADA LAB. PARAISO', 'Egreso', 'Gastos relacionados con brigadas en el laboratorio de Paraíso'),
(618, '% TECNICOS TECOLUTILLA', 'Egreso', 'Porcentaje asignado a técnicos en Tecolutilla'),
(619, 'MTTO INNOV Y TEC. TECO IMAGEN', 'Egreso', 'Mantenimiento en innovación y tecnología en el área de imagen en Teco'),
(620, 'MTTO INNOV Y TEC TECOLUTILLA LAB', 'Egreso', 'Mantenimiento en innovación y tecnología en el laboratorio de Tecolutilla'),
(621, 'MTTO EDIFICIO ALDAMA', 'Egreso', 'Gastos de mantenimiento del edificio en Aldama'),
(622, 'VACACIONES RX TECOLUTILLA', 'Egreso', 'Gastos de vacaciones en el área de rayos X en Tecolutilla'),
(623, '% DR. CARLOS', 'Egreso', 'Porcentaje asignado al Dr. Carlos'),
(624, 'MTTO CLIMAS ALDAMA', 'Egreso', 'Gastos de mantenimiento de climas en Aldama'),
(625, 'MTTO INNOV Y TEC. PARAISO IMAGEN', 'Egreso', 'Mantenimiento en innovación y tecnología en el área de imagen en Paraíso'),
(626, 'MAQ. CULTIVO CARLOS GREEN', 'Egreso', 'Gastos de maquinaria para cultivo en Carlos Green'),
(627, 'MTTO EDIFICIO LAB. TECO', 'Egreso', 'Gastos de mantenimiento del edificio del laboratorio en Teco'),
(628, 'CONSUMIBLES CUPILCO', 'Egreso', 'Gastos de consumibles en Cupilco'),
(629, 'FESTIVIDADES TECOLUTILLA IMAGEN', 'Egreso', 'Gastos de festividades en el área de imagen en Tecolutilla'),
(630, 'MAQ. CULTIVO CHILTEPEC', 'Egreso', 'Gastos de maquinaria para cultivo en Chiltepec'),
(631, 'FESTIVIDADES CUPILCO', 'Egreso', 'Gastos de festividades en Cupilco'),
(632, 'UNIFORMES TECOLUTILLA IMAGEN', 'Egreso', 'Gastos de uniformes en el área de imagen en Tecolutilla'),
(633, 'UNIFORMES FACTOR HUMANO', 'Egreso', 'Gastos de uniformes en el área de factor humano'),
(634, 'SUELDO MASTOGRAFIA', 'Egreso', 'Gastos de sueldos en el área de mastografía'),
(635, 'INCENTIVO DRS TECO IMAGEN', 'Egreso', 'Incentivos para doctores en el área de imagen en Teco'),
(636, 'VACACIONES LABORATORIO', 'Egreso', 'Gastos de vacaciones en el laboratorio'),
(637, 'UNIFORMES ALMACEN', 'Egreso', 'Gastos de uniformes en almacén'),
(638, 'UNIFORMES ULTRASONIDO', 'Egreso', 'Gastos de uniformes en el área de ultrasonido'),
(639, 'UNIFORMES CONTABILIDAD', 'Egreso', 'Gastos de uniformes en el área de contabilidad'),
(640, 'UNIFORMES MERCADOTECNIA', 'Egreso', 'Gastos de uniformes en el área de mercadotecnia'),
(641, 'MTTO EDIFICIO ALMACEN', 'Egreso', 'Gastos de mantenimiento del edificio en almacén'),
(642, 'LUZ CUPILCO', 'Egreso', 'Gastos de luz en Cupilco'),
(643, 'UNIFORMES ALDAMA', 'Egreso', 'Gastos de uniformes en Aldama'),
(644, 'COFEPRIS', 'Egreso', 'Gastos relacionados con COFEPRIS'),
(645, 'UNIFORMES RECEPCION', 'Egreso', 'Gastos de uniformes en recepción'),
(646, 'UNIFORMES PARAISO RECEPCION', 'Egreso', 'Gastos de uniformes en la recepción de Paraíso'),
(647, 'UNIFORMES PARAISO RX', 'Egreso', 'Gastos de uniformes en el área de rayos X en Paraíso'),
(648, 'APERITIVO EMP PARAISO IMAGEN', 'Egreso', 'Gastos de aperitivos para empleados en el área de imagen en Paraíso'),
(649, 'PUBLICIDAD MARKETING', 'Egreso', 'Gastos de publicidad en el área de marketing'),
(650, 'SUELDO LAB JALPA', 'Egreso', 'Gastos de sueldos en el laboratorio de Jalpa'),
(651, 'MTTO EQUIPO COMPUTO CONTABILIDAD', 'Egreso', 'Mantenimiento de equipos de cómputo en el área de contabilidad'),
(652, 'CONSUMIBLES CONTABILIDAD', 'Egreso', 'Gastos de consumibles en el área de contabilidad'),
(653, 'MTTO EDIFICIO ULTRASONIDO', 'Egreso', 'Gastos de mantenimiento del edificio de ultrasonido'),
(654, 'UNIFORMES CUPILCO', 'Egreso', 'Gastos de uniformes en Cupilco'),
(655, 'SUELDO FISCAL PARAISO LAB', 'Egreso', 'Gastos de sueldos fiscales en el laboratorio de Paraíso'),
(656, 'TELEFONIA MOVIL FISCAL', 'Egreso', 'Gastos de telefonía móvil fiscal'),
(657, 'RENTA COMALCALCO IMAGEN', 'Egreso', 'Gastos de renta en el área de imagen en Comalcalco'),
(658, 'PRESTAMO TELMEX LABORATORIO', 'Egreso', 'Gastos de préstamo Telmex en el laboratorio'),
(659, 'TELEFONOS DE MEXICO FISCAL', 'Egreso', 'Gastos de servicios de Teléfonos de México fiscal'),
(660, 'SUELDO FISCAL RADIOLOGO COMALCALCO', 'Egreso', 'Gastos de sueldos fiscales para radiólogos en Comalcalco'),
(661, 'INTERNET MARKETING', 'Egreso', 'Gastos de internet en el área de marketing'),
(662, 'PAPELERIA RAYOS X', 'Egreso', 'Gastos de papelería en el área de rayos X'),
(663, 'SUELDO FISCAL ADMON', 'Egreso', 'Gastos de sueldos fiscales en el área administrativa'),
(664, 'INSUMOS RECEPCION TECO', 'Egreso', 'Gastos de insumos en la recepción de Teco'),
(665, 'SUELDO FISCAL TECO LAB', 'Egreso', 'Gastos de sueldos fiscales en el laboratorio de Teco'),
(666, 'INCENTIVO DRS PARAISO IMAGEN', 'Egreso', 'Incentivos para doctores en el área de imagen en Paraíso'),
(667, 'SUELDO FISCAL FACTOR HUMANO', 'Egreso', 'Gastos de sueldos fiscales en el área de factor humano'),
(668, 'PAPELERIA USG', 'Egreso', 'Gastos de papelería en el área de ultrasonido'),
(669, 'LUZ RX PARAISO', 'Egreso', 'Gastos de luz en el área de rayos X en Paraíso'),
(670, 'FESTIVIDADES USG', 'Egreso', 'Gastos de festividades en el área de ultrasonido'),
(671, 'MTTO EDIFICIO RECEPCION', 'Egreso', 'Gastos de mantenimiento del edificio en recepción'),
(672, 'PAPELERIA ADMON', 'Egreso', 'Gastos de papelería en el área administrativa'),
(673, 'FESTIVIDADES ALDAMA', 'Egreso', 'Gastos de festividades en Aldama'),
(674, 'VACACIONES RX', 'Egreso', 'Gastos de vacaciones en el área de rayos X'),
(675, 'TRASLADO M. SOYATACO', 'Egreso', 'Gastos de traslado en Soyataco'),
(676, 'SUELDO FISCAL RX MATRIZ', 'Egreso', 'Gastos de sueldos fiscales en el área de rayos X en matriz'),
(677, 'GASOLINA PARAISO RX', 'Egreso', 'Gastos de gasolina en el área de rayos X en Paraíso'),
(678, 'PAPELERIA PARAISO RECEPCION', 'Egreso', 'Gastos de papelería en la recepción de Paraíso'),
(679, 'SUELDO ADMON', 'Egreso', 'Gastos de sueldos en el área administrativa'),
(680, 'SUELDO RAYOS X MATRIX', 'Egreso', 'Gastos de sueldos en el área de rayos X en matriz'),
(681, 'SUELDO SERVICIOS GENERALES', 'Egreso', 'Gastos de sueldos en servicios generales'),
(682, 'SUELDO CONTABILIDAD', 'Egreso', 'Gastos de sueldos en el área de contabilidad'),
(683, 'SUELDO FACTOR HUMANO', 'Egreso', 'Gastos de sueldos en el área de factor humano'),
(684, 'SUELDO RECEPCION', 'Egreso', 'Gastos de sueldos en la recepción'),
(685, 'MTTO EDIFICIO PARAISO RX', 'Egreso', 'Gastos de mantenimiento del edificio en el área de rayos X en Paraíso'),
(686, 'GASOLINA MARKETING', 'Egreso', 'Gastos de gasolina en el área de marketing'),
(687, 'PAPELERIA RECEPCION', 'Egreso', 'Gastos de papelería en recepción'),
(688, 'SUELDO PARAISO USG', 'Egreso', 'Gastos de sueldos en el área de ultrasonido en Paraíso'),
(689, 'INCENTIVO DRS LAB PARAISO', 'Egreso', 'Incentivos para doctores en el laboratorio de Paraíso'),
(690, 'MTTO INNOV Y TEC ALDAMA', 'Egreso', 'Gastos de mantenimiento en innovación y tecnología en Aldama'),
(691, 'DEPRECIACION EQUIPO RX PARAISO', 'Egreso', 'Depreciación de equipos de rayos X en Paraíso'),
(692, 'SUELDO MERCADOTECNIA', 'Egreso', 'Gastos de sueldos en el área de mercadotecnia'),
(693, 'CONSUMIBLES LAB TECOLUTILLA', 'Egreso', 'Gastos de consumibles en el laboratorio de Tecolutilla'),
(694, 'SUELDO GERENCIA', 'Egreso', 'Gastos de sueldos en el área de gerencia'),
(695, 'PAPELERIA RECEPCION TECO', 'Egreso', 'Gastos de papelería en la recepción de Teco'),
(696, 'PAPELERIA CONTABILIDAD', 'Egreso', 'Gastos de papelería en el área de contabilidad'),
(697, 'MAT LIMPIEZA RECEPCION ALDAMA', 'Egreso', 'Gastos de materiales de limpieza en la recepción de Aldama'),
(698, 'UNIFORMES PARAISO LAB', 'Egreso', 'Gastos de uniformes en el laboratorio de Paraíso'),
(699, 'TELCEL CONTABILIDAD', 'Egreso', 'Gastos de telefonía móvil en el área de contabilidad'),
(700, 'AJUSTE AL NETO', 'Egreso', 'Ajuste contable al neto'),
(701, 'BONO CONTINGENCIA', 'Egreso', 'Bonos otorgados por contingencias'),
(702, 'TELMEX LABORATORIO FISCAL', 'Egreso', 'Gastos de Telmex en el laboratorio fiscal'),
(703, 'SUBSIDIO AL EMPLEO TECOLUTILLA', 'Egreso', 'Subsidios al empleo en Tecolutilla'),
(704, 'CONSUMIBLES USG MATRIZ', 'Egreso', 'Gastos de consumibles en el área de ultrasonido en matriz'),
(705, 'CONSUMIBLES RECEPCION', 'Egreso', 'Gastos de consumibles en recepción'),
(706, 'MAT LIMPIEZA PARAISO RX', 'Egreso', 'Gastos de materiales de limpieza en el área de rayos X en Paraíso'),
(707, 'SUELDO FISCAL MASTOGRAFIA', 'Egreso', 'Gastos de sueldos fiscales en el área de mastografía'),
(708, 'MAT LIMPIEZA PARAISO RECEPCION', 'Egreso', 'Gastos de materiales de limpieza en la recepción de Paraíso'),
(709, 'SUELDOS FISCAL LABORATORIO', 'Egreso', 'Gastos de sueldos fiscales en el laboratorio'),
(710, 'MAT LIMPIEZA RECEPCION TECO', 'Egreso', 'Gastos de materiales de limpieza en la recepción de Teco'),
(711, 'SUELDO ASIMILABLE', 'Egreso', 'Gastos de sueldos asimilables'),
(712, 'VACACIONES NICOLAS BRAVO', 'Egreso', 'Gastos de vacaciones en Nicolás Bravo'),
(713, 'CONSUMIBLES ADMON', 'Egreso', 'Gastos de consumibles en el área administrativa'),
(714, 'RENTA COMALCALCO RX', 'Egreso', 'Gastos de renta en el área de rayos X en Comalcalco'),
(715, 'PAPELERIA RECEPCION ALDAMA', 'Egreso', 'Gastos de papelería en la recepción de Aldama'),
(716, 'FACTURACION', 'Egreso', 'Gastos relacionados con facturación'),
(717, 'CONSUMIBLES ALDAMA RECEPCION', 'Egreso', 'Gastos de consumibles en la recepción de Aldama'),
(718, 'COMISION DRS CUPILCO', 'Egreso', 'Comisiones para doctores en Cupilco'),
(719, 'MAQ. PATOLOGA CARLOS GREEN', 'Egreso', 'Gastos de maquinaria para patología en Carlos Green'),
(720, 'MTTO EQUIPOS LAB. TECO', 'Egreso', 'Gastos de mantenimiento de equipos en el laboratorio de Teco'),
(721, 'MAQUILA BIOPSIAS IMAGEN', 'Egreso', 'Gastos de maquila de biopsias en el área de imagen'),
(722, 'MAT LIMPIEZA ADMON', 'Egreso', 'Gastos de materiales de limpieza en el área administrativa'),
(723, 'MAQ. PATOLOGA SOYATACO', 'Egreso', 'Gastos de maquinaria para patología en Soyataco'),
(724, '% BIOPSIAS IMAGEN', 'Egreso', 'Porcentaje asociado a biopsias en el área de imagen'),
(725, 'MTTO CLIMAS TECO LAB.', 'Egreso', 'Gastos de mantenimiento de climas en el laboratorio de Teco'),
(726, 'INCENTIVO DRS TECO LAB.', 'Egreso', 'Incentivos para doctores en el laboratorio de Teco'),
(727, 'COMISION DRS TECO IMAGEN', 'Egreso', 'Comisiones para doctores en el área de imagen en Teco'),
(728, 'VIGILANCIA', 'Egreso', 'Gastos relacionados con servicios de vigilancia'),
(729, 'COMISION DRS HIDALGO', 'Egreso', 'Comisiones para doctores en Hidalgo'),
(730, 'CERTIFICACION', 'Egreso', 'Gastos relacionados con certificaciones'),
(731, 'COMISION DRS ALDAMA', 'Egreso', 'Comisiones para doctores en Aldama'),
(732, 'MTTO EDIFICIO PARAISO LAB.', 'Egreso', 'Gastos de mantenimiento del edificio en el laboratorio de Paraíso'),
(733, 'BONO CUMPLEAÑOS', 'Egreso', 'Bonos otorgados por cumpleaños'),
(734, 'INCENTIVO DRS LABORATORIO', 'Egreso', 'Incentivos para doctores en el laboratorio'),
(735, 'REACTIVOS LABORATORIO', 'Egreso', 'Gastos de reactivos en el laboratorio'),
(736, 'MAT LIMPIEZA RAYOS X MATRIZ', 'Egreso', 'Gastos de materiales de limpieza en el área de rayos X en matriz'),
(737, 'SUELDO EL BELLOTE', 'Egreso', 'Gastos de sueldos en El Bellote'),
(738, 'DEPRECIACION EQUIPOS LABORATORIO', 'Egreso', 'Depreciación de equipos en el laboratorio'),
(739, 'INSUMOS LAB PARAISO', 'Egreso', 'Gastos de insumos en el laboratorio de Paraíso'),
(740, 'DEPRECIACION EQUIPO RX TECOLUTILLA', 'Egreso', 'Depreciación de equipos de rayos X en Tecolutilla'),
(741, 'COMISION DRS PARAISO IMAGEN', 'Egreso', 'Comisiones para doctores en el área de imagen en Paraíso'),
(742, 'SUELDO LIMPIEZA', 'Egreso', 'Gastos de sueldos en el área de limpieza'),
(743, 'SUELDO PARAISO RAYOS X', 'Egreso', 'Gastos de sueldos en el área de rayos X en Paraíso'),
(744, 'CONSUMIBLES RECEP PARAISO', 'Egreso', 'Gastos de consumibles en la recepción de Paraíso'),
(745, 'CONSUMIBLES PARAISO RX', 'Egreso', 'Gastos de consumibles en el área de rayos X en Paraíso'),
(746, 'INSUMOS RECEPCION ALDAMA', 'Egreso', 'Gastos de insumos en la recepción de Aldama'),
(747, 'INSUMOS RECEPCION CUPILCO', 'Egreso', 'Gastos de insumos en la recepción de Cupilco'),
(748, 'SUELDO FISCAL RECEPCION', 'Egreso', 'Gastos de sueldos fiscales en recepción'),
(749, 'SUELDO DR ANGEL A. MTZ', 'Egreso', 'Gastos de sueldos del Dr. Ángel A. Martínez'),
(750, 'INSUMOS RECEPCION', 'Egreso', 'Gastos de insumos en recepción'),
(751, 'MTTO EDIFICIO CUPILCO', 'Egreso', 'Gastos de mantenimiento del edificio en Cupilco'),
(752, 'TOMOGRAFIAS', 'Ingreso', 'Ingresos por servicios de tomografías'),
(753, 'SERVICIOS NO ACUMULABLES PARAISO', 'Ingreso', 'Servicios no acumulables ofrecidos en Paraíso'),
(754, 'SERVICIOS NO ACUMULABLES LABORATORIO', 'Ingreso', 'Servicios no acumulables en el laboratorio'),
(755, 'PRODUCTOS FINANCIEROS', 'Ingreso', 'Ingresos provenientes de productos financieros'),
(756, 'INTERESES GANADOS', 'Ingreso', 'Ingresos por intereses generados'),
(757, 'INVERSION A CAPITAL', 'Ingreso', 'Ingresos por aportaciones de capital'),
(758, 'SERVICIOS IMAGENOLOGIA PARAISO', 'Ingreso', 'Ingresos por servicios de imagenología en Paraíso'),
(759, 'SERVICIOS LABORATORIO COMALCALCO', 'Ingreso', 'Ingresos por servicios de laboratorio en Comalcalco'),
(760, 'SERVICIOS LABORATORIO PARAISO', 'Ingreso', 'Ingresos por servicios de laboratorio en Paraíso'),
(761, 'SERVICIOS NO ACUMULABLES TECOLUTILLA', 'Ingreso', 'Servicios no acumulables en Tecolutilla'),
(762, 'SERVICIOS', 'Ingreso', 'Ingresos por servicios generales'),
(763, 'SERVICIOS NO ACUMULABLES', 'Ingreso', 'Ingresos por servicios no acumulables generales'),
(764, 'CTAS POR PAGAR EQUIPO QS', 'Pasivo', 'Cuentas por pagar relacionadas con el equipo QS'),
(765, 'PROVEEDORES', 'Pasivo', 'Cuentas por pagar a proveedores'),
(766, 'CTAS POR PAGAR EQUIPO BH', 'Pasivo', 'Cuentas por pagar relacionadas con el equipo BH'),
(767, 'CREDITO INVERLAT', 'Pasivo', 'Créditos otorgados por Inverlat'),
(768, 'CTA PUENTE', 'Pasivo', 'Cuentas puente para operaciones financieras'),
(769, 'UTILIDAD 2018', 'Pasivo', 'Utilidad generada en el año 2018'),
(770, 'CUENTAS POR PAGAR', 'Pasivo', 'Obligaciones pendientes de pago'),
(771, 'IVA TRASLADADO', 'Pasivo', 'IVA trasladado a clientes'),
(772, 'ACREEDORES DIVERSOS', 'Pasivo', 'Obligaciones con acreedores varios'),
(773, 'PRESTAMO HSBC', 'Pasivo', 'Préstamo obtenido de HSBC'),
(774, 'PRESTAMO BANAMEX', 'Pasivo', 'Préstamo obtenido de Banamex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresodiario`
--

DROP TABLE IF EXISTS `ingresodiario`;
CREATE TABLE IF NOT EXISTS `ingresodiario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_sucursal` int DEFAULT NULL,
  `total_img` decimal(10,2) DEFAULT NULL,
  `total_laboratorio` decimal(10,2) DEFAULT NULL,
  `total_lab_img` decimal(10,2) DEFAULT NULL,
  `monto_dep_trans` decimal(10,2) DEFAULT NULL,
  `monto_terminal` decimal(10,2) DEFAULT NULL,
  `monto_gastos` decimal(10,2) DEFAULT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sucursal_fecha` (`id_sucursal`,`fecha`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `fk_ingresodiario_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingresodiario`
--

INSERT INTO `ingresodiario` (`id`, `fecha`, `id_usuario`, `id_sucursal`, `total_img`, `total_laboratorio`, `total_lab_img`, `monto_dep_trans`, `monto_terminal`, `monto_gastos`, `monto_total`) VALUES
(1, '2024-12-13', 1, 1, 8700.00, 4500.00, 13200.00, 2000.00, 500.00, 1000.00, 9700.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizadetalles`
--

DROP TABLE IF EXISTS `polizadetalles`;
CREATE TABLE IF NOT EXISTS `polizadetalles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_poliza` int DEFAULT NULL,
  `id_cuenta` int DEFAULT NULL,
  `debe` decimal(10,2) NOT NULL,
  `haber` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_poliza` (`id_poliza`),
  KEY `id_cuenta` (`id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `polizadetalles`
--

INSERT INTO `polizadetalles` (`id`, `id_poliza`, `id_cuenta`, `debe`, `haber`) VALUES
(1, 1, 73, 4010.00, 0.00),
(2, 1, 74, 12200.00, 0.00),
(3, 1, 762, 0.00, 10517.24),
(4, 1, 763, 0.00, 4010.00),
(5, 1, 771, 0.00, 1682.76),
(6, 2, 152, 750.00, 0.00),
(7, 2, 318, 50.00, 0.00),
(8, 2, 216, 5.00, 0.00),
(9, 2, 728, 50.00, 0.00),
(10, 2, 73, 0.00, 855.00),
(11, 3, 112, 1680.00, 0.00),
(12, 3, 74, 2700.00, 0.00),
(13, 3, 759, 0.00, 2327.58),
(14, 3, 771, 0.00, 372.42),
(15, 3, 754, 0.00, 1680.00),
(16, 4, 377, 35.00, 0.00),
(17, 4, 396, 540.00, 0.00),
(18, 4, 112, 0.00, 575.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

DROP TABLE IF EXISTS `polizas`;
CREATE TABLE IF NOT EXISTS `polizas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_poliza` enum('Ingreso','Diario','Egreso','Cheques') COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `periodo` varchar(100) COLLATE utf8mb4_general_ci GENERATED ALWAYS AS ((case when (`tipo_poliza` = _utf8mb4'ingresos') then concat(_utf8mb4'POLIZA DE INGRESO DEL 1° AL ',dayofmonth(last_day(`fecha`)),_utf8mb4' DE ',monthname(`fecha`),_utf8mb4' DE ',year(`fecha`)) when (`tipo_poliza` = _utf8mb4'cheques') then concat(_utf8mb4'POLIZA DE CHEQUES DEL 1° AL ',dayofmonth(last_day(`fecha`)),_utf8mb4' DE ',monthname(`fecha`),_utf8mb4' DE ',year(`fecha`)) else concat(_utf8mb4'POLIZA DE DIARIO DEL 1° AL ',dayofmonth(last_day(`fecha`)),_utf8mb4' DE ',monthname(`fecha`),_utf8mb4' DE ',year(`fecha`)) end)) VIRTUAL,
  `concepto` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_codigo_tipo` (`codigo`,`tipo_poliza`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`id`, `codigo`, `tipo_poliza`, `fecha`, `concepto`) VALUES
(1, '0001', 'Ingreso', '2024-11-01', 'Ingresos Imagenología del 1ro de noviembre de 2024, según facturas 27695 a 27703'),
(2, '0001', 'Egreso', '2024-11-01', 'Gastos Imagenología del 1ro de noviembre de 2024'),
(3, '0002', 'Ingreso', '2024-11-01', 'Ingreso laboratorio del 1 noviembre de 2024, según factura 2701 y 2704'),
(4, '0002', 'Egreso', '2024-11-01', 'Gastos Laboratorio del 1 de noviembre de 2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
CREATE TABLE IF NOT EXISTS `presupuesto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cuenta` int DEFAULT NULL,
  `anios` year DEFAULT NULL,
  `monto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cuenta` (`id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presupuesto`
--

INSERT INTO `presupuesto` (`id`, `id_cuenta`, `anios`, `monto`) VALUES
(1, 397, '2024', 12000.00),
(2, 127, '2024', 17104.82);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

DROP TABLE IF EXISTS `servicio`;
CREATE TABLE IF NOT EXISTS `servicio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `id_categoria`) VALUES
(1, 'Ultrasonido', 1),
(2, 'Rayos X', 1),
(3, 'Mastografía', 1),
(4, 'Electrocardiograma', 1),
(5, 'Laboratorio', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_ingreso`
--

DROP TABLE IF EXISTS `servicios_ingreso`;
CREATE TABLE IF NOT EXISTS `servicios_ingreso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ingreso` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ingreso_servicio` (`id_ingreso`,`id_servicio`),
  KEY `id_ingreso` (`id_ingreso`),
  KEY `id_servicio` (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios_ingreso`
--

INSERT INTO `servicios_ingreso` (`id`, `id_ingreso`, `id_servicio`, `monto`) VALUES
(1, 1, 1, 2500.00),
(2, 1, 2, 3000.00),
(3, 1, 3, 2000.00),
(4, 1, 4, 1200.00),
(5, 1, 5, 4500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ubicación` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `nombre`, `ubicación`) VALUES
(1, 'Matriz', 'CALLE SANCHEZ MARMOL 132\r\nCOL. CENTRO COMALCALCO TABASCO'),
(2, 'Paraiso', 'Comonfort 109, El Carmen, 86600 Paraíso Tab'),
(3, 'Tecolutilla', 'Calle Hidalgo s/n casi Esq. con Aldama, Ciudad Tecolutilla'),
(4, ' Villa Aldama', 'Calle Francisco I Madero esq. con Rosendo taracena cerca del Parque central en Villa Aldama'),
(5, 'Jalpa de Méndez', 'Calle José María Morelos, San Luis, 86200 Jalpa de Méndez, Tab.'),
(6, 'Cupilco', 'Cupilco'),
(7, 'Huimanguillo', 'Huimanguillo'),
(8, 'Carlos Greene', 'Carlos Greene'),
(9, 'Hidalgo', 'Hidalgo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contraseña`, `rol`) VALUES
(1, 'Carlos', 'scrypt:32768:8:1$XaGuQv6KW6l2K40s$d0e845ab387a5a1c5e27ea7fd70a79b0908d369ff7db86e6de923fcb6b2b8ec8222bd59b3b61bfda0b028610652b6f4bb6088c82a6f02f4b85fbd36c8ebb1f89', 'Admin'),
(3, 'Fidel', 'scrypt:32768:8:1$jgq4og4SMCgddP37$b40ea43981107f9fd58a5fc86ee9ab2fe2be50c907659ca6d9cb018da1d01d12bff52d4f3fe8e8974e293eac00af028f9600ec736f1a26222a11aad6cc054404', 'Admin'),
(4, 'Victor', 'scrypt:32768:8:1$yw4piarel4F6Ohu0$5078e29ae910d526619c55fd1357b20161f07c1aff3d1563f0bdae4724e341ec92c7e7147e2f8e0edf9b1b65524a432319030e218b792a908b356686c6ee01b8', 'Usuario');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingresodiario`
--
ALTER TABLE `ingresodiario`
  ADD CONSTRAINT `fk_ingresodiario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `ingresodiario_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `polizadetalles`
--
ALTER TABLE `polizadetalles`
  ADD CONSTRAINT `polizadetalles_ibfk_1` FOREIGN KEY (`id_poliza`) REFERENCES `polizas` (`id`),
  ADD CONSTRAINT `polizadetalles_ibfk_2` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id`);

--
-- Filtros para la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD CONSTRAINT `fk_cuenta_presupuesto` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `presupuesto_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoría` (`id`);

--
-- Filtros para la tabla `servicios_ingreso`
--
ALTER TABLE `servicios_ingreso`
  ADD CONSTRAINT `servicios_ingreso_ibfk_1` FOREIGN KEY (`id_ingreso`) REFERENCES `ingresodiario` (`id`),
  ADD CONSTRAINT `servicios_ingreso_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
