/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - usersdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`usersdata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `usersdata`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` int(4) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`adminname`,`password`) values (1,'a','a'),(2,'s','s'),(3,'shat','s');

/*Table structure for table `register_info` */

DROP TABLE IF EXISTS `register_info`;

CREATE TABLE `register_info` (
  `userid` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL COMMENT 'Unique',
  `password` varchar(10) NOT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `homeaddress` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `register_info` */

insert  into `register_info`(`userid`,`username`,`password`,`realname`,`telephone`,`email`,`homeaddress`) values (1,'asd','asd','asd','123','6@qq.com','中国'),(2,'ab','ab','aaa','11223344556','11@qq.com','江苏南京'),(3,'z','z','zx','123','q@qq.com','南京雨花台'),(4,'ss','ss','ss','111','as@qq.com','南京建邺'),(5,'qq','qq','qq','555','qqq@qq.com','南京'),(17,'shatong','shatong','shatong112233','15305127555','12555@qq.com','江苏南京市雨花台'),(18,'scccc123','sccc123','sccc123','12344342343','sdsd@qq.com','符合规范的合法'),(19,'sharedt','sharedt','shat','13675217369','1@qq.com','江苏南京建邺'),(22,'a','a','a','11122233345','2@qq.cn','江苏徐州'),(23,'qwerzx','qwerzx','qwer','15305127771','3@qq.com','japan');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
