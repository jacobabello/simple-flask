-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: trinimbus_db
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `demo_ca_states`
--

DROP TABLE IF EXISTS `demo_ca_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_ca_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demo_ca_states_abbr` varchar(2) DEFAULT NULL,
  `demo_ca_state_name` varchar(45) DEFAULT NULL,
  `demo_ca_state_capital` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_ca_states`
--

LOCK TABLES `demo_ca_states` WRITE;
/*!40000 ALTER TABLE `demo_ca_states` DISABLE KEYS */;
INSERT INTO `demo_ca_states` VALUES (1,'ab','alberta','edmonton'),(2,'bc','british columbia','victoria'),(3,'mb','manitoba','winnipeg'),(4,'nb','new brunswick','fredericton'),(5,'nl','newfoundland and labrador','st. john\'s'),(6,'ns','nova scotia	','halifax'),(7,'nt','northwest territories	','yellowknife'),(8,'nu','nunavut','iqaluit'),(9,'on','ontario','toronto'),(10,'pe','prince edward island	','charlottetown'),(11,'qc','quebec','quebec city'),(12,'sk','saskatchewan','regina'),(13,'yk','yukon','whitehorse');
/*!40000 ALTER TABLE `demo_ca_states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-15 18:43:05
