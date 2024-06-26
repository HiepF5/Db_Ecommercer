-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: phone_shop
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `orderdetail_id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `cart_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  `products_id` int DEFAULT NULL,
  PRIMARY KEY (`orderdetail_id`),
  KEY `FK1ntpvbsdhh3gx12a3vu0ft6ts` (`cart_id`),
  KEY `FK7xf2gmq3yok90kilflnu8aa7e` (`orders_id`),
  KEY `FK170usp6hc8ps06lkvmh3ndbly` (`products_id`),
  CONSTRAINT `FK170usp6hc8ps06lkvmh3ndbly` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  CONSTRAINT `FK1ntpvbsdhh3gx12a3vu0ft6ts` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  CONSTRAINT `FK7xf2gmq3yok90kilflnu8aa7e` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,8000000,3,NULL,203,1),(2,9000000,3,NULL,203,2),(3,9000000,1,NULL,204,2),(4,8000000,2,NULL,204,17),(5,10200000,1,NULL,204,62),(6,9000000,1,NULL,205,2),(7,14500000,2,NULL,205,11),(8,8000000,2,NULL,205,17),(9,9540000,3,NULL,205,34),(10,10200000,1,NULL,205,62),(11,9540000,2,NULL,206,30),(12,10200000,2,NULL,206,61),(13,9500000,2,NULL,207,3),(14,9540000,2,NULL,207,30),(15,9540000,2,NULL,207,31),(16,10200000,2,NULL,207,61),(17,8000000,2,NULL,208,1),(18,14500000,4,NULL,209,11),(19,13000000,2,NULL,210,9),(20,7500000,2,NULL,210,20),(21,9540000,3,NULL,210,29),(22,9000000,2,NULL,211,2),(23,9500000,4,NULL,211,3),(24,1050000,2,NULL,211,5),(25,14000000,2,NULL,211,10),(26,8000000,2,NULL,211,18),(27,7400000,1,NULL,212,28),(28,7400000,1,NULL,213,28),(29,10200000,1,NULL,213,61),(30,12500000,1,NULL,214,8),(31,12500000,1,NULL,215,8),(32,9540000,1,NULL,215,34),(33,12500000,1,NULL,216,8),(34,7400000,1,NULL,216,26),(35,9540000,1,NULL,216,34),(36,15500000,1,NULL,217,50),(37,15500000,1,NULL,218,50),(38,9540000,1,NULL,219,34),(39,15500000,1,NULL,219,50),(40,9000000,2,NULL,220,2),(41,13500000,2,NULL,221,43),(42,10200000,4,NULL,222,60),(43,9000000,1,NULL,223,2),(44,13500000,2,NULL,224,43),(45,9000000,2,NULL,225,2),(46,13500000,4,NULL,226,43),(47,9500000,3,NULL,227,3),(48,9000000,2,NULL,228,2),(49,9000000,3,NULL,229,2),(50,9500000,3,NULL,230,3),(51,13500000,3,NULL,231,44),(52,9000000,3,NULL,232,2),(53,8000000,5,NULL,233,1),(54,9500000,3,NULL,234,3),(55,8000000,2,NULL,235,17),(56,8000000,3,NULL,237,1),(57,9500000,4,NULL,238,3),(58,9500000,9,NULL,239,3),(59,9500000,1,NULL,240,3),(60,10000000,30,NULL,241,4),(61,9500000,6,NULL,242,3),(62,15500000,5,NULL,243,13),(63,8000000,3,NULL,244,1),(64,8000000,3,NULL,245,1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 22:29:05
