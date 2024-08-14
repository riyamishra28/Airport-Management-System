-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: airline_management_system
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `airfare`
--

DROP TABLE IF EXISTS `airfare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airfare` (
  `Fare_ID` int NOT NULL,
  `Charge_Amount` int DEFAULT NULL,
  `Description` varchar(25) DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Fare_ID`),
  KEY `Flight_ID` (`Flight_ID`),
  CONSTRAINT `airfare_ibfk_1` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airfare`
--

LOCK TABLES `airfare` WRITE;
/*!40000 ALTER TABLE `airfare` DISABLE KEYS */;
INSERT INTO `airfare` VALUES (1,27341,'Standard Single','AI2014'),(2,42176,'Key Fare Single','EY1234'),(3,27373,'Business Return','LH9876'),(4,34837,'Standard Return','QR2305'),(5,8777,'Superpex Return','AA4367'),(6,44592,'Advanced Purchase','BA1689'),(7,9578,'Standard Return','CT7812'),(8,4459,'Superpex Return','PF4521');
/*!40000 ALTER TABLE `airfare` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-13 14:34:52
