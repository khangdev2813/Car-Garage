-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlygara
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `phieuthutien`
--

DROP TABLE IF EXISTS `phieuthutien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuthutien` (
  `SoPhieuThuTien` int(100) NOT NULL,
  `BienSo` varchar(100) NOT NULL,
  `SoTienThu` int(100) NOT NULL,
  `NgayLapPhieuThu` date NOT NULL,
  PRIMARY KEY (`SoPhieuThuTien`),
  KEY `FK_PTHUTIEN_XE` (`BienSo`),
  CONSTRAINT `FK_PTHUTIEN_XE` FOREIGN KEY (`BienSo`) REFERENCES `xe` (`BienSo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_nopad_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuthutien`
--

LOCK TABLES `phieuthutien` WRITE;
/*!40000 ALTER TABLE `phieuthutien` DISABLE KEYS */;
INSERT INTO `phieuthutien` VALUES (1,'68T1 - 650.51',500080,'2024-05-21'),(2,'72T1 - 654.11',75100,'2024-05-27'),(3,'72T1 - 654.11',250040,'2024-05-27'),(4,'68T1 - 625.22',1000000,'2024-05-27'),(5,'68T1 - 625.22',287705,'2024-05-27'),(6,'68T1 - 650.56',150000,'2024-05-27'),(7,'68T1 - 650.56',20,'2024-05-27');
/*!40000 ALTER TABLE `phieuthutien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 21:51:05