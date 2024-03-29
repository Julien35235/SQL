-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Bibliotheque
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
-- Table structure for table `Livres`
--

DROP TABLE IF EXISTS `Livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Livres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Auteur` varchar(50) DEFAULT NULL,
  `Titre` varchar(50) DEFAULT NULL,
  `Annee_Publication` int(11) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Livres`
--

LOCK TABLES `Livres` WRITE;
/*!40000 ALTER TABLE `Livres` DISABLE KEYS */;
INSERT INTO `Livres` VALUES
(2,'Robert Wicks','Airbus A380 de 2005  nos jours',2018,'Grand livre'),
(4,'Luis Cabrera','Lonely Planet',2007,'Guide'),
(6,'Nicole Patlan','Microsoft Flight Simulator 2020',2020,'Manuel'),
(7,'Hubert de Caslou','Air Cosmos',1963,'Magazine'),
(8,'Philippe Hriss','Rail Passion',1995,'Magazine'),
(9,'Matthew Abram Groening','Les Simpson',1993,'BD'),
(10,'Albert Uderzo,','Astrix et Oblix',1959,'BD'),
(11,'Eiichir Oda,','One Piece',1997,'Manga'),
(12,'Masashi Kishimoto,','Naruto',1999,'Manga'),
(13,'Akira Toriyama,','Dragon Ball',1984,'Manga');
/*!40000 ALTER TABLE `Livres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lpecom_livres`
--

DROP TABLE IF EXISTS `lpecom_livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lpecom_livres` (
  `id_Livres` int(11) NOT NULL AUTO_INCREMENT,
  `Titres` varchar(450) DEFAULT NULL,
  `Isbn_10` varchar(20) DEFAULT NULL,
  `Auteurs` varchar(450) DEFAULT NULL,
  `Prix` float DEFAULT NULL,
  PRIMARY KEY (`id_Livres`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lpecom_livres`
--

LOCK TABLES `lpecom_livres` WRITE;
/*!40000 ALTER TABLE `lpecom_livres` DISABLE KEYS */;
INSERT INTO `lpecom_livres` VALUES
(1,'Forteresse Digitale','2709626306','Dan Brown',20.5),
(2,'La jeune fille et la nuit','2253237620','Guillaume Musso',21.9),
(3,'Tchoupi se brosse les dents','2092589547','Thierry Courtin',5.7),
(4,'La Denire Chasse','2226439412','Jean-Christophe Grange',22.9),
(5,'Le Signal','2226319484','Maxime Chattam',23.9);
/*!40000 ALTER TABLE `lpecom_livres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 10:38:00
