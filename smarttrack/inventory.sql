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

-- Dumping structure for table smarttrack.inventory
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `ProductID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Stock` int NOT NULL,
  KEY `Location` (`Location`),
  KEY `Product Id` (`ProductID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack.inventory: ~198 rows (approximately)
INSERT INTO `inventory` (`ProductID`, `Location`, `ProductName`, `Stock`) VALUES
	('9', 'warehouse2', 'Product34', 339),
	('9', 'warehouse4', 'Product88', 319),
	('8', 'warehouse2', 'Product14', 664),
	('7', 'warehouse3', 'Product15', 626),
	('1', 'warehouse4', 'Product89', 669),
	('0', 'warehouse0', 'Product33', 611),
	('5', 'warehouse3', 'Product85', 40),
	('6', 'warehouse6', 'Product29', 867),
	('9', 'warehouse8', 'Product36', 630),
	('6', 'warehouse5', 'Product61', 571),
	('9', 'warehouse8', 'Product36', 97),
	('8', 'warehouse4', 'Product86', 214),
	('1', 'warehouse3', 'Product36', 629),
	('7', 'warehouse3', 'Product39', 235),
	('3', 'warehouse1', 'Product77', 398),
	('6', 'warehouse6', 'Product75', 72),
	('1', 'warehouse9', 'Product40', 384),
	('7', 'warehouse5', 'Product35', 645),
	('1', 'warehouse7', 'Product47', 662),
	('2', 'warehouse0', 'Product87', 27),
	('4', 'warehouse6', 'Product5', 300),
	('5', 'warehouse0', 'Product52', 941),
	('7', 'warehouse2', 'Product67', 188),
	('1', 'warehouse4', 'Product91', 276),
	('1', 'warehouse6', 'Product15', 454),
	('5', 'warehouse9', 'Product22', 88),
	('8', 'warehouse9', 'Product99', 243),
	('3', 'warehouse5', 'Product94', 6),
	('6', 'warehouse5', 'Product83', 745),
	('8', 'warehouse6', 'Product13', 945),
	('7', 'warehouse7', 'Product21', 976),
	('1', 'warehouse6', 'Product32', 487),
	('0', 'warehouse2', 'Product5', 536),
	('6', 'warehouse0', 'Product83', 638),
	('8', 'warehouse8', 'Product17', 908),
	('6', 'warehouse6', 'Product70', 398),
	('9', 'warehouse0', 'Product8', 878),
	('5', 'warehouse1', 'Product60', 413),
	('8', 'warehouse5', 'Product76', 74),
	('4', 'warehouse3', 'Product18', 724),
	('4', 'warehouse1', 'Product84', 7),
	('0', 'warehouse9', 'Product10', 562),
	('3', 'warehouse0', 'Product45', 233),
	('8', 'warehouse5', 'Product63', 652),
	('7', 'warehouse1', 'Product5', 67),
	('7', 'warehouse4', 'Product58', 770),
	('4', 'warehouse4', 'Product79', 13),
	('3', 'warehouse4', 'Product69', 718),
	('0', 'warehouse0', 'Product7', 917),
	('2', 'warehouse9', 'Product66', 705),
	('9', 'warehouse9', 'Product44', 894),
	('7', 'warehouse6', 'Product0', 529),
	('8', 'warehouse2', 'Product26', 833),
	('0', 'warehouse6', 'Product35', 260),
	('5', 'warehouse4', 'Product18', 906),
	('9', 'warehouse2', 'Product27', 416),
	('3', 'warehouse9', 'Product80', 229),
	('5', 'warehouse7', 'Product31', 301),
	('2', 'warehouse8', 'Product94', 609),
	('9', 'warehouse8', 'Product88', 36),
	('4', 'warehouse8', 'Product6', 556),
	('3', 'warehouse9', 'Product39', 628),
	('5', 'warehouse6', 'Product86', 55),
	('1', 'warehouse5', 'Product83', 224),
	('4', 'warehouse9', 'Product91', 598),
	('3', 'warehouse9', 'Product1', 720),
	('7', 'warehouse5', 'Product17', 604),
	('0', 'warehouse4', 'Product81', 980),
	('0', 'warehouse2', 'Product4', 280),
	('8', 'warehouse7', 'Product80', 229),
	('6', 'warehouse5', 'Product52', 859),
	('7', 'warehouse7', 'Product8', 984),
	('0', 'warehouse3', 'Product31', 588),
	('5', 'warehouse0', 'Product11', 483),
	('0', 'warehouse8', 'Product3', 579),
	('7', 'warehouse5', 'Product30', 636),
	('1', 'warehouse9', 'Product25', 984),
	('5', 'warehouse5', 'Product98', 550),
	('5', 'warehouse4', 'Product41', 169),
	('0', 'warehouse1', 'Product17', 15),
	('9', 'warehouse3', 'Product34', 373),
	('9', 'warehouse9', 'Product29', 462),
	('6', 'warehouse2', 'Product83', 846),
	('5', 'warehouse6', 'Product19', 843),
	('0', 'warehouse2', 'Product75', 53),
	('1', 'warehouse4', 'Product75', 785),
	('8', 'warehouse7', 'Product33', 298),
	('5', 'warehouse9', 'Product52', 20),
	('3', 'warehouse9', 'Product72', 734),
	('3', 'warehouse9', 'Product17', 497),
	('0', 'warehouse3', 'Product38', 572),
	('2', 'warehouse7', 'Product27', 798),
	('7', 'warehouse7', 'Product94', 940),
	('6', 'warehouse1', 'Product80', 446),
	('2', 'warehouse3', 'Product16', 755),
	('8', 'warehouse2', 'Product35', 979),
	('2', 'warehouse9', 'Product13', 832),
	('3', 'warehouse4', 'Product43', 346),
	('5', 'warehouse3', 'Product61', 28),
	('395', 'warehouse7', 'Product95', 311),
	('401', 'warehouse1', 'Product27', 961),
	('132', 'warehouse3', 'Product56', 431),
	('146', 'warehouse5', 'Product60', 69),
	('501', 'warehouse0', 'Product76', 386),
	('792', 'warehouse1', 'Product12', 234),
	('387', 'warehouse5', 'Product32', 600),
	('68', 'warehouse6', 'Product42', 322),
	('86', 'warehouse0', 'Product57', 835),
	('81', 'warehouse1', 'Product43', 215),
	('964', 'warehouse4', 'Product30', 514),
	('965', 'warehouse5', 'Product7', 414),
	('984', 'warehouse2', 'Product56', 300),
	('977', 'warehouse6', 'Product7', 596),
	('136', 'warehouse9', 'Product32', 863),
	('315', 'warehouse9', 'Product6', 692),
	('221', 'warehouse7', 'Product61', 312),
	('800', 'warehouse5', 'Product61', 398),
	('224', 'warehouse3', 'Product34', 34),
	('105', 'warehouse9', 'Product63', 581),
	('225', 'warehouse1', 'Product87', 775),
	('721', 'warehouse8', 'Product31', 861),
	('977', 'warehouse4', 'Product48', 691),
	('491', 'warehouse4', 'Product83', 336),
	('66', 'warehouse8', 'Product59', 999),
	('72', 'warehouse4', 'Product54', 554),
	('324', 'warehouse6', 'Product48', 263),
	('842', 'warehouse8', 'Product83', 810),
	('907', 'warehouse8', 'Product43', 194),
	('651', 'warehouse3', 'Product86', 540),
	('440', 'warehouse9', 'Product52', 255),
	('733', 'warehouse1', 'Product0', 506),
	('191', 'warehouse8', 'Product28', 96),
	('891', 'warehouse9', 'Product88', 729),
	('212', 'warehouse1', 'Product62', 373),
	('315', 'warehouse9', 'Product27', 714),
	('634', 'warehouse8', 'Product17', 168),
	('855', 'warehouse7', 'Product57', 415),
	('935', 'warehouse1', 'Product21', 402),
	('542', 'warehouse1', 'Product27', 578),
	('300', 'warehouse6', 'Product7', 859),
	('828', 'warehouse2', 'Product13', 74),
	('877', 'warehouse4', 'Product97', 473),
	('480', 'warehouse7', 'Product24', 942),
	('220', 'warehouse7', 'Product29', 592),
	('967', 'warehouse6', 'Product38', 769),
	('840', 'warehouse6', 'Product13', 585),
	('688', 'warehouse3', 'Product97', 889),
	('911', 'warehouse2', 'Product18', 341),
	('9', 'warehouse8', 'Product3', 17),
	('730', 'warehouse5', 'Product58', 723),
	('722', 'warehouse8', 'Product31', 908),
	('224', 'warehouse7', 'Product98', 847),
	('920', 'warehouse0', 'Product49', 576),
	('904', 'warehouse6', 'Product53', 417),
	('693', 'warehouse9', 'Product10', 346),
	('406', 'warehouse1', 'Product96', 769),
	('250', 'warehouse6', 'Product53', 82),
	('833', 'warehouse1', 'Product48', 573),
	('631', 'warehouse5', 'Product99', 931),
	('883', 'warehouse1', 'Product66', 328),
	('755', 'warehouse0', 'Product79', 324),
	('878', 'warehouse1', 'Product66', 965),
	('3', 'warehouse8', 'Product39', 965),
	('324', 'warehouse5', 'Product86', 542),
	('398', 'warehouse4', 'Product15', 33),
	('985', 'warehouse7', 'Product37', 237),
	('897', 'warehouse0', 'Product63', 597),
	('903', 'warehouse3', 'Product66', 26),
	('375', 'warehouse6', 'Product91', 236),
	('598', 'warehouse2', 'Product97', 179),
	('964', 'warehouse1', 'Product11', 122),
	('517', 'warehouse1', 'Product78', 596),
	('152', 'warehouse0', 'Product53', 668),
	('207', 'warehouse1', 'Product70', 230),
	('817', 'warehouse8', 'Product48', 669),
	('499', 'warehouse4', 'Product39', 102),
	('490', 'warehouse1', 'Product43', 370),
	('111', 'warehouse5', 'Product56', 51),
	('220', 'warehouse7', 'Product13', 461),
	('437', 'warehouse9', 'Product82', 384),
	('730', 'warehouse0', 'Product56', 891),
	('188', 'warehouse0', 'Product71', 457),
	('941', 'warehouse9', 'Product29', 999),
	('139', 'warehouse5', 'Product79', 507),
	('552', 'warehouse1', 'Product34', 619),
	('439', 'warehouse4', 'Product38', 266),
	('452', 'warehouse6', 'Product52', 708),
	('81', 'warehouse0', 'Product48', 149),
	('662', 'warehouse0', 'Product89', 57),
	('313', 'warehouse8', 'Product11', 338),
	('68', 'warehouse6', 'Product10', 177),
	('633', 'warehouse3', 'Product56', 764),
	('16', 'warehouse8', 'Product62', 981),
	('172', 'warehouse9', 'Product87', 609),
	('629', 'warehouse3', 'Product90', 143),
	('921', 'warehouse9', 'Product85', 203),
	('786', 'warehouse4', 'Product62', 890),
	('581', 'warehouse9', 'Product41', 355);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;