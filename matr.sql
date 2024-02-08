-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla matricula.tb_canton
CREATE TABLE IF NOT EXISTS `tb_canton` (
  `id_canton` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCanton` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_canton`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla matricula.tb_canton: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_canton` DISABLE KEYS */;
INSERT INTO `tb_canton` (`id_canton`, `NombreCanton`) VALUES
	(1, 'Guayaquil'),
	(2, 'Alfredo Baquerizo Moreno'),
	(3, 'Balao'),
	(4, 'Balzar'),
	(5, 'Colimes'),
	(6, 'Daule'),
	(7, 'Durán'),
	(8, 'El Empalme'),
	(9, 'El Triunfo'),
	(10, 'Antonio Elizalde (Bucay)'),
	(11, 'Isidro Ayora'),
	(12, 'Lomas de Sargentillo'),
	(13, 'Marcelino Maridueña'),
	(14, 'Milagro'),
	(15, 'Naranjal'),
	(16, 'Naranjito'),
	(17, 'Nobol'),
	(18, 'Palestina'),
	(19, 'Pedro Carbo'),
	(20, 'Playas'),
	(21, 'Salitre'),
	(22, 'Samborondón'),
	(23, 'Santa Lucía'),
	(24, 'Simón Bolivar'),
	(25, 'Yaguachi');
/*!40000 ALTER TABLE `tb_canton` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_docente
CREATE TABLE IF NOT EXISTS `tb_docente` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_apellidos` varchar(100) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_docente: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_docente` DISABLE KEYS */;
INSERT INTO `tb_docente` (`id_docente`, `nombre_apellidos`, `celular`, `correo`, `fecha_registro`, `estado`) VALUES
	(1, 'marcos jose abab', '0934930923', 'docenteu@gmail.com', '2023-05-07', 1),
	(3, 'steven mediaolaza', '023920932', 'jesua3020@gmail.com', '2023-05-24', 1),
	(4, 'jose carlos ', '2398293923', 'jesua3020@gmail.com', '2023-05-11', 1),
	(6, 'matxoa jose jabier', '767778', 'sr.mindiolaza@gmail.com', '2023-06-14', 1);
/*!40000 ALTER TABLE `tb_docente` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_estudiantes
CREATE TABLE IF NOT EXISTS `tb_estudiantes` (
  `id_estudiantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(10) DEFAULT NULL,
  `cedula` varchar(11) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tipo_sangre` varchar(50) DEFAULT NULL,
  `id_canton` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `Nombres_repre` varchar(50) DEFAULT NULL,
  `apellidos_repre` varchar(50) DEFAULT NULL,
  `telefono_emer` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(300) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  `id_tipo_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estudiantes`),
  KEY `FK_tb_estudiantes_tb_canton` (`id_canton`),
  KEY `FK_tb_estudiantes_tb_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `FK_tb_estudiantes_tb_canton` FOREIGN KEY (`id_canton`) REFERENCES `tb_canton` (`id_canton`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_estudiantes_tb_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tb_tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla matricula.tb_estudiantes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_estudiantes` DISABLE KEYS */;
INSERT INTO `tb_estudiantes` (`id_estudiantes`, `nombres`, `apellidos`, `cedula`, `telefono`, `correo`, `fecha_nacimiento`, `tipo_sangre`, `id_canton`, `direccion`, `Nombres_repre`, `apellidos_repre`, `telefono_emer`, `usuario`, `clave`, `fecha_registro`, `codigo`, `estado`, `id_tipo_usuario`) VALUES
	(61, 'jose marcos', 'martines m', '0920909322', '0930902232', 'facilitador@gmail.com', '2023-10-04', '0+@gmai.com', 14, 'de por ha ', 'maros', 'martines marcos', '09099099', 'josemmarcos', '$2y$10$N/o/wXiqUuM8aWfJy6mDP.kaXJRoa46zOMMkPwwmMMx1PjNHPBwMi', '2023-10-04', 'MAT01', 0, 2),
	(63, 'naomi anchundia ', 'cedee lope', '0987654321', '0932903093', 'jesua3020@gmail.com', '2023-10-19', '0+', 12, 'kjhbjhbkj', 'maros', 'martines marcos', '8778878', 'estude', '$2y$10$bQpYiTTNLreuei8SvPGbT.kL6INlL6nLGcd2HyLWnPJwDquuQFK7y', '2023-10-11', 'MAT062', 1, 2),
	(64, 'rosa', 'cedee lope', '09238333223', '0932903093', 'facilitador@gmail.com', '2023-10-16', '0+', 16, 'skmkas', 'marcos', 'martines marcos', '0939932', 'rosa', '$2y$10$cGY.6xoxGjb/Z5Pto1psoOZPUIvOQQniw98X2RUDvo3nXiha7meLe', '2023-10-04', 'MAT064', 1, 2);
/*!40000 ALTER TABLE `tb_estudiantes` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_grado
CREATE TABLE IF NOT EXISTS `tb_grado` (
  `id_grado` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_grado: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_grado` DISABLE KEYS */;
INSERT INTO `tb_grado` (`id_grado`, `codigo`, `nombre`, `fecha_registro`) VALUES
	(1, '1BAC405', '1 Bachilderato', '2023-10-04'),
	(2, '9BGU661', '9 bgu', '2023-06-13'),
	(6, '3BAC279', '3 bachillerato', '2023-10-12');
/*!40000 ALTER TABLE `tb_grado` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_jornadas
CREATE TABLE IF NOT EXISTS `tb_jornadas` (
  `id_jornadas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id_jornadas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla matricula.tb_jornadas: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_jornadas` DISABLE KEYS */;
INSERT INTO `tb_jornadas` (`id_jornadas`, `descripcion`, `estado`) VALUES
	(1, 'matutina', '1'),
	(2, 'vespertina', '1'),
	(3, 'virtual', '1');
/*!40000 ALTER TABLE `tb_jornadas` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_materia
CREATE TABLE IF NOT EXISTS `tb_materia` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_materia: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_materia` DISABLE KEYS */;
INSERT INTO `tb_materia` (`id_materia`, `codigo`, `nombre`, `fecha`) VALUES
	(1, 'LENG807', 'lenguaje y literatura', '2023-06-13'),
	(3, 'ESTU918', 'estudio socilaes', '2023-06-13'),
	(5, 'MATE365', 'matematica', '2023-06-13'),
	(6, 'INGL471', 'ingles', '2023-06-13'),
	(7, 'INFO201', 'informatica', '2023-06-13'),
	(8, 'QUIM202', 'quimica', '2023-06-21');
/*!40000 ALTER TABLE `tb_materia` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_matricula
CREATE TABLE IF NOT EXISTS `tb_matricula` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiantes` int(11) DEFAULT NULL,
  `id_paralelo` int(11) DEFAULT NULL,
  `id_jornadas` int(11) DEFAULT NULL,
  `id_periodo` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `fecha_matricula` date DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  PRIMARY KEY (`id_matricula`),
  KEY `FK_tb_matricula_tb_estudiantes` (`id_estudiantes`),
  KEY `FK_tb_matricula_tb_paralelo` (`id_paralelo`),
  KEY `FK_tb_matricula_tb_jornadas` (`id_jornadas`),
  KEY `FK_tb_matricula_tb_periodoelectivo` (`id_periodo`),
  KEY `FK_tb_matricula_tb_grado` (`id_grado`),
  CONSTRAINT `FK_tb_matricula_tb_estudiantes` FOREIGN KEY (`id_estudiantes`) REFERENCES `tb_estudiantes` (`id_estudiantes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_matricula_tb_grado` FOREIGN KEY (`id_grado`) REFERENCES `tb_grado` (`id_grado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_matricula_tb_jornadas` FOREIGN KEY (`id_jornadas`) REFERENCES `tb_jornadas` (`id_jornadas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_matricula_tb_paralelo` FOREIGN KEY (`id_paralelo`) REFERENCES `tb_paralelo` (`id_paralelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_matricula_tb_periodoelectivo` FOREIGN KEY (`id_periodo`) REFERENCES `tb_periodoelectivo` (`id_periodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_matricula: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_matricula` DISABLE KEYS */;
INSERT INTO `tb_matricula` (`id_matricula`, `id_estudiantes`, `id_paralelo`, `id_jornadas`, `id_periodo`, `id_grado`, `codigo`, `fecha_matricula`, `estado`) VALUES
	(3, 61, 3, 2, 1, 2, 'MAT01', '2023-10-05', 1),
	(4, 63, 3, 3, 4, 2, 'MAT062', '2023-10-06', 1),
	(5, 64, 3, 2, 4, 2, 'MAT064', '2023-10-06', 1);
/*!40000 ALTER TABLE `tb_matricula` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_notas
CREATE TABLE IF NOT EXISTS `tb_notas` (
  `id_notas` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiantes` int(11) DEFAULT 0,
  `id_docente` int(11) DEFAULT 0,
  `id_materia` int(11) DEFAULT NULL,
  `nota_par1` decimal(20,2) DEFAULT NULL,
  `nota_par2` decimal(20,2) DEFAULT NULL,
  `nota_par3` decimal(20,2) DEFAULT NULL,
  `nota_examen` decimal(20,2) DEFAULT NULL,
  `nota_finQui` decimal(20,2) DEFAULT NULL,
  `nota_par1q2` decimal(20,2) NOT NULL DEFAULT 0.00,
  `nota_par2q2` decimal(20,2) NOT NULL DEFAULT 0.00,
  `nota_par3q2` decimal(20,2) NOT NULL DEFAULT 0.00,
  `nota_examen2` decimal(20,2) NOT NULL DEFAULT 0.00,
  `nota_fin2qui` decimal(20,2) NOT NULL DEFAULT 1.00,
  `nota_final2q` decimal(20,2) NOT NULL DEFAULT 0.00,
  `id_periodo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `FK_tb_notas_tb_estudiantes` (`id_estudiantes`),
  KEY `FK_tb_notas_tb_docente` (`id_docente`),
  KEY `FK_tb_notas_tb_materia` (`id_materia`),
  KEY `FK_tb_notas_tb_periodoelectivo` (`id_periodo`),
  CONSTRAINT `FK_tb_notas_tb_docente` FOREIGN KEY (`id_docente`) REFERENCES `tb_docente` (`id_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_notas_tb_estudiantes` FOREIGN KEY (`id_estudiantes`) REFERENCES `tb_estudiantes` (`id_estudiantes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_notas_tb_materia` FOREIGN KEY (`id_materia`) REFERENCES `tb_materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tb_notas_tb_periodoelectivo` FOREIGN KEY (`id_periodo`) REFERENCES `tb_periodoelectivo` (`id_periodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_notas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_notas` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_pagos
CREATE TABLE IF NOT EXISTS `tb_pagos` (
  `id_pagos` int(11) NOT NULL AUTO_INCREMENT,
  `id_matricula` int(11) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pagos`),
  KEY `FK_tb_pagos_tb_matricula` (`id_matricula`),
  CONSTRAINT `FK_tb_pagos_tb_matricula` FOREIGN KEY (`id_matricula`) REFERENCES `tb_matricula` (`id_matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_pagos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_pagos` DISABLE KEYS */;
INSERT INTO `tb_pagos` (`id_pagos`, `id_matricula`, `total`, `fecha_registro`, `estado`) VALUES
	(4, 4, 45.00, '2023-10-06', 1),
	(5, 4, 23.00, '2023-10-06', 1),
	(6, 5, 21.00, '2023-10-06', 1),
	(7, 5, 33.00, '2023-10-12', 1);
/*!40000 ALTER TABLE `tb_pagos` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_paralelo
CREATE TABLE IF NOT EXISTS `tb_paralelo` (
  `id_paralelo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_paralelo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_paralelo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_paralelo` DISABLE KEYS */;
INSERT INTO `tb_paralelo` (`id_paralelo`, `descripcion`) VALUES
	(1, 'A'),
	(2, 'B'),
	(3, 'C');
/*!40000 ALTER TABLE `tb_paralelo` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_periodoelectivo
CREATE TABLE IF NOT EXISTS `tb_periodoelectivo` (
  `id_periodo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla matricula.tb_periodoelectivo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_periodoelectivo` DISABLE KEYS */;
INSERT INTO `tb_periodoelectivo` (`id_periodo`, `descripcion`, `fecha`) VALUES
	(1, '|| PERIDO ELECTRIVO 2020-2021', '2023-10-04'),
	(2, '|| PERIDO ELECTRIVO 2021-2022', '2023-10-04'),
	(4, '|| PERIDO ELECTRIVO 2021-2023', '2023-10-04');
/*!40000 ALTER TABLE `tb_periodoelectivo` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_tipo_usuario
CREATE TABLE IF NOT EXISTS `tb_tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla matricula.tb_tipo_usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_tipo_usuario` DISABLE KEYS */;
INSERT INTO `tb_tipo_usuario` (`id_tipo_usuario`, `descripcion`, `estado`) VALUES
	(1, 'Admin', 1),
	(2, 'Estudiante', 1),
	(3, 'Secretaria', 1);
/*!40000 ALTER TABLE `tb_tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla matricula.tb_usuario
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `clave` varchar(300) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_tipo_usuario` int(11) DEFAULT 1,
  `estado` int(11) DEFAULT 1,
  PRIMARY KEY (`id_usuario`),
  KEY `FK_tb_usuario_tb_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `FK_tb_usuario_tb_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tb_tipo_usuario` (`id_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla matricula.tb_usuario: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` (`id_usuario`, `nombre`, `usuario`, `correo`, `clave`, `fecha`, `id_tipo_usuario`, `estado`) VALUES
	(77, 'admin', 'admin', 'admin@gmail.com', '$2y$10$wGA0b6sJKrfPK3Wc26zwA.RMuguGP2di7Xohm/TTDPgmL4rQInY9S', '2022-08-13', 1, 1),
	(87, 'admin', '0873651427', 'jesua3020@gmail.com', '$2y$10$UVXGgk2b9857bzoA8.JT4uIg0DDPRn26n0vomKMj17DPYDAj5lvbu', '2023-03-02', 2, 1),
	(89, 'dssds', '0873651427', 'jonathanlopez3020@gmail.com', '$2y$10$Csd4KoNmWLt/2ZaqCRSiAOvdQOXRJtoV4BjRVOe0nFzH8o/ZWsCy.', '2023-03-02', 2, 1),
	(90, 'jonathan', '0929979938', 'jonathanlopez3020@hotmail.com', '$2y$10$g26MvMyEz4ivKB5Xs3VSCu7idC9xwmsj6P7a8Fp7n/8XSs8u9iCme', '2023-03-02', 2, 1),
	(93, 'docente', 'docente', 'jesua3020@gmail.com', '$2y$10$9D25jI8I8OEQw.xO1Mlw/OzsaRLlQr0fCXesvJ6Gs.rytGAPV3ZAa', '2023-05-09', 3, 1),
	(107, 'jose', 'secrete', 'jesua3020@gmail.com', '$2y$10$smSK0hWokOyxdHkGHWK.oe2GNEZ62RqAfKsCW6smSUpBmZCIk3Sgi', '2023-10-11', 3, 1);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
