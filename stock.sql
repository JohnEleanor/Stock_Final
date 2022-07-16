-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for stock
CREATE DATABASE IF NOT EXISTS `stock` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `stock`;

-- Dumping structure for table stock.attributes
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.attributes: ~0 rows (approximately)
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;

-- Dumping structure for table stock.attribute_value
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.attribute_value: ~8 rows (approximately)
/*!40000 ALTER TABLE `attribute_value` DISABLE KEYS */;
REPLACE INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
	(5, 'Blue', 2),
	(6, 'White', 2),
	(7, 'M', 3),
	(8, 'L', 3),
	(9, 'Green', 2),
	(10, 'Black', 2),
	(12, 'Grey', 2),
	(13, 'S', 3);
/*!40000 ALTER TABLE `attribute_value` ENABLE KEYS */;

-- Dumping structure for table stock.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.brands: ~0 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table stock.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `name`, `active`) VALUES
	(4, 'GG', 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table stock.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.company: ~0 rows (approximately)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
REPLACE INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
	(1, 'Infosys private', '13', '10', 'Madrid', '758676851', 'Spain', 'hello everyone one', 'USD');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

-- Dumping structure for table stock.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.groups: ~1 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
REPLACE INTO `groups` (`id`, `group_name`, `permission`) VALUES
	(1, 'Administrator', 'a:36:{i:0;s:10:"createUser";i:1;s:10:"updateUser";i:2;s:8:"viewUser";i:3;s:10:"deleteUser";i:4;s:11:"createGroup";i:5;s:11:"updateGroup";i:6;s:9:"viewGroup";i:7;s:11:"deleteGroup";i:8;s:11:"createBrand";i:9;s:11:"updateBrand";i:10;s:9:"viewBrand";i:11;s:11:"deleteBrand";i:12;s:14:"createCategory";i:13;s:14:"updateCategory";i:14;s:12:"viewCategory";i:15;s:14:"deleteCategory";i:16;s:11:"createStore";i:17;s:11:"updateStore";i:18;s:9:"viewStore";i:19;s:11:"deleteStore";i:20;s:15:"createAttribute";i:21;s:15:"updateAttribute";i:22;s:13:"viewAttribute";i:23;s:15:"deleteAttribute";i:24;s:13:"createProduct";i:25;s:13:"updateProduct";i:26;s:11:"viewProduct";i:27;s:13:"deleteProduct";i:28;s:11:"createOrder";i:29;s:11:"updateOrder";i:30;s:9:"viewOrder";i:31;s:11:"deleteOrder";i:32;s:11:"viewReports";i:33;s:13:"updateCompany";i:34;s:11:"viewProfile";i:35;s:13:"updateSetting";}'),
	(5, 'user', 'a:20:{i:0;s:11:"createBrand";i:1;s:11:"updateBrand";i:2;s:9:"viewBrand";i:3;s:11:"deleteBrand";i:4;s:14:"createCategory";i:5;s:14:"updateCategory";i:6;s:12:"viewCategory";i:7;s:14:"deleteCategory";i:8;s:11:"createStore";i:9;s:11:"updateStore";i:10;s:9:"viewStore";i:11;s:11:"deleteStore";i:12;s:13:"createProduct";i:13;s:13:"updateProduct";i:14;s:11:"viewProduct";i:15;s:13:"deleteProduct";i:16;s:11:"createOrder";i:17;s:11:"updateOrder";i:18;s:9:"viewOrder";i:19;s:11:"viewReports";}');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table stock.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table stock.orders_item
CREATE TABLE IF NOT EXISTS `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.orders_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_item` ENABLE KEYS */;

-- Dumping structure for table stock.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.products: ~1 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
	(2, 'ปากกา', 'เเท่ง', '10', '100', 'assets/images/product_image/62d15f5c90841.jpg', '<p>ปากกาลูกลื่น</p>', 'null', 'null', '["4"]', 5, 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table stock.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.stores: ~1 rows (approximately)
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
REPLACE INTO `stores` (`id`, `name`, `active`) VALUES
	(5, 'ร้าน A', 1);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

-- Dumping structure for table stock.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
	(1, 'adminknst', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '80789998', 1),
	(6, 'genius12345', '$2y$10$FnGfk4spbWRQDZfBnSaC6Ok8dP5AWGg.G/mZfvS5K2O9qAUpC4b3C', ' test@test.com', 'test', 'user', '111111111', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table stock.user_group
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table stock.user_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
REPLACE INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(7, 6, 5);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
