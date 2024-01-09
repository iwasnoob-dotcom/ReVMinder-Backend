-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: revminder
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `layanan`
--

DROP TABLE IF EXISTS `layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `jarak` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `kategori` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dikerjakan` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan`
--

LOCK TABLES `layanan` WRITE;
/*!40000 ALTER TABLE `layanan` DISABLE KEYS */;
INSERT INTO `layanan` VALUES (13,'2023-12-20 12:12:00','10km',200000,'Oli','Bengkel','Ganti oli gardan'),(14,'2023-12-20 12:12:00','20km',200000,'Oli','Bengkel','Ganti oli'),(18,'2023-12-20 13:13:00','20km',200000,'Oli','Sendiri','Ganti Oli');
/*!40000 ALTER TABLE `layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_mobil`
--

DROP TABLE IF EXISTS `layanan_mobil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan_mobil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `jarak` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `dikerjakan` varchar(20) DEFAULT NULL,
  `keterangan` text,
  `id_mobil` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mobil` (`id_mobil`),
  CONSTRAINT `layanan_mobil_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_mobil`
--

LOCK TABLES `layanan_mobil` WRITE;
/*!40000 ALTER TABLE `layanan_mobil` DISABLE KEYS */;
INSERT INTO `layanan_mobil` VALUES (1,'2023-12-22 04:04:00','100km',100000,'Oli','','Ganti Oli',24),(2,'2023-12-22 12:41:00','100km',200000,'Oli','','Ganti Oli Gardan',24),(3,'2023-12-29 04:01:00','800km',1000000,'Mesin','Sendiri','Turun Mesin',24);
/*!40000 ALTER TABLE `layanan_mobil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_motor`
--

DROP TABLE IF EXISTS `layanan_motor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan_motor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal` datetime DEFAULT NULL,
  `jarak` varchar(50) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `dikerjakan` varchar(20) DEFAULT NULL,
  `keterangan` text,
  `id_motor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_motor` (`id_motor`),
  CONSTRAINT `layanan_motor_ibfk_1` FOREIGN KEY (`id_motor`) REFERENCES `motor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_motor`
--

LOCK TABLES `layanan_motor` WRITE;
/*!40000 ALTER TABLE `layanan_motor` DISABLE KEYS */;
INSERT INTO `layanan_motor` VALUES (1,'2023-12-20 12:12:00','10km',200000,'Mesin','Bengkel','Turun Mesin',21),(2,'2023-12-21 12:12:00','1000km',100000,'Oli','Bengkel','Ganti oli di bengkel',24),(3,'2023-12-21 12:12:00','1000km',200000,'Oli','Bengkel','Ganti oli di bengkel',25);
/*!40000 ALTER TABLE `layanan_motor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobil`
--

DROP TABLE IF EXISTS `mobil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `nama_pemilik` text COLLATE utf8mb4_general_ci NOT NULL,
  `no_pol` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kendaraan` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `merek` text COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `transmisi` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `tahun` int NOT NULL,
  `warna` text COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` text COLLATE utf8mb4_general_ci NOT NULL,
  `produk` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobil`
--

LOCK TABLES `mobil` WRITE;
/*!40000 ALTER TABLE `mobil` DISABLE KEYS */;
INSERT INTO `mobil` VALUES (12,27,'','','Lamborghini Marchilago','','','',2006,'','',''),(14,35,'','','GTR R35','','','',2008,'','',''),(19,25,'','','Bugati Veyron','','','',2010,'','',''),(20,25,'','','AUDI','','','',2012,'','',''),(24,44,'Andy','BA4141A','Jeep','Jeep','JeepX','Manual',2023,'Biru','Bensin','Pertalite');
/*!40000 ALTER TABLE `mobil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motor`
--

DROP TABLE IF EXISTS `motor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `nama_pemilik` text COLLATE utf8mb4_general_ci NOT NULL,
  `no_pol` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kendaraan` char(40) COLLATE utf8mb4_general_ci NOT NULL,
  `merek` text COLLATE utf8mb4_general_ci NOT NULL,
  `model` char(20) COLLATE utf8mb4_general_ci NOT NULL,
  `transmisi` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tahun` int NOT NULL,
  `warna` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `produk` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `motor_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motor`
--

