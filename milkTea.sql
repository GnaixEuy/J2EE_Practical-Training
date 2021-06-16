/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : milkTea

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 17/06/2021 00:15:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `id`            int(11)      NOT NULL AUTO_INCREMENT,
    `adminname`     varchar(255) NOT NULL,
    `adminpassword` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `admin_id_uindex` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`
(
    `id`              int(11)        NOT NULL AUTO_INCREMENT,
    `rmaterial_name`  varchar(255)   NOT NULL,
    `rmaterial_price` decimal(10, 2) NOT NULL,
    `rmaterial_store` int(255)       NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`
(
    `Id`            int(255)       NOT NULL AUTO_INCREMENT,
    `product_name`  varchar(255)   NOT NULL,
    `product_price` decimal(10, 2) NOT NULL,
    `product_store` int(255)       NOT NULL,
    `type`          varchar(10)    NOT NULL,
    PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for turnovers
-- ----------------------------
DROP TABLE IF EXISTS `turnovers`;
CREATE TABLE `turnovers`
(
    `id`            int(255)       NOT NULL AUTO_INCREMENT,
    `turnover`      decimal(10, 0) NOT NULL COMMENT '营业额',
    `turnover_date` date           NOT NULL COMMENT '营业日期',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of turnovers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `Id`       int(255)                         NOT NULL AUTO_INCREMENT,
    `username` varchar(255)                     NOT NULL,
    `password` varchar(255)                     NOT NULL,
    `Phone`    varchar(255) DEFAULT NULL,
    `balance`  double(255, 0) unsigned zerofill NOT NULL,
    PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
