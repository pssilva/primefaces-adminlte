-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mps_cloud_teste
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `log_acesso`
--

DROP TABLE IF EXISTS `log_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_acesso` (
  `idlog_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `data_acesso` date DEFAULT NULL,
  PRIMARY KEY (`idlog_acesso`),
  KEY `log_acess_FKIndex1_idx` (`idusuario`),
  CONSTRAINT `log_acess_FKIndex1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acesso`
--

LOCK TABLES `log_acesso` WRITE;
/*!40000 ALTER TABLE `log_acesso` DISABLE KEYS */;
INSERT INTO `log_acesso` VALUES (1,3,'2017-11-29'),(2,3,'2017-11-29'),(3,2,'2017-11-29'),(4,3,'2017-11-29'),(5,3,'2017-11-29'),(6,2,'2017-11-29'),(7,3,'2017-11-29'),(8,3,'2017-11-29'),(9,3,'2017-11-29'),(10,3,'2017-11-29');
/*!40000 ALTER TABLE `log_acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `senha` varchar(60) NOT NULL DEFAULT '1',
  `ativo` char(1) DEFAULT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'pss1suporte@localhost.com','$2y$10$r2sgd6AwJ54uskV9XYeU/e3Kle2Zm0SeqZ3HTnW53idHQnrViHzQO','1','LEh4tXsLm5KINm5iy3u3YBTYN3ipMVAUx0HzFG1z0u7jcoCKzZIamMZSnpwZ'),(2,'admin@localhost.com','$2y$10$r2sgd6AwJ54uskV9XYeU/e3Kle2Zm0SeqZ3HTnW53idHQnrViHzQO','1','3WwphoyyF1YWUmQSixLSQY6Jx1lh64gZP7JG4BgO0dtBTqKSml5T4TaZlnPf'),(3,'user1@localhost.com','$2y$10$r2sgd6AwJ54uskV9XYeU/e3Kle2Zm0SeqZ3HTnW53idHQnrViHzQO','1','qCcMF0bTUwNM9UJielRQDEU8i14u5VkxgIKfcStr6YJPynwCTu9Ibrk7Vldb'),(4,'user_old@localhost.com','$2y$10$r2sgd6AwJ54uskV9XYeU/e3Kle2Zm0SeqZ3HTnW53idHQnrViHzQO','0',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mps_cloud_teste'
--

--
-- Dumping routines for database 'mps_cloud_teste'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 19:07:38
