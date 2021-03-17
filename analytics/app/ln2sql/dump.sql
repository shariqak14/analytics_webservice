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
