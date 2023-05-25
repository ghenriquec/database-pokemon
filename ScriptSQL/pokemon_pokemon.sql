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
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `idPokemon` int NOT NULL,
  `Nome_Especie` varchar(255) NOT NULL,
  `Altura` varchar(255) NOT NULL,
  `Peso` varchar(255) NOT NULL,
  `ValorAtaque` varchar(255) NOT NULL,
  `ValorDefesa` varchar(255) NOT NULL,
  `VelocidadeMedia` varchar(255) NOT NULL,
  `Raridade_idRaridade` int NOT NULL,
  `Categoria_idCategoria` int NOT NULL,
  PRIMARY KEY (`idPokemon`),
  KEY `fk_Pokemon_Raridade_idx` (`Raridade_idRaridade`),
  KEY `fk_Pokemon_Categoria1_idx` (`Categoria_idCategoria`),
  CONSTRAINT `fk_Pokemon_Categoria1` FOREIGN KEY (`Categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `fk_Pokemon_Raridade` FOREIGN KEY (`Raridade_idRaridade`) REFERENCES `raridade` (`idRaridade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','0.7','6.9','49','49','45',1,1),(2,'Ivysaur','1.0','13.0','62','63','60',2,1),(3,'Venusaur','2.0','100.0','82','83','80',3,1),(4,'Charmander','0.6','8.5','52','43','65',1,2),(5,'Charmeleon','1.1','19.0','64','58','80',2,2),(6,'Charizard','1.7','90.5','84','78','100',3,2),(7,'Squirtle','0.5','9.0','48','65','43',1,3),(8,'Wartortle','1.0','22.5','63','80','58',2,3),(9,'Blastoise','1.6','85.5','83','100','78',3,3),(10,'Caterpie','0.3','2.9','30','35','45',1,4),(11,'Metapod','0.7','9.9','20','55','30',1,4),(12,'Butterfree','1.1','32.0','45','50','70',2,4),(13,'Weedle','0.3','3.2','35','30','50',1,5),(14,'Kakuna','0.6','10.0','25','50','35',1,5),(15,'Beedrill','1.0','29.5','90','40','75',2,5),(16,'Pidgey','0.3','1.8','45','40','56',1,6),(17,'Pidgeotto','1.1','30.0','60','55','71',2,6),(18,'Pidgeot','1.5','39.5','80','75','101',3,6),(19,'Rattata','0.3','3.5','56','35','72',1,7),(20,'Raticate','0.7','18.5','81','60','97',2,7),(21,'Spearow','0.3','2.0','60','30','70',1,6),(22,'Fearow','1.2','38.0','90','65','100',2,6),(23,'Ekans','2.0','6.9','60','44','55',1,8),(24,'Arbok','3.5','65.0','95','69','80',2,8),(25,'Pikachu','0.4','6.0','55','40','90',3,9),(26,'Raichu','0.8','30.0','90','55','110',3,9),(27,'Sandshrew','0.6','12.0','75','85','40',1,10),(28,'Sandslash','1.0','29.5','100','110','65',2,10),(29,'Nidoran♀','0.4','7.0','47','52','41',1,11),(30,'Nidorina','0.8','20.0','62','67','56',2,11),(31,'Nidoqueen','1.3','60.0','92','87','76',3,11),(32,'Nidoran♂','0.5','9.0','57','40','50',1,12),(33,'Nidorino','0.9','19.5','72','57','65',2,12),(34,'Nidoking','1.4','62.0','102','77','85',3,12),(35,'Clefairy','0.6','7.5','45','48','35',2,13),(36,'Clefable','1.3','40.0','70','73','60',3,13),(37,'Vulpix','0.6','9.9','41','40','65',2,14),(38,'Ninetales','1.1','19.9','76','75','100',3,14),(39,'Jigglypuff','0.5','5.5','45','20','20',2,15),(40,'Wigglytuff','1.0','12.0','70','45','45',3,15),(41,'Dugtrio','0.7','33.3','100','60','120',2,1),(42,'Meowth','0.4','4.2','45','35','90',1,2),(43,'Persian','1.0','32.0','70','60','115',2,2),(44,'Psyduck','0.8','19.6','52','48','55',1,3),(45,'Golduck','1.7','76.6','82','78','85',2,3),(46,'Mankey','0.5','28.0','80','35','70',1,4),(47,'Primeape','1.0','32.0','105','60','95',2,4),(48,'Growlithe','0.7','19.0','70','45','60',1,5),(49,'Arcanine','1.9','155.0','110','80','95',3,5),(50,'Poliwag','0.6','12.4','50','40','90',1,6),(61,'Poliwhirl','1.0','20.0','65','65','90',2,6),(62,'Poliwrath','1.3','54.0','95','95','70',3,6),(63,'Abra','0.9','19.5','20','15','90',1,7),(64,'Kadabra','1.3','56.5','35','30','105',2,7),(65,'Alakazam','1.5','48.0','50','45','120',3,7),(66,'Machop','0.8','19.5','80','50','35',1,8),(67,'Machoke','1.5','70.5','100','70','45',2,8),(68,'Machamp','1.6','130.0','130','80','55',3,8),(69,'Bellsprout','0.7','4.0','75','35','40',1,9),(70,'Weepinbell','1.0','6.4','90','50','55',2,9),(71,'Victreebel','1.7','15.5','105','65','70',3,9),(72,'Tentacool','0.9','45.5','40','35','70',1,10),(73,'Tentacruel','1.6','55.0','70','65','100',3,10),(74,'Geodude','0.4','20.0','80','100','20',1,11),(75,'Graveler','1.0','105.0','95','115','35',2,11);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 20:48:48
