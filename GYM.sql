/*
SQLyog Community Edition- MySQL GUI v7.02 
MySQL - 5.0.45-community-nt-log : Database - ixtapapalacegym
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ixtapapalacegym` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ixtapapalacegym`;

/*Table structure for table `c_datoscontacto` */

DROP TABLE IF EXISTS `c_datoscontacto`;

CREATE TABLE `c_datoscontacto` (
  `IDCliente` int(11) NOT NULL,
  `Telefono` varchar(15) default NULL,
  `email` varchar(100) default NULL,
  `ContactoEmergencia` varchar(100) default NULL,
  `NumEmergencia` varchar(100) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `c_datoscontacto` */

/*Table structure for table `c_datosgenerales` */

DROP TABLE IF EXISTS `c_datosgenerales`;

CREATE TABLE `c_datosgenerales` (
  `IDCliente` int(11) NOT NULL auto_increment,
  `Nombre` varchar(100) default NULL,
  `Apellidos` varchar(100) default NULL,
  `genero` varchar(20) default NULL,
  `foto` blob,
  PRIMARY KEY  (`IDCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `c_datosgenerales` */

/*Table structure for table `c_datosmedicos` */

DROP TABLE IF EXISTS `c_datosmedicos`;

CREATE TABLE `c_datosmedicos` (
  `IDCliente` int(11) NOT NULL,
  `servcio` varchar(100) NOT NULL,
  `FolioMedico` varchar(100) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `estatura` decimal(10,2) NOT NULL,
  `tiposangre` varchar(10) NOT NULL,
  `enfermedades` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `c_datosmedicos` */

/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `IDEmpleado` smallint(6) default NULL,
  `Nombre` varchar(200) default NULL,
  `Apellidos` varchar(200) default NULL,
  `Direccion` varchar(200) default NULL,
  `Ciudad` varchar(200) default NULL,
  `FechaNacimiento` date default NULL,
  `Telefono` varchar(15) default NULL,
  `FechaContratacion` datetime default NULL,
  `Puesto` int(11) default NULL,
  `Cobro` decimal(8,2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `empleados` */

/*Table structure for table `precios` */

DROP TABLE IF EXISTS `precios`;

CREATE TABLE `precios` (
  `IDPrecio` int(11) NOT NULL auto_increment,
  `Descripcion` varchar(100) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Precio` decimal(10,2) default NULL,
  PRIMARY KEY  (`IDPrecio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `precios` */

/*Table structure for table `puestos` */

DROP TABLE IF EXISTS `puestos`;

CREATE TABLE `puestos` (
  `IDPuesto` int(11) NOT NULL auto_increment,
  `Descripcion` varchar(100) NOT NULL,
  `SalarioDia` decimal(10,2) NOT NULL,
  `SalarioHora` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`IDPuesto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `puestos` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `IDUser` int(11) NOT NULL auto_increment,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `TipoUsuario` varchar(100) NOT NULL,
  PRIMARY KEY  (`IDUser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
