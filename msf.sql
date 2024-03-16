/*
Navicat MySQL Data Transfer

Source Server         : sss
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : msf

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2023-06-08 19:19:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `category_description` mediumtext COLLATE utf8_unicode_ci,
  `category_is_featured` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `category_thumbnail_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/category/thumbnail/missing.jpg',
  `category_image_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'catalog/category/image/missing.jpg',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Smart Phone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/1.jpg', 'catalog/category/image/1.jpg');
INSERT INTO `category` VALUES ('2', 'Gaming PC', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg');
INSERT INTO `category` VALUES ('3', 'Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'N', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg');
INSERT INTO `category` VALUES ('4', '3D Printer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'Y', 'catalog/category/thumbnail/4.jpg', 'catalog/category/image/4.jpg');
INSERT INTO `category` VALUES ('5', 'Laser Machine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', 'N', 'catalog/category/thumbnail/missing.jpg', 'catalog/category/image/missing.jpg');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` mediumtext COLLATE utf8_unicode_ci,
  `product_price` int(11) NOT NULL DEFAULT '0',
  `product_is_featured` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `product_rating` int(11) NOT NULL DEFAULT '0',
  `product_thumbnail_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/product/thumbnail/missing.jpg',
  `product_image_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog/product/image/missing.jpg',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', 'Samsung S22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '2200', 'Y', '4', 'catalog/product/thumbnail/1.jpg', 'catalog/product/image/1.jpg');
INSERT INTO `product` VALUES ('2', '1', 'Iphone 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '2000', 'Y', '5', 'catalog/product/thumbnail/2.jpg', 'catalog/product/image/2.jpg');
INSERT INTO `product` VALUES ('3', '2', 'DELL VOSTRO 255', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '2500', 'Y', '4', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('4', '2', 'LENOVO YOGA 21F', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '1600', 'N', '3', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('5', '3', 'Panasonic Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '1200', 'N', '2', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('6', '3', 'LG Smart Lite 4K', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '1600', 'N', '2', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('7', '4', 'Creality Ender3 V2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '500', 'Y', '5', 'catalog/product/thumbnail/7.jpg', 'catalog/product/image/7.jpg');
INSERT INTO `product` VALUES ('8', '4', 'Creality CR 10 Smart Pro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '1150', 'Y', '4', 'catalog/product/thumbnail/8.jpg', 'catalog/product/image/8.jpg');
INSERT INTO `product` VALUES ('9', '5', 'XTool D1 10W', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '700', 'Y', '3', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('10', '5', 'Ortur Aufero 5W', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mauris mauris, consequat eu dignissim dictum, vehicula nec mi. Vivamus ut lectus metus. Donec scelerisque eget felis sed auctor. Morbi tincidunt vitae mi nec varius. Donec tempor, ligula nec aliquam faucibus, magna odio scelerisque libero, lobortis dictum tortor orci nec nunc.', '450', 'Y', '1', 'catalog/product/thumbnail/missing.jpg', 'catalog/product/image/missing.jpg');
INSERT INTO `product` VALUES ('13', '1', '111aaa', '111', '111', 'Y', '1', './catalog/product/thumbnail/1686185941.png', './catalog/product/image/1686185956.png');
