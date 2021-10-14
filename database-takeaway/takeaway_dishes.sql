-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: takeaway
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `descripcion` text CHARACTER SET utf8mb3 DEFAULT NULL,
  `precio` decimal(4,2) DEFAULT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `activado` tinyint(1) DEFAULT 1,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_categoria`),
  KEY `fk_plato_catgoria` (`id_categoria`),
  CONSTRAINT `fk_plato_catgoria` FOREIGN KEY (`id_categoria`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` VALUES (1,'Sopa de verduras','Sopa de verduras',5.26,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047926/takeaway/dishes/roh03toi8ttpjdkhpyw7.jpg','2019-01-16 14:53:35',1,1),(2,'Salmon con tostada','Salmon con tostada',4.32,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/awnxkd5li7kpmjqjmvz3.jpg','2019-01-16 14:55:06',1,1),(3,'Ternera guarnicion','Ternera con guarnicion',10.21,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047926/takeaway/dishes/fin3iskzz5oiiqwgbtkd.jpg','2019-01-16 15:01:34',1,2),(4,'Corte redondo','Corte redondo ternea',15.21,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047926/takeaway/dishes/cj4nofmi1ocuiggugsb8.jpg','2019-01-16 15:17:53',1,2),(5,'Ternera con menstra','Ternera con menstra',10.24,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/b8zhnse9y44bn4vhbhzg.jpg','2019-01-16 15:20:21',1,3),(6,'Huevos con salsichas','Huevos con salsichas',6.41,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/ngvmipc1pfcfc7fz0o01.jpg','2019-01-16 15:21:16',1,3),(7,'Corte de nata y cacao','Corte de nata y cacao',2.28,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/iaoluhelf8woeehxjxip.jpg','2019-01-16 15:39:35',1,4),(8,'Browne chocolate','Browne de chocolate',2.28,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047926/takeaway/dishes/h3qohzdtk5exnbovluav.jpg','2019-01-16 15:40:14',1,4),(9,'Ensalada de maiz','Ensalada con trozoas de maiz',4.00,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/sxwwd1oypccqupkvdo9l.jpg','2019-01-26 08:26:37',1,1),(10,'Chuleton a la sal','Chuleton a la sal',20.00,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047926/takeaway/dishes/cj4nofmi1ocuiggugsb8.jpg','2019-01-26 08:56:34',1,3),(11,'Espaguetis','Espaguetis con sala a la Napolitana',15.00,'https://res.cloudinary.com/djhxmjnb4/image/upload/v1634047925/takeaway/dishes/a1ze94m9b0xak1ldvff8.jpg','2019-01-26 09:16:52',1,2);
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-12 18:32:42
