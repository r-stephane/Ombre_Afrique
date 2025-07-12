-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: Ombre_Afrique
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `id_PRIMARY` int DEFAULT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `preference` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `id_client_Client` int NOT NULL,
  `nom_Client` varchar(50) DEFAULT NULL,
  `telephone_Client` varchar(20) DEFAULT NULL,
  `adresse_Client` varchar(100) DEFAULT NULL,
  `preferences_Client` text,
  `points_fidelite_Client` int DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_client_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'denenodji','66461039','ngari','gout',100,NULL),(2,'hounaida','62001240','agarachi','bon',90,NULL),(3,'succes','65231150','agarachi','bon',90,NULL),(4,'arsenne','6825200','gozamir','super',150,NULL);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Commande` (
  `id_ccommande_Commande` int NOT NULL,
  `date_heure_Commande` datetime DEFAULT NULL,
  `type_Commande` varchar(30) DEFAULT NULL,
  `id_serveur_Commande` int DEFAULT NULL,
  `facture_id_facture_facture` int DEFAULT NULL,
  PRIMARY KEY (`id_ccommande_Commande`),
  KEY `id_serveur_Commande` (`id_serveur_Commande`),
  KEY `facture_id_facture_facture` (`facture_id_facture_facture`),
  CONSTRAINT `Commande_ibfk_1` FOREIGN KEY (`id_serveur_Commande`) REFERENCES `Employé` (`id_employe_Employé`),
  CONSTRAINT `Commande_ibfk_2` FOREIGN KEY (`facture_id_facture_facture`) REFERENCES `Facture` (`id_facture_Facture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (1,'2015-02-14 00:00:00','emporter',70,2);
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employé`
--

DROP TABLE IF EXISTS `Employé`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employé` (
  `id_employe_Employé` int NOT NULL,
  `nom_Employé` varchar(50) DEFAULT NULL,
  `prenom_Employé` varchar(50) DEFAULT NULL,
  `telephone_Employé` varchar(20) DEFAULT NULL,
  `adresse_Employé` varchar(100) DEFAULT NULL,
  `poste_Employé` varchar(50) DEFAULT NULL,
  `salaire_Employé` decimal(10,2) DEFAULT NULL,
  `date_embauche_Employé` date DEFAULT NULL,
  PRIMARY KEY (`id_employe_Employé`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employé`
--

LOCK TABLES `Employé` WRITE;
/*!40000 ALTER TABLE `Employé` DISABLE KEYS */;
INSERT INTO `Employé` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'ribeye','stephane_mbaimou','65692397','ngari','serveur',70.10,'2023-03-12'),(4,'steve','stephane_boy','65692457','Caleb','serveur',74.10,'2013-04-15'),(5,'john','step_boy','65472457','josué','serveur',54.10,'2011-05-10');
/*!40000 ALTER TABLE `Employé` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOURNISSEUR`
--

DROP TABLE IF EXISTS `FOURNISSEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FOURNISSEUR` (
  `id_PRIMARY` int DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `specialite` varchar(40) DEFAULT NULL,
  `condition_paiement` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOURNISSEUR`
--

LOCK TABLES `FOURNISSEUR` WRITE;
/*!40000 ALTER TABLE `FOURNISSEUR` DISABLE KEYS */;
INSERT INTO `FOURNISSEUR` VALUES (1,'calek','65238910','grossite_fruit_legume','via_airtel'),(2,'succes','6528910','grossite_fruit_legume','via_airtel'),(3,'Amné','65695820','grossite_fruit_legume','via_tigo');
/*!40000 ALTER TABLE `FOURNISSEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facture`
--

DROP TABLE IF EXISTS `Facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facture` (
  `id_facture_Facture` int NOT NULL,
  `date_Facture` date DEFAULT NULL,
  `montant_HT_Facture` decimal(10,2) DEFAULT NULL,
  `taxes_Facture` decimal(10,2) DEFAULT NULL,
  `montant_TTC_Facture` decimal(10,2) DEFAULT NULL,
  `mode_paiement_Facture` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_facture_Facture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facture`
--

LOCK TABLES `Facture` WRITE;
/*!40000 ALTER TABLE `Facture` DISABLE KEYS */;
INSERT INTO `Facture` VALUES (1,'2021-01-03',250.00,300.00,142.00,'via_tigo'),(2,'2021-11-04',250.14,301.50,104.10,'via_tigo'),(3,'2015-10-02',255.10,50.20,99.10,'via_airtel');
/*!40000 ALTER TABLE `Facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INGREDIENT`
--

DROP TABLE IF EXISTS `INGREDIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INGREDIENT` (
  `id_PRIMARY` int DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INGREDIENT`
--

LOCK TABLES `INGREDIENT` WRITE;
/*!40000 ALTER TABLE `INGREDIENT` DISABLE KEYS */;
INSERT INTO `INGREDIENT` VALUES (1,'oeuf',5,'ronde'),(2,'viande',6,'gros'),(3,'poisson',10,'petit');
/*!40000 ALTER TABLE `INGREDIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAT`
--

DROP TABLE IF EXISTS `PLAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLAT` (
  `id_PRIMARY` int DEFAULT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `description` text,
  `prix` decimal(10,0) DEFAULT NULL,
  `categorie` varchar(30) DEFAULT NULL,
  `temps_préparation` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAT`
--

LOCK TABLES `PLAT` WRITE;
/*!40000 ALTER TABLE `PLAT` DISABLE KEYS */;
INSERT INTO `PLAT` VALUES (1,'pizza','harmonieux',300,'desser',2),(2,'poulet_yassa','doux',20,'desser',3);
/*!40000 ALTER TABLE `PLAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Table_resto`
--

DROP TABLE IF EXISTS `Table_resto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Table_resto` (
  `numero_table_Table` int NOT NULL,
  `capacite_Table` varchar(20) DEFAULT NULL,
  `zone_Table` varchar(20) DEFAULT NULL,
  `etat_Table` varchar(20) DEFAULT NULL,
  `commande_id_ccommande_commande` int DEFAULT NULL,
  PRIMARY KEY (`numero_table_Table`),
  KEY `commande_id_ccommande_commande` (`commande_id_ccommande_commande`),
  CONSTRAINT `Table_resto_ibfk_1` FOREIGN KEY (`commande_id_ccommande_commande`) REFERENCES `Commande` (`id_ccommande_Commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Table_resto`
--

LOCK TABLES `Table_resto` WRITE;
/*!40000 ALTER TABLE `Table_resto` DISABLE KEYS */;
INSERT INTO `Table_resto` VALUES (1,'fort','centre','bon',2);
/*!40000 ALTER TABLE `Table_resto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-08 10:17:39
