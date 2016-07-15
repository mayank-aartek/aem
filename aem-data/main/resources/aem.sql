/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.23 : Database - aem_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aem_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aem_test`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) NOT NULL,
  `ENCRYPTED` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `LOGIN_ROLE_ID` int(11) NOT NULL,
  `IS_DELETED` int(11) NOT NULL,
  `CREATION_TIME` timestamp NULL DEFAULT NULL,
  `UPDATION_TIME` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_login` (`LOGIN_ROLE_ID`),
  CONSTRAINT `FK_login` FOREIGN KEY (`LOGIN_ROLE_ID`) REFERENCES `user_admin_role` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`ID`,`EMAIL`,`ENCRYPTED`,`PASSWORD`,`LOGIN_ROLE_ID`,`IS_DELETED`,`CREATION_TIME`,`UPDATION_TIME`) values (7,'sdeep.mathur@gmail.com',NULL,'12345',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'sdeep.mathur@gmail.com',NULL,'123',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'sdeep.mathur@gmail.com',NULL,'87543856',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'sdeep.mathur@gmail.com',NULL,'87543856',2,0,NULL,'0000-00-00 00:00:00'),(11,'sdeep.mathur@gmail.com',NULL,'87543856',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'sdeep.mathur@gmail.com',NULL,'87543856',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'sdeep.mathur@gmail.com',NULL,'87543856',2,0,'2016-07-15 14:34:55','0000-00-00 00:00:00');

/*Table structure for table `user_admin_role` */

DROP TABLE IF EXISTS `user_admin_role`;

CREATE TABLE `user_admin_role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_admin_role` */

insert  into `user_admin_role`(`ROLE_ID`,`ROLE`) values (1,'admin'),(2,'employee');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
