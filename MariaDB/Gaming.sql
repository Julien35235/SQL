-- MySQL dump 10.13  Distrib 5.5.53, for osx10.8 (i386)
--
-- Host: localhost    Database: Gaming
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Current Database: `Gaming`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gaming` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Gaming`;

--
-- Table structure for table `editeurs`
--

DROP TABLE IF EXISTS `editeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editeurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `annee_fondation` int(11) DEFAULT NULL,
  `siege_social` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editeurs`
--

LOCK TABLES `editeurs` WRITE;
/*!40000 ALTER TABLE `editeurs` DISABLE KEYS */;
INSERT INTO `editeurs` VALUES (1,'CD Projekt',1994,'Varsovie, Pologne'),(2,'Nintendo',1889,'Kyoto, Japon'),(3,'Rockstar Games',1998,'New York, États-Unis');
/*!40000 ALTER TABLE `editeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeux_editeurs`
--

DROP TABLE IF EXISTS `jeux_editeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeux_editeurs` (
  `id_jeu` int(11) DEFAULT NULL,
  `id_editeur` int(11) DEFAULT NULL,
  KEY `id_jeu` (`id_jeu`),
  KEY `id_editeur` (`id_editeur`),
  CONSTRAINT `jeux_editeurs_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `jeux_video` (`id`),
  CONSTRAINT `jeux_editeurs_ibfk_2` FOREIGN KEY (`id_editeur`) REFERENCES `editeurs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeux_editeurs`
--

LOCK TABLES `jeux_editeurs` WRITE;
/*!40000 ALTER TABLE `jeux_editeurs` DISABLE KEYS */;
INSERT INTO `jeux_editeurs` VALUES (1,1),(2,2),(3,3),(4,1);
/*!40000 ALTER TABLE `jeux_editeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jeux_video`
--

DROP TABLE IF EXISTS `jeux_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jeux_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `plateforme` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `developpeur` varchar(100) DEFAULT NULL,
  `note` decimal(3,1) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jeux_video`
--

LOCK TABLES `jeux_video` WRITE;
/*!40000 ALTER TABLE `jeux_video` DISABLE KEYS */;
INSERT INTO `jeux_video` VALUES (1,'The Witcher 3: Wild Hunt','PC, PS4, Xbox One','Action-RPG','2015-05-19','CD Projekt Red',9.3,49.99),(2,'The Legend of Zelda: Breath of the Wild','Nintendo Switch, Wii U','Action-Adventure','2017-03-03','Nintendo EPD',9.5,59.99),(3,'Red Dead Redemption 2','PS4, Xbox One, PC','Action-Adventure','2018-10-26','Rockstar Games',9.8,59.99),(4,'Cyberpunk 2077','PC, PS4, Xbox One','Action-RPG','2020-12-10','CD Projekt Red',9.0,59.99);
/*!40000 ALTER TABLE `jeux_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-01 14:43:15
