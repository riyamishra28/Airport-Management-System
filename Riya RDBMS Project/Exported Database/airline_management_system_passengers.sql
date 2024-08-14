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
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `Ps_ID` int NOT NULL,
  `Ps_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Contacts` varchar(10) DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Ps_ID`),
  KEY `Flight_ID` (`Flight_ID`),
  CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (1,'Steve Smith','2230 Northside, Apt 11, London',30,'M','8080367290','AI2014'),(2,'Ankita Ahir','3456 Vikas Apts, Apt 102, New Jersey',26,'F','8080367280','QR2305'),(3,'Khyati Mishra','7820 Mccallum courts, Apt 234, Washington',30,'F','8082267280','LH9876'),(4,'Akhilesh Joshi','345 Chatam courts, Apt 678, Chennai',29,'M','9080369290','EY1234'),(5,'Rom Solanki','1234 Baker Apts, Apt 208, Chandigarh',60,'M','9004568903','EY1234'),(6,'Lakshmi Sharma','1110 Fir hills, Apt 90, Daman',30,'F','7666190505','AA4367'),(7,'Ria Gupta','B-402, Aditya Apt, Hyderabad',34,'F','9819414036','EY1234'),(8,'Manan Lakhani','7720 Mccallum Blvd, Apt 77,Beijing',45,'M','8124579635','CT7812');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-13 14:34:51
