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
-- Table structure for table `pokemon_has_tipo`
--

DROP TABLE IF EXISTS `pokemon_has_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_has_tipo` (
  `pokemon_idPokemon` int NOT NULL,
  `tipo_idTipo` int NOT NULL,
  PRIMARY KEY (`pokemon_idPokemon`,`tipo_idTipo`),
  KEY `fk_pokemon_has_tipo_tipo1_idx` (`tipo_idTipo`),
  KEY `fk_pokemon_has_tipo_pokemon1_idx` (`pokemon_idPokemon`),
  CONSTRAINT `fk_pokemon_has_tipo_pokemon1` FOREIGN KEY (`pokemon_idPokemon`) REFERENCES `pokemon` (`idPokemon`),
  CONSTRAINT `fk_pokemon_has_tipo_tipo1` FOREIGN KEY (`tipo_idTipo`) REFERENCES `tipo` (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_has_tipo`
--

LOCK TABLES `pokemon_has_tipo` WRITE;
/*!40000 ALTER TABLE `pokemon_has_tipo` DISABLE KEYS */;
INSERT INTO `pokemon_has_tipo` VALUES (1,1),(3,1),(5,1),(7,1),(9,1),(11,1),(13,1),(15,1),(17,1),(19,1),(21,1),(23,1),(25,1),(2,2),(4,2),(6,2),(8,2),(10,2),(12,2),(14,2),(16,2),(18,2),(20,2),(22,2),(24,2);
/*!40000 ALTER TABLE `pokemon_has_tipo` ENABLE KEYS */;
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
