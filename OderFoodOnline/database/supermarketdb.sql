-- MySQL dump 10.13  Distrib 9.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: SupermarketDB
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admintbl` (
  `Id` int NOT NULL,
  `Adminname` varchar(20) NOT NULL,
  `Adminpass` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintbl`
--

LOCK TABLES `admintbl` WRITE;
/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
INSERT INTO `admintbl` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorytb`
--

DROP TABLE IF EXISTS `categorytb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorytb` (
  `CatId` int NOT NULL,
  `CatName` varchar(30) NOT NULL,
  `CatDes` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CatId`),
  UNIQUE KEY `CatId` (`CatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorytb`
--

LOCK TABLES `categorytb` WRITE;
/*!40000 ALTER TABLE `categorytb` DISABLE KEYS */;
INSERT INTO `categorytb` VALUES (1,'Cá','Ngon lắm'),(2,'Bò','cung ngon'),(3,'nuoc ngot','ngon');
/*!40000 ALTER TABLE `categorytb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttbl`
--

DROP TABLE IF EXISTS `producttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttbl` (
  `PROID` int NOT NULL,
  `PRONAME` varchar(30) NOT NULL,
  `PRODQTY` int NOT NULL,
  `PRODPRICE` double NOT NULL,
  `PRODCAT` varchar(20) NOT NULL,
  PRIMARY KEY (`PROID`),
  UNIQUE KEY `PROID` (`PROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttbl`
--

LOCK TABLES `producttbl` WRITE;
/*!40000 ALTER TABLE `producttbl` DISABLE KEYS */;
INSERT INTO `producttbl` VALUES (1,'ca ngu',33,200,'Cá'),(2,'ca bo',300,400,'Cá'),(3,'ca heo',300,500,'Cá'),(4,'thit dui',55,100,'Bò'),(5,'coca',30,200,'nuoc ngot'),(6,'pepsi',100,10,'nuoc ngot');
/*!40000 ALTER TABLE `producttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `SelId` int NOT NULL,
  `SelName` varchar(30) NOT NULL,
  `SelPass` varchar(30) NOT NULL,
  `SELGENDAR` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SelId`),
  UNIQUE KEY `SelId` (`SelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'a','123','Female'),(2,'a','123','Female');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17  7:33:12
