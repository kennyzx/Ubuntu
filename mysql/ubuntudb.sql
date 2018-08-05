-- MySQL dump 10.13  Distrib 5.7.18, for Win32 (AMD64)
--
-- Host: localhost    Database: ubuntudb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `installations`
--

DROP TABLE IF EXISTS `installations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installations` (
  `version` varchar(35) NOT NULL,
  `installationdate` date NOT NULL,
  `userid` int(11) NOT NULL,
  `userdomain` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installations`
--

LOCK TABLES `installations` WRITE;
/*!40000 ALTER TABLE `installations` DISABLE KEYS */;
INSERT INTO `installations` VALUES ('3.4.1.31','2018-01-22',43910863,'HBAP'),('3.4.1.31','2018-02-10',43910863,'HBAP'),('3.4.1.31','2018-03-13',43910863,'HBAP'),('3.4.1.31','2018-03-13',43910863,'HBAPTEST'),('3.4.1.31','2018-05-03',43910863,'HBAPTEST'),('3.4.1.31','2018-04-30',43910863,'HBAPTEST'),('3.4.1.31','2018-06-01',43910863,'HBAPTEST'),('3.4.1.31','2018-07-19',43910863,'HBAPTEST'),('3.4.1.31','2018-07-19',43910863,'HBAP'),('3.4.1.31','2018-08-01',43910863,'HBAP'),('3.4.1.31','2018-08-01',43979853,'HBAP'),('3.4.1.31','2018-07-01',43979853,'HBAP'),('3.4.1.31','2018-06-02',43979853,'HBAP'),('3.4.1.31','2018-04-02',43979853,'HBAPTEST'),('3.4.1.31','2018-02-12',43979853,'HBAPTEST'),('3.4.1.31','2017-12-01',43979853,'HBAP'),('4.1.2.1','2018-02-01',43979853,'HBAP'),('4.1.2.1','2018-03-01',43979853,'HBAP'),('4.1.2.1','2018-04-12',43979853,'HBAP'),('4.1.2.1','2018-06-02',43979853,'HBAP'),('4.1.2.1','2018-06-29',43979853,'HBAP'),('4.1.2.1','2018-06-29',43910863,'HBAPTEST'),('4.1.2.1','2018-07-29',43910863,'HBAPTEST'),('4.2.2.15','2018-07-29',43910863,'HBAPTEST'),('4.2.2.15','2018-07-29',43910863,'HBAP'),('4.2.2.15','2018-07-29',43979853,'HBAP'),('4.3.1.5','2018-08-04',43979853,'HBAP'),('4.3.1.5','2018-08-05',43910863,'HBAP'),('4.3.1.5','2018-08-05',43910863,'HBAPTEST'),('4.1.4.3','2018-04-05',43910863,'HBAPTEST'),('4.1.4.3','2018-05-25',43910863,'HBAPTEST'),('4.1.4.3','2018-05-25',43979853,'HBAP'),('4.1.4.3','2018-05-25',43954761,'HBAP'),('4.1.4.3','2018-05-15',43387206,'HBAP'),('4.1.4.3','2018-06-15',34002870,'HBEU');
/*!40000 ALTER TABLE `installations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (43865535,'alex',NULL,NULL,0),(43910863,'kennyzx',NULL,NULL,NULL),(43954761,'shu',NULL,NULL,NULL),(43979853,'jerrywu',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `version` varchar(35) NOT NULL,
  `releasedate` date NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('3.4.1.31','2017-08-29'),('4.1.2.1','2018-01-03'),('4.1.4.3','2018-03-31'),('4.2.2.15','2018-05-12'),('4.3.1.5','2018-07-24');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-05 22:55:12