LOCK TABLES `motor` WRITE;
/*!40000 ALTER TABLE `motor` DISABLE KEYS */;
INSERT INTO `motor` VALUES (17,35,'','','Ducati Panegale','','','',2020,'','',''),(21,44,'Andy','ABC 112 D','SupraX','Supra','SupRaxx','Manual',2011,'Silver','Bensin','Pertalite'),(22,44,'Andy','08221','SupraX','Supra','SUPRA','Manual',2011,'Putih','Bensin','Pertalite'),(23,46,'Anggie','03453','Motor','Motor','Motor','manual',2000,'Merah','Bensin','Pertalite'),(24,47,'Anggie','08222','Supra X','Supra','Suprax','Manual',2011,'Silver','Bensin','Pertalite'),(25,48,'Anggie','B5 RRA','Supra X','Supra','Supra','Manual',2011,'Silver','Bensin','Pertalite');
/*!40000 ALTER TABLE `motor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengingat`
--

DROP TABLE IF EXISTS `pengingat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengingat` (
  `tanggal` datetime NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ingatkan` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengingat`
--

LOCK TABLES `pengingat` WRITE;
/*!40000 ALTER TABLE `pengingat` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengingat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengingat_mobil`
--

DROP TABLE IF EXISTS `pengingat_mobil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengingat_mobil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_mobil` int DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `ingatkan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mobil` (`id_mobil`),
  CONSTRAINT `pengingat_mobil_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengingat_mobil`
--

LOCK TABLES `pengingat_mobil` WRITE;
/*!40000 ALTER TABLE `pengingat_mobil` DISABLE KEYS */;
INSERT INTO `pengingat_mobil` VALUES (1,24,'2023-12-22 04:04:00','Ganti oli','5 Menit Sebelumnya');
/*!40000 ALTER TABLE `pengingat_mobil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengingat_motor`
--

DROP TABLE IF EXISTS `pengingat_motor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengingat_motor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_motor` int DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `ingatkan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_motor` (`id_motor`),
  CONSTRAINT `pengingat_motor_ibfk_1` FOREIGN KEY (`id_motor`) REFERENCES `motor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengingat_motor`
--

LOCK TABLES `pengingat_motor` WRITE;
/*!40000 ALTER TABLE `pengingat_motor` DISABLE KEYS */;
INSERT INTO `pengingat_motor` VALUES (1,21,'2023-12-21 12:12:00','Oli','5 Menit Sebelumnya'),(2,21,'2023-12-21 12:12:00','Mesin','5 Menit Sebelumnya'),(3,25,'2023-12-21 10:10:00','Ganti oli','5 Menit Sebelumnya');
/*!40000 ALTER TABLE `pengingat_motor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nowa` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (25,'ade','ade@gmail.com','0895703085680','jl dursasana raya','$2b$10$Gbk9Ks99RCEShwjkCfB.k.Ot0ld0d1Bf/xymJnoM91TL2RYOmmj5a'),(27,'dwinandar2','adedwinandar@gmail.com','0891283123','dursasanaraya','$2b$10$nHlUQkYRXD4fnJIN0LmrNuHvoAUK/7ihi0iKeUf2Ba2aD4U/I977K'),(30,'gyfiqu','wivoqe@mailinator.com','0892749213','In eiusmod et et qua','$2b$10$UaVErzlh7MVQDXFgc32hf.sgahw647QWy65jeytGxZwZSzL3CPW1y'),(31,'fakodanexi','tohyrasilu@mailinator.com','089577525129','Qui atque maxime vol','$2b$10$t2gLto3IWbjqU6Gvp.xcmuegicJx0h.WZZJxYVozQxg/AVKr46AjC'),(32,'beremu','jebopi@mailinator.com','0896249287','Qui repellendus Del','$2b$10$X.LcLNRtXFAsG97kOen51efC3syfCq5gI.PsuKU.tR/79VbGMKDnG'),(34,'asdasd','adedwinandar@gmail.com','08912831232','dursasanaraya','$2b$10$y8wlqDogizLpl2yq9bC6B.6rZpD2i2dbGmjLz.JgEfalo8prLHv0K'),(35,'yunan','yunan@gmail.com','0896524241','dursasanaraya','$2b$10$yr7V.iMLwUpbqyOeyopZkeAq3Mrbfw27xsusMWYZyUD8nPywb.PQ2'),(36,'asdasdasdd','rahasia@gmail.com','0892738123','rahasia asdasd','$2b$12$0naXErpen.HaC9XpBfGOI.EuRBXfqZ3hCPX02AOXwKGY1rp/gRDC6'),(37,'wuqepagi','sini@mailinator.com','08977692632','Aspernatur placeat ','$2b$12$Cmg1atCkD6WuF1OFgh2I9OhxWx4fz4bBx/52J8wNsLEevz8OTKu9y'),(38,'nodokyfyly','jemadak@mailinator.com','089798722323','Magnam ipsum in eos','$2b$12$E5MTxrJ3nHRLk3YM03ovK.GfmayHurksQUy9btZTinsNTDWTUy5mK'),(39,'yunanasd','asdesdsda@gmail.com','0897264812321','Voluptas qui culpa a','$2b$12$ojPdYjTKlBgRci9AEVronOXxRzmsi.11MXrhbQxeRE7QRvGUciQDq'),(40,'qyvyl','lorusoci@mailinator.com','08979684546','Illum itaque proide','$2b$12$E4ybh4yzIaohTrkS4adDMOE4BVDCJnOm4wlq/G8/iHHzxQnUFvWJq'),(41,'bangandy','andy@mailinator.com','08978676436','At alias a consequat','$2b$12$VfREAu1xj.jAiCJCui5P8eMYnHxaeAGOwzY37ZeSiUkU7.NHoOh9K'),(42,'dudul','dudul@reply.com','89898989','Madiun','$2b$12$YfRy3sCxTk.51Z9lC655iem6uhPjU5PIzhLS/vVgoIjqhhJfVQz16'),(43,'nafid','nafid123@reply.com','1210292','genuk','$2b$12$qE6Fq.hH//EWezYzg92aiuJx7vbW/dm7VNohq5N6Mi3C.ZGbGHK1e'),(44,'andy','andy@gmail.com','082435313532','Jln Merpati','$2b$12$trWML1380nRZ83jBOy19BuLidV3FbV380qCzYRXc.ryYqbLaU.Hau'),(45,'anggi','anggi@gmail.com','081243423','Jln Jln','$2b$12$KZKRK35SqBQJEwm1h8b.DOHwPvKmtbzA48fDFV4CEfnvxh0UFMD36'),(46,'anggie','anggie123@gmail.com','098123414','Jln merpati','$2b$12$/wWt11CmdAUHZ./QrrVRg.u3xa2Exml0AfkFs0cmRNWvJ9mnylYka'),(47,'anggie123','anggie1234@gmail.com','0812312123123','Jln Ikan Putih','$2b$12$eZr1L/UyxSHRvYedSfPX9uoL5NpgZ11w7kVtDBXmgx.C7qFMISEaS'),(48,'Anggie234','anggie234@gmail.com','08456233','Jln Merpati','$2b$12$wEqUYJNVDOHF75i2pC7dAu7rUkqYB6YR9xCu2qhu5C9PeJ90kEbRi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 11:08:02
