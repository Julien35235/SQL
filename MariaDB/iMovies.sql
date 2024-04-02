-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: iMovies
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
-- Table structure for table `Films`
--

DROP TABLE IF EXISTS `Films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titres` varchar(350) DEFAULT NULL,
  `Dates` varchar(350) DEFAULT NULL,
  `Durees` varchar(350) DEFAULT NULL,
  `id_Studio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Films`
--

LOCK TABLES `Films` WRITE;
/*!40000 ALTER TABLE `Films` DISABLE KEYS */;
INSERT INTO `Films` VALUES
(1,'Les Taxis rouges','17 Decembre 2014','1h17',NULL),
(2,'Monster Trucks','21 Decembre 2016','1h44',NULL),
(3,'Boite Noire','8 Septembre 2021','2h09',NULL),
(4,'Mayday','25 janvier 2023','1h47',NULL),
(5,'Sonic','9 Fevrier 2020','1h40',NULL),
(6,'Ducobu passe au vert',' 3 avril 2024','1h20',NULL),
(7,'Godzilla x Kong : Le Nouvel Empire',' 3 avril 2024','1h55',NULL),
(8,'Les Vacances de Ducobu',' 22 Avril 2012','1h34',NULL),
(9,'Ducobu 3','5 Fevriver 2020','1h30',NULL),
(10,'Non-Stop','26 Fevriver 2014','1h46',NULL);
/*!40000 ALTER TABLE `Films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES
(1,'Enfants/Comdie'),
(2,'Enfants/Action'),
(3,'Thriller/Film a enigme'),
(4,'Action/Thriller'),
(5,'Enfants/Comdie');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Metiers`
--

DROP TABLE IF EXISTS `Metiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Metiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Metiers`
--

LOCK TABLES `Metiers` WRITE;
/*!40000 ALTER TABLE `Metiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Metiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnes`
--

DROP TABLE IF EXISTS `Personnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Noms` varchar(350) DEFAULT NULL,
  `Prenom` varchar(350) DEFAULT NULL,
  `Ages` int(11) DEFAULT NULL,
  `Naissances` varchar(350) DEFAULT NULL,
  `Morts` varchar(350) DEFAULT NULL,
  `Bio` varchar(350) DEFAULT NULL,
  `Nationalites` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnes`
--

LOCK TABLES `Personnes` WRITE;
/*!40000 ALTER TABLE `Personnes` DISABLE KEYS */;
INSERT INTO `Personnes` VALUES
(1,'Gerard','Jugnot',72,'4 Mai 1951',NULL,NULL,'Francais'),
(2,'Jane','Levy',35,'29 Decembre 1989',NULL,NULL,'amricaine'),
(3,'Lucas','Till',34,'10 Aout 1990',NULL,NULL,'amricain'),
(4,'Lou','de Laage',34,'27 Avril 1990',NULL,NULL,'Francaise'),
(5,'Olivier','Rabourdin',65,'3 Mars 1959',NULL,NULL,'Francais'),
(6,'Gerard','Butler',54,'13 Novembre 1969',NULL,NULL,'Anglais'),
(7,'Daniella','Pineda',37,'20 Fervrier 1987',NULL,NULL,'Amricaine'),
(8,'Ben','Schwartz',42,'15 Septembre 1981',NULL,NULL,'Amricain'),
(9,'Tika','Sumpter',43,'20 Juin 1980',NULL,NULL,'Amricaine'),
(10,'Caroline','Anglade',41,'22 Juin 1982',NULL,NULL,'Francaise'),
(11,'Nicolas','Marie',70,'22 Fevrier 1954',NULL,NULL,'Francais'),
(12,'Adam','Wingard',41,'3 Decembre 1982',NULL,NULL,'Francais');
/*!40000 ALTER TABLE `Personnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Studio`
--

DROP TABLE IF EXISTS `Studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(350) DEFAULT NULL,
  `Histoire` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Studio`
--

LOCK TABLES `Studio` WRITE;
/*!40000 ALTER TABLE `Studio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Studio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 19:48:34
