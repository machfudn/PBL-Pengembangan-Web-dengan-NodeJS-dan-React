/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sekolah
-- ------------------------------------------------------
-- Server version	12.0.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `agama`
--

DROP TABLE IF EXISTS `agama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `agama` (
  `kode` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agama`
--

LOCK TABLES `agama` WRITE;
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `agama` VALUES
(1,'Islam'),
(2,'Protestan'),
(3,'Katholik'),
(4,'Budha'),
(5,'Hindu');
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `log_siswa`
--

DROP TABLE IF EXISTS `log_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_siswa` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) DEFAULT NULL,
  `nama_lama` varchar(50) DEFAULT NULL,
  `nama_baru` varchar(50) DEFAULT NULL,
  `aksi` varchar(20) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_siswa`
--

LOCK TABLES `log_siswa` WRITE;
/*!40000 ALTER TABLE `log_siswa` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `log_siswa` VALUES
(1,'101',NULL,'Budi','INSERT','2025-11-14 14:56:36'),
(2,'101','Budi','Budi Santoso','UPDATE','2025-11-14 14:58:07'),
(3,'9012341004',NULL,'Conan','INSERT','2025-11-14 15:07:06');
/*!40000 ALTER TABLE `log_siswa` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswa` (
  `nis` char(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kd_agama` int(11) DEFAULT NULL,
  PRIMARY KEY (`nis`),
  KEY `kd_agama_siswa_kode` (`kd_agama`),
  CONSTRAINT `kd_agama_siswa_kode` FOREIGN KEY (`kd_agama`) REFERENCES `agama` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `siswa` VALUES
('1234561001','Doraemon',4),
('2345671002','Nobita',1),
('3456782001','Shizuka',1),
('5678902002','Dorami',4),
('6789011003','Astro Boy',2),
('7890122003','Hello Kitty',3),
('9012341004','Conan',3);
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_siswa_after_insert
after insert on siswa
for each row
begin
insert into log_siswa (aksi, nis, nama_baru, tgl)
values ('INSERT',new.nis, new.nama, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_siswa_after_update
after update on siswa
for each row
begin
insert into log_siswa (aksi, nis, nama_lama, nama_baru, tgl)
values ('UPDATE',new.nis, old.nama,new.nama, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `vw_agama`
--

DROP TABLE IF EXISTS `vw_agama`;
/*!50001 DROP VIEW IF EXISTS `vw_agama`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_agama` AS SELECT
 1 AS `kode`,
  1 AS `nama` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_agama_siswa`
--

DROP TABLE IF EXISTS `vw_agama_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_agama_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_agama_siswa` AS SELECT
 1 AS `NIS`,
  1 AS `Nama_Siswa`,
  1 AS `Agama_Siswa` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_asn_jns_kelamin`
--

DROP TABLE IF EXISTS `vw_asn_jns_kelamin`;
/*!50001 DROP VIEW IF EXISTS `vw_asn_jns_kelamin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_asn_jns_kelamin` AS SELECT
 1 AS `nis`,
  1 AS `nama`,
  1 AS `jenKel` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_jml_agama_siswa`
--

DROP TABLE IF EXISTS `vw_jml_agama_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_jml_agama_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_jml_agama_siswa` AS SELECT
 1 AS `Nama`,
  1 AS `Jumlah` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_siswa`
--

DROP TABLE IF EXISTS `vw_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_siswa` AS SELECT
 1 AS `nis`,
  1 AS `nama`,
  1 AS `kd_agama` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_agama`
--

/*!50001 DROP VIEW IF EXISTS `vw_agama`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_agama` AS select `agama`.`kode` AS `kode`,`agama`.`nama` AS `nama` from `agama` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_agama_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_agama_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_agama_siswa` AS select `siswa`.`nis` AS `NIS`,`siswa`.`nama` AS `Nama_Siswa`,`agama`.`nama` AS `Agama_Siswa` from (`siswa` join `agama`) where `siswa`.`kd_agama` = `agama`.`kode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_asn_jns_kelamin`
--

/*!50001 DROP VIEW IF EXISTS `vw_asn_jns_kelamin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_asn_jns_kelamin` AS select `siswa`.`nis` AS `nis`,`siswa`.`nama` AS `nama`,if(substr(`siswa`.`nis`,7,1) = '1','Laki-Laki','Perempuan') AS `jenKel` from `siswa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_jml_agama_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_jml_agama_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_jml_agama_siswa` AS select `vw_agama`.`nama` AS `Nama`,count(`vw_agama`.`nama`) AS `Jumlah` from (`vw_siswa` join `vw_agama`) where `vw_agama`.`kode` = `vw_siswa`.`kd_agama` group by `vw_agama`.`kode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_siswa` AS select `siswa`.`nis` AS `nis`,`siswa`.`nama` AS `nama`,`siswa`.`kd_agama` AS `kd_agama` from `siswa` */;
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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-11-14 15:21:58
