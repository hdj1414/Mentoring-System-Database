CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `attend_reg_assc`
--

DROP TABLE IF EXISTS `attend_reg_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend_reg_assc` (
  `MENTEE_ID` int NOT NULL,
  `ATT_SESS_ID` varchar(5) NOT NULL,
  `ATT_MARK_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`MENTEE_ID`,`ATT_SESS_ID`,`ATT_MARK_ID`),
  KEY `fk_MENTEE_has_ATTEND_REGISTRY_ATTEND_REGISTRY1_idx` (`ATT_SESS_ID`,`ATT_MARK_ID`),
  KEY `fk_MENTEE_has_ATTEND_REGISTRY_MENTEE1_idx` (`MENTEE_ID`),
  CONSTRAINT `fk_MENTEE_has_ATTEND_REGISTRY_ATTEND_REGISTRY1` FOREIGN KEY (`ATT_SESS_ID`, `ATT_MARK_ID`) REFERENCES `attend_registry` (`ATT_SESS_ID`, `ATT_MARK_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_MENTEE_has_ATTEND_REGISTRY_MENTEE1` FOREIGN KEY (`MENTEE_ID`) REFERENCES `mentee` (`MENTEE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend_reg_assc`
--

LOCK TABLES `attend_reg_assc` WRITE;
/*!40000 ALTER TABLE `attend_reg_assc` DISABLE KEYS */;
INSERT INTO `attend_reg_assc` VALUES (7,'AS019','AM019'),(7,'AS020','AM020'),(7,'AS021','AM021'),(7,'AS022','AM022'),(7,'AS023','AM023'),(7,'AS024','AM024'),(8,'AS025','AM025'),(8,'AS026','AM026'),(8,'AS027','AM027'),(8,'AS028','AM028'),(8,'AS029','AM029'),(8,'AS030','AM030'),(9,'AS025','AM025'),(9,'AS026','AM026'),(9,'AS027','AM027'),(9,'AS029','AM029'),(9,'AS030','AM030'),(10,'AS013','AM013'),(10,'AS014','AM014'),(10,'AS015','AM015'),(10,'AS016','AM016'),(10,'AS017','AM017'),(10,'AS018','AM018'),(11,'AS001','AM001'),(11,'AS002','AM002'),(11,'AS003','AM003'),(11,'AS004','AM004'),(11,'AS005','AM005'),(11,'AS006','AM006'),(12,'AS031','AM031'),(12,'AS032','AM032'),(12,'AS033','AM033'),(12,'AS034','AM034'),(12,'AS035','AM035'),(12,'AS036','AM036'),(13,'AS007','AM007'),(13,'AS008','AM008'),(13,'AS009','AM009'),(13,'AS010','AM010'),(13,'AS011','AM011'),(13,'AS012','AM012');
/*!40000 ALTER TABLE `attend_reg_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attend_registry`
--

DROP TABLE IF EXISTS `attend_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend_registry` (
  `ATT_SESS_ID` varchar(5) NOT NULL COMMENT 'Attendance session id',
  `ATT_MARK_ID` varchar(5) NOT NULL COMMENT 'Attendance marking id',
  `METR_ARRI_TIME` time DEFAULT NULL COMMENT 'Mentor arrival time',
  `ATTE_NUM` tinyint DEFAULT NULL COMMENT 'Number of Attendance ',
  `AB_NUM` tinyint DEFAULT NULL COMMENT 'Number of absences',
  PRIMARY KEY (`ATT_SESS_ID`,`ATT_MARK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend_registry`
--

LOCK TABLES `attend_registry` WRITE;
/*!40000 ALTER TABLE `attend_registry` DISABLE KEYS */;
INSERT INTO `attend_registry` VALUES ('AS001','AM001','15:45:00',1,0),('AS002','AM002','15:49:00',1,0),('AS003','AM003','15:45:00',1,0),('AS004','AM004','15:45:00',1,0),('AS005','AM005','15:49:00',1,0),('AS006','AM006','15:49:00',1,0),('AS007','AM007','15:46:00',1,0),('AS008','AM008','15:45:00',1,0),('AS009','AM009','15:47:00',1,0),('AS010','AM010','15:47:00',1,0),('AS011','AM011','15:45:00',1,0),('AS012','AM012','15:47:00',1,0),('AS013','AM013','15:45:00',1,0),('AS014','AM014','15:45:00',1,0),('AS015','AM015','15:45:00',1,0),('AS016','AM016','15:48:00',1,0),('AS017','AM017','15:45:00',1,0),('AS018','AM018','15:45:00',1,0),('AS019','AM019','15:45:00',1,0),('AS020','AM020','15:45:00',1,0),('AS021','AM021','15:45:00',1,0),('AS022','AM022','15:50:00',1,0),('AS023','AM023','15:50:00',1,0),('AS024','AM024','15:45:00',1,0),('AS025','AM025','15:47:00',2,0),('AS026','AM026','15:45:00',2,0),('AS027','AM027','15:47:00',2,0),('AS028','AM028','15:50:00',1,1),('AS029','AM029','15:49:00',2,0),('AS030','AM030','15:45:00',2,0),('AS031','AM031','15:45:00',1,0),('AS032','AM032','15:50:00',1,0),('AS033','AM033','15:48:00',1,0),('AS034','AM034','15:50:00',1,0),('AS035','AM035','15:50:00',1,0),('AS036','AM036','15:45:00',1,0);
/*!40000 ALTER TABLE `attend_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attend_session_assc`
--

DROP TABLE IF EXISTS `attend_session_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attend_session_assc` (
  `SESSION_NUM` tinyint(1) NOT NULL,
  `ATT_SESS_ID` varchar(5) NOT NULL,
  `ATT_MARK_ID` varchar(5) NOT NULL,
  PRIMARY KEY (`SESSION_NUM`,`ATT_SESS_ID`,`ATT_MARK_ID`),
  KEY `fk_SESSIONS_COMPLETED_has_ATTEND_REGISTRY_ATTEND_REGISTRY1_idx` (`ATT_SESS_ID`,`ATT_MARK_ID`),
  KEY `fk_SESSIONS_COMPLETED_has_ATTEND_REGISTRY_SESSIONS_COMPLETE_idx` (`SESSION_NUM`),
  CONSTRAINT `fk_SESSIONS_COMPLETED_has_ATTEND_REGISTRY_ATTEND_REGISTRY1` FOREIGN KEY (`ATT_SESS_ID`, `ATT_MARK_ID`) REFERENCES `attend_registry` (`ATT_SESS_ID`, `ATT_MARK_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_SESSIONS_COMPLETED_has_ATTEND_REGISTRY_SESSIONS_COMPLETED1` FOREIGN KEY (`SESSION_NUM`) REFERENCES `sessions_completed` (`SESSION_NUM`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend_session_assc`
--

LOCK TABLES `attend_session_assc` WRITE;
/*!40000 ALTER TABLE `attend_session_assc` DISABLE KEYS */;
INSERT INTO `attend_session_assc` VALUES (1,'AS001','AM001'),(2,'AS002','AM002'),(3,'AS003','AM003'),(4,'AS004','AM004'),(5,'AS005','AM005'),(6,'AS006','AM006'),(7,'AS007','AM007'),(8,'AS008','AM008'),(9,'AS009','AM009'),(10,'AS010','AM010'),(11,'AS011','AM011'),(12,'AS012','AM012'),(13,'AS013','AM013'),(14,'AS014','AM014'),(15,'AS015','AM015'),(16,'AS016','AM016'),(17,'AS017','AM017'),(18,'AS018','AM018'),(19,'AS019','AM019'),(20,'AS020','AM020'),(21,'AS021','AM021'),(22,'AS022','AM022'),(23,'AS023','AM023'),(24,'AS024','AM024'),(25,'AS025','AM025'),(26,'AS026','AM026'),(27,'AS027','AM027'),(28,'AS028','AM028'),(29,'AS029','AM029'),(30,'AS030','AM030'),(31,'AS031','AM031'),(32,'AS032','AM032'),(33,'AS033','AM033'),(34,'AS034','AM034'),(35,'AS035','AM035'),(36,'AS036','AM036');
/*!40000 ALTER TABLE `attend_session_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buld_registry`
--

DROP TABLE IF EXISTS `buld_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buld_registry` (
  `BLD_CODE` varchar(5) NOT NULL COMMENT 'Building code: BD###',
  `BULD_CODINA` varchar(45) NOT NULL COMMENT 'Building Location Name',
  `NUM_FLOORS` char(2) NOT NULL COMMENT 'Number of floors in a building',
  `BULD_NAME` varchar(20) NOT NULL COMMENT 'Building Name',
  `BULD_OPEN_DATE` date NOT NULL COMMENT 'Building open date',
  PRIMARY KEY (`BLD_CODE`),
  UNIQUE KEY `BLD_CODE_UNIQUE` (`BLD_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buld_registry`
--

LOCK TABLES `buld_registry` WRITE;
/*!40000 ALTER TABLE `buld_registry` DISABLE KEYS */;
INSERT INTO `buld_registry` VALUES ('BD001','Indianapolis','4','Lockfield','1965-12-14'),('BD002','Peru','3','Rathnasekaras','2017-12-01'),('BD003','Greenwood','1','Barupalas','1993-12-10'),('BD004','Brazil','2','Jayathilakes','2012-12-14'),('BD005','Norway','1','Hasarangas','2018-12-14');
/*!40000 ALTER TABLE `buld_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conv_mentee_assc`
--

DROP TABLE IF EXISTS `conv_mentee_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conv_mentee_assc` (
  `CON_MENTEE_ID` char(5) NOT NULL,
  `CON_MENTOR_ID` char(5) NOT NULL,
  `MENTEE_ID` int NOT NULL,
  PRIMARY KEY (`CON_MENTEE_ID`,`CON_MENTOR_ID`,`MENTEE_ID`),
  KEY `fk_CONVERSATION_REGISTY_has_MENTEE_MENTEE1_idx` (`MENTEE_ID`),
  KEY `fk_CONVERSATION_REGISTY_has_MENTEE_CONVERSATION_REGISTY1_idx` (`CON_MENTEE_ID`,`CON_MENTOR_ID`),
  CONSTRAINT `fk_CONVERSATION_REGISTY_has_MENTEE_CONVERSATION_REGISTY1` FOREIGN KEY (`CON_MENTEE_ID`, `CON_MENTOR_ID`) REFERENCES `conversation_registy` (`CON_MENTEE_ID`, `CON_MENTOR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_CONVERSATION_REGISTY_has_MENTEE_MENTEE1` FOREIGN KEY (`MENTEE_ID`) REFERENCES `mentee` (`MENTEE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conv_mentee_assc`
--

LOCK TABLES `conv_mentee_assc` WRITE;
/*!40000 ALTER TABLE `conv_mentee_assc` DISABLE KEYS */;
INSERT INTO `conv_mentee_assc` VALUES ('CE001','CR004',7),('CE002','CR005',8),('CE003','CR005',9),('CE004','CR003',10),('CE005','CR001',11),('CE006','CR006',12),('CE007','CR002',13);
/*!40000 ALTER TABLE `conv_mentee_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conv_mentor_assc`
--

DROP TABLE IF EXISTS `conv_mentor_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conv_mentor_assc` (
  `CON_MENTEE_ID` char(5) NOT NULL,
  `CON_MENTOR_ID` char(5) NOT NULL,
  `MENTOR_ID` int NOT NULL,
  PRIMARY KEY (`CON_MENTEE_ID`,`CON_MENTOR_ID`,`MENTOR_ID`),
  KEY `fk_CONVERSATION_REGISTY_has_MENTOR_MENTOR1_idx` (`MENTOR_ID`),
  KEY `fk_CONVERSATION_REGISTY_has_MENTOR_CONVERSATION_REGISTY1_idx` (`CON_MENTEE_ID`,`CON_MENTOR_ID`),
  CONSTRAINT `fk_CONVERSATION_REGISTY_has_MENTOR_CONVERSATION_REGISTY1` FOREIGN KEY (`CON_MENTEE_ID`, `CON_MENTOR_ID`) REFERENCES `conversation_registy` (`CON_MENTEE_ID`, `CON_MENTOR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_CONVERSATION_REGISTY_has_MENTOR_MENTOR1` FOREIGN KEY (`MENTOR_ID`) REFERENCES `mentor` (`MENTOR_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conv_mentor_assc`
--

LOCK TABLES `conv_mentor_assc` WRITE;
/*!40000 ALTER TABLE `conv_mentor_assc` DISABLE KEYS */;
INSERT INTO `conv_mentor_assc` VALUES ('CE005','CR001',9),('CE007','CR002',10),('CE004','CR003',11),('CE001','CR004',12),('CE002','CR005',13),('CE003','CR005',13),('CE006','CR006',14);
/*!40000 ALTER TABLE `conv_mentor_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_registy`
--

DROP TABLE IF EXISTS `conversation_registy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_registy` (
  `CON_MENTEE_ID` char(5) NOT NULL COMMENT 'Conversation mentee id number',
  `CON_MENTOR_ID` char(5) NOT NULL COMMENT 'Conversation mentor id number',
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `NUM_CHATS` int DEFAULT NULL COMMENT 'Number of chats',
  `NUM_ACT_DAYS` smallint DEFAULT NULL COMMENT 'Number of active days',
  PRIMARY KEY (`CON_MENTEE_ID`,`CON_MENTOR_ID`),
  KEY `PROG_ID_idx` (`PROG_ID`),
  CONSTRAINT `PROG_ID45678` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_registy`
--

LOCK TABLES `conversation_registy` WRITE;
/*!40000 ALTER TABLE `conversation_registy` DISABLE KEYS */;
INSERT INTO `conversation_registy` VALUES ('CE001','CR004','PRO04',50,10),('CE002','CR005','PRO05',100,20),('CE003','CR005','PRO05',140,30),('CE004','CR003','PRO03',200,40),('CE005','CR001','PRO01',202,40),('CE006','CR006','PRO06',130,12),('CE007','CR002','PRO02',40,13);
/*!40000 ALTER TABLE `conversation_registy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_registry`
--

DROP TABLE IF EXISTS `employee_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_registry` (
  `EMPLOYEE_ID` varchar(5) NOT NULL COMMENT 'Employee Identity number: EP###',
  `DEPT_CODE` varchar(5) DEFAULT NULL COMMENT 'Department code\nStart from DET##',
  `EMP_FNAME` varchar(20) NOT NULL COMMENT 'Employee first name',
  `EMP_LNAME` varchar(20) NOT NULL COMMENT 'Employee last name',
  `EMP_INTIAL` char(1) NOT NULL COMMENT 'Employee initial',
  `EMP_ST_ADD` varchar(20) NOT NULL COMMENT 'Employee street address',
  `EMP_APT_NUM` varchar(6) DEFAULT NULL COMMENT 'Employee apartment number',
  `EMP_CITY` varchar(20) NOT NULL COMMENT 'Employee city',
  `EMP_STATE` varchar(2) NOT NULL COMMENT 'Employee State',
  `EMP_ZIP_CODE` varchar(5) NOT NULL COMMENT 'Employee zip code',
  `EMP_EMAIL` varchar(45) NOT NULL COMMENT 'Employee personal email',
  `EMP_P_NUM` varchar(10) NOT NULL COMMENT 'Employee personal phone number',
  `EMP_JOIN_DATE` date NOT NULL COMMENT 'Employee joined date',
  `EMP_MENTOR_STATUS` varchar(3) NOT NULL COMMENT 'Employee mentor registration status',
  `EMP_MENTEE_STATUS` varchar(3) NOT NULL COMMENT 'Employee mentee registration status',
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMPLOYEE_ID_UNIQUE` (`EMPLOYEE_ID`),
  KEY `fk_EMPLOYEE_REGISTRY_ORG_DEPAT1_idx` (`DEPT_CODE`),
  CONSTRAINT `fk_EMPLOYEE_REGISTRY_ORG_DEPAT1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `org_depat` (`DEPT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_registry`
--

LOCK TABLES `employee_registry` WRITE;
/*!40000 ALTER TABLE `employee_registry` DISABLE KEYS */;
INSERT INTO `employee_registry` VALUES ('EP001','DP001','Hasaranga','Jayathilake','D','754 Blake Street','Apt B','Indianapolis','IN','46202','hdj1414@gmail.com','3173345713','2021-12-05','Yes','Yes'),('EP002','DP001','Nipuni','Barupala','P','760 Ohio Street','Apt A','Indianapolis','IN','46202','hasaran@gmail.com','3173345456','2021-12-06','No','Yes'),('EP003','DP002','Dulmini','Barupala','M','567 Lion Street','Apt 7','Peru','IN','46970','nipubaru@gmail.com','4724734565','2021-12-07','Yes','No'),('EP004','DP002','Jayanga','Anushan','J','537 Living Street','Apt 1','Peru','IN','46970','ipubaru@gmail.com','4724734456','2021-12-08','Yes','Yes'),('EP005','DP003','Hansini','Madushika','J','253 Snake Street','Apt 2','Greenwood','IN','46142','dulmina@gmail.com','3179106627','2021-12-09','Yes','No'),('EP006','DP003','Damayathi','Shamali','T','123 Cobra Street','Apt 1','Greenwood','IN','46142','lbarupala@gmail.com','3179106785','2021-12-10','Yes','Yes'),('EP007','DP004','Saman','Paul','S','231 Apple Street','Apt S','Brazil','IN','47834','hdjayath@gmail.com','8399545555','2021-12-11','Yes','Yes'),('EP008','DP004','Nimal','Job','D','637 Orange Street','Apt W','Brazil','IN','47834','hdjay@gmail.com','8399545777','2021-12-12','No','Yes'),('EP009','DP005','Kamal','Rayan','E','467 Grape Street','Apt 4','Norway','IN','47960','jayanaj@gmail.com','9304564564','2021-12-13','No','No'),('EP010','DP005','Sugath','Ron','G','393 Pine Street','Apt 8','Norway','IN','47960','angaaj@gmail.com','9304564666','2021-12-14','No','Yes');
/*!40000 ALTER TABLE `employee_registry` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EMPLOYEE_REGISTRY_AFTER_INSERT_MENTEE` AFTER INSERT ON `employee_registry` FOR EACH ROW BEGIN
	IF NEW.EMP_MENTEE_STATUS IN ('Y', 'y', 'YES', 'yes') THEN
		INSERT INTO MENTEE(EMPLOYEE_ID)
		VALUES(NEW.EMPLOYEE_ID);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `EMPLOYEE_REGISTRY_AFTER_INSERT_MENTOR` AFTER INSERT ON `employee_registry` FOR EACH ROW BEGIN
	IF NEW.EMP_MENTOR_STATUS IN ('Y', 'y', 'YES', 'yes') THEN
		INSERT INTO MENTOR(EMPLOYEE_ID)
		VALUES(NEW.EMPLOYEE_ID);
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mentee`
--

DROP TABLE IF EXISTS `mentee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentee` (
  `EMPLOYEE_ID` varchar(5) NOT NULL COMMENT 'Employee Identity number: EP###',
  `MENTEE_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Mentee id number',
  `REQ_DATE` date DEFAULT NULL COMMENT 'Requested date',
  `SUB_1REQ` varchar(10) DEFAULT NULL COMMENT 'First subject requested',
  `SUB_2REQ` varchar(10) DEFAULT NULL COMMENT 'Second subject requested',
  PRIMARY KEY (`MENTEE_ID`),
  UNIQUE KEY `MENTEE_ID_UNIQUE` (`MENTEE_ID`),
  UNIQUE KEY `EMPLOYEE_ID_UNIQUE` (`EMPLOYEE_ID`),
  KEY `fk_MENTEE_EMPLOYEE_REGISTRY1_idx` (`EMPLOYEE_ID`),
  CONSTRAINT `EMPLOYEE_ID1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee_registry` (`EMPLOYEE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentee`
--

LOCK TABLES `mentee` WRITE;
/*!40000 ALTER TABLE `mentee` DISABLE KEYS */;
INSERT INTO `mentee` VALUES ('EP001',7,'2022-06-01','R','Python'),('EP002',8,'2022-06-02','JAVA','PHP'),('EP004',9,'2022-06-03','JAVA','R'),('EP006',10,'2022-06-04','Python','SQL'),('EP007',11,'2022-06-05','SQL','BI'),('EP008',12,'2022-06-06','PHP','R'),('EP010',13,'2022-06-07','BI','JAVA');
/*!40000 ALTER TABLE `mentee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentee_feedback`
--

DROP TABLE IF EXISTS `mentee_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentee_feedback` (
  `MENTEE_FDB_ID` char(5) NOT NULL COMMENT 'Mentee feedback id number: #####',
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `MTEE_FD_Q1` varchar(45) NOT NULL COMMENT 'Mentee feedback question 1',
  `MTEE_FD_Q2` varchar(45) NOT NULL COMMENT 'Mentee feedback question 2',
  `MTEE_FD_Q3` varchar(45) NOT NULL COMMENT 'Mentee feedback question 3',
  `MTEE_FD_Q4` varchar(45) NOT NULL COMMENT 'Mentee feedback question 4',
  PRIMARY KEY (`MENTEE_FDB_ID`),
  UNIQUE KEY `MENTEE_FDB_ID_UNIQUE` (`MENTEE_FDB_ID`),
  KEY `PROG_ID_idx` (`PROG_ID`),
  CONSTRAINT `PROG_ID2` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentee_feedback`
--

LOCK TABLES `mentee_feedback` WRITE;
/*!40000 ALTER TABLE `mentee_feedback` DISABLE KEYS */;
INSERT INTO `mentee_feedback` VALUES ('30001','PRO04','Good','Excelent','Good','Good'),('30002','PRO05','Excelent','Good','Average','Good'),('30003','PRO05','Average','Average','Good','Average'),('30004','PRO03','Good','Average','Good','Average'),('30005','PRO01','Good','Good','Average','Good'),('30006','PRO06','Average','Good','Good','Good'),('30007','PRO02','Good','Good','Average','Average');
/*!40000 ALTER TABLE `mentee_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentee_prog_assc`
--

DROP TABLE IF EXISTS `mentee_prog_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentee_prog_assc` (
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `MENTEE_ID` int NOT NULL COMMENT 'Mentee id number',
  PRIMARY KEY (`PROG_ID`,`MENTEE_ID`),
  KEY `MENTEE_ID_idx` (`MENTEE_ID`),
  CONSTRAINT `MENTEE_ID1234567` FOREIGN KEY (`MENTEE_ID`) REFERENCES `mentee` (`MENTEE_ID`),
  CONSTRAINT `PROG_ID123456` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentee_prog_assc`
--

LOCK TABLES `mentee_prog_assc` WRITE;
/*!40000 ALTER TABLE `mentee_prog_assc` DISABLE KEYS */;
INSERT INTO `mentee_prog_assc` VALUES ('PRO04',7),('PRO05',8),('PRO05',9),('PRO03',10),('PRO01',11),('PRO06',12),('PRO02',13);
/*!40000 ALTER TABLE `mentee_prog_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `EMPLOYEE_ID` varchar(5) NOT NULL COMMENT 'Employee Identity number: EP###',
  `MENTOR_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Mentor id number',
  `REG_DATE` date DEFAULT NULL COMMENT 'Registered date',
  `MENTOR_SUB_1` varchar(10) DEFAULT NULL COMMENT 'Mentoring subject one',
  `MENTOR_SUB_2` varchar(10) DEFAULT NULL COMMENT 'Mentoring subject two',
  PRIMARY KEY (`MENTOR_ID`),
  UNIQUE KEY `MENTOR_ID_UNIQUE` (`MENTOR_ID`),
  UNIQUE KEY `EMPLOYEE_ID_UNIQUE` (`EMPLOYEE_ID`),
  KEY `fk_MENTOR_EMPLOYEE_REGISTRY1_idx` (`EMPLOYEE_ID`),
  CONSTRAINT `EMPLOYEE_ID3` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee_registry` (`EMPLOYEE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES ('EP001',9,'2022-06-01','SQL','BI'),('EP003',10,'2022-06-02','BI','SQL'),('EP004',11,'2022-06-03','Python','PHP'),('EP005',12,'2022-06-04','R','PHP'),('EP006',13,'2022-06-05','JAVA','PHP'),('EP007',14,'2022-06-06','PHP','R');
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_feedback`
--

DROP TABLE IF EXISTS `mentor_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_feedback` (
  `MENTOR_FDB_ID` char(5) NOT NULL COMMENT 'Mentor feedback id numbe: #####',
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `MTOR_FD_Q1` varchar(45) NOT NULL COMMENT 'Mentor feedback question 1',
  `MTOR_FD_Q2` varchar(45) NOT NULL COMMENT 'Mentor feedback question 2',
  `MTOR_FD_Q3` varchar(45) NOT NULL COMMENT 'Mentor feedback question 3',
  `MTOR_FD_Q4` varchar(45) NOT NULL COMMENT 'Mentor feedback question 4',
  PRIMARY KEY (`MENTOR_FDB_ID`),
  UNIQUE KEY `MENTOR_FDB_ID_UNIQUE` (`MENTOR_FDB_ID`),
  KEY `PROG_ID_idx` (`PROG_ID`),
  CONSTRAINT `PROG_ID3` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_feedback`
--

LOCK TABLES `mentor_feedback` WRITE;
/*!40000 ALTER TABLE `mentor_feedback` DISABLE KEYS */;
INSERT INTO `mentor_feedback` VALUES ('20221','PRO01','Good','Good','Average','Good'),('20222','PRO02','Average','Good','Good','Average'),('20223','PRO03','Good','Good','Average','Good'),('20224','PRO04','Good','Average','Good','Good'),('20225','PRO05','Good','Good','Average','Good'),('20226','PRO06','Average','Good','Good','Good');
/*!40000 ALTER TABLE `mentor_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_prog_assc`
--

DROP TABLE IF EXISTS `mentor_prog_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_prog_assc` (
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `MENTOR_ID` int NOT NULL COMMENT 'Mentor id number',
  PRIMARY KEY (`PROG_ID`,`MENTOR_ID`),
  KEY `MENTOR_ID_idx` (`MENTOR_ID`),
  CONSTRAINT `MENTOR_ID23456` FOREIGN KEY (`MENTOR_ID`) REFERENCES `mentor` (`MENTOR_ID`),
  CONSTRAINT `PROG_ID1234` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_prog_assc`
--

LOCK TABLES `mentor_prog_assc` WRITE;
/*!40000 ALTER TABLE `mentor_prog_assc` DISABLE KEYS */;
INSERT INTO `mentor_prog_assc` VALUES ('PRO01',9),('PRO02',10),('PRO03',11),('PRO04',12),('PRO05',13),('PRO06',14);
/*!40000 ALTER TABLE `mentor_prog_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_rewards`
--

DROP TABLE IF EXISTS `mentor_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_rewards` (
  `MENTOR_ID` int NOT NULL COMMENT 'Mentor id number',
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `REWD_VALUE` varchar(30) DEFAULT NULL COMMENT 'Reward value',
  `REWD_POSITION` varchar(30) DEFAULT NULL,
  `REWD_BENIFITS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MENTOR_ID`,`PROG_ID`),
  UNIQUE KEY `PROG_ID_UNIQUE` (`PROG_ID`),
  CONSTRAINT `MENTOR_ID234` FOREIGN KEY (`MENTOR_ID`) REFERENCES `mentor` (`MENTOR_ID`),
  CONSTRAINT `PROG_ID123` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_rewards`
--

LOCK TABLES `mentor_rewards` WRITE;
/*!40000 ALTER TABLE `mentor_rewards` DISABLE KEYS */;
INSERT INTO `mentor_rewards` VALUES (9,'PRO01','500','N/A','N/A'),(10,'PRO02','100','Manager','N/A'),(11,'PRO03','200','N/A','N/A'),(12,'PRO04','300','N/A','Mobile'),(13,'PRO05','400','N/A','N/A'),(14,'PRO06','200','N/A','N/A');
/*!40000 ALTER TABLE `mentor_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meor_fedbck_assc`
--

DROP TABLE IF EXISTS `meor_fedbck_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meor_fedbck_assc` (
  `MENTOR_ID` int NOT NULL COMMENT 'Mentor id number',
  `MENTOR_FDB_ID` char(5) NOT NULL COMMENT 'Mentor feedback id number: #####',
  PRIMARY KEY (`MENTOR_ID`,`MENTOR_FDB_ID`),
  KEY `MENTOR_FDB_ID_idx` (`MENTOR_FDB_ID`),
  CONSTRAINT `MENTOR_FDB_ID3456` FOREIGN KEY (`MENTOR_FDB_ID`) REFERENCES `mentor_feedback` (`MENTOR_FDB_ID`),
  CONSTRAINT `MENTOR_ID4567` FOREIGN KEY (`MENTOR_ID`) REFERENCES `mentor` (`MENTOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meor_fedbck_assc`
--

LOCK TABLES `meor_fedbck_assc` WRITE;
/*!40000 ALTER TABLE `meor_fedbck_assc` DISABLE KEYS */;
INSERT INTO `meor_fedbck_assc` VALUES (9,'20221'),(10,'20222'),(11,'20223'),(12,'20224'),(13,'20225'),(14,'20226');
/*!40000 ALTER TABLE `meor_fedbck_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mete_fedbck_assc`
--

DROP TABLE IF EXISTS `mete_fedbck_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mete_fedbck_assc` (
  `MENTEE_ID` int NOT NULL COMMENT 'Mentee id number',
  `MENTEE_FDB_ID` char(5) NOT NULL COMMENT 'Mentee feedback id number: #####',
  PRIMARY KEY (`MENTEE_ID`,`MENTEE_FDB_ID`),
  KEY `MENTEE_FDB_ID_idx` (`MENTEE_FDB_ID`),
  CONSTRAINT `MENTEE_FDB_ID7896` FOREIGN KEY (`MENTEE_FDB_ID`) REFERENCES `mentee_feedback` (`MENTEE_FDB_ID`),
  CONSTRAINT `MENTEE_ID5678` FOREIGN KEY (`MENTEE_ID`) REFERENCES `mentee` (`MENTEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mete_fedbck_assc`
--

LOCK TABLES `mete_fedbck_assc` WRITE;
/*!40000 ALTER TABLE `mete_fedbck_assc` DISABLE KEYS */;
INSERT INTO `mete_fedbck_assc` VALUES (7,'30001'),(8,'30002'),(9,'30003'),(10,'30004'),(11,'30005'),(12,'30006'),(13,'30007');
/*!40000 ALTER TABLE `mete_fedbck_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_depat`
--

DROP TABLE IF EXISTS `org_depat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_depat` (
  `DEPT_CODE` varchar(5) NOT NULL COMMENT 'Department code: DP###',
  `DEPT_NAME` varchar(20) NOT NULL COMMENT 'Department Name',
  `DEPT_EMAIL` varchar(20) NOT NULL COMMENT 'Department email',
  `DEPT_TEL` varchar(10) NOT NULL COMMENT 'Department phone number',
  `DEPT_ST_ADD` varchar(20) NOT NULL COMMENT 'Department street address',
  `DEPT_BULD_NUM` varchar(6) NOT NULL COMMENT 'Department building number',
  `DEPT_CITY` varchar(20) NOT NULL COMMENT 'Department city',
  `DEPT_STATE` varchar(2) NOT NULL COMMENT 'Department State',
  `DEPT_ZIP_CODE` varchar(5) NOT NULL COMMENT 'Department zip code',
  PRIMARY KEY (`DEPT_CODE`),
  UNIQUE KEY `DEPT_CODE_UNIQUE` (`DEPT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_depat`
--

LOCK TABLES `org_depat` WRITE;
/*!40000 ALTER TABLE `org_depat` DISABLE KEYS */;
INSERT INTO `org_depat` VALUES ('DP001','Software Development','software@hdj.com','3175648750','765 Alex Street','12','Indianapolis','IN','46202'),('DP002','Human Resources','human@hdj.com','3175647750','782 Awe Street','20','Peru','IN','46970'),('DP003','Project Management','project@hdj.com','3175642750','457 Hely Street','23','Greenwood','IN','46142'),('DP004','Finance','finance@hdj.com','3175643750','687 Dunphy Street','39','Brazil','IN','47834'),('DP005','User Interface','user@hdj.com','3175644750','413 Manny Street','46','Norway','IN','47960');
/*!40000 ALTER TABLE `org_depat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_depat_room_assc`
--

DROP TABLE IF EXISTS `org_depat_room_assc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_depat_room_assc` (
  `DEPT_CODE` varchar(5) NOT NULL COMMENT 'Department code: DP###',
  `ROOM_CODE` varchar(5) NOT NULL COMMENT 'Room code: RM###',
  PRIMARY KEY (`DEPT_CODE`,`ROOM_CODE`),
  KEY `fk_ORG_DEPAT_ROOM_ASSC_ROOM_REGISTRY1_idx` (`ROOM_CODE`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_ORG_DEPAT_ROOM_ASSC_ORG_DEPAT1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `org_depat` (`DEPT_CODE`),
  CONSTRAINT `fk_ORG_DEPAT_ROOM_ASSC_ROOM_REGISTRY1` FOREIGN KEY (`ROOM_CODE`) REFERENCES `room_registry` (`ROOM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_depat_room_assc`
--

LOCK TABLES `org_depat_room_assc` WRITE;
/*!40000 ALTER TABLE `org_depat_room_assc` DISABLE KEYS */;
INSERT INTO `org_depat_room_assc` VALUES ('DP001','RM001'),('DP001','RM002'),('DP002','RM003'),('DP002','RM004'),('DP003','RM005'),('DP003','RM006'),('DP004','RM007'),('DP004','RM008'),('DP005','RM009'),('DP005','RM010');
/*!40000 ALTER TABLE `org_depat_room_assc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prog_conducted`
--

DROP TABLE IF EXISTS `prog_conducted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prog_conducted` (
  `PROG_ID` varchar(5) NOT NULL COMMENT 'Program id: PRO##',
  `PROG_NAME` varchar(20) NOT NULL COMMENT 'Program name',
  `PROG_DESCP` varchar(45) NOT NULL COMMENT 'Program description',
  `PROG_MODE` varchar(10) NOT NULL COMMENT 'Program mode',
  `PROG_CHAPTERS` char(2) NOT NULL COMMENT 'Program chapters',
  PRIMARY KEY (`PROG_ID`),
  UNIQUE KEY `PROG_ID_UNIQUE` (`PROG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prog_conducted`
--

LOCK TABLES `prog_conducted` WRITE;
/*!40000 ALTER TABLE `prog_conducted` DISABLE KEYS */;
INSERT INTO `prog_conducted` VALUES ('PRO01','SQL','Structured Query Language','Online','6'),('PRO02','BI','Microsoft Power BI','Offline','6'),('PRO03','Python','Python Software','Online','6'),('PRO04','R','R language','Offline','6'),('PRO05','JAVA','Java language','Offline','6'),('PRO06','PHP','PHP Hypertext Preprocessor','Online','6');
/*!40000 ALTER TABLE `prog_conducted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_registry`
--

DROP TABLE IF EXISTS `room_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_registry` (
  `ROOM_CODE` varchar(5) NOT NULL COMMENT 'Room code: RM###',
  `BLD_CODE` varchar(5) NOT NULL COMMENT 'Building code: BD###',
  `ROOM_CAP` smallint NOT NULL COMMENT 'Room capacity',
  `ROOM_TEL_NUM` varchar(10) NOT NULL COMMENT 'Room telephone number',
  `ROOM_BUL_NUM` smallint NOT NULL COMMENT 'number of bulbs at room',
  PRIMARY KEY (`ROOM_CODE`),
  UNIQUE KEY `ROOM_CODE_UNIQUE` (`ROOM_CODE`),
  KEY `fk_ROOM_REGISTRY_BULD_REGISTRY1_idx` (`BLD_CODE`),
  CONSTRAINT `fk_ROOM_REGISTRY_BULD_REGISTRY1` FOREIGN KEY (`BLD_CODE`) REFERENCES `buld_registry` (`BLD_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_registry`
--

LOCK TABLES `room_registry` WRITE;
/*!40000 ALTER TABLE `room_registry` DISABLE KEYS */;
INSERT INTO `room_registry` VALUES ('RM001','BD001',20,'3173345713',5),('RM002','BD001',10,'3183345713',3),('RM003','BD002',10,'3193345713',4),('RM004','BD002',10,'3203345713',5),('RM005','BD003',15,'3213345713',6),('RM006','BD003',15,'3223345713',2),('RM007','BD004',20,'3233345713',3),('RM008','BD004',15,'3243345713',4),('RM009','BD005',20,'3253345713',5),('RM010','BD005',10,'3263345713',6);
/*!40000 ALTER TABLE `room_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions_completed`
--

DROP TABLE IF EXISTS `sessions_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions_completed` (
  `SESSION_NUM` tinyint(1) NOT NULL COMMENT 'Session Number',
  `PROG_ID` varchar(5) DEFAULT NULL COMMENT 'Program id',
  `ROOM_CODE` varchar(5) DEFAULT NULL COMMENT 'Room code',
  `SES_DATE` date NOT NULL COMMENT 'Session date ',
  `SES_STR_TIME` time NOT NULL COMMENT 'Session starts time',
  `SES_END_TIME` time NOT NULL COMMENT 'Session end time',
  PRIMARY KEY (`SESSION_NUM`),
  UNIQUE KEY `SESSION_NUM_UNIQUE` (`SESSION_NUM`),
  KEY `PROG_ID_idx` (`PROG_ID`),
  KEY `ROOM_CODE_idx` (`ROOM_CODE`),
  CONSTRAINT `PROG_ID1` FOREIGN KEY (`PROG_ID`) REFERENCES `prog_conducted` (`PROG_ID`),
  CONSTRAINT `ROOM_CODE1` FOREIGN KEY (`ROOM_CODE`) REFERENCES `room_registry` (`ROOM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions_completed`
--

LOCK TABLES `sessions_completed` WRITE;
/*!40000 ALTER TABLE `sessions_completed` DISABLE KEYS */;
INSERT INTO `sessions_completed` VALUES (1,'PRO01','RM001','2022-07-01','16:00:00','18:00:00'),(2,'PRO01','RM001','2022-07-02','16:00:00','18:00:00'),(3,'PRO01','RM001','2022-07-03','16:00:00','18:00:00'),(4,'PRO01','RM001','2022-07-04','16:00:00','18:00:00'),(5,'PRO01','RM001','2022-07-05','16:00:00','18:00:00'),(6,'PRO01','RM001','2022-07-06','16:00:00','18:00:00'),(7,'PRO02','RM003','2022-07-07','16:00:00','18:00:00'),(8,'PRO02','RM003','2022-07-08','16:00:00','18:00:00'),(9,'PRO02','RM003','2022-07-09','16:00:00','18:00:00'),(10,'PRO02','RM003','2022-07-10','16:00:00','18:00:00'),(11,'PRO02','RM003','2022-07-11','16:00:00','18:00:00'),(12,'PRO02','RM003','2022-07-12','16:00:00','18:00:00'),(13,'PRO03','RM004','2022-07-13','16:00:00','18:00:00'),(14,'PRO03','RM004','2022-07-14','16:00:00','18:00:00'),(15,'PRO03','RM004','2022-07-15','16:00:00','18:00:00'),(16,'PRO03','RM004','2022-07-16','16:00:00','18:00:00'),(17,'PRO03','RM004','2022-07-17','16:00:00','18:00:00'),(18,'PRO03','RM004','2022-07-18','16:00:00','18:00:00'),(19,'PRO04','RM005','2022-07-19','16:00:00','18:00:00'),(20,'PRO04','RM005','2022-07-20','16:00:00','18:00:00'),(21,'PRO04','RM005','2022-07-21','16:00:00','18:00:00'),(22,'PRO04','RM005','2022-07-22','16:00:00','18:00:00'),(23,'PRO04','RM005','2022-07-23','16:00:00','18:00:00'),(24,'PRO04','RM005','2022-07-24','16:00:00','18:00:00'),(25,'PRO05','RM006','2022-07-25','16:00:00','18:00:00'),(26,'PRO05','RM006','2022-07-26','16:00:00','18:00:00'),(27,'PRO05','RM006','2022-07-27','16:00:00','18:00:00'),(28,'PRO05','RM006','2022-07-28','16:00:00','18:00:00'),(29,'PRO05','RM006','2022-07-29','16:00:00','18:00:00'),(30,'PRO05','RM006','2022-07-30','16:00:00','18:00:00'),(31,'PRO06','RM007','2022-07-31','16:00:00','18:00:00'),(32,'PRO06','RM007','2022-08-01','16:00:00','18:00:00'),(33,'PRO06','RM007','2022-08-02','16:00:00','18:00:00'),(34,'PRO06','RM007','2022-08-03','16:00:00','18:00:00'),(35,'PRO06','RM007','2022-08-04','16:00:00','18:00:00'),(36,'PRO06','RM007','2022-08-05','16:00:00','18:00:00');
/*!40000 ALTER TABLE `sessions_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project'
--

--
-- Dumping routines for database 'project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 14:54:26
