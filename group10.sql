-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: 192.168.164.222    Database: group10
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_role`
--

DROP TABLE IF EXISTS `auth_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_role` (
  `auth_role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auth_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role`
--

LOCK TABLES `auth_role` WRITE;
/*!40000 ALTER TABLE `auth_role` DISABLE KEYS */;
INSERT INTO `auth_role` VALUES (1,'Admin','This user has admin rights for administrative work '),(2,'Non-Admin (User)','This user has user rights for booking tiket');
/*!40000 ALTER TABLE `auth_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `auth_user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auth_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (9,'david','davi','da@gmail.com','$2a$10$w/NKXOVzyrHdFyzzzUQEc.egIU0mvdhJWM5hvnoY2IqsiQMZy86BC','VERIFIED'),(10,'saya','saya','saya@gmail.com','$2a$10$DC7vaitpELuwt8b4Bzprh.DJqtx3sAgp3nmVEJelhwokPdTmkfiZ2','VERIFIED'),(11,'dia','dia','dia@gmail.com','$2a$10$f6vaLmHsisc/Od2o3dxg5OpztmJaTcUHa1XqrhDGZw5/9kUX4unFq','VERIFIED'),(12,'admin','admin','admin@gmail.com','$2a$10$EYveOAuaWwElHTWWvlDuYOtLEj5G25ExzKRyTQTu/Rg85djd7FhJa','VERIFIED'),(13,'admin','admin','aku@gmail.com','$2a$10$jivXA.NWPa1BWD0Yf6pV9.5J2ZvVKKpmzraYvR3RSoQQ0U0l/4oei','VERIFIED'),(16,'asda','dasd','aku@gmail.com','$2a$10$mkkSARLcmR03HMGZQQuZIuX/ecSa/ZbGmejgsGdLZaR.Fi.6FeRY2','VERIFIED'),(17,'akankn','kknknknk','davidtupang@gmail.com','$2a$10$iUAyVyCJgjD6QlIwEay8/uH015Wa/cdDU4.78a7HstoZ4CzgGzzpy','VERIFIED'),(18,'user','user','user@gmail.com','$2a$10$hcomwmvWcNVRNAyxA8S0e.3Ze6wrMCMR4gIHlpgYFgYQfkpJ3ycpm','VERIFIED'),(19,'david','david','davidsimatupang@gmail.com','$2a$10$WigSq5ZU2eFJjiVL7TdizOuU4kGyHrmpovwdMjroLfWZi5VlpHcta','VERIFIED'),(20,'saya','saya','saya@gmail.com','$2a$10$z06T0O/.x0a/4xklIxPlm.kkhc6c1tKHnnEoE158tt2y3JyOSK.Ku','VERIFIED'),(21,'mereka','mereka','mereka@gmail.com','$2a$10$M46wehLKftGhuplUb9LpdOSywG7JbF9/I6uWCM48HlAZCEnZEmxfq','VERIFIED');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_role`
--

DROP TABLE IF EXISTS `auth_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_role` (
  `auth_user_id` int NOT NULL,
  `auth_role_id` int NOT NULL,
  PRIMARY KEY (`auth_user_id`,`auth_role_id`),
  KEY `FK_user_role` (`auth_role_id`),
  CONSTRAINT `FK_auth_user` FOREIGN KEY (`auth_user_id`) REFERENCES `auth_user` (`auth_user_id`),
  CONSTRAINT `FK_auth_user_role` FOREIGN KEY (`auth_role_id`) REFERENCES `auth_role` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_role`
--

LOCK TABLES `auth_user_role` WRITE;
/*!40000 ALTER TABLE `auth_user_role` DISABLE KEYS */;
INSERT INTO `auth_user_role` VALUES (10,1),(12,1),(13,1),(17,1),(19,1),(20,1),(9,2),(11,2),(18,2),(19,2),(21,2);


DROP TABLE IF EXISTS `asal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asal` (
  `idasal` int NOT NULL AUTO_INCREMENT,
  `asal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idasal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asal`
--

LOCK TABLES `asal` WRITE;
/*!40000 ALTER TABLE `asal` DISABLE KEYS */;
INSERT INTO `asal` VALUES (1,'Pakkat'),(2,'Jakarta');
/*!40000 ALTER TABLE `asal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `asal` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,'aadasda','Pakkat','addfsd@gamil.com','david','Singapura');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tujuan`
--

DROP TABLE IF EXISTS `tujuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tujuan` (
  `idtujuan` int NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtujuan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tujuan`
--

LOCK TABLES `tujuan` WRITE;
/*!40000 ALTER TABLE `tujuan` DISABLE KEYS */;
INSERT INTO `tujuan` VALUES (1,'Pakkat'),(2,'Singapura');

/*!40000 ALTER TABLE `auth_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-09  2:26:53
