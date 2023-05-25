CREATE DATABASE  IF NOT EXISTS `pokemon` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pokemon`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `pokemon_has_habilidade`
--

DROP TABLE IF EXISTS `pokemon_has_habilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_has_habilidade` (
  `Pokemon_idPokemon` int NOT NULL,
  `Habilidade_idHabilidade` int NOT NULL,
  `oculta` tinyint DEFAULT NULL,
  PRIMARY KEY (`Pokemon_idPokemon`,`Habilidade_idHabilidade`),
  KEY `fk_Pokemon_has_Habilidade_Habilidade1_idx` (`Habilidade_idHabilidade`),
  KEY `fk_Pokemon_has_Habilidade_Pokemon1_idx` (`Pokemon_idPokemon`),
  CONSTRAINT `fk_Pokemon_has_Habilidade_Habilidade1` FOREIGN KEY (`Habilidade_idHabilidade`) REFERENCES `habilidade` (`idHabilidade`),
  CONSTRAINT `fk_Pokemon_has_Habilidade_Pokemon1` FOREIGN KEY (`Pokemon_idPokemon`) REFERENCES `pokemon` (`idPokemon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_has_habilidade`
--

LOCK TABLES `pokemon_has_habilidade` WRITE;
/*!40000 ALTER TABLE `pokemon_has_habilidade` DISABLE KEYS */;
INSERT INTO `pokemon_has_habilidade` VALUES (1,1,NULL),(1,2,NULL),(2,3,NULL),(2,4,NULL),(3,5,NULL),(3,6,NULL),(4,7,NULL),(4,8,NULL),(5,9,NULL),(5,10,NULL),(6,1,NULL),(6,2,NULL),(7,3,NULL),(7,4,NULL),(8,5,NULL),(8,6,NULL),(9,7,NULL),(9,8,NULL),(10,9,NULL),(10,10,NULL);
/*!40000 ALTER TABLE `pokemon_has_habilidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 20:48:47
