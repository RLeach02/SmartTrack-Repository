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


-- Dumping database structure for smarttrack_db
DROP DATABASE IF EXISTS `smarttrack_db`;
CREATE DATABASE IF NOT EXISTS `smarttrack_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `smarttrack_db`;

-- Dumping structure for table smarttrack_db.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employeeID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`employeeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack_db.employees: ~3 rows (approximately)
INSERT INTO `employees` (`employeeID`, `id`, `password_hash`, `role`) VALUES
	('1020', 1, '194', 'user'),
	('1122', 2, '249', 'user'),
	('12', 3, '3', 'user');

-- Dumping structure for table smarttrack_db.inventory
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `ProductID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Stock` int NOT NULL,
  KEY `Location` (`Location`),
  KEY `Product Id` (`ProductID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack_db.inventory: ~16 rows (approximately)
INSERT INTO `inventory` (`ProductID`, `Location`, `ProductName`, `Stock`) VALUES
	('4260', 'toiletries-4-2-5', 'Huggies', 3),
	('4260', 'toiletries-4-2-4', 'Huggies', 2),
	('4260', 'toiletries-4-2-3', 'Huggies', 3),
	('4260', 'toiletries-4-2-2', 'Huggies', 1),
	('23742', 'LongLifeFoods-2-5-3', 'Helton Snacks', 3),
	('23742', 'LongLifeFoods-2-5-2', 'Helton Snacks', 2),
	('23742', 'LongLifeFoods-2-5-1', 'Helton Snacks', 2),
	('23742', 'LongLifeFoods-2-5-6', 'Helton Snacks', 2),
	('14266', 'LongLifeFoods-10-1-3', 'Georgie Hall', 3),
	('14266', 'LongLifeFoods-10-1-2', 'Georgie Hall', 1),
	('14266', 'LongLifeFoods-10-1-1', 'Georgie Hall', 1),
	('14266', 'LongLifeFoods-10-1-4', 'Georgie Hall', 4),
	('28', 'CannedDrinks-1-3-9', 'PepsiCo', 1),
	('28', 'CannedDrinks-1-3-8', 'PepsiCo', 3),
	('28', 'CannedDrinks-1-3-11', 'PepsiCo', 3),
	('28', 'CannedDrinks-1-3-10', 'PepsiCo', 2);

-- Dumping structure for table smarttrack_db.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `RFID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductID` varchar(50) NOT NULL,
  `ProductName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Supplier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`RFID`),
  KEY `FK_item_supplier` (`Supplier`),
  CONSTRAINT `FK_item_supplier` FOREIGN KEY (`Supplier`) REFERENCES `supplier` (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack_db.items: ~36 rows (approximately)
INSERT INTO `items` (`RFID`, `Location`, `ProductID`, `ProductName`, `Supplier`) VALUES
	('1', 'CannedDrinks-1-3-10', '28', 'Pepsi', 'PepsiCo'),
	('10', 'LongLifeFoods-10-1-3', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('11', 'LongLifeFoods-10-1-4', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('12', 'LongLifeFoods-10-1-1', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('13', 'LongLifeFoods-10-1-4', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('14', 'LongLifeFoods-10-1-2', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('15', 'LongLifeFoods-10-1-3', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('16', 'LongLifeFoods-10-1-3', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('17', 'LongLifeFoods-10-1-4', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('18', 'LongLifeFoods-10-1-4', '14266', 'Instant Curry Powder', 'Georgie Hall'),
	('19', 'LongLifeFoods-2-5-3', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('2', 'CannedDrinks-1-3-8', '28', 'Pepsi', 'PepsiCo'),
	('20', 'LongLifeFoods-2-5-2', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('21', 'LongLifeFoods-2-5-6', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('22', 'LongLifeFoods-2-5-1', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('23', 'LongLifeFoods-2-5-2', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('24', 'LongLifeFoods-2-5-6', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('25', 'LongLifeFoods-2-5-1', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('26', 'LongLifeFoods-2-5-3', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('27', 'LongLifeFoods-2-5-3', '23742', 'Pretzel Snacks', 'Helton Snacks'),
	('28', 'toiletries-4-2-5', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('29', 'toiletries-4-2-5', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('3', 'CannedDrinks-1-3-9', '28', 'Pepsi', 'PepsiCo'),
	('30', 'toiletries-4-2-4', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('31', 'toiletries-4-2-3', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('32', 'toiletries-4-2-2', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('33', 'toiletries-4-2-4', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('34', 'toiletries-4-2-5', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('35', 'toiletries-4-2-3', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('36', 'toiletries-4-2-3', '4260', 'Soft Kitchen Wipes', 'Huggies'),
	('4', 'CannedDrinks-1-3-8', '28', 'Pepsi', 'PepsiCo'),
	('5', 'CannedDrinks-1-3-11', '28', 'Pepsi', 'PepsiCo'),
	('6', 'CannedDrinks-1-3-8', '28', 'Pepsi', 'PepsiCo'),
	('7', 'CannedDrinks-1-3-11', '28', 'Pepsi', 'PepsiCo'),
	('8', 'CannedDrinks-1-3-10', '28', 'Pepsi', 'PepsiCo'),
	('9', 'CannedDrinks-1-3-11', '28', 'Pepsi', 'PepsiCo');

-- Dumping structure for table smarttrack_db.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table smarttrack_db.migrations: ~1 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Dumping structure for table smarttrack_db.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table smarttrack_db.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table smarttrack_db.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack_db.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('IXMzu3GWmfDqsLaZA_oSLLkTVrtZaD_g', 1687062132, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}');

-- Dumping structure for table smarttrack_db.supplier
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `CompanyName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table smarttrack_db.supplier: ~4 rows (approximately)
INSERT INTO `supplier` (`CompanyName`, `Phone`, `Email`, `Address`) VALUES
	('Georgie Hall', '0414523890', 'sam@georgiehall.com', '14 place Balder'),
	('Helton Snacks', '0614523890', 'roger@gmail.com', '17 stabiesVil Wanniassa'),
	('Huggies', '0414567890', 'huggies@gmail.com', '3 bakers street London'),
	('PepsiCo', '0414553123', 'pepsi@co.com', '3 Walten Place RoadLand');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
