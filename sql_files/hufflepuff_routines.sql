-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hufflepuff
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Temporary view structure for view `happiness_energy_view`
--

DROP TABLE IF EXISTS `happiness_energy_view`;
/*!50001 DROP VIEW IF EXISTS `happiness_energy_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `happiness_energy_view` AS SELECT 
 1 AS `country`,
 1 AS `year`,
 1 AS `happiness_score`,
 1 AS `gdp`,
 1 AS `trust_in_government`,
 1 AS `total_energy_consumption`,
 1 AS `per_capita_energy_use`,
 1 AS `renewable_energy_share`,
 1 AS `fossil_fuel_dependency`,
 1 AS `industrial_energy_use`,
 1 AS `household_energy_use`,
 1 AS `carbon_emissions`,
 1 AS `energy_price_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `happiness_energy_view`
--

/*!50001 DROP VIEW IF EXISTS `happiness_energy_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `happiness_energy_view` AS select `h`.`country` AS `country`,`h`.`year` AS `year`,round(`h`.`happiness_score`,2) AS `happiness_score`,round(`h`.`gdp`,2) AS `gdp`,round(`h`.`trust_in_government`,2) AS `trust_in_government`,`gec`.`total_energy_consumption` AS `total_energy_consumption`,`gec`.`per_capita_energy_use` AS `per_capita_energy_use`,`gec`.`renewable_energy_share` AS `renewable_energy_share`,`gec`.`fossil_fuel_dependency` AS `fossil_fuel_dependency`,`gec`.`industrial_energy_use` AS `industrial_energy_use`,`gec`.`household_energy_use` AS `household_energy_use`,`gec`.`carbon_emissions` AS `carbon_emissions`,`gec`.`energy_price_index` AS `energy_price_index` from ((`happiness` `h` join `country` `c` on((`h`.`country` = `c`.`country`))) join (select `gec`.`country` AS `country`,`gec`.`year` AS `year`,round(avg(`gec`.`total_energy_consumption`),2) AS `total_energy_consumption`,round(avg(`gec`.`per_capita_energy_use`),2) AS `per_capita_energy_use`,round(avg(`gec`.`renewable_energy_share`),2) AS `renewable_energy_share`,round(avg(`gec`.`fossil_fuel_dependency`),2) AS `fossil_fuel_dependency`,round(avg(`gec`.`industrial_energy_use`),2) AS `industrial_energy_use`,round(avg(`gec`.`household_energy_use`),2) AS `household_energy_use`,round(avg(`gec`.`carbon_emissions`),2) AS `carbon_emissions`,round(avg(`gec`.`energy_price_index`),2) AS `energy_price_index` from (`global_energy_consumption` `gec` join `country` `c` on((`gec`.`country` = `c`.`country`))) group by `gec`.`country`,`gec`.`year`) `gec` on(((`h`.`country` = `gec`.`country`) and (`h`.`year` = `gec`.`year`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-29 13:52:25
