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

 Date: 21/06/2021 16:20:10
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
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `admin_id_uindex` (`id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin`
VALUES ('123123', 'BOSS', '1');
INSERT INTO `admin`
VALUES ('root', '超级用户', 'root');
COMMIT;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`
(
    `material_id`    int(11)       NOT NULL AUTO_INCREMENT,
    `material_name`  varchar(255)  NOT NULL,
    `material_price` double(10, 2) NOT NULL,
    `material_store` int(11)       NOT NULL,
    PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 4445
  DEFAULT CHARSET = utf8
  ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material
-- ----------------------------
BEGIN;
INSERT INTO `material`
VALUES (1, '奶茶粉', 1.00, 100);
INSERT INTO `material`
VALUES (2, '牛奶', 1.00, 100);
INSERT INTO `material`
VALUES (3, '咖啡豆', 3.00, 50);
INSERT INTO `material`
VALUES (4, '糖', 1.00, 100);
INSERT INTO `material`
VALUES (5, '巧克力', 2.00, 100);
INSERT INTO `material`
VALUES (6, '面粉', 1.00, 100);
INSERT INTO `material`
VALUES (7, '抹茶', 1.00, 100);
INSERT INTO `material`
VALUES (8, '芋泥', 1.00, 100);
INSERT INTO `material`
VALUES (9, '芝士', 1.00, 100);
INSERT INTO `material`
VALUES (10, '西米露', 1.00, 100);
INSERT INTO `material` VALUES (11, '珍珠', 1.00, 100);
INSERT INTO `material` VALUES (12, '焦糖', 1.00, 100);
INSERT INTO `material` VALUES (13, '红豆', 1.00, 100);
INSERT INTO `material`
VALUES (14, '椰果', 1.00, 100);
INSERT INTO `material`
VALUES (15, '奶油', 2.00, 100);
INSERT INTO `material`
VALUES (16, '燕麦', 1.00, 100);
INSERT INTO `material`
VALUES (17, '柠檬', 2.00, 50);
INSERT INTO `material`
VALUES (18, '西瓜', 2.00, 50);
INSERT INTO `material`
VALUES (19, '草莓', 1.00, 100);
INSERT INTO `material`
VALUES (20, '葡萄', 2.00, 50);
INSERT INTO `material`
VALUES (21, '沙棘', 3.00, 50);
INSERT INTO `material`
VALUES (22, '菠萝', 2.00, 50);
INSERT INTO `material`
VALUES (23, '橙子', 1.00, 50);
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
    `product_store`     int(11)      NOT NULL,
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
VALUES ('1', '珍珠奶茶', 10, 100, '醇香奶茶', '奶茶粉,珍珠,糖');
INSERT INTO `products`
VALUES ('10', '金菠萝果汁', 8, 100, '果茶', '菠萝');
INSERT INTO `products`
VALUES ('11', '沙棘汁', 11, 100, '果茶', '沙棘');
INSERT INTO `products`
VALUES ('12', '拿铁', 15, 50, '咖啡', '咖啡豆,牛奶');
INSERT INTO `products`
VALUES ('13', '美式', 15, 50, '咖啡 ', '咖啡豆');
INSERT INTO `products`
VALUES ('14', '鲜芋牛奶', 14, 50, '牛奶', '牛奶,芋泥');
INSERT INTO `products`
VALUES ('15', '西米露牛奶', 14, 50, '牛奶', '牛奶,西米露');
INSERT INTO `products`
VALUES ('16', '提拉米苏', 10, 20, '蛋糕甜点', '奶油,面粉,糖');
INSERT INTO `products`
VALUES ('17', '抹茶芝士', 10, 20, '蛋糕甜点', '抹茶粉,芝士,面粉');
INSERT INTO `products`
VALUES ('18', '燕麦曲奇', 5, 20, '蛋糕甜点', '燕麦,面粉');
INSERT INTO `products`
VALUES ('19', '巧克力司康', 5, 20, '蛋糕甜点', '巧克力,面粉');
INSERT INTO `products`
VALUES ('2', '焦糖奶茶', 10, 100, '醇香奶茶', '奶茶粉,焦糖,糖');
INSERT INTO `products`
VALUES ('20', '原味可颂', 4, 20, '蛋糕甜点', '面粉');
INSERT INTO `products`
VALUES ('3', '芋泥奶茶', 10, 100, '醇香奶茶', '奶茶粉,芋泥,糖');
INSERT INTO `products`
VALUES ('4', '红豆奶茶', 10, 100, '醇香奶茶', '奶茶粉,红豆,糖');
INSERT INTO `products`
VALUES ('5', '莓莓果茶', 12, 100, '果茶', '草莓');
INSERT INTO `products`
VALUES ('6', '西瓜果茶', 13, 100, '果茶', '西瓜');
INSERT INTO `products`
VALUES ('7', '鲜橙多多', 12, 100, '果茶', '橙子');
INSERT INTO `products`
VALUES ('8', '金桔柠檬', 5, 100, '果茶', '柠檬');
INSERT INTO `products`
VALUES ('9', '满杯葡萄', 8, 100, '果茶', '葡萄');
INSERT INTO `products`
VALUES ('BOSS2021062129', '测试咖啡', 13, 5, '咖啡', '牛奶,咖啡豆,珍珠');
COMMIT;

-- ----------------------------
-- Table structure for turnovers
-- ----------------------------
DROP TABLE IF EXISTS `turnovers`;
CREATE TABLE `turnovers`
(
    `id`            int(11)        NOT NULL AUTO_INCREMENT,
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
-- Table structure for typeInfo
-- ----------------------------
DROP TABLE IF EXISTS `typeInfo`;
CREATE TABLE `typeInfo`
(
    `type_name` varchar(255) NOT NULL,
    PRIMARY KEY (`type_name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of typeInfo
-- ----------------------------
BEGIN;
INSERT INTO `typeInfo`
VALUES ('咖啡');
INSERT INTO `typeInfo`
VALUES ('果茶');
INSERT INTO `typeInfo`
VALUES ('牛奶');
INSERT INTO `typeInfo`
VALUES ('蛋糕甜点');
INSERT INTO `typeInfo`
VALUES ('醇香奶茶');
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
VALUES ('2', 'ojbk', '2222', '23', 2);
INSERT INTO `users`
VALUES ('3', '3', '3', '3', 3);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
