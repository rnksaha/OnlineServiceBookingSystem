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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `totalPrice` double NOT NULL,
  `users_emailId` varchar(50) NOT NULL,
  `servicetype_type` varchar(100) NOT NULL,
  PRIMARY KEY (`orderId`,`servicetype_type`),
  KEY `emailId_idx` (`orderId`),
  KEY `serviceName_idx` (`orderId`),
  KEY `fk_orders_users1_idx` (`users_emailId`),
  KEY `fk_orders_servicetype1_idx` (`servicetype_type`),
  CONSTRAINT `fk_orders_servicetype1` FOREIGN KEY (`servicetype_type`) REFERENCES `servicetype` (`type`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`users_emailId`) REFERENCES `users` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'Sommojeet Choudhury','KT, 1st lane','07004501224',65,'sommojeet@gmail.com','Beard Trim'),(3,'Sommo','KT, lane 1','7004501225',180,'sommojeet@gmail.com','Facial'),(4,'Sommo','KT, lane 1','7004501225',180,'sommojeet@gmail.com','Hair Cut'),(9,'Laxman','Exavalu','7004501224',2150,'sommojeetc@gmail.com','Pipes Installation'),(10,'Laxman','Exavalu','7004501224',2150,'sommojeetc@gmail.com','Tap Replacement'),(11,'Laxman','Exavalu','7004501224',2150,'sommojeetc@gmail.com','Tap Replacement'),(13,'Vivek','Hatia','8340775590',1500,'sommojeet@gmail.com','Laptop/Computer Repair'),(14,'Vivek','Hatia','8340775590',1500,'sommojeet@gmail.com','Mobile Repair'),(15,'Vivek','Hatia','8340775590',1500,'sommojeet@gmail.com','Laptop/Computer Repair'),(16,'Vivek','Hatia','8340775590',1500,'sommojeet@gmail.com','Mobile Repair'),(17,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(18,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(19,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(20,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(21,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(22,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(23,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(24,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(25,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(26,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(27,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Inverter Connection'),(28,'Rohit','Delhi','7078850337',450,'sommojeet@gmail.com','Meter Installation'),(29,'Rounak','kolkata','9835232746',1575,'sommojeetc@gmail.com','Laptop/Computer Repair'),(30,'Rounak','kolkata','9835232746',1575,'sommojeetc@gmail.com','Mobile Repair');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
