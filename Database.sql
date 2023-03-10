-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2023 at 04:33 PM
-- Server version: 8.0.31-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Databasename_name`
-- DEFINER: `Databasename`@`localhost`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`Databasename`@`localhost` PROCEDURE `PR_PROPERTIES_CHECK` ()  BEGIN
DECLARE CHECKER INT; 

SET CHECKER = (SELECT EXISTS (
    SELECT `TABLES`.`TABLE_NAME` FROM information_schema.TABLES WHERE `TABLES`.`TABLE_NAME` = 'KRN_PROPERTIES' 
    ));
    
    IF(CHECKER = 0) THEN
    BEGIN
    CREATE TABLE `KRN_PROPERTIES` (
  `ID` int NOT NULL,
  `NAME` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `VALUE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DESC` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
 
ALTER TABLE `KRN_PROPERTIES`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);
 
ALTER TABLE `KRN_PROPERTIES`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;
COMMIT;
    END;
    END IF;
    

CALL PR_PROPERTIES_CHECK_NAME(
     'USER_ATTEMPTS1',
     3,
     'ვერიფიკაციის მაქსიმალური რაოდენობა');

CALL PR_PROPERTIES_CHECK_NAME(
    'USER_ATTEMPTS2',
    3,
    'რესეტის/მეილის დამოწმების მაქსიმალური რაოდენობა');
    
CALL PR_PROPERTIES_CHECK_NAME(
    'USER_E_CODE_LENGTH',
    7,
    'მომხმარებლის რეგისტრაციისას გაგზავნილი დამოწმების კოდის სიგრძე');
    
END$$

CREATE DEFINER=`Databasename`@`localhost` PROCEDURE `PR_PROPERTIES_CHECK_NAME` (IN `P_COL_NAME` VARCHAR(36) CHARSET utf8mb3, IN `P_COL_VALUE` VARCHAR(36) CHARSET utf8mb3, IN `P_COL_DESC` VARCHAR(256) CHARSET utf8mb3)  BEGIN
DECLARE COL_CHECKER VARCHAR(36);
 
SET COL_CHECKER =   ( SELECT MAX(`KRN_PROPERTIES`.`VALUE`) FROM `KRN_PROPERTIES` WHERE `KRN_PROPERTIES`.`NAME` = P_COL_NAME);
    
IF(COL_CHECKER IS NULL) THEN 
BEGIN
DELETE FROM `KRN_PROPERTIES` WHERE `KRN_PROPERTIES`.`NAME` = P_COL_NAME;
INSERT INTO `KRN_PROPERTIES`(`KRN_PROPERTIES`.`NAME`,`KRN_PROPERTIES`.`VALUE`,`KRN_PROPERTIES`.`DESC`) VALUES(P_COL_NAME,P_COL_VALUE,P_COL_DESC);
END;
END IF;
END$$

CREATE DEFINER=`Databasename`@`localhost` PROCEDURE `PR_RESET_USERS` ()  BEGIN
DECLARE ATT1 VARCHAR(36);
DECLARE ATT2 VARCHAR(36);

CALL `PR_PROPERTIES_CHECK`();

(SELECT MAX(`KRN_PROPERTIES`.`VALUE`) INTO ATT1  FROM `KRN_PROPERTIES`  WHERE `KRN_PROPERTIES`.`NAME` = 'USER_ATTEMPTS1');

(SELECT MAX(`KRN_PROPERTIES`.`VALUE`) INTO ATT2  FROM `KRN_PROPERTIES`  WHERE `KRN_PROPERTIES`.`NAME` = 'USER_ATTEMPTS2');

  

UPDATE `KRN_USER` 
SET `KRN_USER`.`ATTEMPTS1` = ATT1, 
`KRN_USER`.`ATTEMPTS2` = ATT2;

END$$

CREATE DEFINER=`Databasename`@`localhost` PROCEDURE `PR_USER_EXISTS` (IN `P_USERNAME` VARCHAR(36))  NO SQL
BEGIN
SELECT EXISTS(SELECT `KRN_USER`.`ID` FROM `KRN_USER` WHERE `KRN_USER`.`USERNAME` = P_USERNAME) AS `PR_USER_EXISTS`;
END$$

--
-- Functions
--
CREATE DEFINER=`Databasename`@`localhost` FUNCTION `F_CODE_GENERATOR` (`P_LENGTH` INT) RETURNS VARCHAR(256) CHARSET utf8mb4 BEGIN
DECLARE V_LENGTH INT;

SET V_LENGTH = P_LENGTH;
IF(V_LENGTH > 256) THEN 
BEGIN
SET V_LENGTH = 256; 
END;
END IF;
IF(V_LENGTH <2) THEN 
BEGIN
SET V_LENGTH = 2; 
END;
END IF;

RETURN  SUBSTRING(MD5(CURRENT_TIMESTAMP + RAND()),-1*V_LENGTH);

END$$

CREATE DEFINER=`Databasename`@`localhost` FUNCTION `F_USER_AUTH` (`P_USERNAME` VARCHAR(36), `P_PASSWORD` VARCHAR(36), `P_TOKEN` VARCHAR(256)) RETURNS INT BEGIN
DECLARE V_RETURNER INT;
DECLARE V_USER_ID INT;
DECLARE V_USER_STATUS INT;
DECLARE V_USER_ATTEMPTS1 INT;
DECLARE V_PASSWORD VARCHAR(256);
DECLARE V_AUTH_STATUS INT;

SET V_RETURNER = (SELECT EXISTS(SELECT `KRN_USER`.`ID` FROM `KRN_USER` WHERE `KRN_USER`.`USERNAME` = P_USERNAME));

  
IF (V_RETURNER = 1) 
THEN 
BEGIN

SELECT `ID`,`STATUS`,`ATTEMPTS1`,`PASSWORD`
INTO V_USER_ID,V_USER_STATUS,V_USER_ATTEMPTS1,V_PASSWORD
FROM `KRN_USER` 
WHERE `KRN_USER`.`USERNAME` = P_USERNAME; 

IF(V_USER_STATUS >2) THEN  
		SET V_RETURNER = -2; 
ELSEIF(V_PASSWORD != SHA1(P_PASSWORD)) THEN
	BEGIN 
		SET V_USER_ATTEMPTS1 = V_USER_ATTEMPTS1-1; 
		IF(V_USER_ATTEMPTS1 <=0) THEN 
			BEGIN
				SET V_USER_ATTEMPTS1 = 0; 
				SET V_USER_STATUS = 3;
			END; 
		END IF;
        
        SET V_RETURNER = -3; 
	END;
ELSE
	BEGIN
	SET V_USER_ATTEMPTS1 = 3;
    SET V_RETURNER = V_USER_ID; 
	END; 
END IF;


IF(V_RETURNER >0) THEN
SET V_AUTH_STATUS = 4;
ELSEIF(V_RETURNER = -2) THEN
SET V_AUTH_STATUS = 2;
ELSEIF(V_RETURNER = -3) THEN
SET V_AUTH_STATUS = 3;
END IF;

INSERT INTO `KRN_USER_AUTH`(`USER_ID`, `AUTH_TYPE`, `TOKEN`) VALUES (V_USER_ID, V_AUTH_STATUS, P_TOKEN); 


BEGIN
UPDATE `KRN_USER` SET`ATTEMPTS1`=V_USER_ATTEMPTS1,`STATUS`=V_USER_STATUS 
WHERE   `KRN_USER`.`ID` = V_USER_ID;
end;



END;
ELSE
SET V_RETURNER = -1;
END IF;


RETURN V_RETURNER;

END$$

CREATE DEFINER=`Databasename`@`localhost` FUNCTION `F_USER_CREATE` (`P_USERNAME` VARCHAR(36) CHARSET utf8mb3, `P_PASSWORD` VARCHAR(36) CHARSET utf8mb3) RETURNS INT BEGIN
DECLARE V_USER_ID INT; 
DECLARE V_USER_CODE_LENGTH INT;
DECLARE ATT1 INT;
DECLARE ATT2 INT;

SET V_USER_CODE_LENGTH = 7;
-- მომხმარებლის შემოწმება ხომ არ არსებობს უკვე?
SET V_USER_ID = (SELECT EXISTS (SELECT `KRN_USER`.`ID` FROM `KRN_USER` WHERE `KRN_USER`.`USERNAME` = P_USERNAME));

IF(V_USER_ID = 1) THEN
BEGIN
-- მომხმარებელი უკვე არსებობს
SET V_USER_ID = -1; 
END;
ELSE
BEGIN



SELECT MAX(`KRN_PROPERTIES`.`VALUE`) INTO ATT1  FROM `KRN_PROPERTIES`  WHERE `KRN_PROPERTIES`.`NAME` = 'USER_ATTEMPTS1';

SELECT MAX(`KRN_PROPERTIES`.`VALUE`) INTO ATT2  FROM `KRN_PROPERTIES`  WHERE `KRN_PROPERTIES`.`NAME` = 'USER_ATTEMPTS2';

-- ახალი მომხმარებლის შექმნა KRN_USER ცხრილში
INSERT INTO `KRN_USER`(`KRN_USER`.`USERNAME`,
                       `KRN_USER`.`PASSWORD`,
                       `KRN_USER`.`ATTEMPTS1`,
                       `KRN_USER`.`ATTEMPTS2`
                      )VALUES(
                          P_USERNAME,
                          P_PASSWORD,
                          ATT1,
                          ATT2);

SET V_USER_ID = (SELECT LAST_INSERT_ID());

-- ახალი მომხმარებლის შექმნა KRN_CLIENTS ცხრილში
INSERT INTO `KRN_CLIENTS`(`KRN_CLIENTS`.`USER_ID`) VALUES(V_USER_ID);



-- ახალი მომხმარებლის შექმნა KRN_TOKENS ცხრილში
INSERT INTO `KRN_TOKENS`(`USER_ID`, 
                         `VERIFY`) VALUES 
                         (V_USER_ID,
                         (SELECT `F_CODE_GENERATOR`(V_USER_CODE_LENGTH))
                         );

END;
END IF;

RETURN V_USER_ID;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `KRN_CLIENTS`
--

CREATE TABLE `KRN_CLIENTS` (
  `ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `FIRST_NAME` varchar(36) DEFAULT NULL,
  `LAST_NAME` varchar(36) DEFAULT NULL,
  `EMAIL` varchar(36) DEFAULT NULL,
  `ADDRESS` int DEFAULT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_LOGIN` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `KRN_CLIENTS`
--

INSERT INTO `KRN_CLIENTS` (`ID`, `USER_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `ADDRESS`, `CREATE_DATE`, `LAST_LOGIN`) VALUES
(2, 0, NULL, NULL, NULL, NULL, '2023-02-13 08:26:16', NULL),
(3, 0, NULL, NULL, NULL, NULL, '2023-02-13 08:51:01', NULL),
(4, 0, NULL, NULL, NULL, NULL, '2023-02-13 08:52:01', NULL),
(5, 4, '123', NULL, NULL, NULL, '2023-02-13 08:53:04', NULL),
(6, 5, NULL, NULL, NULL, NULL, '2023-02-15 06:12:44', NULL),
(7, 6, NULL, NULL, NULL, NULL, '2023-02-15 06:13:07', NULL),
(8, 7, NULL, NULL, NULL, NULL, '2023-02-15 06:17:25', NULL),
(9, 9, NULL, NULL, NULL, NULL, '2023-02-15 12:26:30', NULL),
(10, 10, NULL, NULL, NULL, NULL, '2023-02-15 12:26:57', NULL),
(11, 11, NULL, NULL, NULL, NULL, '2023-02-15 12:33:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `KRN_PROPERTIES`
--

CREATE TABLE `KRN_PROPERTIES` (
  `ID` int NOT NULL,
  `NAME` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `VALUE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `VALUE_ST` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DESC` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `KRN_PROPERTIES`
--

INSERT INTO `KRN_PROPERTIES` (`ID`, `NAME`, `VALUE`, `VALUE_ST`, `DESC`) VALUES
(16, 'USER_ATTEMPTS1', '3', NULL, 'ვერიფიკაციის მაქსიმალური რაოდენობა'),
(17, 'USER_ATTEMPTS2', '3', NULL, 'რესეტის/მეილის დამოწმების მაქსიმალური რაოდენობა'),
(18, 'USER_E_CODE_LENGTH', '7', NULL, 'მომხმარებლის რეგისტრაციისას გაგზავნილი დამოწმების კოდის სიგრძე');

-- --------------------------------------------------------

--
-- Table structure for table `KRN_TOKENS`
--

CREATE TABLE `KRN_TOKENS` (
  `ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `VERIFY` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RESET` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TOKEN` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `KRN_TOKENS`
--

INSERT INTO `KRN_TOKENS` (`ID`, `USER_ID`, `VERIFY`, `RESET`, `TOKEN`) VALUES
(3, 11, '7d05d3f', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `KRN_USER`
--

CREATE TABLE `KRN_USER` (
  `ID` int NOT NULL COMMENT 'უნიკალური',
  `USERNAME` varchar(36) NOT NULL COMMENT 'ლოგინი',
  `PASSWORD` varchar(256) NOT NULL COMMENT 'პაროლი',
  `ATTEMPTS1` int NOT NULL DEFAULT '3' COMMENT 'პაროლის მცდელობა',
  `ATTEMPTS2` int NOT NULL DEFAULT '3' COMMENT 'მეილის მცდელობა',
  `STATUS` int NOT NULL DEFAULT '1' COMMENT 'მომხმარებლის სტატუსი'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `KRN_USER`
--

INSERT INTO `KRN_USER` (`ID`, `USERNAME`, `PASSWORD`, `ATTEMPTS1`, `ATTEMPTS2`, `STATUS`) VALUES
(11, 'admin@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 3, 3, 1);

--
-- Triggers `KRN_USER`
--
DELIMITER $$
CREATE TRIGGER `T_KRN_USER_CREATE` BEFORE INSERT ON `KRN_USER` FOR EACH ROW BEGIN


SET NEW.`password` = (SELECT SHA1(NEW.`password`));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `T_KRN_USER_UPDATE` BEFORE UPDATE ON `KRN_USER` FOR EACH ROW if (NEW.ATTEMPTS1 = 0) then
BEGIN
	set NEW.STATUS = 3;
    END;
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `KRN_USER_AUTH`
--

CREATE TABLE `KRN_USER_AUTH` (
  `ID` int NOT NULL,
  `USER_ID` int NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AUTH_TYPE` int NOT NULL,
  `TOKEN` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `KRN_USER_AUTH_TYPE`
--

CREATE TABLE `KRN_USER_AUTH_TYPE` (
  `ID` int NOT NULL,
  `NAME` varchar(36) NOT NULL,
  `DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `KRN_USER_AUTH_TYPE`
--

INSERT INTO `KRN_USER_AUTH_TYPE` (`ID`, `NAME`, `DESC`) VALUES
(2, 'BLOCKED', 'მომხმარებელი დაბლოკილია'),
(3, 'PASSERROR', 'პაროლი არ დაემთხვა'),
(4, 'SUCCESS', 'მომხმარებელმა წარმატებით გაიარა ავტორიზაცია');

-- --------------------------------------------------------

--
-- Table structure for table `KRN_USER_STATUS`
--

CREATE TABLE `KRN_USER_STATUS` (
  `ID` int NOT NULL,
  `NAME` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DESC` varchar(180) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `KRN_USER_STATUS`
--

INSERT INTO `KRN_USER_STATUS` (`ID`, `NAME`, `DESC`) VALUES
(1, 'რეგისტრირებული', 'მომხმარებელმა გაიარა რეგისტრაცია, და ჯერ არ დაუმოწმებია მეილი.'),
(2, 'აქტიური', 'მომხმარებელის დამოწმებული აქვს მეილი და შევსებული აქვს ძირითადი პერსონალური ინფორმაცია'),
(3, 'დაბლოკილი', 'მომხმარებელმა 3 ჯერ არასწორედ შეიყვანა პაროლი ან/და 3 ჯერ არასწორედ დაამოწმა მეილი ან/და 3 ჯერ არასწორედ აღადგინა მეილი'),
(4, 'სანქცირებული', 'მომხმარებელი დაბლოკილია ადმინისტრაციის მიერ.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `KRN_CLIENTS`
--
ALTER TABLE `KRN_CLIENTS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `KRN_PROPERTIES`
--
ALTER TABLE `KRN_PROPERTIES`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `KRN_TOKENS`
--
ALTER TABLE `KRN_TOKENS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `KRN_USER`
--
ALTER TABLE `KRN_USER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `KRN_USER_AUTH`
--
ALTER TABLE `KRN_USER_AUTH`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `KRN_USER_AUTH_TYPE`
--
ALTER TABLE `KRN_USER_AUTH_TYPE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `KRN_USER_STATUS`
--
ALTER TABLE `KRN_USER_STATUS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `KRN_CLIENTS`
--
ALTER TABLE `KRN_CLIENTS`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_PROPERTIES`
--
ALTER TABLE `KRN_PROPERTIES`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_TOKENS`
--
ALTER TABLE `KRN_TOKENS`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_USER`
--
ALTER TABLE `KRN_USER`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'უნიკალური', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_USER_AUTH`
--
ALTER TABLE `KRN_USER_AUTH`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_USER_AUTH_TYPE`
--
ALTER TABLE `KRN_USER_AUTH_TYPE`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `KRN_USER_STATUS`
--
ALTER TABLE `KRN_USER_STATUS`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, COMMENT 'უნიკალური',AUTO_INCREMENT=1;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`Databasename`@`localhost` EVENT `E_RESET_USERS` ON SCHEDULE EVERY 1 DAY STARTS '2023-02-13 17:43:37' ON COMPLETION NOT PRESERVE ENABLE DO CALL `PR_RESET_USERS`()$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
