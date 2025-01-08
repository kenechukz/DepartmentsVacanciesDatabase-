-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: chukwu23318136
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidateid` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `number` int NOT NULL,
  `skills` varchar(200) DEFAULT NULL COMMENT 'Each candidate can have many skills\\n',
  PRIMARY KEY (`candidateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1234,'devon','manes','3 Strawberry Avenue, Dublin 3',863459898,'communication, RegEx, Tableau'),(1235,'adam','mitchells','11 Harcourt Dale, Dublin 16',872399912,'Interpersonal, Excel, Python, MySQL'),(1248,'Mary','Barns','2 Mayfair Square, Dundalk, Louth',892224336,'PyTorch, MySQL, Excel '),(1367,'Adam','White','23 Culberry Terrace, Dunshauglin, Meath',873254236,'AWS'),(1368,'Emily','Smith','15 Cherrywood Drive, Galway, Galway',876543210,'Pandas'),(1369,'Liam','O’Brien','52 Cloverfield Road, Cork, Cork',834567892,'AWS, PowerBI'),(1370,'Olivia','Murphy','10 Riverbank Avenue, Limerick, Limerick',812345678,'Scikit-learn'),(1371,'Noah','Walsh','8 St. Patrick’s Road, Waterford, Waterford',899456123,'Database Design'),(1372,'Sophia','Byrne','21 Willow Grove, Swords, Dublin',846789234,' RegEx'),(1373,'Jack','Doyle','9 Elmwood Crescent, Kilkenny, Kilkenny',854321789,'Interpersonal'),(1374,'Ava','Kelly','4 Cedar Lane, Tralee, Kerry',889654321,'Administration');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidateid` int NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`candidateid`,`skill_id`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `candidate_skills_ibfk_1` FOREIGN KEY (`candidateid`) REFERENCES `candidate` (`candidateid`),
  CONSTRAINT `candidate_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (1235,1),(1248,1),(1235,2),(1235,3),(1248,3),(1248,4),(1234,5),(1235,6),(1373,6),(1234,7),(1372,7),(1368,8),(1234,9),(1371,10),(1367,11),(1369,11),(1370,13),(1369,14),(1374,17);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dates` (
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday') NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES ('Friday','2024-09-20','10:00:00'),('Friday','2024-11-08','14:00:00'),('Friday','2024-06-02','09:00:00'),('Thursday','2024-09-12','11:00:00'),('Thursday','2024-05-09','13:30:00'),('Tuesday','2024-08-14','15:00:00'),('Thursday','2023-11-22','10:30:00'),('Wednesday','2024-03-04','09:45:00'),('Thursday','2024-07-04','14:15:00'),('Thursday','2024-02-01','08:30:00'),('Thursday','2024-09-19','16:00:00');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `deptid` varchar(5) NOT NULL,
  `deptname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `telephone` int NOT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('CS100','Customer Support','Building 9',19987654),('DB100','Databases and Data Analytics','Building 5',12345555),('DB101','Databases and Data Modeling','Building 6',12678900),('EN100','Engineering','Building 5',14567890),('FN100','Finance and Accounting','Building 2',16783412),('HR100','Human Resources','Building 1',11223344),('IT100','IT ','Building 4',15432222),('IT101','Software Development','Building 3',17894567),('MK100','Marketing','Building 7',15439876),('SC100','Supply Chain Management','Building 8',13324578);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hires`
--

DROP TABLE IF EXISTS `hires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hires` (
  `hire_id` int NOT NULL AUTO_INCREMENT,
  `candidateid` int DEFAULT NULL,
  `posid` varchar(5) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`hire_id`),
  KEY `candidateid` (`candidateid`),
  KEY `posid` (`posid`),
  CONSTRAINT `hires_ibfk_1` FOREIGN KEY (`candidateid`) REFERENCES `candidate` (`candidateid`),
  CONSTRAINT `hires_ibfk_2` FOREIGN KEY (`posid`) REFERENCES `position` (`posid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hires`
--

LOCK TABLES `hires` WRITE;
/*!40000 ALTER TABLE `hires` DISABLE KEYS */;
INSERT INTO `hires` VALUES (1,1235,'DB200','2024-11-12'),(2,1248,'DB200','2023-06-21'),(3,1367,'DB500','2024-10-01'),(4,1368,'DB610','2024-05-15'),(5,1369,'DB700','2024-08-23'),(6,1370,'DB450','2023-12-05'),(7,1371,'DB300','2024-03-20'),(8,1372,'DB613','2024-07-11'),(9,1373,'DB780','2024-02-14'),(10,1374,'DB686','2024-09-30');
/*!40000 ALTER TABLE `hires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `interview#` int NOT NULL,
  `status` enum('uncompleted','evaluating','passed','rejected') NOT NULL,
  `interviewer` varchar(40) NOT NULL,
  `posid` varchar(5) NOT NULL,
  `candidateid` int DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  PRIMARY KEY (`interview#`),
  KEY `posid_idx` (`posid`),
  KEY `candidateid_idx` (`candidateid`),
  CONSTRAINT `posid` FOREIGN KEY (`posid`) REFERENCES `position` (`posid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES (1,'rejected','Michael Owen','DB200',1235,'2024-09-20'),(2,'passed','Michael Owen','DB200',1235,'2024-11-08'),(3,'passed','Tony Adams','DB200',1248,'2024-06-02'),(4,'passed','Sarah Johnson','DB500',1367,'2024-09-12'),(5,'passed','John Davies','DB610',1368,'2024-05-09'),(6,'passed','Jane Carter','DB700',1369,'2024-08-14'),(7,'passed','Michael Owen','DB450',1370,'2023-11-22'),(8,'passed','Tony Adams','DB300',1371,'2024-03-04'),(9,'passed','Sarah Johnson','DB613',1372,'2024-07-04'),(10,'passed','Jane Carter','DB780',1373,'2024-02-01'),(11,'passed','John Davies','DB686',1374,'2024-09-19');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `posid` varchar(5) NOT NULL,
  `deptid` varchar(5) NOT NULL,
  `type` varchar(40) NOT NULL,
  `skills` varchar(200) NOT NULL,
  PRIMARY KEY (`posid`),
  UNIQUE KEY `posid_UNIQUE` (`posid`),
  KEY `deptid_idx` (`deptid`),
  CONSTRAINT `deptid` FOREIGN KEY (`deptid`) REFERENCES `department` (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('CS101','CS100','Customer Support Manager','communication, interpersonal'),('DB200','DB100','Analytics Engineer','Excel, Python'),('DB300','DB100','Data Mining','MySQL, AWS'),('DB450','DB100','Data Architecture','AWS, Security'),('DB500','DB100','Machine Learning','Python, PyTorch'),('DB610','DB100','Data Visualization','Tableau, Power BI'),('DB613','DB100','Big Data Analysis','MongoDB, PyTorch'),('DB656','DB100','Database Administration','MySQL, MongoDB'),('DB686','DB100','Business Intelligence','Power BI, Administration'),('DB700','DB100','Cloud Data Engineering','AWS, MySQL'),('DB707','DB100','Data Governance','Data Privacy, Security'),('DB780','DB100','AI Specialist','Scikit-learn'),('EN101','EN100','Mechanical Engineer','Python, MySQL'),('FN101','FN100','Financial Analyst','Excel, MySQL'),('HR101','HR100','HR Specialist','Excel, communication'),('IT201','IT101','Software Developer','Python, MySQL'),('IT202','IT101','IT Support Specialist','AWS, Excel'),('MK101','MK100','Marketing Analyst','Tableau, Power BI'),('SC101','SC100','Supply Chain Analyst','MySQL, AWS');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `posid` varchar(5) NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`posid`,`skill_id`),
  KEY `skill_id_idx` (`skill_id`),
  CONSTRAINT `posid2` FOREIGN KEY (`posid`) REFERENCES `position` (`posid`),
  CONSTRAINT `skillid2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES ('DB200',1),('FN101',1),('HR101',1),('IT202',1),('DB200',2),('DB500',2),('EN101',2),('IT201',2),('DB300',3),('DB656',3),('DB700',3),('EN101',3),('FN101',3),('IT201',3),('SC101',3),('DB500',4),('DB613',4),('HR101',5),('DB610',9),('MK101',9),('DB300',11),('DB450',11),('DB700',11),('IT202',11),('SC101',11),('DB613',12),('DB656',12),('DB780',13),('DB610',14),('DB686',14),('MK101',14),('DB450',15),('DB707',15),('DB707',16),('DB686',17);
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (17,'Administration'),(11,'AWS'),(5,'communication'),(16,'Data Privacy'),(10,'Database Design'),(1,'Excel'),(6,'Interpersonal'),(12,'MongoDB'),(3,'MySQL'),(8,'Pandas'),(14,'PowerBI'),(2,'Python'),(4,'PyTorch'),(7,'RegEx'),(13,'Scikit-learn'),(15,'Security'),(9,'Tableau');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'chukwu23318136'
--

--
-- Dumping routines for database 'chukwu23318136'
--
/*!50003 DROP PROCEDURE IF EXISTS `CandidateGivenAFirstName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CandidateGivenAFirstName`(
    IN firstname VARCHAR(45)  -- Input parameter
)
BEGIN
    -- SQL Logic
    SELECT * 
    FROM candidate
    WHERE firstname=firstname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CandidateInterviewedMoreThanOnce` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CandidateInterviewedMoreThanOnce`(
	
)
BEGIN 	
    SELECT candidate.firstname, candidate.candidateid
    FROM candidate
    JOIN interview ON candidate.candidateid=interview.candidateid
    GROUP BY candidate.candidateid
    HAVING COUNT(candidate.candidateid) > 1;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CandidateWithSkillFromGivenPosID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CandidateWithSkillFromGivenPosID`(
	IN id VARCHAR(5)
)
BEGIN 	
    SELECT *
    FROM candidate_skills
    JOIN position_skills ON candidate_skills.skill_id = position_skills.skill_id
    WHERE posid=id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeptGivenDeptName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeptGivenDeptName`(
	IN department VARCHAR(40)  
)
BEGIN 	
    SELECT *
    FROM department
    WHERE deptname=department;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPositionsSortedByDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPositionsSortedByDepartment`()
BEGIN
    
    SELECT p.posid, p.`type`, d.deptname
    FROM `position` p
    INNER JOIN department d ON p.deptid = d.deptid
    ORDER BY d.deptname, p.`type`;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IDCandidateInterviewOnGivenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IDCandidateInterviewOnGivenDate`(
	IN givenDate date
)
BEGIN 	
    SELECT candidateid
    FROM interview
    GROUP BY candidateid
    HAVING COUNT(DISTINCT interview_date ) = 1
    AND MAX(interview_date) = givenDate;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIntoCandidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIntoCandidate`(
    IN p_candidateid INT,
    IN p_firstname VARCHAR(45),
    IN p_surname VARCHAR(45),
    IN p_address VARCHAR(100),
    IN p_number INT,
    IN p_skills VARCHAR(200)
    
)
BEGIN
    INSERT INTO candidate (candidateid, firstname, surname, address, `number`, skills)
    VALUES (p_candidateid, p_firstname, p_surname, p_address, p_number, p_skills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIntoDates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIntoDates`(
    IN p_day VARCHAR(45),
    IN p_date DATETIME,
    IN p_time varchar(7)
)
BEGIN
    INSERT INTO dates (`day` ,`date`, `time`)
    VALUES (p_day, p_date, p_time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIntoDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIntoDepartment`(
    IN p_deptid VARCHAR(5),
    IN p_deptname VARCHAR(40),
    IN p_address VARCHAR(40),
    IN p_telephone INT
)
BEGIN
    INSERT INTO department (deptid, deptname, address, telephone)
    VALUES (p_deptid, p_deptname, p_address, p_telephone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIntoInterview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIntoInterview`(
    IN p_interview INT,
    IN p_status ENUM('uncompleted','evaluating','passed','rejected'),
    IN p_postype VARCHAR(40),
    IN p_interviewer VARCHAR(50),
    IN p_posid VARCHAR(5)
)
BEGIN
    INSERT INTO interview (interview, `status`, postype, interviewer, posid)
    VALUES (p_interview, p_status, p_postype, p_interviewer, p_posid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIntoPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIntoPosition`(
    IN p_posid VARCHAR(5),
    IN p_deptid VARCHAR(5),
    IN p_type VARCHAR(40),
    IN p_skills VARCHAR(200)
    
)
BEGIN
    INSERT INTO `position` (posid, deptid, `type`, skills)
    VALUES (p_posid, p_deptid, p_type, p_skills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InterviewOnGivenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InterviewOnGivenDate`(
	IN givenDate date
)
BEGIN 	
    SELECT *
    FROM interview
    WHERE interview_date=givenDate;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NumberOfHires` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NumberOfHires`(
	
)
BEGIN 	
    SELECT COUNT(*) as number_of_candidates_with_offer
    FROM hires as h;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NumberPositionsRequireAdminSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NumberPositionsRequireAdminSkills`(
	
)
BEGIN 	
    SELECT COUNT(*) as number_positions_require_admin_skills
    FROM position_skills
    WHERE skill_id=17;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PositionGivenSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PositionGivenSkill`(
	IN skill VARCHAR(45)   
)
BEGIN 	
    SELECT position.posid, position.deptid, position.`type`, position.skills 
    FROM position_skills
    JOIN `position` ON position_skills.posid = `position`.posid
    JOIN skills ON position_skills.skill_id = skills.skill_id
    WHERE skills.`name`=skill;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SurnameGivenCandidateID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SurnameGivenCandidateID`(
	IN id INT  
)
BEGIN 	
    SELECT surname
    FROM candidate
    WHERE candidateid=id;
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

-- Dump completed on 2024-11-18 18:31:38
