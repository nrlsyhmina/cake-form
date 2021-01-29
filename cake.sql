-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for cake
CREATE DATABASE IF NOT EXISTS `cake` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cake`;

-- Dumping structure for table cake.cake
CREATE TABLE IF NOT EXISTS `cake` (
  `ck_id` int(10) NOT NULL AUTO_INCREMENT,
  `ck_name` varchar(20) NOT NULL,
  `ck_flavour` varchar(15) NOT NULL,
  `ck_price` decimal(10,0) NOT NULL,
  `ck_quantity` int(100) DEFAULT NULL,
  PRIMARY KEY (`ck_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table cake.cake: ~2 rows (approximately)
DELETE FROM `cake`;
/*!40000 ALTER TABLE `cake` DISABLE KEYS */;
INSERT INTO `cake` (`ck_id`, `ck_name`, `ck_flavour`, `ck_price`, `ck_quantity`) VALUES
	(1, 'Marble Cheese Cake', 'Cheese', 20, 65),
	(3, 'Vegan Dark Chocolate', 'Dark Chocolate', 1, 139),
	(4, 'Chocolate Devil', 'Cheese', 35, 69);
/*!40000 ALTER TABLE `cake` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
