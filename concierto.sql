-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: conciertosperu
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `idArtistas` int NOT NULL,
  `Nombre_Grupo` varchar(45) DEFAULT NULL,
  `Fecha_creacion` date DEFAULT NULL,
  `Tipo_musica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Grupo 5','1992-04-08','cumbia'),(2,'Hermanos Yaipen','1993-05-08','cumbia'),(3,'Rafaga','1998-05-08','cumbia'),(4,'RealBand','1999-07-09','rock'),(5,'falseBand','1993-01-03','rock'),(6,'Blues Band','1998-01-03','blues'),(7,'Red Band','1992-11-11','country'),(8,'Max Band','1994-10-09','country'),(9,'Black Band','1998-10-03','rock'),(10,'Armonia 10','1992-11-08','cumbia');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concierto`
--

DROP TABLE IF EXISTS `concierto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concierto` (
  `idConcierto` int NOT NULL,
  `Fecha_evento` varchar(45) DEFAULT NULL,
  `proveedores_idProveedores` int NOT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idConcierto`),
  KEY `fk_Concierto_proveedores_idx` (`proveedores_idProveedores`),
  KEY `fk_Concierto_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_Concierto_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`),
  CONSTRAINT `fk_Concierto_proveedores` FOREIGN KEY (`proveedores_idProveedores`) REFERENCES `proveedores` (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concierto`
--

LOCK TABLES `concierto` WRITE;
/*!40000 ALTER TABLE `concierto` DISABLE KEYS */;
INSERT INTO `concierto` VALUES (1,'2003-09-12',1,1),(2,'2005-09-12',2,2),(3,'2007-10-11',3,3),(4,'2009-11-03',4,4),(5,'2012-01-09',5,5),(6,'2013-03-08',6,6),(7,'2018-09-01',7,7),(8,'2015-05-05',8,8),(9,'2013-06-06',9,9),(10,'2012-07-10',10,10);
/*!40000 ALTER TABLE `concierto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantes`
--

DROP TABLE IF EXISTS `integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantes` (
  `idIntegrantes` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Anhios_exp` int DEFAULT NULL,
  `rol` varchar(40) DEFAULT NULL,
  `artistas_idArtistas` int NOT NULL,
  PRIMARY KEY (`idIntegrantes`),
  KEY `fk_integrantes_artistas1_idx` (`artistas_idArtistas`),
  CONSTRAINT `fk_integrantes_artistas1` FOREIGN KEY (`artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantes`
--

LOCK TABLES `integrantes` WRITE;
/*!40000 ALTER TABLE `integrantes` DISABLE KEYS */;
INSERT INTO `integrantes` VALUES (1,'Elmer Yaipen',55,25,'baterista',1),(2,'Marco Solis',25,4,'baterista',2),(3,'Salomon Cabrera',37,12,'guitarrista',3),(4,'Saul Rodriguez',32,7,'pianista',4),(5,'Carla Perez',30,6,'cantante',5),(6,'Lola Mar',28,4,'dj',6),(7,'Lula Silva',23,5,'cantante',7),(8,'Camilo Solar',28,9,'pianista',8),(9,'Camila Rodas',33,6,'guitarrista',9),(10,'Tito Nieves',37,16,'cantante',10);
/*!40000 ALTER TABLE `integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedores` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Elemento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Otto Kuns',980347768,'embutidos'),(2,'Laive',980347768,'quesos'),(3,'San Fernando',945678123,'carnes'),(4,'gloria',986345123,'lacteos'),(5,'Zucarita',912543123,'cereales'),(6,'Milo',956345134,'bebida'),(7,'Nescafe',998345134,'cafe'),(8,'Donofrio',934745134,'helados'),(9,'Yolu',923451234,'plasticos'),(10,'Carlesi',976123654,'juguetes');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 21:33:40
