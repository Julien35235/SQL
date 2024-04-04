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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(10,'Non-Stop','26 Fevriver 2014','1h46',NULL),
(11,'Fast and Furious 6','22 Mai 2013','2h10',NULL),
(14,'Sully','30 Novembre 2016','1h36',NULL),
(15,'Flight','13 Fevrier 2013','2h18',NULL),
(16,'Top Gun','25 Mai 2022','2h11',NULL);
/*!40000 ALTER TABLE `Films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilmsGenre`
--

DROP TABLE IF EXISTS `FilmsGenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilmsGenre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFilms` int(11) DEFAULT NULL,
  `idGenre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFilms` (`idFilms`),
  KEY `idGenre` (`idGenre`),
  CONSTRAINT `FilmsGenre_ibfk_1` FOREIGN KEY (`idFilms`) REFERENCES `Films` (`id`),
  CONSTRAINT `FilmsGenre_ibfk_2` FOREIGN KEY (`idGenre`) REFERENCES `Genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmsGenre`
--

LOCK TABLES `FilmsGenre` WRITE;
/*!40000 ALTER TABLE `FilmsGenre` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilmsGenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilmsPersonnesMetiers`
--

DROP TABLE IF EXISTS `FilmsPersonnesMetiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilmsPersonnesMetiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFilms` int(11) DEFAULT NULL,
  `idPersonnes` int(11) DEFAULT NULL,
  `idMetiers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFilms` (`idFilms`),
  KEY `idPersonnes` (`idPersonnes`),
  KEY `idMetiers` (`idMetiers`),
  CONSTRAINT `FilmsPersonnesMetiers_ibfk_1` FOREIGN KEY (`idFilms`) REFERENCES `Films` (`id`),
  CONSTRAINT `FilmsPersonnesMetiers_ibfk_2` FOREIGN KEY (`idPersonnes`) REFERENCES `Personnes` (`id`),
  CONSTRAINT `FilmsPersonnesMetiers_ibfk_3` FOREIGN KEY (`idMetiers`) REFERENCES `Metiers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilmsPersonnesMetiers`
--

LOCK TABLES `FilmsPersonnesMetiers` WRITE;
/*!40000 ALTER TABLE `FilmsPersonnesMetiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilmsPersonnesMetiers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(5,'Enfants/Comdie'),
(6,'Comdie'),
(7,'Enfants/Comdie'),
(8,'Action/SF'),
(9,'Comdie/Enfants'),
(10,'Comdie/Enfants'),
(11,'Action/Thriller'),
(12,'Action/Thriller'),
(13,'Thriller/Western'),
(14,'Thriller/Action'),
(15,'Action/Thriller');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(12,'Adam','Wingard',41,'3 Decembre 1982',NULL,NULL,'Francais'),
(13,'Liam','Neeson',71,'7 Juin 1952',NULL,NULL,'Britannico-Amricain'),
(14,'Michelle','Dockery',42,'15 Decembre 1981',NULL,NULL,'Britannique'),
(15,'Dwayne','Johnson',51,'2 Mai 1972',NULL,NULL,'Amricain'),
(16,'Jordana','Brewster',43,'26 Avril 1980',NULL,NULL,'Amricaine'),
(17,'Tom','Hanks',67,'9 Juillet 1956',NULL,NULL,'Amricain'),
(18,'Laura','Linney',60,'5 Fevrier 1964',NULL,NULL,'Amricaine'),
(19,'Denzel','Washington',69,'28 Decembre 1954',NULL,NULL,'Amricain'),
(20,'Melissa','Leo',63,'14 Septembre 1960',NULL,NULL,'Amricaine');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Studio`
--

LOCK TABLES `Studio` WRITE;
/*!40000 ALTER TABLE `Studio` DISABLE KEYS */;
INSERT INTO `Studio` VALUES
(1,NULL,'La bourgade de Vivejoie-la-Grande respire la convivialit et le bien vivre ensemble ; l\'air y est pur, le ciel toujours bleu. C\'est l que vit Jules Dussiflard, chauffeur de taxi, apprci de tous et toujours jovial, qui en pince en secret pour Mme Adolfine qui lve Benot Brisefer, un garonnet aux superpouvoirs.');
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

-- Dump completed on 2024-04-04 15:43:01
