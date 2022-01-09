-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: manager_part
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `mp_admin`
--

DROP TABLE IF EXISTS `mp_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_admin` (
  `a_user` int NOT NULL,
  `a_username` varchar(45) DEFAULT NULL,
  `a_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`a_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_admin`
--

LOCK TABLES `mp_admin` WRITE;
/*!40000 ALTER TABLE `mp_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category`
--

DROP TABLE IF EXISTS `mp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category` (
  `c_id` int NOT NULL,                  #商品类别编号
  `c_name` varchar(45) DEFAULT NULL,    #商品类别名称
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category`
--

LOCK TABLES `mp_category` WRITE;
/*!40000 ALTER TABLE `mp_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_products`
--

DROP TABLE IF EXISTS `mp_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_products` (
  `p_id` int NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_title` varchar(50) DEFAULT NULL,
  `p_desc` varchar(100) DEFAULT NULL,         #对商品的描述
  `p_price` double DEFAULT NULL,  
  `p_image` varchar(100) DEFAULT NULL,
  `p_publisher` varchar(50) DEFAULT NULL,    #商品发布者
  `p_publish_time` varchar(50) DEFAULT NULL, #商品发布时间
  `p_flag` varchar(2) DEFAULT NULL,
  `p_category_id` int DEFAULT NULL,          #商品所属类别编号
  PRIMARY KEY (`p_id`),                      #外键
  KEY `mp_products_fk` (`p_category_id`),
  CONSTRAINT `mp_products_fk` FOREIGN KEY (`p_category_id`) REFERENCES `mp_category` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_products`
--

LOCK TABLES `mp_products` WRITE;
/*!40000 ALTER TABLE `mp_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_users`
--

DROP TABLE IF EXISTS `mp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_users` (
  `u_id` int NOT NULL,
  `u_name` varchar(45) DEFAULT NULL,
  `u_password` varchar(45) DEFAULT NULL,
  `u_phone_number` varchar(45) DEFAULT NULL,
  `u_nickname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_users`
--

LOCK TABLES `mp_users` WRITE;
/*!40000 ALTER TABLE `mp_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 21:56:28
