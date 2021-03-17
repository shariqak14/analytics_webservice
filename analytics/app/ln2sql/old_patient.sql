CREATE DATABASE /*!32312 IF NOT EXISTS*/ `emr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `emr`;

DROP TABLE IF EXISTS `Condition_History`;

CREATE TABLE `Condition_History` (
  `PID` varchar(15) DEFAULT NULL,
  `condition_name` varchar(75) DEFAULT NULL,
  `Severity` varchar(25) DEFAULT NULL,
  `Years_Diagnosed` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `Condition_History` WRITE;
INSERT INTO `Condition_History` VALUES ('P1','cardiovascular disease','Mild',1),('P2','asthma','Medium',3),('P3','diabetes','Mild',1),('P4','OI','Mild',1),('P5','cardiovascular disease','Severe',5),('P6','Osteoporosis','Mild',0),('P7','diabetes','Medium',1),('P8','diabetes','Severe',5),('P9','Cancer (bone)','Medium',3),('P10','Cancer (oral)','Mild',1),('P11','cardiovascular disease','Mild',1),('P12','Cancer (bone)','Mild',0),('P13','cardiovascular disease','Medium',3),('P14','asthma','Mild',1),('P15','asthma','Severe',10),('P16','Cancer (oral)','Severe',2),('P17','cardiovascular disease','Mild',1),('P18','Osteoporosis','Medium',2),('P19','cardiovascular disease','Mild',0),('P20','diabetes','Severe',4),('P21','diabetes','Medium',4),('P22','cardiovascular disease','Mild',1),('P23','cardiovascular disease','Medium',1),('P24','Cancer (oral)','Mild',0),('P25','Osteoporosis','Severe',6),('P26','asthma','Medium',3),('P27','Cancer (bone)','Mild',1),('P28','diabetes','Mild',0),('P29','cardiovascular disease','Mild',1),('P30','diabetes','Medium',3),('P31','cardiovascular disease','Mild',1),('P32','cardiovascular disease','Mild',1),('P33','Osteoporosis','Severe',4),('P34','Cancer (oral)','Mild',2),('P35','cardiovascular disease','Severe',3),('P36','diabetes','Medium',3),('P37','Cancer (bone)','Mild',2),('P38','cardiovascular disease','Mild',1),('P39','diabetes','Mild',1),('P40','Cancer (oral)','Medium',2),('P41','cardiovascular disease','Mild',0),('P42','OI','Severe',1),('P43','cardiovascular disease','Mild',1),('P44','diabetes','Mild',0),('P45','diabetes','Mild',1),('P46','cardiovascular disease','Mild',0),('P47','asthma','Mild',10),('P48','diabetes','Mild',1),('P49','Cancer (bone)','Medium',4),('P50','cardiovascular disease','Severe',2),('P51','diabetes','Medium',3),('P52','cardiovascular disease','Medium',3),('P53','cardiovascular disease','Mild',1),('P54','Cancer (bone)','Severe',2),('P55','diabetes','Mild',1),('P56','Cancer (bone)','Severe',2),('P57','cardiovascular disease','Medium',3),('P58','Cancer (bone)','Mild',0),('P59','diabetes','Severe',5),('P60','cardiovascular disease','Mild',1),('P61','Osteoporosis','Medium',1),('P62','cardiovascular disease','Mild',0),('P63','diabetes','Mild',0),('P64','asthma','Mild',2),('P65','diabetes','Severe',4);
UNLOCK TABLES;

DROP TABLE IF EXISTS `Dental_Cavities`;
CREATE TABLE `Dental_Cavities` (
  `PID` varchar(10) DEFAULT NULL,
  `Missing_teeth` varchar(3) DEFAULT NULL,
  `Total_cavities` int DEFAULT NULL,
  `Gum_Disease` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Dental_Cavities` WRITE;
