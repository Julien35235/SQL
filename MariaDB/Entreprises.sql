-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Entreprises
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
-- Table structure for table `Departements`
--

DROP TABLE IF EXISTS `Departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Departements` varchar(350) DEFAULT NULL,
  `Employes_id` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Employes_id` (`Employes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departements`
--

LOCK TABLES `Departements` WRITE;
/*!40000 ALTER TABLE `Departements` DISABLE KEYS */;
INSERT INTO `Departements` VALUES
(3,'Morbihan','Admin'),
(4,'Ille-et-Vilaine','Root'),
(5,'Ile de France','Pierre'),
(6,'Lorraine','Jean Michel'),
(7,'Herault','Michel'),
(8,'Normandie','Morane'),
(9,'Nouvelle-Aquitaine','Anne'),
(10,'Eure et Loir','Louanne'),
(11,'Nord Pas Calais','Michou'),
(12,'Seine et Marne','Elsa'),
(13,'Essonne','Juju'),
(15,'Leonard','Lot et Garonne'),
(16,'Drixize','Orne'),
(17,'Adrien','Pyrenees-Atlantiques');
/*!40000 ALTER TABLE `Departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employes`
--

DROP TABLE IF EXISTS `Employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employes` (
  `Employes_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Employes` varchar(350) DEFAULT NULL,
  `Mail` varchar(250) DEFAULT NULL,
  `Numeros_Telephones` int(11) DEFAULT NULL,
  `Salaires` float DEFAULT NULL,
  `Heures_Travaillees` int(11) DEFAULT NULL,
  `Nombres_annees_exprience_par_departements` int(11) DEFAULT NULL,
  `Date_Embauche` varchar(350) DEFAULT NULL,
  `Roles` text DEFAULT NULL,
  `id_Dpartements` int(11) DEFAULT NULL,
  PRIMARY KEY (`Employes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employes`
--

LOCK TABLES `Employes` WRITE;
/*!40000 ALTER TABLE `Employes` DISABLE KEYS */;
INSERT INTO `Employes` VALUES
(1,'Admin','admin@gmail.com',699654327,24455600000,10776555,201067764,'10 Janvier 2021','Big Boss',NULL),
(2,'Root','root@gmail.com',67799962,449643000000,2077543345,201135664,'5 Mars 2020','Ouvriers',NULL),
(3,'Pierre','pierre@gmail.com',207543242,44936700,266888768,2012775433,'4 Mai 2010','Stagiaires',NULL),
(4,'Jean Michel','jean.michel@gmail.com',77533551,7754320,268886432,20215597,'15 Septembre 2011','Profs',NULL),
(5,'Michel','michel@gmail.com',778654321,776689000,35779986,201357775,'20 Octobre 2012','Ouvriers',NULL),
(6,'Morane','morane@gmail.com',10876542,7766890000,34568686,2014673321,'16 Novembre 2013','Stagiaires',NULL),
(7,'Anne','anne@gmail.com',25799763,77668900000,457999653,2015776543,'21 Decembre 2014','Profs',NULL),
(8,'Louane','louane@gmail.com',26886431,134568000000,58909754,201699643,'30 Decembre 2016','Ouvriers',NULL),
(9,'Michou','michou@gmail.com',56633557,35578900000,458899009,201788996,'25 Decembre 2017','Stagiaires',NULL),
(10,'Elsa','elsa@gmail.com',89631345,456780000000,467671374,201812346,'26 Janvier 2018','Ouvriers',NULL),
(11,'Juju','juju@gmail.com',854213567,87788700000,679996532,201912346,'11 Avril 2019','Stagiaires',NULL),
(12,'Leonard','leonard@gmail.com',79975433,987565000,890074438,202286644,'18 Avril 2022','Ouvriers',NULL),
(13,'Drixize','drixize@gmail.com',79764321,964467000,89066643,202366788,'28 Mai 2023','Stagiaires',NULL);
/*!40000 ALTER TABLE `Employes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 12:25:16
