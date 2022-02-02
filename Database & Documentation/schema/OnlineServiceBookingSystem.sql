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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `pinCode` int NOT NULL,
  `cityName` varchar(50) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`pinCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (110001,'Delhi',1),(110002,'Delhi',1),(110003,'Delhi',1),(110004,'Delhi',1),(110005,'Delhi',1),(700001,'Kolkata',1),(700002,'Kolkata',1),(700003,'Kolkata',1),(700004,'Kolkata',1),(700005,'Kolkata',1),(700126,'Kolkata',1),(834001,'Ranchi',1),(834002,'Ranchi',1),(834003,'Ranchi',1),(834004,'Ranchi',1),(834005,'Ranchi',1),(834006,'Ranchi',1);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackId` int NOT NULL AUTO_INCREMENT,
  `feedback` varchar(200) NOT NULL,
  `users_emailId` varchar(50) NOT NULL,
  PRIMARY KEY (`feedbackId`),
  KEY `fk_feedback_users1_idx` (`users_emailId`),
  CONSTRAINT `fk_feedback_users1` FOREIGN KEY (`users_emailId`) REFERENCES `users` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Very good website. Service delivered on time and the professional was well trained and well behaved. Will book again in future!','abc@gmail.com'),(2,'Very Good','bca@gmail.com'),(4,'Nice','sommojeetc@gmail.com'),(5,'Superb Service','bca@gmail.com'),(6,'Great experience!','abc@gmail.com');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `serviceId` int NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(100) NOT NULL,
  `pinCode` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`serviceId`),
  KEY `pinCode_idx` (`pinCode`),
  CONSTRAINT `pinCode` FOREIGN KEY (`pinCode`) REFERENCES `cities` (`pinCode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Electrician',700001,1),(2,'Plumber',700002,1),(3,'Saloon',834001,1),(4,'Repairs',110002,1),(5,'Therapies',110001,1),(6,'Cleaning and Pest Control',834002,1),(7,'Test Service',110003,1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `emailId` varchar(50) NOT NULL,
  `roleId` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('abc@gmail.com',2,1),('bca@gmail.com',2,1),('exavalu@rediffmail.com',2,1),('mr.rounaksaha@gmail.com',2,1),('sommojeet@gmail.com',2,1),('sommojeetc@gmail.com',1,1),('urbanwareservice@gmail.com',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-02 17:20:25
