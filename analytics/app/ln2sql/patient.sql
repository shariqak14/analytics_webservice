
CREATE TABLE `Condition_History` (
  `PID` varchar(15) DEFAULT NULL,
  `condition_name` varchar(75) DEFAULT NULL,
  `Severity` varchar(25) DEFAULT NULL,
  `Years_Diagnosed` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `Dental_Cavities` (
  `PID` varchar(10) DEFAULT NULL,
  `Missing_teeth` varchar(3) DEFAULT NULL,
  `Total_cavities` int DEFAULT NULL,
  `Gum_Disease` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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
