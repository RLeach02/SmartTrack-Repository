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

-- Dumping structure for table smarttrack.supplier
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `CompanyName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack.supplier: ~100 rows (approximately)
INSERT INTO `supplier` (`CompanyName`, `Phone`, `Email`, `Address`) VALUES
	('Supplier0', 'phone0', 'email0', 'address0'),
	('Supplier1', 'phone1', 'email1', 'address1'),
	('Supplier10', 'phone10', 'email10', 'address10'),
	('Supplier11', 'phone11', 'email11', 'address11'),
	('Supplier12', 'phone12', 'email12', 'address12'),
	('Supplier13', 'phone13', 'email13', 'address13'),
	('Supplier14', 'phone14', 'email14', 'address14'),
	('Supplier15', 'phone15', 'email15', 'address15'),
	('Supplier16', 'phone16', 'email16', 'address16'),
	('Supplier17', 'phone17', 'email17', 'address17'),
	('Supplier18', 'phone18', 'email18', 'address18'),
	('Supplier19', 'phone19', 'email19', 'address19'),
	('Supplier2', 'phone2', 'email2', 'address2'),
	('Supplier20', 'phone20', 'email20', 'address20'),
	('Supplier21', 'phone21', 'email21', 'address21'),
	('Supplier22', 'phone22', 'email22', 'address22'),
	('Supplier23', 'phone23', 'email23', 'address23'),
	('Supplier24', 'phone24', 'email24', 'address24'),
	('Supplier25', 'phone25', 'email25', 'address25'),
	('Supplier26', 'phone26', 'email26', 'address26'),
	('Supplier27', 'phone27', 'email27', 'address27'),
	('Supplier28', 'phone28', 'email28', 'address28'),
	('Supplier29', 'phone29', 'email29', 'address29'),
	('Supplier3', 'phone3', 'email3', 'address3'),
	('Supplier30', 'phone30', 'email30', 'address30'),
	('Supplier31', 'phone31', 'email31', 'address31'),
	('Supplier32', 'phone32', 'email32', 'address32'),
	('Supplier33', 'phone33', 'email33', 'address33'),
	('Supplier34', 'phone34', 'email34', 'address34'),
	('Supplier35', 'phone35', 'email35', 'address35'),
	('Supplier36', 'phone36', 'email36', 'address36'),
	('Supplier37', 'phone37', 'email37', 'address37'),
	('Supplier38', 'phone38', 'email38', 'address38'),
	('Supplier39', 'phone39', 'email39', 'address39'),
	('Supplier4', 'phone4', 'email4', 'address4'),
	('Supplier40', 'phone40', 'email40', 'address40'),
	('Supplier41', 'phone41', 'email41', 'address41'),
	('Supplier42', 'phone42', 'email42', 'address42'),
	('Supplier43', 'phone43', 'email43', 'address43'),
	('Supplier44', 'phone44', 'email44', 'address44'),
	('Supplier45', 'phone45', 'email45', 'address45'),
	('Supplier46', 'phone46', 'email46', 'address46'),
	('Supplier47', 'phone47', 'email47', 'address47'),
	('Supplier48', 'phone48', 'email48', 'address48'),
	('Supplier49', 'phone49', 'email49', 'address49'),
	('Supplier5', 'phone5', 'email5', 'address5'),
	('Supplier50', 'phone50', 'email50', 'address50'),
	('Supplier51', 'phone51', 'email51', 'address51'),
	('Supplier52', 'phone52', 'email52', 'address52'),
	('Supplier53', 'phone53', 'email53', 'address53'),
	('Supplier54', 'phone54', 'email54', 'address54'),
	('Supplier55', 'phone55', 'email55', 'address55'),
	('Supplier56', 'phone56', 'email56', 'address56'),
	('Supplier57', 'phone57', 'email57', 'address57'),
	('Supplier58', 'phone58', 'email58', 'address58'),
	('Supplier59', 'phone59', 'email59', 'address59'),
	('Supplier6', 'phone6', 'email6', 'address6'),
	('Supplier60', 'phone60', 'email60', 'address60'),
	('Supplier61', 'phone61', 'email61', 'address61'),
	('Supplier62', 'phone62', 'email62', 'address62'),
	('Supplier63', 'phone63', 'email63', 'address63'),
	('Supplier64', 'phone64', 'email64', 'address64'),
	('Supplier65', 'phone65', 'email65', 'address65'),
	('Supplier66', 'phone66', 'email66', 'address66'),
	('Supplier67', 'phone67', 'email67', 'address67'),
	('Supplier68', 'phone68', 'email68', 'address68'),
	('Supplier69', 'phone69', 'email69', 'address69'),
	('Supplier7', 'phone7', 'email7', 'address7'),
	('Supplier70', 'phone70', 'email70', 'address70'),
	('Supplier71', 'phone71', 'email71', 'address71'),
	('Supplier72', 'phone72', 'email72', 'address72'),
	('Supplier73', 'phone73', 'email73', 'address73'),
	('Supplier74', 'phone74', 'email74', 'address74'),
	('Supplier75', 'phone75', 'email75', 'address75'),
	('Supplier76', 'phone76', 'email76', 'address76'),
	('Supplier77', 'phone77', 'email77', 'address77'),
	('Supplier78', 'phone78', 'email78', 'address78'),
	('Supplier79', 'phone79', 'email79', 'address79'),
	('Supplier8', 'phone8', 'email8', 'address8'),
	('Supplier80', 'phone80', 'email80', 'address80'),
	('Supplier81', 'phone81', 'email81', 'address81'),
	('Supplier82', 'phone82', 'email82', 'address82'),
	('Supplier83', 'phone83', 'email83', 'address83'),
	('Supplier84', 'phone84', 'email84', 'address84'),
	('Supplier85', 'phone85', 'email85', 'address85'),
	('Supplier86', 'phone86', 'email86', 'address86'),
	('Supplier87', 'phone87', 'email87', 'address87'),
	('Supplier88', 'phone88', 'email88', 'address88'),
	('Supplier89', 'phone89', 'email89', 'address89'),
	('Supplier9', 'phone9', 'email9', 'address9'),
	('Supplier90', 'phone90', 'email90', 'address90'),
	('Supplier91', 'phone91', 'email91', 'address91'),
	('Supplier92', 'phone92', 'email92', 'address92'),
	('Supplier93', 'phone93', 'email93', 'address93'),
	('Supplier94', 'phone94', 'email94', 'address94'),
	('Supplier95', 'phone95', 'email95', 'address95'),
	('Supplier96', 'phone96', 'email96', 'address96'),
	('Supplier97', 'phone97', 'email97', 'address97'),
	('Supplier98', 'phone98', 'email98', 'address98'),
	('Supplier99', 'phone99', 'email99', 'address99');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
