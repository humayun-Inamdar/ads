-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ad
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admin` (
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('dnyaneshwar','derle10');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_content`
--

DROP TABLE IF EXISTS `m_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_content` (
  `a_name` varchar(45) NOT NULL,
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `domain` varchar(45) NOT NULL,
  `a_file` varchar(45) NOT NULL,
  `a_size` varchar(20) NOT NULL,
  `s_time1` time NOT NULL,
  `time_sec1` int(11) NOT NULL,
  `s_time2` time NOT NULL,
  `time_sec2` int(11) NOT NULL,
  `s_time3` time NOT NULL,
  `time_sec3` int(11) NOT NULL,
  `cmp` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `status1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `m_content_ibfk_1` (`pid`),
  CONSTRAINT `m_content_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `new_provider` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_content`
--

LOCK TABLES `m_content` WRITE;
/*!40000 ALTER TABLE `m_content` DISABLE KEYS */;
INSERT INTO `m_content` VALUES ('cricket',12,'2018-03-24','www.w3school.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',60,5000,'Published',1,'paid'),('manipal',13,'2018-03-24','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',30,1000,'Published',1,'paid'),('manipal',18,'2018-03-25','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',60,1000,'Published',1,'paid'),('manipal',19,'2018-03-25','www.w3school.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',60,1000,'Published',1,'paid'),('manipal',20,'2018-03-16','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',60,1000,'Published',1,'paid'),('manipal',21,'2018-03-22','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',60,5000,'Published',1,'paid'),('Candy',22,'2018-03-22','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',30,'12:45:00',60,'05:55:00',50,2000,'Published',1,'paid'),('parleg',23,'2018-03-22','www.w3school.com','dfsffs.html','15x40','10:10:00',60,'12:45:00',60,'05:55:00',60,500,'Published',3,'paid'),('parleg',24,'2018-03-22','www.w3school.com','ggjsjj','15x40','10:30:00',60,'00:00:12',60,'05:55:00',60,500,'Published',1,'paid'),('manipal',28,'2018-04-20','www.w3school.com','dfsffs.html','15x40','10:30:00',60,'12:45:00',60,'05:55:00',30,5000,'Published',1,'paid'),('manipal',31,'2018-04-21','www.crickbuzz.com','dfsffs.html','15x40','10:30:00',60,'00:00:00',0,'00:00:00',0,500,'Published',1,'paid');
/*!40000 ALTER TABLE `m_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_contents`
--

DROP TABLE IF EXISTS `m_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_contents` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `domain` varchar(45) NOT NULL,
  `a_name` varchar(45) NOT NULL,
  `a_file` varchar(45) NOT NULL,
  `a_size` varchar(45) NOT NULL,
  `s_time1` time NOT NULL,
  `time_sec1` int(11) NOT NULL,
  `s_time2` time NOT NULL,
  `time_sec2` int(11) NOT NULL,
  `s_time3` time NOT NULL,
  `time_sec3` int(11) NOT NULL,
  `curr` varchar(45) NOT NULL,
  `cmp` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `fk_m_contents_1_idx` (`pid`),
  CONSTRAINT `fk_m_contents_1` FOREIGN KEY (`pid`) REFERENCES `new_provider` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_contents`
--

LOCK TABLES `m_contents` WRITE;
/*!40000 ALTER TABLE `m_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_provider`
--

DROP TABLE IF EXISTS `new_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_provider` (
  `pid` int(11) NOT NULL,
  `p_name` varchar(45) NOT NULL,
  `ph_no` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `r_pass` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_provider`
--

LOCK TABLES `new_provider` WRITE;
/*!40000 ALTER TABLE `new_provider` DISABLE KEYS */;
INSERT INTO `new_provider` VALUES (1,'sawan',45652412,'sawan@gmail.com','sawan123','sawan123','sawan1996'),(2,'DDD',25452,'ddd@gmail.com','derle123','derle10','derle10'),(3,'humayun',54352,'h@gmail.com','humayun123','h1234','h1234');
/*!40000 ALTER TABLE `new_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_content`
--

DROP TABLE IF EXISTS `p_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_content` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ad_request` double DEFAULT NULL,
  `Bilable_impression` double DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `fill_Rate` double DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pc_id`),
  KEY `fk_p_content_1_idx` (`m_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_content`
--

LOCK TABLES `p_content` WRITE;
/*!40000 ALTER TABLE `p_content` DISABLE KEYS */;
INSERT INTO `p_content` VALUES (11,4,8,2,200,'parleg'),(12,3,11,1,366.66668701171875,'manipal'),(13,1,4,2,400,'Candy'),(14,2,5,NULL,250,'cricket');
/*!40000 ALTER TABLE `p_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `py_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ads_name` varchar(45) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `total_pay` int(11) DEFAULT NULL,
  `pay_mod` varchar(45) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `mpid` int(11) NOT NULL,
  PRIMARY KEY (`py_id`),
  KEY `fk_payment_2_idx` (`mpid`),
  CONSTRAINT `fk_payment_2` FOREIGN KEY (`mpid`) REFERENCES `m_content` (`mid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (49,'manipal',180,11520,0,'Creadit',NULL,12),(50,'manipal',180,11520,0,'Debit',NULL,13),(51,'manipal',180,11520,0,'Creadit',NULL,18),(52,'manipal',180,11520,10520,'Debit',NULL,19),(53,'Candy',140,8960,0,'Creadit',NULL,22),(54,'manipal',180,11520,10520,'Creadit',NULL,20),(55,'parleg',180,11520,11020,'Creadit',NULL,23),(56,'parleg',180,11520,0,'select',NULL,24),(57,'manipal',180,11520,0,'Debit',NULL,21),(58,'cricket',180,11520,0,'Cash',NULL,28),(59,'manipal',60,3840,3340,'Creadit',NULL,31);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-16 23:14:27
