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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Emp_ID` int NOT NULL,
  `E_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Email_ID` varchar(20) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Air_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Air_code` (`Air_code`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Air_code`) REFERENCES `airport` (`Air_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1234,'Rekha Tiwary','202-Meeta Apt. Yogi Nagar, Mumbai 30',30,'rekha1234@gmail.com','+918530324018','DEL'),(2458,'Johny Paul','45-Balaji Apt. Ajit Nagar, Jalandhar',32,'johnypaul8@gmail.com','+919785425154','AIP'),(3246,'John Dsouza','302-Fountain Apt. Elizabeth Street, Newham',26,'john2346@gmail.com','+447911123456','BOM'),(4521,'Nidhi Maroliya','6-Matruchaya Apt,Park Road, Jammu',31,'nidhi785@gmail.com','+918211954901','IXJ'),(5123,'Lara Jen','28-Mark road, Victoria street, New York City',31,'jenlara4@gmail.com','+448000751234','CPH'),(7512,'Akshay Sharma','Akshay Villa, Queens Street, Copenhagen',20,'akshay27@gmail.com','+45886443210','JFK'),(8512,'Hafsa Iqmar','1023-Prajwal Apt, Newark',41,'hafsa964@gmail.com','6465554468','EWR'),(9321,'Sanjay Rathod','62-Patwa Apt. Pradeep Nagar, Delhi 36',31,'sanjay78@gmail.com','+917504681201','LCY');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
