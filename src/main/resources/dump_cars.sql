-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: cars
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `id_coche` int DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `consumo` double DEFAULT NULL,
  `hp` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (10,'Model S','Tesla',15,670),(11,'Civic','Honda',6.5,158),(12,'Corolla','Toyota',7,132),(13,'Mustang','Ford',9.5,450),(14,'Impreza','Subaru',8.5,152),(15,'Golf','Volkswagen',7.5,147),(16,'Altima','Nissan',7.8,188),(17,'A4','Audi',8.3,201),(18,'CX-5','Mazda',9,187),(19,'F-150','Ford',12.5,290),(20,'Model 3','Tesla',13.5,480),(21,'Sentra','Nissan',7.2,124),(22,'Camry','Toyota',7.4,203),(23,'Accord','Honda',7,192),(24,'Q5','Audi',9.2,248),(25,'Escape','Ford',8.8,181),(26,'Mazda3','Mazda',7.8,186),(27,'Tucson','Hyundai',8.7,161),(28,'Elantra','Hyundai',6.9,147),(29,'RAV4','Toyota',8,203),(30,'Wrangler','Jeep',11.5,285),(31,'Charger','Dodge',10.5,292),(32,'Explorer','Ford',10,300),(33,'Impreza','Subaru',8.2,152),(34,'Soul','Kia',7.6,147),(35,'A3','Audi',7.7,184),(36,'C-Class','Mercedes-Benz',8.4,255),(37,'Taurus','Ford',9.8,288),(38,'Fusion','Ford',8.5,175),(39,'Jetta','Volkswagen',7.2,147),(40,'Veloster','Hyundai',7,147),(41,'Altima','Nissan',7.7,182),(42,'Camaro','Chevrolet',11,275),(43,'Model X','Tesla',18,670),(44,'Golf','Volkswagen',7.4,147),(45,'Rogue','Nissan',8.6,170),(46,'Sonata','Hyundai',7.5,191),(47,'Prius','Toyota',4.5,121),(48,'CX-9','Mazda',9.8,250),(49,'Tundra','Toyota',12.2,381),(50,'A6','Audi',8.8,248),(51,'M3','BMW',10.5,473),(52,'Silverado','Chevrolet',13,355),(53,'X5','BMW',10.2,335),(54,'Sentra','Nissan',7.1,124),(55,'Explorer','Ford',9.7,300),(56,'Tiguan','Volkswagen',8.3,184),(57,'Civic','Honda',6.8,158),(58,'F-150','Ford',13,290),(59,'modelo','marca',8.8,3),(60,'modelo','marca',8.8,300),(61,'modeloprueba','marcaprueba',1.1,1),(62,'m','m',4.4,4);
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repuestos`
--

DROP TABLE IF EXISTS `repuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuestos` (
  `id_repuesto` int DEFAULT NULL,
  `localizacion` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repuestos`
--

LOCK TABLES `repuestos` WRITE;
/*!40000 ALTER TABLE `repuestos` DISABLE KEYS */;
INSERT INTO `repuestos` VALUES (2,'Almacén A',12.5,8,'prueba'),(3,'Almacén B',8.75,8,'a'),(4,'Almacén C',15,8,'aa'),(5,'Almacén D',7.2,8,'a'),(6,'Almacén E',22.3,8,'a'),(7,'Almacén F',9.99,8,'asd'),(8,'Almacén G',14.45,8,'dsdsdad'),(9,'Almacén H',6.8,8,'asdasd'),(10,'Almacén I',18,8,'ds'),(11,'Almacén J',11.1,8,'ds'),(12,'Almacén K',5.5,8,'ds'),(13,'Almacén L',13.75,8,'sdsdad'),(14,'Almacén M',10,8,'sd'),(15,'Almacén N',19.99,8,'asdasd'),(16,'Almacén O',17.25,8,'aasd'),(17,'Almacén P',4.95,8,'dddd'),(18,'Almacén Q',16.6,8,'asd'),(19,'Almacén R',20,8,'dsd'),(20,'Almacén S',7.8,8,'sdad'),(21,'Almacén T',9.3,8,'sdsd'),(22,'almacen x',5,55,'repuestox');
/*!40000 ALTER TABLE `repuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruedas`
--

DROP TABLE IF EXISTS `ruedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruedas` (
  `id_rueda` int DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `pulgadas` double DEFAULT NULL,
  `cantidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruedas`
--

LOCK TABLES `ruedas` WRITE;
/*!40000 ALTER TABLE `ruedas` DISABLE KEYS */;
INSERT INTO `ruedas` VALUES (2,'Todo Terreno',6,5,10),(3,'De carrera',60,18,24),(4,'Off-road',70.2,16.2,24),(5,'Invierno',55.3,17.8,24),(6,'Verano',48.75,16.5,24),(7,'All-season',52.1,15,24),(8,'De montaña',65,19.4,24),(9,'Compacta',40,14.7,24),(10,'Neumático',38.9,14.3,24),(11,'De bici',30,12.6,24),(12,'De moto',50,16.8,24),(13,'De coche',55,17.9,24),(14,'De competición',80,18.4,24),(15,'De nieve',60.5,17.2,24),(16,'De carretera',45,16.1,24),(17,'Resistente',70,19.7,24),(18,'Ligera',42.5,15.4,24),(19,'De tracción',58,17.6,24),(20,'De paseo',35,14.9,20),(21,'De alta performance',75,18.3,20);
/*!40000 ALTER TABLE `ruedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cars'
--
/*!50003 DROP FUNCTION IF EXISTS `valorRepuestoID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` FUNCTION `valorRepuestoID`(id INT) RETURNS double
    DETERMINISTIC
BEGIN
  DECLARE total DOUBLE;

  SET total = (
    SELECT cantidad * precio 
    FROM repuestos
    WHERE id_repuesto = id);

  RETURN total;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `valorRuedaID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` FUNCTION `valorRuedaID`(id INT) RETURNS double
    DETERMINISTIC
BEGIN
  DECLARE total DOUBLE;

  SET total = (
    SELECT cantidad * precio 
    FROM ruedas
    WHERE id_rueda = id);

  RETURN total;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `valorTablaRepuestos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` FUNCTION `valorTablaRepuestos`() RETURNS double
    DETERMINISTIC
BEGIN
  DECLARE total DOUBLE;

  SET total = (
    SELECT sum(cantidad * precio) 
    FROM repuestos
  );

  RETURN total;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `valorTablaRuedas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` FUNCTION `valorTablaRuedas`() RETURNS double
    DETERMINISTIC
BEGIN
  DECLARE total DOUBLE;

  SET total = (
    SELECT sum(cantidad * precio) 
    FROM ruedas
  );
  RETURN total;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_coches_de_mayor_potencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` PROCEDURE `listar_coches_de_mayor_potencia`(IN potencia INT)
BEGIN
  SELECT *
  FROM coches
  WHERE coches.hp > potencia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suministrar_mas_ruedas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`guille`@`%` PROCEDURE `suministrar_mas_ruedas`(IN num INT)
BEGIN
  UPDATE ruedas
  SET cantidad = cantidad + num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-12  8:31:19
