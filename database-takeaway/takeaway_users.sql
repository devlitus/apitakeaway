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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT 'default.png',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` varchar(11) DEFAULT 'activado',
  `role` varchar(20) DEFAULT 'USER_ROLE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test1','test1@test1.com','$2y$10$lSImKyvjH//eBo9mMvWcrOGSmpB48WyjM/J07SStGpcklfsMd1JIi','3a0a0ee025c81eb7.png','2019-01-16 14:09:31','0','USER_ROLE'),(2,'Test 2','test2@test.com','$2y$10$MH0g204t6IBYH3/kViTaJ.QePHDay8VID3Yh1r6lDpZTYNoqDzPjq','9aafb8b57de82ccb.png','2019-01-16 14:09:58','0','USER_ROLE'),(3,'Test 3','test3@test.com','$2y$08$eTTJ2EIufAnv1/SG.WcRGuEpqD7es5VsHCVUbnVIhJZYX5B3y6ovy','88572f66b30a825e.png','2019-01-16 14:10:31','0','USER_ROLE'),(4,'Test 4','test4@test4.com','$2y$10$a4dtTXBKxlkkxtpQbABBTuVniJDD7hK69b4YdctiV.1rKgTP63hSq','default.png','2019-01-16 14:23:28','0','USER_ROLE'),(5,'test5','test5@test.com','$2y$10$nei48svvKzrWfQ3wfsF7m.Rj5nwS73Mjmz8.C4sf3rtfnXy9iPM3S','6da8d0b53343c8bf.png','2019-01-17 15:44:35','1','USER_ROLE'),(6,'test6','test6@test.com','$2y$08$OJO37nntSqXD31zb.xkK5.vR42d2WiCbtSxF6yQaH3DZMoBdyTTke','52007cad23b735d6.png','2019-01-17 15:45:01','1','USER_ROLE'),(7,'test7','test7@test.com','$2y$08$IVroSU5uzQS62eL.gtCkbedTAbGM/q1izjWpErH03ZWq/NIgxdkyW','57ae0e8e830e684a.png','2019-01-17 15:46:53','1','USER_ROLE'),(9,'test8','test8@test.com','$2y$08$WgcsZA4e5CaHLaoX9e/o3OOFQKciylzcbSmpdWLFOB2P1icg63Bse','c5cc8623d7a253fc.png','2019-01-17 15:51:56','1','ADMIN_ROLE'),(10,'test9','test9@test9.com','$2y$08$ls.AiAeWEjrCW/.8tzist.qHxzB.hA7V57nl6HilHY/Fo3UiLmPPm','default.png','2019-01-18 07:38:23','1','ADMIN_ROLE'),(11,'test10','test10@test.com','$2y$08$ckX12rJfgq3NgrYI47DLc.geV27WuS5z5rhkZQ.iPlF0h.ARHgyAy','6768750d8bd76720.png','2019-01-18 08:37:41','1','USER_ROLE'),(12,'test11','test11@test.com','$2y$08$sad1HXM10EACFcDDned.q.vFUI2QTucspIQOh4E727rZ3nIAyt/tS','default.png','2019-01-18 08:42:08','1','USER_ROLE'),(15,'test12','test12@test.com','$2y$08$oVYBNheWUUStW0e02BOkseGaptzvqWync.ZtV0HkWUiGMlcf8x2LG','default.png','2019-01-18 10:21:58','1','ADMIN_ROLE'),(16,'test13','test13@test.com','$2y$08$9rEjnmeNqEr.yVm/2b/rI.VtXYmPbt7QRPs3Xg5ZEtzgenFRjSRpe','default.png','2019-01-18 10:29:55','1','USER_ROLE'),(17,'test14','test14@test.com','$2y$08$gb7awbgOn.oI0J4jrs./KeQMfFEk7oBexgvfwRWeaBO9KhkvBQ61W','default.png','2019-01-18 10:30:34','1','USER_ROLE'),(18,'Test15','test15@test.com','$2y$08$Q0opVbVtp2evx45BisTrZe.JuVoGZTD/pS6bT05I23wFTCkgRs166','3ce361705053db18.png','2019-01-22 10:16:34','0','USER_ROLE'),(23,'Test16','test16@test.com','$2y$08$LTHIAfNYz6b3NIhhyQWU3.XaHJWMSB7Yk0iDOHTwcdEN0.BADxklq','9f7414ce38ac08d0.png','2019-01-22 10:33:37','0','USER_ROLE'),(24,'Test17','test17@test.com','$2y$08$bg4kDOLJTCX0ypvchtb/HOIw9UIu/P4v3p.lEM6AHmACHQBEV7hty','872f7ee8997fbf42.png','2019-01-22 10:34:18','0','USER_ROLE'),(25,'Test18','test18@test.com','$2y$08$K0cckvDp4.UHKGAOSlpA4O4DqL8Xv0mIv3GDd6q0M95kw30UAXsy6','5c4fb600858e76f6.png','2019-01-24 11:25:45','true','USER_ROLE'),(26,'pepe','test@pepe.com','$2y$10$xlkQ6OWQuvC73GCeez0d5OwMcB1KHyn2ZKAAeaMFHsxr.2i6BX0u.','default.png','2021-10-12 08:26:26','','user'),(27,'Test19','test19@test.com','$2y$10$sScf/xQuSidLNIbzWBNPZuv6qH/ILLsYytBg38uaOyPLFz4REb83W','default.png','2021-10-12 08:30:32','1','USER_ROLE'),(28,'Test20','test20@test.com','$2y$10$L3ChXH/wswNaNInmkENMSOJVptBQRXwuwEQnE/jZJ7AwRwWN0rfUq','default.png','2021-10-12 08:32:06','1','USER_ROLE');
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

-- Dump completed on 2021-10-12 18:32:43