/*!40000 ALTER TABLE `Dental_Cavities` DISABLE KEYS */;
INSERT INTO `Dental_Cavities` VALUES ('P1','no',0,'no'),('P2','no',2,'no'),('P3','no',1,'no'),('P4','no',1,'no'),('P5','no',1,'no'),('P6','no',3,'no'),('P7','no',4,'yes'),('P8','no',1,'no'),('P9','yes',10,'yes'),('P10','no',2,'yes'),('P11','no',3,'no'),('P12','no',6,'yes'),('P13','yes',5,'no'),('P14','no',1,'no'),('P15','yes',10,'no'),('P16','no',0,'no'),('P17','no',0,'yes'),('P18','yes',5,'yes'),('P19','no',1,'no'),('P20','yes',2,'no'),('P21','no',1,'no'),('P22','yes',8,'no'),('P23','yes',9,'no'),('P24','no',6,'no'),('P25','no',3,'no'),('P26','no',2,'no'),('P27','no',4,'no'),('P28','no',1,'no'),('P29','no',1,'yes'),('P30','no',0,'yes'),('P31','no',0,'yes'),('P32','no',0,'no'),('P33','no',0,'no'),('P34','yes',7,'yes'),('P35','yes',2,'yes'),('P36','no',2,'no'),('P37','yes',5,'yes'),('P38','no',3,'no'),('P39','yes',6,'yes'),('P40','no',0,'no'),('P41','no',2,'no'),('P42','no',1,'no'),('P43','no',1,'no'),('P44','yes',3,'no'),('P45','yes',2,'yes'),('P46','no',2,'no'),('P47','yes',6,'yes'),('P48','yes',8,'no'),('P49','no',0,'no'),('P50','yes',12,'yes'),('P51','no',2,'no'),('P52','no',1,'no'),('P53','yes',15,'yes'),('P54','no',3,'no'),('P55','no',2,'yes'),('P56','yes',2,'yes'),('P57','no',1,'yes'),('P58','yes',5,'yes'),('P59','no',0,'no'),('P60','yes',4,'yes'),('P61','yes',5,'yes'),('P62','no',0,'no'),('P63','yes',9,'no'),('P64','no',1,'no'),('P65','no',2,'no');
/*!40000 ALTER TABLE `Dental_Cavities` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `Fname` varchar(150) DEFAULT '',
  `Mi` char(1) DEFAULT NULL,
  `Lname` varchar(150) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `Phone1` varchar(14) DEFAULT NULL,
  `SSN4` char(4) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('Gwenda','A','Tamila','P1','4/25/1943','(437) 456-7221','8906'),('Rickard','W','Melike','P10','9/6/1972','(469) 893-3254','9095'),('Juliana','H','Faustus','P11','2/13/1974','(382) 906-1383','9987'),('Zikomo','K','Meinrad','P12','3/9/1977','(869) 400-0087','3624'),('Fàtima','R','Ingmar','P13','4/10/1981','(244) 951-3671','4240'),('Njeri','C','Sachie','P14','5/15/1984','(352) 708-7089','6766'),('Satisha','V','Tiarnach','P15','8/7/1987','(873) 446-6363','603\r'),('Sharon','B','Stevens','P16','6/23/1991','(686) 994-4504','8667'),('Adrian','J','Sanchez','P17','12/23/1992','(217) 751-3057','5361'),('Andrea','I','Nichols','P18','6/3/2004','(343) 410-8138','9202'),('Jeannette','P','Olson','P19','4/23/2010','(526) 711-1742','2831'),('Melite','G','Joshua','P2','10/16/1946','(829) 456-5129','2266'),('Alexandra','G','Huff','P20','5/2/2010','(488) 367-5614','7680'),('Jay','F','Bush','P21','5/10/2010','(263) 844-4860','1532'),('Patrick','A','Howard','P22','7/6/2013','(290) 719-2114','7102'),('Richard','G','Cunningham','P23','12/13/2013','(554) 483-9591','4946'),('Tasha','R','Miller','P24','6/1/2014','(455) 322-1826','6938'),('Sadie','T','Henderson','P25','6/8/2018','(934) 422-7721','6460'),('Faith','U','Alvarez','P26','9/9/1940','(485) 230-7639','9421'),('Jeremy','E','Howell','P27','11/7/1940','(634) 791-0368','6121'),('Sheldon','T','Martin','P28','7/31/1941','(355) 672-6464','1094'),('Casey','A','Scott','P29','9/29/1942','(964) 266-4930','8903'),('Kyo','R','Dipika','P3','10/13/1947','(652) 896-4333','6576'),('Bob','B','Adkins','P30','9/19/1944','(215) 412-3380','3569'),('Raul','W','Morrison','P31','3/5/1948','(611) 617-9929','3051'),('Alfredo','H','Long','P32','8/9/1949','(528) 507-0653','6454'),('Clifton','K','Taylor','P33','2/21/1957','(291) 563-1177','2691'),('Toni','R','Burgess','P34','8/25/1958','(604) 454-7478','9945'),('Reginald','C','Mullins','P35','2/16/1959','(359) 876-2462','2809'),('Lynn','V','Porter','P36','6/18/1964','(232) 953-1941','7437'),('Leslie','B','Pratt','P37','8/27/1964','(720) 971-6387','5288'),('Sonja','J','Riley','P38','8/3/1972','(553) 659-5166','4433'),('Lonnie','I','Banks','P39','5/25/1977','(776) 953-4171','3744'),('Salomon','T','Augustine','P4','11/8/1950','(617) 465-2453','4090'),('Barry','P','Dean','P40','6/24/1986','(873) 434-1897','6063'),('Franklin','G','Ortega','P41','9/26/1988','(658) 306-0994','3298'),('Nick','F','Beck','P42','10/14/1992','(942) 216-1839','9756'),('Miguel','J','Grant','P43','2/17/1994','(800) 856-3417','3043'),('Alice','E','Moody','P44','2/16/1996','(982) 782-7892','1226'),('Matt','G','Joseph','P45','9/2/1999','(349) 699-8183','9975'),('Gregory','D','Bridges','P46','5/7/2008','(240) 241-5089','6170'),('Cody','S','West','P47','11/24/2010','(358) 987-9890','2377'),('Eileen','C','Gonzales','P48','6/8/2011','(831) 572-4720','94\r'),('Carol','A','Wagner','P49','3/8/2012','(323) 421-3916','6618'),('Linn','U','Neil','P5','10/2/1952','(983) 797-2644','5878'),('Priscilla','L','Barnett','P50','5/22/2014','(918) 663-6928','8569'),('Sue','I','Barber','P51','11/29/1940','(441) 684-6272','6189'),('Lorenzo','A','Welch','P52','7/16/1948','(884) 748-3504','5855'),('Lela','G','Harris','P53','12/31/1952','(889) 307-4730','8385'),('Jamie','R','Erickson','P54','8/16/1960','(358) 846-7572','8498'),('Taylor','T','Paul','P55','10/3/1960','(450) 872-2525','7637'),('Domingo','U','Chapman','P56','10/19/1965','(240) 696-8537','7655'),('Betty','E','Hansen','P57','6/29/1973','(268) 281-8574','3263'),('Marty','T','Neal','P58','4/15/1974','(933) 651-4614','4388'),('Tiffany','A','Cox','P59','6/25/1981','(313) 799-6715','7146'),('Domitille','E','Dimitrije','P6','11/15/1954','(475) 714-2926','7811'),('Maryann','B','Reyes','P60','7/11/1985','(469) 421-8842','5870'),('Gregg','W','Henry','P61','4/17/1990','(365) 912-4259','2818'),('Kim','H','Robertson','P62','2/15/2005','(940) 830-1345','1387'),('Drew','K','Roberts','P63','3/3/2005','(874) 897-5660','5612'),('Patty','R','Harper','P64','12/5/2016','(989) 278-9228','4534'),('Edmund','C','Hall','P65','11/15/2021','(859) 370-6438','1843'),('Suzana','T','Bogdan','P7','11/6/1959','(317) 826-9343','9197'),('Christian','A','Ffransis','P8','9/13/1967','(522) 378-1961','4104'),('Mikhailu','B','Kwadwo','P9','1/9/1971','(620) 634-7565','3317');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `clinical_notes`;
CREATE TABLE `clinical_notes` (
  `P_ID` varchar(20) NOT NULL,
  `LoggedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Drug` varchar(20) DEFAULT NULL,
  `Strength` varchar(40) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Route` varchar(20) DEFAULT NULL,
  `Form` varchar(20) DEFAULT NULL,
  `ADE` varchar(20) DEFAULT NULL,
  `Dosage` varchar(20) DEFAULT NULL,
  `Reason` varchar(40) DEFAULT NULL,
  `Frequency` varchar(20) DEFAULT NULL,
  `Note` varchar(255) NOT NULL,
  `Entry_ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Entry_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `clinical_notes` WRITE;
INSERT INTO `clinical_notes` VALUES ('P008','2021-03-02 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',1),('P3002','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',2),('P3012','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',3),('P302','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',4),('P88','2021-03-02 00:00:00','NULLAdvil','NULL','NULL','NULL','NULLcapsule','NULL','NULL1','NULLsevere pain','NULLevery 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',5),('P88','2021-03-02 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',6),('P302','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',7),('P88','2021-03-02 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',8),('P302','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',9),('P302','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',10),('P302','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',11),('P3002','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',12),('P3002','2021-03-02 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',13),('P302','2021-03-03 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',14),('P302','2021-03-03 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',15),('P302','2021-03-03 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',16),('P302','2021-03-03 00:00:00','Morphine','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',17),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',18),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',19),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',20),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',21),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',22),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',23),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',24),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',25),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',26),('P88','2021-03-03 00:00:00','Advil','NULL','NULL','NULL','capsule','NULL','1','severe pain','every 3 days','\"I prescribed 3 doses of Advil to John because of severe pain. He should take 1 capsule every 3 days\"',27),('P302','2021-03-09 00:00:00','Morphine','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine to John because of severe pain. He should take 1 capsule every 3 days\"',28),('P302','2021-03-09 00:00:00','Morphine, Advil','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine and Advil to John because of severe pain. He should take 1 capsule every 3 days\"',29),('P302','2021-03-09 00:00:00','Morphine, Advil','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine and Advil to John because of severe pain. He should take 1 capsule every 3 days\"',30),('P302','2021-03-09 00:00:00','Morphine, Advil','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine and Advil to John because of severe pain. He should take 1 capsule every 3 days\"',31),('P302','2021-03-17 00:00:00','Morphine, Advil','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine and Advil to John because of severe pain. He should take 1 capsule every 3 days\"',32),('P302','2021-03-17 00:00:00','Morphine, Advil','','','','capsule','','1','severe pain','every 3 days','\"I prescribed 3 doses of Morphine and Advil to John because of severe pain. He should take 1 capsule every 3 days\"',33);
UNLOCK TABLES;
