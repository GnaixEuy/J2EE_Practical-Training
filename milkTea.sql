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

 Date: 20/06/2021 19:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `id`             varchar(255) NOT NULL,
    `admin_name`     varchar(255) NOT NULL,
    `admin_password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `admin_id_uindex` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin`
VALUES ('123123', 'no', '1');
COMMIT;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`
(
    `id`             int(11)       NOT NULL AUTO_INCREMENT,
    `material_name`  varchar(255)  NOT NULL,
    `material_price` double(10, 2) NOT NULL,
    `material_store` int(255)      NOT NULL,
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
    `product_id`        varchar(255) NOT NULL,
    `product_name`      varchar(255) NOT NULL,
    `product_price`     double       NOT NULL,
    `product_store`     int(255)     NOT NULL,
    `product_type`      varchar(255) NOT NULL,
    `product_materials` varchar(255) NOT NULL,
    PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products`
VALUES ('1', '水', 2, 4, '饮料', '水,塑料,test,这,常常的测绘,123,3333,4');
INSERT INTO `products`
VALUES ('2', '水牛', 23, 3, '3', '3');
INSERT INTO `products`
VALUES ('4', '火牛', 3, 3, '3', '3');
INSERT INTO `products`
VALUES ('5', '吃牛牛吃', 3, 3, '3', '3');
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
    `Id`       varchar(255)            NOT NULL,
    `username` varchar(255)            NOT NULL,
    `password` varchar(255)            NOT NULL,
    `Phone`    varchar(255) DEFAULT NULL,
    `balance`  double(255, 0) unsigned NOT NULL,
    PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users`
VALUES ('2', '2', '2', '2', 2);
INSERT INTO `users`
VALUES ('3', '3', '3', '3', 3);
INSERT INTO `users`
VALUES ('312312', '313123', '123123123123', '123213123', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
