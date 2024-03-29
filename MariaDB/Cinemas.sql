-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Cinemas
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
-- Table structure for table `Distribution_Companies`
--

DROP TABLE IF EXISTS `Distribution_Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distribution_Companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(255) DEFAULT NULL,
  `distribution_companies_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distribution_Companies`
--

LOCK TABLES `Distribution_Companies` WRITE;
/*!40000 ALTER TABLE `Distribution_Companies` DISABLE KEYS */;
INSERT INTO `Distribution_Companies` VALUES
(1,'Columbia Pictures',NULL),
(2,'Parmount Pictures',NULL),
(3,'Warner Bros_Pictures',NULL),
(4,'United Artists',NULL),
(5,'Universal Pictures',NULL),
(6,'New Line Cinema',NULL),
(7,'Miramax Films',NULL),
(8,'Produzioni Europe Associate',NULL),
(9,'Buena Vista',NULL),
(10,'StudioCanel',NULL);
/*!40000 ALTER TABLE `Distribution_Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Films`
--

DROP TABLE IF EXISTS `Films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titres` varchar(350) DEFAULT NULL,
  `Notes_IMDB` float DEFAULT NULL,
  `Annees_de_sortie` int(11) DEFAULT NULL,
  `Budgets` float DEFAULT NULL,
  `Box_Office` float DEFAULT NULL,
  `id_Distributeurs` int(11) DEFAULT NULL,
  `Langues` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Distributeurs` (`id_Distributeurs`),
  CONSTRAINT `Films_ibfk_1` FOREIGN KEY (`id_Distributeurs`) REFERENCES `Distribution_Companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Films`
--

LOCK TABLES `Films` WRITE;
/*!40000 ALTER TABLE `Films` DISABLE KEYS */;
INSERT INTO `Films` VALUES
(1,'The Shawshank Redemption',9.2,1994,25,73.3,1,'English'),
(2,'The Godfather',9.2,1972,7.2,291,2,'English'),
(3,'The Dark Kinght',9,2008,185,1.006,3,'English'),
(4,'The Godfather Part II',9,1974,13,93,2,'English, Sicilan'),
(5,'12 Angry Men',9,1957,0.34,2,4,'English'),
(6,'Schindler\'s List',8.9,1993,22,322.2,5,'English, German, Yiddish'),
(7,'The Lord of The Rings : The Retum of the King',8.9,2003,94,1.146,6,'English'),
(8,'Pulp Fiction',8.8,1994,8.5,213.9,7,'English'),
(9,'The Lord Of the Rings : The Fellowship of the Ring ',8.8,2001,93,898.2,6,'English'),
(10,'The Good the Bad and the Ugly',8.8,1966,1.2,38.9,8,'English, Italian, Spanish');
/*!40000 ALTER TABLE `Films` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 10:35:29
