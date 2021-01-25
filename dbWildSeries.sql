-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: projet3
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20201212144008','2020-12-15 14:52:17',1107),('DoctrineMigrations\\Version20201214180939','2020-12-15 14:52:18',1045),('DoctrineMigrations\\Version20201215110313','2020-12-15 14:53:54',115),('DoctrineMigrations\\Version20201215122422','2020-12-15 14:53:54',17),('DoctrineMigrations\\Version20201215233859','2020-12-22 12:10:45',40),('DoctrineMigrations\\Version20201222111027','2020-12-22 12:10:45',33),('DoctrineMigrations\\Version20201222111716','2020-12-22 12:17:22',53),('DoctrineMigrations\\Version20201222120202','2020-12-22 13:02:17',79),('DoctrineMigrations\\Version20210109113437','2021-01-09 12:35:07',216),('DoctrineMigrations\\Version20210110093416','2021-01-10 10:34:40',70),('DoctrineMigrations\\Version20210110131921','2021-01-10 14:19:36',80),('DoctrineMigrations\\Version20210119182723','2021-01-19 19:27:31',105),('DoctrineMigrations\\Version20210119182956','2021-01-19 19:30:01',60),('DoctrineMigrations\\Version20210119185237','2021-01-19 19:53:39',121),('DoctrineMigrations\\Version20210119194739','2021-01-19 20:47:56',56),('DoctrineMigrations\\Version20210120135935','2021-01-20 14:59:45',58);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://cdn.pixabay.com/photo/2014/12/26/10/50/flame-580342_960_720.jpg','gaz'),(2,'https://cdn.pixabay.com/photo/2018/01/24/17/33/light-bulb-3104355_960_720.jpg','electricite'),(3,'https://cdn.pixabay.com/photo/2017/01/18/12/33/session-1989711_960_720.png','test qcm\n'),(4,'https://cdn.pixabay.com/photo/2017/09/24/15/54/butterfly-2782239_960_720.jpg','papillon\n');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practical_work`
--

DROP TABLE IF EXISTS `practical_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practical_work` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quizz_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `theme_id` int NOT NULL,
  `is_random` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_500501A0BA934BCD` (`quizz_id`),
  KEY `IDX_500501A059027487` (`theme_id`),
  CONSTRAINT `FK_500501A059027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  CONSTRAINT `FK_500501A0BA934BCD` FOREIGN KEY (`quizz_id`) REFERENCES `quizz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practical_work`
--

LOCK TABLES `practical_work` WRITE;
/*!40000 ALTER TABLE `practical_work` DISABLE KEYS */;
INSERT INTO `practical_work` VALUES (2,2,'tp-1','<h1>test</h1>',0,1,0);
/*!40000 ALTER TABLE `practical_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizz`
--

DROP TABLE IF EXISTS `quizz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `theme_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int NOT NULL,
  `is_free` tinyint(1) NOT NULL DEFAULT '0',
  `is_practical_work` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_7C77973D59027487` (`theme_id`),
  CONSTRAINT `FK_7C77973D59027487` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizz`
--

LOCK TABLES `quizz` WRITE;
/*!40000 ALTER TABLE `quizz` DISABLE KEYS */;
INSERT INTO `quizz` VALUES (1,1,'test-quiz',1,0,0),(2,1,'quizz-2',1,0,1);
/*!40000 ALTER TABLE `quizz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizz_answer`
--

DROP TABLE IF EXISTS `quizz_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizz_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quizz_question_id` int NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_good` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_80226C343832395C` (`quizz_question_id`),
  CONSTRAINT `FK_80226C343832395C` FOREIGN KEY (`quizz_question_id`) REFERENCES `quizz_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizz_answer`
--

LOCK TABLES `quizz_answer` WRITE;
/*!40000 ALTER TABLE `quizz_answer` DISABLE KEYS */;
INSERT INTO `quizz_answer` VALUES (1,1,'rep 1 true',1),(2,1,'rep 2',0),(3,1,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(4,1,'rep 3',0),(5,2,'rep 1 true',1),(6,2,'rep 2',0),(7,2,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(8,2,'rep 3',0),(9,3,'rep 1 true',1),(10,3,'rep 2',0),(11,3,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(12,3,'rep 3',0),(13,4,'rep 1 true',1),(14,4,'rep 2',0),(15,4,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(16,4,'rep 3',0),(17,5,'rep 1 true',1),(18,5,'rep 2',0),(19,5,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(20,5,'rep 3',0),(21,6,'rep 1 true',1),(22,6,'rep 2',0),(23,6,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(24,6,'rep 3',0),(25,7,'rep 1 true',1),(26,7,'rep 2',0),(27,7,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(28,7,'rep 3',0),(29,8,'rep 1 true',1),(30,8,'rep 2',0),(31,8,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(32,8,'rep 3',0),(33,9,'rep 1 true',1),(34,9,'rep 2',0),(35,9,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(36,9,'rep 3',0),(37,10,'rep 1 true',1),(38,10,'rep 2',0),(39,10,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(40,10,'rep 3',0),(41,11,'rep 1 true',1),(42,11,'rep 2',0),(43,11,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(44,11,'rep 3',0),(45,12,'rep 1 true',1),(46,12,'rep 2',0),(47,12,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(48,12,'rep 3',0),(49,12,'rep 1 true',1),(50,12,'rep 2',0),(51,12,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(52,12,'rep 3',0),(53,13,'rep 1 true',1),(54,13,'rep 2',0),(55,13,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(56,13,'rep 3',0),(57,14,'rep 1 true',1),(58,14,'rep 2',0),(59,14,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(60,14,'rep 3',0),(61,15,'rep 1 true',1),(62,15,'rep 2',0),(63,15,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(64,15,'rep 3',0),(65,16,'rep 1 true',1),(66,16,'rep 2',0),(67,16,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(68,16,'rep 3',0),(69,17,'rep 1 true',1),(70,17,'rep 2',0),(71,17,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(72,17,'rep 3',0),(73,18,'rep 1 true',1),(74,18,'rep 2',0),(75,18,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(76,18,'rep 3',0),(77,19,'rep 1 true',1),(78,19,'rep 2',0),(79,19,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(80,19,'rep 3',0),(81,20,'rep 1 true',1),(82,20,'rep 2',0),(83,20,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1),(84,20,'rep 3',0),(85,21,'rep',1),(86,22,'rep',1);
/*!40000 ALTER TABLE `quizz_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizz_question`
--

DROP TABLE IF EXISTS `quizz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizz_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `quizz_id` int NOT NULL,
  `image_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3723B55C3DA5256D` (`image_id`),
  KEY `IDX_3723B55CBA934BCD` (`quizz_id`),
  CONSTRAINT `FK_3723B55C3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `FK_3723B55CBA934BCD` FOREIGN KEY (`quizz_id`) REFERENCES `quizz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizz_question`
--

LOCK TABLES `quizz_question` WRITE;
/*!40000 ALTER TABLE `quizz_question` DISABLE KEYS */;
INSERT INTO `quizz_question` VALUES (1,'Test pour une question à choix simple?',1,NULL),(2,'Test pour une question à choix multiple?',1,NULL),(3,'Test pour une question à choix simple?',1,NULL),(4,'Test pour une question à choix multiple?',1,NULL),(5,'Test pour une question à choix simple?',1,NULL),(6,'Test pour une question à choix multiple?',1,NULL),(7,'Test pour une question à choix simple?',1,NULL),(8,'Test pour une question à choix multiple?',1,NULL),(9,'Test pour une question à choix simple?',1,NULL),(10,'Test pour une question à choix multiple?',1,NULL),(11,'Test pour une question à choix simple?',1,NULL),(12,'Test pour une question à choix multiple?',1,NULL),(13,'Test pour une question à choix simple?',1,NULL),(14,'Test pour une question à choix multiple?',1,NULL),(15,'Test pour une question à choix simple?',1,NULL),(16,'Test pour une question à choix multiple?',1,NULL),(17,'Test pour une question à choix simple?',1,NULL),(18,'Test pour une question à choix multiple?',1,NULL),(19,'Test pour une question à choix simple?',1,NULL),(20,'Test pour une question à choix multiple?',1,4),(21,'Q quiz 2',2,NULL),(22,'Q quizz 2',2,NULL);
/*!40000 ALTER TABLE `quizz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'https://cdn.futura-sciences.com/buildsv6/images/wide1920/a/0/f/a0fc73919d_50166390_chaton.jpg');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_quizz_question`
--

DROP TABLE IF EXISTS `resource_quizz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_quizz_question` (
  `resource_id` int NOT NULL,
  `quizz_question_id` int NOT NULL,
  PRIMARY KEY (`resource_id`,`quizz_question_id`),
  KEY `IDX_456D3EFF89329D25` (`resource_id`),
  KEY `IDX_456D3EFF3832395C` (`quizz_question_id`),
  CONSTRAINT `FK_456D3EFF3832395C` FOREIGN KEY (`quizz_question_id`) REFERENCES `quizz_question` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_456D3EFF89329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_quizz_question`
