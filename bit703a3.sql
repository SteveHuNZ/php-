-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2022 at 02:34 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bit703a2`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` mediumtext COLLATE utf8_unicode_ci,
  `category_is_featured` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `category_thumbnail_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/category/thumbnail/missing.jpg',
  `category_image_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'catalog/category/image/missing.jpg',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_is_featured`, `category_thumbnail_url`, `category_image_url`) VALUES
(1, 'Smart Phone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/1.jpg', 'catalog/category/image/1.jpg'),
(2, 'Gaming PC', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg'),
(3, 'Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'N', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg'),
(4, '3D Printer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/4.jpg', 'catalog/category/image/4.jpg'),
(5, 'Laser Machine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'N', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `product_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` mediumtext COLLATE utf8_unicode_ci,
  `product_price` int NOT NULL DEFAULT '0',
  `product_is_featured` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `product_rating` int NOT NULL DEFAULT '0',
  `product_thumbnail_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/product/thumbnail/missing.jpg',
  `product_image_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/product/image/missing.jpg',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_description`, `product_price`, `product_is_featured`, `product_rating`, `product_thumbnail_url`, `product_image_url`) VALUES
(1, 1, 'Samsung S22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 2200, 'Y', 4, 'catalog/product/thumbnail/1.jpg', 'catalog/product/image/1.jpg'),
(2, 1, 'Iphone 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 2000, 'Y', 5, 'catalog/product/thumbnail/2.jpg', 'catalog/product/image/2.jpg'),
(3, 2, 'DELL VOSTRO 255', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 2500, 'Y', 4, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg'),
(4, 2, 'LENOVO YOGA 21F', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 1600, 'N', 3, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg'),
(5, 3, 'Panasonic Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 1200, 'N', 2, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg'),
(6, 3, 'LG Smart Lite 4K', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 1600, 'N', 2, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg'),
(7, 4, 'Creality Ender3 V2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 500, 'Y', 5, 'catalog/product/thumbnail/7.jpg', 'catalog/product/image/7.jpg'),
(8, 4, 'Creality CR 10 Smart Pro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 1150, 'Y', 4, 'catalog/product/thumbnail/8.jpg', 'catalog/product/image/8.jpg'),
(9, 5, 'XTool D1 10W', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 700, 'Y', 3, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg'),
(10, 5, 'Ortur Aufero 5W', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 450, 'Y', 1, 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
