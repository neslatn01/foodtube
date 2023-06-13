/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.3.20-MariaDB : Database - foodie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`foodie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `foodie`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values (1,'admin','admin','admin'),(2,'san','san','user');

/*Table structure for table `recipy` */

DROP TABLE IF EXISTS `recipy`;

CREATE TABLE `recipy` (
  `recipy_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `incredints` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `video` varchar(2000) DEFAULT NULL,
  `additional_dtls` varchar(100) DEFAULT NULL,
  `diet_mode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`recipy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `recipy` */

insert  into `recipy`(`recipy_id`,`name`,`incredints`,`image`,`video`,`additional_dtls`,`diet_mode`) values (4,'Fried Rice','dnsjadyhujsa,dsabdbsads,dasbdsabb,dasbd','static/f47b4cd9-4a0c-4214-8a8a-15217bed1e59food2.jpg','static/06b722fc-723c-4e86-a3b8-f55d716aed12WhatsApp Video 2022-11-14 at 11.09.34 AM.mp4','Peper mix','1'),(3,'Cheezy Sandwich ','sakndsa,dsabdsaj,dasmjn','static/ce3f1e72-f944-47d9-a05b-2b5afc184e3efood1.jpg','static/12bde703-bab4-42d4-acdf-40ed173f96aaWhatsApp Video 2022-11-14 at 11.09.34 AM.mp4','Cheezy','0'),(5,'Veg Salad','sakndsa,dsabdsaj,dasmjn','static/2a2590a9-843c-4f5e-9aaf-cbd1b8ce8d62food3.jpg','static/daab6622-9571-44ae-8c94-f4de80db1b9dWhatsApp Video 2022-11-14 at 11.09.34 AM.mp4','Healthy diet','1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`login_id`,`fname`,`lname`,`place`,`phone`,`email`) values (1,2,'san','kar','6238526459','sankusanku001@gmail.com','alpy');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