--

LOCK TABLES `resource_quizz_question` WRITE;
/*!40000 ALTER TABLE `resource_quizz_question` DISABLE KEYS */;
INSERT INTO `resource_quizz_question` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22);
/*!40000 ALTER TABLE `resource_quizz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'QCM','tous les QCM sont disponibles',25),(2,'QCM et TP','tous les QCM et TP sont disponibles',35);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9775E7083DA5256D` (`image_id`),
  CONSTRAINT `FK_9775E7083DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'test-qcm',3),(2,'gaz',1),(3,'sans image',NULL);
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '0',
  `activation_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'admin@gmail.com','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$nXYbVBjWl3IjGdLad7+Mqg$2I2u/R0Yy4URtXREFkBtnAcaN7lSqdEqliYEsuM2nbI','Manon','Marizy',1,'3ea0ea37e4710edfe8e6aff0e00238c6'),(14,'test@gmail.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$2/diqAhnG5K5NANEYozSIw$QgE0KsRYJl8Z5uH/UbXiS8PnEDR+XHvpQH8t520NbPU','Manon','Marizy',1,'81e79bb6f6813c9da0c28917a2df6fa6'),(15,'test2@gmail.om','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$9l8v7/JEh/MS1c2+76j3MA$8KmkS+4WDT32l4qm+OtdAaCfSXI0QSkeqbp/sBcrqbI','Manon','ma',1,'6b5456476c013b9e3d67812acb1c3012'),(16,'test3@gmail.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$NeeXzI581K5Hk3YSOLrpaQ$rlB63hzNfzCnDCsC1/YPYf+WlppTn6gYRbzSTkRnwW8','Manon','Ma',1,'4e878c66e331fcd5865e167d68ea8d6f'),(17,'testdemo@gmail.com','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$RKwe0J4JckMkvG8EbKM6Sg$4pbF4FPy828JtdqFkWasyYcN7XaYIxu4HDpLXyy7B1c','MrTest','Test1',1,'50759c0dd53e6ac716e258c79f97fbc6');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_quizz_answer`
--

DROP TABLE IF EXISTS `user_quizz_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_quizz_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_answer` json NOT NULL,
  `quizz_try_number` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished_at` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `quizz_id` int NOT NULL,
  `quizz_question_id` int NOT NULL,
  `answered_right` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_EE1036A76ED395` (`user_id`),
  KEY `IDX_EE1036BA934BCD` (`quizz_id`),
  KEY `IDX_EE10363832395C` (`quizz_question_id`),
  CONSTRAINT `FK_EE10363832395C` FOREIGN KEY (`quizz_question_id`) REFERENCES `quizz_question` (`id`),
  CONSTRAINT `FK_EE1036A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_EE1036BA934BCD` FOREIGN KEY (`quizz_id`) REFERENCES `quizz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_quizz_answer`
--

LOCK TABLES `user_quizz_answer` WRITE;
/*!40000 ALTER TABLE `user_quizz_answer` DISABLE KEYS */;
INSERT INTO `user_quizz_answer` VALUES (9,'[57, 59]',1,'2021-01-10 11:18:48','2021-01-10 11:28:30',14,1,14,1),(10,'[18]',1,'2021-01-10 11:35:43','2021-01-10 11:35:47',14,1,5,0),(11,'[30, 31]',1,'2021-01-10 11:35:49','2021-01-10 11:36:04',14,1,8,0),(12,'[41, 43]',1,'2021-01-10 11:36:05','2021-01-10 11:36:25',14,1,11,1),(13,'[69, 71]',1,'2021-01-10 11:36:26','2021-01-10 11:36:29',14,1,17,1),(14,'[35]',1,'2021-01-10 11:36:30','2021-01-10 14:50:29',14,1,9,0),(15,'[78, 80]',1,'2021-01-10 11:36:35','2021-01-10 11:36:39',14,1,19,0),(16,'[37, 40]',1,'2021-01-10 11:36:40','2021-01-10 11:36:43',14,1,10,0),(17,'[61, 63]',1,'2021-01-10 11:36:43','2021-01-10 11:36:46',14,1,15,1),(18,'[13, 15]',1,'2021-01-10 11:36:47','2021-01-10 11:36:49',14,1,4,1),(19,'[2]',1,'2021-01-10 11:36:50','2021-01-10 11:36:52',14,1,1,0),(20,'[9, 11]',1,'2021-01-10 11:36:53','2021-01-10 11:36:55',14,1,3,1),(21,'[21, 22]',1,'2021-01-10 11:36:56','2021-01-10 11:37:25',14,1,6,0),(22,'[27]',1,'2021-01-10 11:37:25','2021-01-10 11:37:29',14,1,7,0),(23,'[45, 47, 49, 51]',1,'2021-01-10 11:37:29','2021-01-10 11:38:15',14,1,12,0),(24,'[5, 6]',1,'2021-01-10 11:38:17','2021-01-10 11:38:20',14,1,2,0),(25,'[53, 55]',1,'2021-01-10 11:38:21','2021-01-10 11:38:23',14,1,13,1),(26,'[81, 83]',1,'2021-01-10 11:38:24','2021-01-10 11:38:27',14,1,20,1),(27,'[73, 75]',1,'2021-01-10 11:38:27','2021-01-10 11:38:29',14,1,18,1),(28,'[66]',1,'2021-01-10 11:38:30','2021-01-10 11:38:32',14,1,16,0),(29,'[35]',2,'2021-01-10 14:49:49','2021-01-10 14:52:30',14,1,9,0),(30,'[42, 43]',2,'2021-01-10 14:52:31','2021-01-10 14:52:35',14,1,11,0),(31,'[63]',2,'2021-01-10 14:52:36','2021-01-10 14:52:38',14,1,15,0),(32,'[15]',2,'2021-01-10 14:52:39','2021-01-10 14:52:42',14,1,4,0),(33,'[]',2,'2021-01-10 14:52:42','2021-01-10 14:52:44',14,1,18,0),(34,'[]',2,'2021-01-10 14:52:49','2021-01-10 14:52:50',14,1,7,0),(35,'[]',2,'2021-01-10 14:52:51','2021-01-10 14:52:53',14,1,20,0),(36,'[]',2,'2021-01-10 14:52:54','2021-01-10 14:52:55',14,1,2,0),(37,'[]',2,'2021-01-10 14:52:55','2021-01-10 14:52:57',14,1,6,0),(38,'[]',2,'2021-01-10 14:52:58','2021-01-10 14:53:00',14,1,12,0),(39,'[]',2,'2021-01-10 14:53:00','2021-01-10 14:53:02',14,1,1,0),(40,'[]',2,'2021-01-10 14:53:03','2021-01-10 14:53:04',14,1,10,0),(41,'[]',2,'2021-01-10 14:53:05','2021-01-10 14:53:07',14,1,5,0),(42,'[]',2,'2021-01-10 14:53:07','2021-01-10 14:53:08',14,1,17,0),(43,'[]',2,'2021-01-10 14:53:09','2021-01-10 14:53:09',14,1,14,0),(44,'[]',2,'2021-01-10 14:53:09','2021-01-10 14:53:13',14,1,3,0),(45,'[]',2,'2021-01-10 14:53:14','2021-01-10 14:53:15',14,1,19,0),(46,'[]',2,'2021-01-10 14:53:15','2021-01-10 14:53:17',14,1,16,0),(47,'[]',2,'2021-01-10 14:53:18','2021-01-10 14:53:19',14,1,13,0),(48,'[]',2,'2021-01-10 14:53:20','2021-01-10 14:53:22',14,1,8,0),(49,'[]',3,'2021-01-10 14:55:41','2021-01-10 14:55:43',14,1,3,0),(50,'[15]',3,'2021-01-10 14:56:37','2021-01-10 15:30:18',14,1,4,0),(51,'[65]',3,'2021-01-10 15:30:34','2021-01-10 15:34:21',14,1,16,1),(52,'[26]',3,'2021-01-10 15:34:24','2021-01-10 16:32:33',14,1,7,0),(53,'[81]',3,'2021-01-10 16:32:34','2021-01-10 16:36:09',14,1,20,0),(54,'[18]',3,'2021-01-10 16:38:03','2021-01-10 16:38:07',14,1,5,0),(55,'[58]',3,'2021-01-10 16:39:11','2021-01-10 16:39:14',14,1,14,0),(56,'[78]',3,'2021-01-10 16:39:20','2021-01-10 16:39:31',14,1,19,0),(57,'[46, 52]',3,'2021-01-10 16:39:33','2021-01-10 16:43:50',14,1,12,0),(58,'[5, 6]',3,'2021-01-10 16:43:52','2021-01-10 16:47:06',14,1,2,0),(59,'[34]',3,'2021-01-10 16:47:07','2021-01-10 16:47:51',14,1,9,0),(60,'[41, 42]',3,'2021-01-10 16:47:52','2021-01-10 16:48:47',14,1,11,0),(61,'[29, 30]',3,'2021-01-10 16:48:48','2021-01-10 16:49:12',14,1,8,0),(62,'[69]',3,'2021-01-10 16:49:13','2021-01-10 16:50:16',14,1,17,0),(63,'[21]',3,'2021-01-10 16:50:17','2021-01-10 16:50:45',14,1,6,0),(64,'[62]',3,'2021-01-10 16:50:45','2021-01-10 16:52:08',14,1,15,0),(65,'[53, 54]',3,'2021-01-10 16:53:08','2021-01-10 16:53:13',14,1,13,0),(66,'[37]',3,'2021-01-10 16:53:14','2021-01-10 16:54:08',14,1,10,0),(67,'[1]',3,'2021-01-10 16:54:09','2021-01-10 16:54:58',14,1,1,1),(68,'[73, 74]',3,'2021-01-10 16:54:59','2021-01-10 16:55:45',14,1,18,0),(69,'[5, 6]',4,'2021-01-10 16:56:01','2021-01-10 16:56:39',14,1,2,0),(70,'[65]',4,'2021-01-10 16:56:40','2021-01-10 16:58:47',14,1,16,1),(71,'[25]',4,'2021-01-10 16:58:48','2021-01-10 16:58:57',14,1,7,0),(72,'[74]',4,'2021-01-10 16:58:57','2021-01-10 16:59:47',14,1,18,0),(73,'[1]',4,'2021-01-10 16:59:48','2021-01-10 16:59:58',14,1,1,1),(74,'[34]',4,'2021-01-10 16:59:59','2021-01-10 17:00:05',14,1,9,0),(75,'[58]',4,'2021-01-10 17:00:05','2021-01-10 17:00:07',14,1,14,0),(76,'[78]',4,'2021-01-10 17:00:08','2021-01-10 17:00:09',14,1,19,0),(77,'[22]',4,'2021-01-10 17:00:10','2021-01-10 17:00:11',14,1,6,0),(78,'[54]',4,'2021-01-10 17:00:12','2021-01-10 17:00:13',14,1,13,0),(79,'[14]',4,'2021-01-10 17:00:13','2021-01-10 17:00:15',14,1,4,0),(80,'[62]',4,'2021-01-10 17:00:16','2021-01-10 17:00:17',14,1,15,0),(81,'[70]',4,'2021-01-10 17:00:18','2021-01-10 17:00:19',14,1,17,0),(82,'[30]',4,'2021-01-10 17:00:20','2021-01-10 17:00:21',14,1,8,0),(83,'[46]',4,'2021-01-10 17:00:22','2021-01-10 17:00:24',14,1,12,0),(84,'[38]',4,'2021-01-10 17:00:24','2021-01-10 17:00:26',14,1,10,0),(85,'[18]',4,'2021-01-10 17:00:26','2021-01-10 17:00:28',14,1,5,0),(86,'[42]',4,'2021-01-10 17:00:28','2021-01-10 17:00:30',14,1,11,0),(87,'[10]',4,'2021-01-10 17:00:31','2021-01-10 17:00:32',14,1,3,0),(89,'[81]',4,'2021-01-10 17:01:54','2021-01-10 17:03:03',14,1,20,0),(90,'[81]',5,'2021-01-10 17:03:43','2021-01-10 17:05:31',14,1,20,0),(91,'[73]',5,'2021-01-10 17:05:33','2021-01-11 14:48:24',14,1,18,0),(92,'[77, 78]',5,'2021-01-11 14:49:17','2021-01-12 09:40:07',14,1,19,0),(93,'[18]',5,'2021-01-12 09:40:23','2021-01-12 09:43:41',14,1,5,0),(94,'[34]',5,'2021-01-12 09:43:42','2021-01-12 09:43:44',14,1,9,0),(95,'[53]',5,'2021-01-12 09:43:44','2021-01-12 09:43:47',14,1,13,0),(96,'[10]',5,'2021-01-12 09:43:49','2021-01-12 09:43:51',14,1,3,0),(97,'[38]',5,'2021-01-12 09:43:52','2021-01-12 09:43:54',14,1,10,0),(98,'[58]',5,'2021-01-12 09:43:54','2021-01-12 09:43:56',14,1,14,0),(99,'[46, 49]',5,'2021-01-12 09:43:56','2021-01-12 09:43:58',14,1,12,0),(100,'[2]',5,'2021-01-12 09:43:59','2021-01-12 09:44:01',14,1,1,0),(101,'[14]',5,'2021-01-12 09:44:01','2021-01-12 09:44:03',14,1,4,0),(102,'[42]',5,'2021-01-12 09:44:03','2021-01-12 09:44:06',14,1,11,0),(103,'[62]',5,'2021-01-12 09:44:07','2021-01-12 09:44:09',14,1,15,0),(104,'[66]',5,'2021-01-12 09:44:11','2021-01-12 09:44:12',14,1,16,0),(105,'[22]',5,'2021-01-12 09:44:13','2021-01-12 09:44:15',14,1,6,0),(106,'[26]',5,'2021-01-12 09:44:15','2021-01-12 09:44:16',14,1,7,0),(107,'[69, 70]',5,'2021-01-12 09:44:17','2021-01-12 09:44:20',14,1,17,0),(108,'[29, 30]',5,'2021-01-12 09:44:20','2021-01-12 09:44:24',14,1,8,0),(109,'[8]',5,'2021-01-12 09:44:24','2021-01-12 09:44:27',14,1,2,0),(110,'[57, 58]',6,'2021-01-12 14:03:38','2021-01-12 14:03:54',14,1,14,0),(111,'[34]',6,'2021-01-12 14:04:02','2021-01-17 10:29:27',14,1,9,0),(112,'[66]',6,'2021-01-17 10:29:29','2021-01-17 10:29:32',14,1,16,0),(113,'[50]',6,'2021-01-17 10:29:33','2021-01-17 10:50:43',14,1,12,0),(114,'[81]',6,'2021-01-17 10:50:43','2021-01-17 11:30:28',14,1,20,0),(115,'[53, 54]',6,'2021-01-17 11:30:29','2021-01-17 11:35:02',14,1,13,0),(116,'[9, 10, 11]',6,'2021-01-17 11:35:03','2021-01-17 11:35:08',14,1,3,0),(117,'[26, 27]',6,'2021-01-17 11:35:09','2021-01-17 11:35:11',14,1,7,0),(118,'[21, 23]',6,'2021-01-17 11:35:12','2021-01-17 11:35:14',14,1,6,1),(119,'[5, 7]',6,'2021-01-17 11:35:14','2021-01-17 11:35:17',14,1,2,1),(120,'[73, 75]',6,'2021-01-17 11:35:18','2021-01-17 11:35:20',14,1,18,1),(121,'[29, 31]',6,'2021-01-17 11:35:20','2021-01-17 11:35:23',14,1,8,1),(122,'[1]',6,'2021-01-17 11:35:23','2021-01-17 11:35:25',14,1,1,1),(123,'[69, 71]',6,'2021-01-17 11:35:26','2021-01-17 11:35:30',14,1,17,1),(124,'[37, 39]',6,'2021-01-17 11:35:30','2021-01-17 11:35:32',14,1,10,1),(125,'[61, 63]',6,'2021-01-17 11:35:33','2021-01-17 11:35:35',14,1,15,1),(126,'[13, 15]',6,'2021-01-17 11:35:35','2021-01-17 11:35:38',14,1,4,1),(127,'[77, 79]',6,'2021-01-17 11:35:39','2021-01-17 11:35:41',14,1,19,1),(128,'[17]',6,'2021-01-17 11:35:42','2021-01-17 11:35:44',14,1,5,1),(129,'[41, 43]',6,'2021-01-17 11:35:44','2021-01-17 11:35:47',14,1,11,1),(130,'[65]',7,'2021-01-17 11:42:16','2021-01-17 11:42:21',14,1,16,1),(131,'[29, 31]',7,'2021-01-17 11:42:22','2021-01-17 11:42:24',14,1,8,1),(132,'[17]',7,'2021-01-17 11:42:25','2021-01-17 11:42:27',14,1,5,1),(133,'[53, 55]',7,'2021-01-17 11:42:27','2021-01-17 11:42:30',14,1,13,1),(134,'[61, 63]',7,'2021-01-17 11:42:31','2021-01-17 11:42:33',14,1,15,1),(135,'[77, 79]',7,'2021-01-17 11:42:34','2021-01-17 11:42:37',14,1,19,1),(136,'[69, 71]',7,'2021-01-17 11:42:38','2021-01-17 11:42:42',14,1,17,1),(137,'[33]',7,'2021-01-17 11:42:43','2021-01-17 11:42:46',14,1,9,1),(138,'[45, 47, 49, 51]',7,'2021-01-17 11:42:48','2021-01-17 11:42:55',14,1,12,0),(139,'[13, 15]',7,'2021-01-17 11:42:57','2021-01-17 11:43:02',14,1,4,1),(140,'[37, 39]',7,'2021-01-17 11:43:05','2021-01-17 11:43:09',14,1,10,1),(141,'[5, 7]',7,'2021-01-17 11:43:10','2021-01-17 11:43:14',14,1,2,1),(142,'[25, 27]',7,'2021-01-17 11:43:16','2021-01-17 11:43:23',14,1,7,1),(143,'[]',7,'2021-01-17 11:43:27',NULL,14,1,20,0),(144,'[9, 10]',1,'2021-01-19 12:28:12','2021-01-19 12:31:21',16,1,3,0),(145,'[74, 75]',1,'2021-01-19 12:31:22','2021-01-19 20:51:41',16,1,18,0),(146,'[85]',1,'2021-01-19 18:11:00','2021-01-19 18:11:04',14,2,21,1),(147,'[86]',1,'2021-01-19 18:11:05','2021-01-19 18:11:07',14,2,22,1),(148,'[85]',2,'2021-01-19 19:39:48','2021-01-19 19:48:01',14,2,21,1),(149,'[86]',2,'2021-01-19 19:48:02','2021-01-19 19:48:05',14,2,22,1),(150,'[86]',1,'2021-01-19 20:14:03','2021-01-19 20:14:08',16,2,22,1),(151,'[85]',1,'2021-01-19 20:14:08','2021-01-19 20:14:10',16,2,21,1),(152,'[]',2,'2021-01-19 20:14:17',NULL,16,2,22,0),(153,'[41, 42, 43]',1,'2021-01-19 20:51:41','2021-01-19 20:51:52',16,1,11,0),(154,'[]',1,'2021-01-19 20:51:52',NULL,16,1,17,0),(155,'[33]',1,'2021-01-20 09:37:56','2021-01-20 10:03:19',17,1,9,1),(156,'[85]',1,'2021-01-20 09:38:22','2021-01-20 10:05:04',17,2,21,1),(157,'[73, 74]',1,'2021-01-20 10:03:27','2021-01-20 10:03:34',17,1,18,0),(158,'[69, 70]',1,'2021-01-20 10:03:35','2021-01-20 10:19:55',17,1,17,0),(159,'[86]',1,'2021-01-20 10:05:06','2021-01-20 10:05:11',17,2,22,1),(160,'[85]',2,'2021-01-20 10:05:24','2021-01-20 10:05:26',17,2,21,1),(161,'[86]',2,'2021-01-20 10:05:27','2021-01-20 10:05:28',17,2,22,1),(162,'[2]',1,'2021-01-20 10:19:56','2021-01-20 10:20:04',17,1,1,0),(163,'[]',1,'2021-01-20 10:20:04',NULL,17,1,6,0);
/*!40000 ALTER TABLE `user_quizz_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subscription`
--

DROP TABLE IF EXISTS `user_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finished_at` datetime NOT NULL,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_230A18D1A76ED395` (`user_id`),
  KEY `IDX_230A18D19A1887DC` (`subscription_id`),
  CONSTRAINT `FK_230A18D19A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`),
  CONSTRAINT `FK_230A18D1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subscription`
--

LOCK TABLES `user_subscription` WRITE;
/*!40000 ALTER TABLE `user_subscription` DISABLE KEYS */;
INSERT INTO `user_subscription` VALUES (1,'2020-01-05 13:47:14','2021-02-05 13:47:14',14,2),(2,'2020-01-09 10:47:49','2021-02-09 10:47:57',15,2),(3,'2020-01-09 10:47:49','2021-02-09 10:47:57',17,2);
/*!40000 ALTER TABLE `user_subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 16:43:53
