-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: automart
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `leaving`
--

DROP TABLE IF EXISTS `leaving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaving` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Reason` varchar(45) DEFAULT NULL,
  `period` int NOT NULL,
  `date` date DEFAULT NULL,
  `more` varchar(245) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `Nic` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Nic` (`Nic`),
  CONSTRAINT `leaving_ibfk_1` FOREIGN KEY (`Nic`) REFERENCES `new_employee` (`Nic`),
  CONSTRAINT `leaving_ibfk_2` FOREIGN KEY (`Nic`) REFERENCES `new_employee` (`Nic`),
  CONSTRAINT `leaving_ibfk_3` FOREIGN KEY (`Nic`) REFERENCES `leaving_info` (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaving`
--

LOCK TABLES `leaving` WRITE;
/*!40000 ALTER TABLE `leaving` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaving_info`
--

DROP TABLE IF EXISTS `leaving_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaving_info` (
  `nic` varchar(10) NOT NULL,
  `sick` int DEFAULT NULL,
  `casual` int DEFAULT NULL,
  PRIMARY KEY (`nic`),
  CONSTRAINT `leaving_info_ibfk_1` FOREIGN KEY (`nic`) REFERENCES `new_employee` (`Nic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaving_info`
--

LOCK TABLES `leaving_info` WRITE;
/*!40000 ALTER TABLE `leaving_info` DISABLE KEYS */;
INSERT INTO `leaving_info` VALUES ('991872272V',15,15);
/*!40000 ALTER TABLE `leaving_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_employee`
--

DROP TABLE IF EXISTS `new_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_employee` (
  `Nic` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` int DEFAULT NULL,
  `position` varchar(45) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Basic_salary` float NOT NULL,
  `section` varchar(45) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`Nic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_employee`
--

LOCK TABLES `new_employee` WRITE;
/*!40000 ALTER TABLE `new_employee` DISABLE KEYS */;
INSERT INTO `new_employee` VALUES ('991872272V','Dilanka','www.dilankaweerasekara@gmail.com',NULL,'Employee manager',NULL,100000,'EmployeeManagement','P6DPM7AS');
/*!40000 ALTER TABLE `new_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pervious_employee`
--

DROP TABLE IF EXISTS `pervious_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pervious_employee` (
  `Nic` varchar(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` int DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `quit_date` date NOT NULL,
  PRIMARY KEY (`Nic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pervious_employee`
--

LOCK TABLES `pervious_employee` WRITE;
/*!40000 ALTER TABLE `pervious_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `pervious_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `pID` int NOT NULL AUTO_INCREMENT,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Employee manager'),(2,'financial manager'),(3,'Stock manager');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-26 16:25:26
