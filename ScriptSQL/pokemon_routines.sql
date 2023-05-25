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
-- Temporary view structure for view `pokemon_habilidades_count`
--

DROP TABLE IF EXISTS `pokemon_habilidades_count`;
/*!50001 DROP VIEW IF EXISTS `pokemon_habilidades_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pokemon_habilidades_count` AS SELECT 
 1 AS `idPokemon`,
 1 AS `Nome_Especie`,
 1 AS `Total_Habilidades`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pokemon_tipo_count`
--

DROP TABLE IF EXISTS `pokemon_tipo_count`;
/*!50001 DROP VIEW IF EXISTS `pokemon_tipo_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pokemon_tipo_count` AS SELECT 
 1 AS `tipo_primario`,
 1 AS `Total_Pokemon`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `pokemon_habilidades_count`
--

/*!50001 DROP VIEW IF EXISTS `pokemon_habilidades_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pokemon_habilidades_count` AS select `p`.`idPokemon` AS `idPokemon`,`p`.`Nome_Especie` AS `Nome_Especie`,count(`ph`.`Habilidade_idHabilidade`) AS `Total_Habilidades` from (`pokemon` `p` left join `pokemon_has_habilidade` `ph` on((`p`.`idPokemon` = `ph`.`Pokemon_idPokemon`))) group by `p`.`idPokemon`,`p`.`Nome_Especie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pokemon_tipo_count`
--

/*!50001 DROP VIEW IF EXISTS `pokemon_tipo_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pokemon_tipo_count` AS select `t`.`tipo_primario` AS `tipo_primario`,count(`p`.`idPokemon`) AS `Total_Pokemon` from ((`pokemon` `p` join `pokemon_has_tipo` `pt` on((`p`.`idPokemon` = `pt`.`pokemon_idPokemon`))) join `tipo` `t` on((`pt`.`tipo_idTipo` = `t`.`idTipo`))) group by `t`.`tipo_primario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'pokemon'
--

--
-- Dumping routines for database 'pokemon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 20:48:48
