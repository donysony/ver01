CREATE DATABASE  IF NOT EXISTS `ver01` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ver01`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ver01
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_pw` varchar(45) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'1234','name123'),(2,'1234','name123'),(4,'1234','name123');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_board` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` date DEFAULT NULL,
  `view_cnt` int DEFAULT '0',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (5,'test title','new test content modify','user11','2023-04-30 03:11:20','2023-05-05',19),(6,'새로 작성하는 글 select key','안녕 내용 select key','new 경선^^','2023-04-30 03:52:23',NULL,5),(8,'new title123','new content','newbie','2023-05-01 12:38:18','2023-05-05',7),(9,'test modify title','test new content','user00','2023-05-01 19:47:54','2023-05-05',2),(10,'test modify','test content~~~modify','newbeeeeeee','2023-05-03 17:33:48','2023-05-05',0),(12,'modify','modify123','ãì¤ì ','2023-05-04 01:48:42','2023-05-05',3),(14,'','','','2023-05-04 02:00:57',NULL,0),(15,'123','1231modify','1231','2023-05-04 02:17:41','2023-05-05',1),(16,'hello','테스트임다 수정합니다','경서어어엉ㅇ','2023-05-04 02:32:18','2023-05-05',1),(17,'asd','asdfsdfa','sds','2023-05-04 02:54:31',NULL,1),(18,'왕ㅇ','옹','아','2023-05-04 04:36:01',NULL,0),(19,'test입니다','tsetsdtsdfskdlfnl','sld','2023-05-04 04:49:31',NULL,0),(20,'test1','test1','test1','2023-05-04 04:51:38',NULL,0),(21,'test','estesdfsd','sdfsdfssss','2023-05-04 04:55:40',NULL,0),(22,'몇개를 작성하는지 모르겠다 ','우엉어어','경','2023-05-04 04:57:03',NULL,0),(23,'느낌이 좋아','이번엔  될거 같아\r\n','젭알~','2023-05-04 05:00:56',NULL,0),(24,'title','test','test','2023-05-05 11:17:34',NULL,0),(25,'','','','2023-05-05 11:23:52',NULL,0),(26,'ㅅㄷㄴㅅ','ㅅㄷㄴㅅ','ㄴㅅㄷㄴ','2023-05-05 11:49:09',NULL,0),(27,'ddd','ddddd','dd','2023-05-05 11:57:19',NULL,0),(28,'aa','aaaa','aa','2023-05-05 12:19:36',NULL,0),(29,'새로작성','하이','아아','2023-05-05 15:22:08',NULL,1);
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  1:37:18
