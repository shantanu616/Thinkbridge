-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: thinkbridge
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_lists`
--

DROP TABLE IF EXISTS `inventory_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `request_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_lists_request_id_unique` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_lists`
--

LOCK TABLES `inventory_lists` WRITE;
/*!40000 ALTER TABLE `inventory_lists` DISABLE KEYS */;
INSERT INTO `inventory_lists` VALUES (1,'5ef9d5fb3fa09',1,'Tomato Ketchup','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.\r\nThe issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',500,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBzKkoSmmMIFWfvXcbOPnLsyJIZXSexUX96w&usqp=CAU',1,'2020-06-29 06:22:27','2020-06-29 06:22:27'),(2,'5ef9d75a3883c',1,'Wheat','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',150,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWfpTAHq5rKMPWnOW6ZaCjpwGhv0fuQW9o-6UIpXRXxknUXWBpCt0T54Rm3mxsNd8BYZw32rs&usqp=CAc',1,'2020-06-29 06:28:18','2020-06-29 06:28:18'),(4,'5ef9d7cf221ae',1,'Rice','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',140,'data:image/jpeg;base64,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',1,'2020-06-29 06:30:15','2020-06-29 06:30:15'),(5,'5ef9d7f5cc188',1,'Horlicks','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',250,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcbVVMryc6rtO6o4fFOL7MjqCeRopaVSzqwA&usqp=CAU',1,'2020-06-29 06:30:53','2020-06-29 06:30:53'),(6,'5ef9d828a20bc',1,'Tide','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',270,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTsZA7KAtaw8BlzdeFuFpvagUdR4iBEtIwieQ&usqp=CAU',1,'2020-06-29 06:31:44','2020-06-29 06:31:44'),(7,'5ef9d93e60aaf',1,'Mustard Oil','The issue is the state is being set upon component being loaded. But when it receive new props, the state is not getting updated. How to update the state in this case? Thanks in advance.',640,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTJrMdoq3SMAvuRw57Gf0kDNOaD4ybkEVgcdqVuNMrc7NEOKwZ5B1m-f67Kbg&usqp=CAc',1,'2020-06-29 06:36:22','2020-06-29 06:36:22');
/*!40000 ALTER TABLE `inventory_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2020_06_11_121729_create_user_table',1),(9,'2020_06_29_064550_create_inventory_lists_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('000541ef5f2418a063179a5742548fa1476d34134ab49f98b9e152b9fba7a7c4689422cef1643f53',1,1,NULL,'[]',0,'2020-06-29 00:24:28','2020-06-29 00:24:28','2021-06-29 05:54:28'),('0c2c296d60f3d9fa26f2e7e60d1e8744ae88e6d22fa135530298dd85b4c02d48389b440f052f8e73',1,1,NULL,'[]',0,'2020-06-29 06:18:13','2020-06-29 06:18:13','2021-06-29 11:48:13'),('10f8d6c8f92bba05ba5122c6dcd2fe11afdc3f7808d681866b4fb76b83a4b0b5452b8ccb952d4bb2',1,1,NULL,'[]',1,'2020-06-29 00:23:15','2020-06-29 00:23:15','2021-06-29 05:53:15'),('1fc38b794dce4488741032b8732125aced15428984eab481ba954eb78f7118a3b7e7e37959879df2',1,1,NULL,'[]',0,'2020-06-28 23:23:01','2020-06-28 23:23:01','2021-06-29 04:53:01'),('314182aadb2a2037cf6510f41f671cbeb6d08b42a618e2b5c32d0bb2638a336c5c826bd1837e10be',1,1,NULL,'[]',1,'2020-06-29 00:04:15','2020-06-29 00:04:15','2021-06-29 05:34:15'),('394cb6c647eb4f9b9cb8aabe7fa8f4e441379275897ac0eed8031ec0ef3ab428a579ce033b538639',1,1,NULL,'[]',1,'2020-06-29 00:12:53','2020-06-29 00:12:53','2021-06-29 05:42:53'),('74d32bde4236a98d0de760f8c0286b490147207c1ce973f20850ea18dc4a1c7653abdd635bc8ae08',1,1,NULL,'[]',0,'2020-06-28 23:21:22','2020-06-28 23:21:22','2021-06-29 04:51:22'),('d731787b8ba2b2caab89d50791b9485d4377af0036267e389ca94c380ac65a50190a3b5baeda183a',1,1,NULL,'[]',1,'2020-06-29 00:12:10','2020-06-29 00:12:10','2021-06-29 05:42:10'),('f31eff4e3c13198736d7806a8addc11f09dea456774ddd13752b7010ac6e6c8f2b958ec911891459',1,1,NULL,'[]',1,'2020-06-29 06:13:39','2020-06-29 06:13:39','2021-06-29 11:43:39');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','NOol1MOauK5OLKpDofMFoZyKuCeAuonrJJ5q884c',NULL,'http://localhost',1,0,0,'2020-06-28 23:20:27','2020-06-28 23:20:27'),(2,NULL,'Laravel Password Grant Client','VjC74PyI4izJdyt9glgY8f3mB4d533cespRUIsjO','users','http://localhost',0,1,0,'2020-06-28 23:20:28','2020-06-28 23:20:28');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-06-28 23:20:28','2020-06-28 23:20:28');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Accountid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0 inactive 1 active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_accountid_unique` (`Accountid`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'5ef972d467bf0','Shantanu Gupta','shantanugupta616@gmail.com',NULL,'$2y$10$MdwMTL/3wFAzmKFg8be2Ju0.K/XpU8YWD6W.tmlRklDj1yeFeJovq',NULL,1,'2020-06-28 23:19:24','2020-06-28 23:19:24');
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

-- Dump completed on 2020-06-29 17:58:17
