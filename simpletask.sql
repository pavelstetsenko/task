/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 5.6.21 : Database - simpletask
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `api_users` */

DROP TABLE IF EXISTS `api_users`;

CREATE TABLE `api_users` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `pwd` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `api_users` */

insert  into `api_users`(`id`,`username`,`pwd`) values 
(1,'asd','asd'),
(2,'qwe','qwe');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `students` */

insert  into `students`(`id`,`name`,`identity`) values 
(1,'kctest00202','Bernardo Santini'),
(2,'kctest00213','George Quebedo'),
(3,'kctest00208','Rob Shnneider'),
(4,'kctest00209','David Smith'),
(5,'kctest00210','Josef George'),
(6,'kctest00211','Daniel Kienl'),
(7,'kctest00252','Robert Albert'),
(8,'kctest00223','Roewell Goris'),
(9,'kctest00321','Dinela Weksler'),
(10,'kctest00256','Mark Aran'),
(11,'kctest00267','Alexsander Novikov'),
(12,'kctest00312','Arnauld Brown'),
(13,'kctest00378','John Riepple');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
