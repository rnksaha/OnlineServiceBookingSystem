-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineservicebookingsystem
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicetype` (
  `type` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `status` int NOT NULL,
  `services_serviceId` int NOT NULL,
  PRIMARY KEY (`type`),
  KEY `fk_servicetype_services1_idx` (`services_serviceId`),
  CONSTRAINT `fk_servicetype_services1` FOREIGN KEY (`services_serviceId`) REFERENCES `services` (`serviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetype`
--

LOCK TABLES `servicetype` WRITE;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
INSERT INTO `servicetype` VALUES ('AC Repair',1500,1,4),('Beard Trim',65,1,3),('Bed Bugs Control',400,1,6),('Cognitive Behavioral Therapy',1500,1,5),('Facial',80,1,3),('Family Therapy',5000,1,5),('Full House Cleaning',4500,1,6),('Geyser Installation',400,1,2),('Hair Cut',100,1,3),('Inverter Connection',150,1,1),('Laptop/Computer Repair',1000,1,4),('Massage',1000,1,5),('Meter Installation',300,1,1),('Mobile Repair',500,1,4),('Mosquito Control',350,1,6),('Pipes Installation',500,1,2),('Psychodynamic Therapy',2500,1,5),('Rat and Mole Control',375,1,6),('Special Hair Style',150,1,3),('Switch Board Installation',175,1,1),('Tap Replacement',150,1,2),('testType',100,1,7),('TV Repair',2000,1,4),('Water Filtration',350,1,2),('Wiring',200,1,1);
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02 17:19:54
