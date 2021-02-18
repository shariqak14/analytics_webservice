CREATE TABLE `patient` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `language` varchar(128) NOT NULL,
  `financial` varchar(128) NOT NULL,
  `fname` varchar(128) NOT NULL,
  `lname` varchar(128) NOT NULL,
  `mname` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(128) NOT NULL,
  `postal_code` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(128) NOT NULL,
  `drivers_license` varchar(128) NOT NULL,
  `ss` varchar(128) NOT NULL,
  `occupation` varchar(128) NOT NULL,
  `phone_home` varchar(128) NOT NULL,
  `phone_biz` varchar(128) NOT NULL,
  `phone_contact` varchar(128) NOT NULL,
  `phone_cell` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `contact_relationship` varchar(128) NOT NULL,
  `date` varchar(128) NOT NULL,
  `sex` varchar(128) NOT NULL,
  `referrer` varchar(128) NOT NULL,
  `referrerid` varchar(128) NOT NULL,
  `providerid` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ethnoracial` varchar(128) NOT NULL,
  `interpretter` varchar(128) NOT NULL,
  `migrantseasonal` varchar(128) NOT NULL,
  `family_size` varchar(128) NOT NULL,
  `monthly_income` varchar(128) NOT NULL,
  `homeless` varchar(128) NOT NULL,
  `financial_review` varchar(128) NOT NULL,
  `pubpid` varchar(128) NOT NULL,
  `genericname1` varchar(128) NOT NULL,
  `genericval1` varchar(128) NOT NULL,
  `genericname2` varchar(128) NOT NULL,
  `genericval2` varchar(128) NOT NULL
  PRIMARY KEY (`pid`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
