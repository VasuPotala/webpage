-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: practice
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `assessmentdetails`
--

DROP TABLE IF EXISTS `assessmentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessmentdetails` (
  `AssessentID` int NOT NULL,
  `AssessmentName` varchar(30) DEFAULT NULL,
  `TotalMarks` int DEFAULT NULL,
  `PassingMarks` int DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `DateScheduled` date DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  PRIMARY KEY (`AssessentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentdetails`
--

LOCK TABLES `assessmentdetails` WRITE;
/*!40000 ALTER TABLE `assessmentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessmentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessmentresult`
--

DROP TABLE IF EXISTS `assessmentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessmentresult` (
  `ResultID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `AsssessmentID` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `Grade` varchar(1) DEFAULT NULL,
  `DateTaken` date DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `assessmentresult_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student_details` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessmentresult`
--

LOCK TABLES `assessmentresult` WRITE;
/*!40000 ALTER TABLE `assessmentresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessmentresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `StudentID` int NOT NULL,
  `StudentName` varchar(12) DEFAULT NULL,
  `RollNumber` varchar(10) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Phone` int DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Status_text` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 11:05:07
