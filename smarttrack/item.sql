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

-- Dumping structure for table smarttrack.item
DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `RFID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductID` varchar(50) NOT NULL,
  `ProductName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Supplier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`RFID`),
  KEY `FK_item_supplier` (`Supplier`),
  CONSTRAINT `FK_item_supplier` FOREIGN KEY (`Supplier`) REFERENCES `supplier` (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack.item: ~99 rows (approximately)
INSERT INTO `item` (`RFID`, `Location`, `ProductID`, `ProductName`, `Supplier`) VALUES
	('1', 'warehouse4', '43', 'Product43', 'Supplier82'),
	('10', 'warehouse4', '15', 'Product15', 'Supplier65'),
	('11', 'warehouse2', '37', 'Product37', 'Supplier77'),
	('12', 'warehouse0', '82', 'Product82', 'Supplier58'),
	('13', 'warehouse7', '77', 'Product77', 'Supplier89'),
	('14', 'warehouse6', '7', 'Product7', 'Supplier83'),
	('15', 'warehouse6', '30', 'Product30', 'Supplier11'),
	('16', 'warehouse9', '67', 'Product67', 'Supplier31'),
	('17', 'warehouse4', '71', 'Product71', 'Supplier70'),
	('18', 'warehouse0', '35', 'Product35', 'Supplier33'),
	('19', 'warehouse5', '75', 'Product75', 'Supplier55'),
	('2', 'warehouse7', '71', 'Product71', 'Supplier1'),
	('20', 'warehouse0', '54', 'Product54', 'Supplier0'),
	('21', 'warehouse9', '74', 'Product74', 'Supplier76'),
	('22', 'warehouse1', '64', 'Product64', 'Supplier63'),
	('23', 'warehouse4', '47', 'Product47', 'Supplier7'),
	('24', 'warehouse8', '57', 'Product57', 'Supplier6'),
	('25', 'warehouse6', '51', 'Product51', 'Supplier98'),
	('26', 'warehouse2', '54', 'Product54', 'Supplier94'),
	('27', 'warehouse5', '24', 'Product24', 'Supplier58'),
	('28', 'warehouse2', '52', 'Product52', 'Supplier72'),
	('29', 'warehouse4', '76', 'Product76', 'Supplier86'),
	('3', 'warehouse5', '78', 'Product78', 'Supplier99'),
	('30', 'warehouse9', '2', 'Product2', 'Supplier27'),
	('31', 'warehouse7', '62', 'Product62', 'Supplier67'),
	('32', 'warehouse5', '21', 'Product21', 'Supplier20'),
	('33', 'warehouse9', '87', 'Product87', 'Supplier39'),
	('34', 'warehouse0', '88', 'Product88', 'Supplier41'),
	('35', 'warehouse2', '99', 'Product99', 'Supplier18'),
	('36', 'warehouse5', '94', 'Product94', 'Supplier49'),
	('37', 'warehouse5', '94', 'Product94', 'Supplier35'),
	('38', 'warehouse4', '53', 'Product53', 'Supplier13'),
	('39', 'warehouse5', '58', 'Product58', 'Supplier89'),
	('4', 'warehouse5', '60', 'Product60', 'Supplier46'),
	('40', 'warehouse3', '81', 'Product81', 'Supplier57'),
	('41', 'warehouse4', '55', 'Product55', 'Supplier80'),
	('42', 'warehouse6', '90', 'Product90', 'Supplier10'),
	('43', 'warehouse4', '10', 'Product10', 'Supplier19'),
	('44', 'warehouse7', '52', 'Product52', 'Supplier95'),
	('45', 'warehouse4', '18', 'Product18', 'Supplier32'),
	('46', 'warehouse9', '97', 'Product97', 'Supplier36'),
	('47', 'warehouse8', '42', 'Product42', 'Supplier99'),
	('48', 'warehouse7', '87', 'Product87', 'Supplier96'),
	('49', 'warehouse8', '55', 'Product55', 'Supplier83'),
	('5', 'warehouse6', '37', 'Product37', 'Supplier99'),
	('50', 'warehouse6', '0', 'Product0', 'Supplier48'),
	('51', 'warehouse7', '42', 'Product42', 'Supplier72'),
	('52', 'warehouse5', '74', 'Product74', 'Supplier15'),
	('53', 'warehouse8', '17', 'Product17', 'Supplier28'),
	('54', 'warehouse4', '88', 'Product88', 'Supplier10'),
	('55', 'warehouse9', '16', 'Product16', 'Supplier32'),
	('56', 'warehouse9', '52', 'Product52', 'Supplier90'),
	('57', 'warehouse9', '5', 'Product5', 'Supplier76'),
	('58', 'warehouse4', '67', 'Product67', 'Supplier89'),
	('59', 'warehouse2', '31', 'Product31', 'Supplier55'),
	('6', 'warehouse2', '6', 'Product6', 'Supplier13'),
	('60', 'warehouse0', '17', 'Product17', 'Supplier17'),
	('61', 'warehouse3', '77', 'Product77', 'Supplier39'),
	('62', 'warehouse0', '10', 'Product10', 'Supplier45'),
	('63', 'warehouse7', '0', 'Product0', 'Supplier89'),
	('64', 'warehouse6', '19', 'Product19', 'Supplier90'),
	('65', 'warehouse8', '6', 'Product6', 'Supplier78'),
	('66', 'warehouse9', '55', 'Product55', 'Supplier62'),
	('67', 'warehouse8', '45', 'Product45', 'Supplier97'),
	('68', 'warehouse7', '2', 'Product2', 'Supplier6'),
	('69', 'warehouse5', '8', 'Product8', 'Supplier29'),
	('7', 'warehouse3', '45', 'Product45', 'Supplier8'),
	('70', 'warehouse2', '62', 'Product62', 'Supplier75'),
	('71', 'warehouse9', '47', 'Product47', 'Supplier36'),
	('72', 'warehouse4', '11', 'Product11', 'Supplier62'),
	('73', 'warehouse7', '28', 'Product28', 'Supplier13'),
	('74', 'warehouse7', '3', 'Product3', 'Supplier37'),
	('75', 'warehouse0', '39', 'Product39', 'Supplier41'),
	('76', 'warehouse5', '7', 'Product7', 'Supplier82'),
	('77', 'warehouse8', '5', 'Product5', 'Supplier3'),
	('78', 'warehouse4', '72', 'Product72', 'Supplier60'),
	('79', 'warehouse1', '31', 'Product31', 'Supplier8'),
	('8', 'warehouse6', '99', 'Product99', 'Supplier84'),
	('80', 'warehouse4', '42', 'Product42', 'Supplier52'),
	('81', 'warehouse6', '78', 'Product78', 'Supplier72'),
	('82', 'warehouse4', '63', 'Product63', 'Supplier19'),
	('83', 'warehouse8', '91', 'Product91', 'Supplier78'),
	('84', 'warehouse9', '58', 'Product58', 'Supplier82'),
	('85', 'warehouse5', '7', 'Product7', 'Supplier38'),
	('86', 'warehouse3', '66', 'Product66', 'Supplier91'),
	('87', 'warehouse9', '42', 'Product42', 'Supplier66'),
	('88', 'warehouse4', '21', 'Product21', 'Supplier58'),
	('89', 'warehouse9', '57', 'Product57', 'Supplier24'),
	('9', 'warehouse9', '11', 'Product11', 'Supplier99'),
	('90', 'warehouse2', '6', 'Product6', 'Supplier64'),
	('91', 'warehouse4', '95', 'Product95', 'Supplier22'),
	('92', 'warehouse4', '21', 'Product21', 'Supplier65'),
	('93', 'warehouse1', '20', 'Product20', 'Supplier19'),
	('94', 'warehouse6', '35', 'Product35', 'Supplier35'),
	('95', 'warehouse7', '33', 'Product33', 'Supplier37'),
	('96', 'warehouse3', '83', 'Product83', 'Supplier52'),
	('97', 'warehouse8', '86', 'Product86', 'Supplier3'),
	('98', 'warehouse5', '82', 'Product82', 'Supplier87'),
	('99', 'warehouse4', '68', 'Product68', 'Supplier0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
