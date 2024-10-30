CREATE DATABASE  IF NOT EXISTS `db_iroute_epico_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_iroute_epico_2`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_iroute_epico_2
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
-- Table structure for table `commerce`
--

DROP TABLE IF EXISTS `commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commerce` (
  `pc_id` int unsigned NOT NULL AUTO_INCREMENT,
  `pc_codent` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `pc_centalta` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `pc_cuenta` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '01',
  `pc_codcom` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_tiporeg` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'CO',
  `pc_numorden` bigint NOT NULL DEFAULT '0',
  `pc_nomcomred` varchar(27) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_codcadena` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_descadena` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_codholding` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_desholding` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_identcli` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_tipdoc` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_numdoc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_producto` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_subprodu` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_desprod` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_conprod` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_desconred` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_tipbon` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_tipoprov` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_codact` int DEFAULT NULL,
  `pc_desact` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_nivaplcg` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_iban` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_ctacargo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_clamon` int DEFAULT NULL,
  `pc_desclamon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_indtipcta` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_indajena` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_codcam` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_fecalta` date DEFAULT NULL,
  `pc_fecbaja` date DEFAULT NULL,
  `pc_motbaja` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_desmot` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_fecreact` date DEFAULT NULL,
  `pc_codrie` int DEFAULT NULL,
  `pc_fecultrie` date DEFAULT NULL,
  `pc_indcont` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_codproceso` int DEFAULT NULL,
  `pc_codgrupo` int DEFAULT NULL,
  `pc_codregimen` int DEFAULT NULL,
  `pc_desregimen` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pc_processdate` date DEFAULT NULL,
  PRIMARY KEY (`pc_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'db_iroute_epico_2'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_create_commerce` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_create_commerce`(
	e_codent varchar(4),
	e_centalta varchar(4),
	e_cuenta varchar(12),
	e_codcom varchar(15),
	e_tiporeg varchar(2),
	e_numorden bigint,
	e_nomcomred varchar(27),
	e_codcadena varchar(3),
	e_descadena varchar(30),
	e_codholding varchar(4),
	e_desholding varchar(30),
	e_identcli varchar(8),
	e_tipdoc varchar(3),
	e_numdoc varchar(20),
	e_producto varchar(2),
	e_subprodu varchar(4),
	e_desprod varchar(30),
	e_conprod varchar(3),
	e_desconred varchar(10),
	e_tipbon varchar(6),
	e_tipoprov varchar(1),
	e_codact bigint,
	e_desact varchar(30),
	e_nivaplcg varchar(1),
	e_iban varchar(4),
	e_ctacargo varchar(30),
	e_clamon bigint,
	e_desclamon varchar(30),
	e_indtipcta varchar(2),
	e_indajena varchar(1),
	e_codcam varchar(6),
	e_fecalta date,
	e_fecbaja date,
	e_motbaja varchar(2),
	e_desmot varchar(30),
	e_fecreact date,
	e_codrie bigint,
	e_fecultrie date,
	e_indcont varchar(1),
	e_codproceso bigint,
	e_codgrupo bigint,
	e_codregimen bigint,
	e_desregimen varchar(30),
	e_processdate date
)
BEGIN
	INSERT INTO commerce (pc_codent, pc_centalta, pc_cuenta, pc_codcom, pc_tiporeg, pc_numorden, pc_nomcomred, pc_codcadena, pc_descadena, pc_codholding, pc_desholding, pc_identcli, pc_tipdoc, pc_numdoc, pc_producto, pc_subprodu, pc_desprod, pc_conprod, pc_desconred, pc_tipbon, pc_tipoprov, pc_codact, pc_desact, pc_nivaplcg, pc_iban, pc_ctacargo, pc_clamon, pc_desclamon, pc_indtipcta, pc_indajena, pc_codcam, pc_fecalta, pc_fecbaja, pc_motbaja, pc_desmot, pc_fecreact, pc_codrie, pc_fecultrie, pc_indcont, pc_codproceso, pc_codgrupo, pc_codregimen, pc_desregimen, pc_processdate)
    VALUES (e_codent, e_centalta, e_cuenta, e_codcom, e_tiporeg, e_numorden, e_nomcomred, e_codcadena, e_descadena, e_codholding, e_desholding, e_identcli, e_tipdoc, e_numdoc, e_producto, e_subprodu, e_desprod, e_conprod, e_desconred, e_tipbon, e_tipoprov, e_codact, e_desact, e_nivaplcg, e_iban, e_ctacargo, e_clamon, e_desclamon, e_indtipcta, e_indajena, e_codcam, e_fecalta, e_fecbaja, e_motbaja, e_desmot, e_fecreact, e_codrie, e_fecultrie, e_indcont, e_codproceso, e_codgrupo, e_codregimen, e_desregimen, e_processdate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 23:30:46
