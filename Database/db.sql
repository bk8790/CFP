/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - computerizedfee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`computerizedfee` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `computerizedfee`;

/*Table structure for table `bookinfo` */

DROP TABLE IF EXISTS `bookinfo`;

CREATE TABLE `bookinfo` (
  `stdntnm` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `booknm` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `adrs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `feedetails` */

DROP TABLE IF EXISTS `feedetails`;

CREATE TABLE `feedetails` (
  `feeid` int(10) NOT NULL AUTO_INCREMENT,
  `feetype` varchar(500) DEFAULT NULL,
  `cost` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`feeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `library` */

DROP TABLE IF EXISTS `library`;

CREATE TABLE `library` (
  `bkid` int(10) NOT NULL AUTO_INCREMENT,
  `bkname` varchar(500) DEFAULT NULL,
  `rent` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`bkid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `paymentinfo` */

DROP TABLE IF EXISTS `paymentinfo`;

CREATE TABLE `paymentinfo` (
  `stdntnm` varchar(500) DEFAULT NULL,
  `htno` varchar(500) DEFAULT NULL,
  `feetype` varchar(500) DEFAULT NULL,
  `cost` varchar(500) DEFAULT NULL,
  `dt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `name` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `passwrd` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `adrs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tcinfo` */

DROP TABLE IF EXISTS `tcinfo`;

CREATE TABLE `tcinfo` (
  `stdntnm` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `adrs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
