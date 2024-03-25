-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Concours
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0ubuntu0.23.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Chevaux`
--

DROP TABLE IF EXISTS `Chevaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chevaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Chevaux_id` int(11) DEFAULT NULL,
  `Nom` varchar(150) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Races` varchar(150) DEFAULT NULL,
  `Produits` varchar(500) DEFAULT NULL,
  `Quantite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chevaux`
--

LOCK TABLES `Chevaux` WRITE;
/*!40000 ALTER TABLE `Chevaux` DISABLE KEYS */;
INSERT INTO `Chevaux` VALUES
(1,NULL,'Coldplay EJ',10,'Palomino',NULL,NULL),
(2,NULL,'Diaz USH',5,'Paso Fino',NULL,NULL),
(3,NULL,'Good SKY de Pegase',8,'Percheron',NULL,NULL),
(4,NULL,'Issabella',7,'Poitevin',NULL,NULL),
(5,NULL,'Dusty',6,'Pur-Sang',NULL,NULL),
(6,NULL,'Chez Pas',12,'Quarter Horse',NULL,NULL);
/*!40000 ALTER TABLE `Chevaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipe`
--

DROP TABLE IF EXISTS `Equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Equipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Equipe_id` int(11) DEFAULT NULL,
  `Nom` varchar(150) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Equipe_id` (`Equipe_id`),
  CONSTRAINT `Equipe_ibfk_1` FOREIGN KEY (`Equipe_id`) REFERENCES `Equipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipe`
--

LOCK TABLES `Equipe` WRITE;
/*!40000 ALTER TABLE `Equipe` DISABLE KEYS */;
INSERT INTO `Equipe` VALUES
(1,NULL,'Admin',45),
(2,NULL,'Root',50),
(3,NULL,'Jean Pierre',35),
(6,NULL,'Jean Michel',32),
(7,NULL,'Pierre',30),
(8,NULL,'Aude',29);
/*!40000 ALTER TABLE `Equipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 17:20:00
