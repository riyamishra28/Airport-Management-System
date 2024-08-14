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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `TS_ID` int NOT NULL,
  `Booking_Date` date DEFAULT NULL,
  `Departure_Date` date DEFAULT NULL,
  `TS_Type` varchar(20) DEFAULT NULL,
  `Emp_ID` int DEFAULT NULL,
  `Ps_ID` int DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL,
  `Fare_ID` int DEFAULT NULL,
  PRIMARY KEY (`TS_ID`),
  KEY `Emp_ID` (`Emp_ID`),
  KEY `Ps_ID` (`Ps_ID`),
  KEY `Flight_ID` (`Flight_ID`),
  KEY `Fare_ID` (`Fare_ID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Ps_ID`) REFERENCES `passengers` (`Ps_ID`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`Fare_ID`) REFERENCES `airfare` (`Fare_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (12345678,'2021-02-21','2021-02-22','Google Pay',1234,1,'AI2014',1),(17892455,'2021-02-05','2021-02-08','Paytm',5123,6,'AA4367',5),(24517852,'2021-03-06','2021-03-08','PhonePe',2458,8,'CT7812',7),(32548525,'2021-01-20','2021-01-25','Credit Card',4521,7,'EY1234',8),(45321879,'2021-03-15','2021-03-16','PhonePe',8512,3,'LH9876',3),(45612789,'2021-01-12','2021-01-14','Credit Card',3246,2,'QR2305',4),(56987123,'2020-12-05','2020-12-02','Paytm',9321,4,'EY1234',2),(75145863,'2021-04-22','2021-04-25','Paytm',7512,5,'EY1234',6);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
