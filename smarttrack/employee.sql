-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table smarttrack.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PasswordHash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack.employee: ~118 rows (approximately)
INSERT INTO `employee` (`EmployeeID`, `PasswordHash`, `Role`) VALUES
	('1020', '194', 'user'),
	('1122', '249', 'user'),
	('12', '3', 'user'),
	('12.1', '3', 'user'),
	('12.3', '3', 'manager'),
	('1224', '300', 'user'),
	('1326', '351', 'user'),
	('1428', '390', 'user'),
	('1530', '461', 'user'),
	('1632', '528', 'user'),
	('1734', '595', 'user'),
	('1836', '666', 'user'),
	('1938', '705', 'user'),
	('2040', '820', 'user'),
	('2142', '871', 'user'),
	('2244', '990', 'user'),
	('2346', '1077', 'user'),
	('24', '10', 'user'),
	('24.2', '10', 'user'),
	('24.6', '10', 'manager'),
	('2448', '1176', 'user'),
	('2550', '1275', 'user'),
	('2652', '1362', 'user'),
	('2754', '1449', 'user'),
	('2856', '1596', 'user'),
	('2958', '1679', 'user'),
	('3060', '1814', 'user'),
	('3162', '1949', 'user'),
	('3264', '2080', 'user'),
	('3366', '2211', 'user'),
	('3468', '2346', 'user'),
	('3570', '2481', 'user'),
	('36', '17', 'user'),
	('36.300000000000001', '17', 'user'),
	('36.8999999999999995', '17', 'manager'),
	('3672', '2564', 'user'),
	('3774', '2711', 'user'),
	('3876', '2926', 'user'),
	('3978', '3013', 'user'),
	('4080', '3240', 'user'),
	('4182', '3339', 'user'),
	('4284', '3554', 'user'),
	('4386', '3673', 'user'),
	('4488', '3852', 'user'),
	('4590', '4095', 'user'),
	('4692', '4262', 'user'),
	('4794', '4461', 'user'),
	('48', '36', 'user'),
	('48.4', '36', 'user'),
	('4896', '4656', 'user'),
	('49.2', '36', 'manager'),
	('4998', '4851', 'user'),
	('50100', '5050', 'user'),
	('510', '55', 'user'),
	('510.5', '55', 'user'),
	('511.5', '55', 'manager'),
	('51102', '5217', 'user'),
	('52104', '5396', 'user'),
	('53106', '5575', 'user'),
	('54108', '5886', 'user'),
	('55110', '6037', 'user'),
	('56112', '6328', 'user'),
	('57114', '6491', 'user'),
	('58116', '6770', 'user'),
	('59118', '6921', 'user'),
	('60120', '7196', 'user'),
	('61122', '7471', 'user'),
	('612', '78', 'user'),
	('612.600000000000001', '78', 'user'),
	('613.799999999999999', '78', 'manager'),
	('62124', '7734', 'user'),
	('63126', '7997', 'user'),
	('64128', '8256', 'user'),
	('65130', '8515', 'user'),
	('66132', '8778', 'user'),
	('67134', '9041', 'user'),
	('68136', '9316', 'user'),
	('69138', '9591', 'user'),
	('70140', '9742', 'user'),
	('71142', '10021', 'user'),
	('714', '101', 'user'),
	('714.700000000000001', '101', 'user'),
	('716.099999999999998', '101', 'manager'),
	('72144', '10440', 'user'),
	('73146', '10731', 'user'),
	('74148', '10882', 'user'),
	('75150', '11193', 'user'),
	('76152', '11628', 'user'),
	('77154', '11807', 'user'),
	('78156', '12230', 'user'),
	('79158', '12429', 'user'),
	('80160', '12880', 'user'),
	('81162', '13075', 'user'),
	('816', '136', 'user'),
	('816.8', '136', 'user'),
	('818.4', '136', 'manager'),
	('82164', '13530', 'user'),
	('83166', '13697', 'user'),
	('84168', '14196', 'user'),
	('85170', '14375', 'user'),
	('86172', '14750', 'user'),
	('87174', '15221', 'user'),
	('88176', '15576', 'user'),
	('89178', '15803', 'user'),
	('90180', '16146', 'user'),
	('91182', '16617', 'user'),
	('918', '171', 'user'),
	('918.900000000000002', '171', 'user'),
	('920.7', '171', 'manager'),
	('92184', '17020', 'user'),
	('93186', '17359', 'user'),
	('94188', '17750', 'user'),
	('95190', '18141', 'user'),
	('96192', '18528', 'user'),
	('97194', '18915', 'user'),
	('98196', '19306', 'user'),
	('99', 'asvbnadjhnvijcuwen42398cnm', 'manager'),
	('99198', '19697', 'user');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
