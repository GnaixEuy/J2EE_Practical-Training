/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : milktea

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 24/06/2021 11:31:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`
(
    `id`             varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `admin_name`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `admin_id_uindex` (`id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin`
VALUES ('123123', 'BOSS', '1');
INSERT INTO `admin`
VALUES ('root', '超级用户', 'root');

-- ----------------------------
-- Table structure for appraises
-- ----------------------------
DROP TABLE IF EXISTS `appraises`;
CREATE TABLE `appraises`
(
    `appraises_id`    varbinary(255)                                          NOT NULL,
    `appraises_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `appraises_date`  date                                                    NULL DEFAULT NULL,
    PRIMARY KEY (`appraises_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appraises
-- ----------------------------
INSERT INTO `appraises`
VALUES (0x31, '1', '2021-01-01');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`
(
    `material_id`    int(0)                                                  NOT NULL AUTO_INCREMENT,
    `material_name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `material_price` double(10, 2)                                           NOT NULL,
    `material_store` int(0)                                                  NOT NULL,
    PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 7778
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material`
VALUES (1, '奶茶粉', 1.00, 87);
INSERT INTO `material`
VALUES (2, '牛奶', 1.00, 96);
INSERT INTO `material`
VALUES (3, '咖啡豆', 3.00, 46);
INSERT INTO `material`
VALUES (4, '糖', 1.00, 87);
INSERT INTO `material`
VALUES (5, '巧克力', 2.00, 100);
INSERT INTO `material`
VALUES (6, '面粉', 1.00, 100);
INSERT INTO `material`
VALUES (7, '抹茶', 1.00, 100);
INSERT INTO `material`
VALUES (8, '芋泥', 1.00, 95);
INSERT INTO `material`
VALUES (9, '芝士', 1.00, 100);
INSERT INTO `material`
VALUES (10, '西米露', 1.00, 99);
INSERT INTO `material`
VALUES (11, '珍珠', 1.00, 96);
INSERT INTO `material`
VALUES (12, '焦糖', 1.00, 95);
INSERT INTO `material`
VALUES (13, '红豆', 1.00, 98);
INSERT INTO `material`
VALUES (14, '椰果', 1.00, 100);
INSERT INTO `material`
VALUES (15, '奶油', 2.00, 100);
INSERT INTO `material`
VALUES (16, '燕麦', 1.00, 100);
INSERT INTO `material`
VALUES (17, '柠檬', 2.00, 50);
INSERT INTO `material`
VALUES (18, '西瓜', 2.00, 48);
INSERT INTO `material`
VALUES (19, '草莓', 1.00, 97);
INSERT INTO `material`
VALUES (20, '葡萄', 2.00, 50);
INSERT INTO `material`
VALUES (21, '沙棘', 3.00, 40);
INSERT INTO `material`
VALUES (22, '菠萝', 2.00, 46);
INSERT INTO `material`
VALUES (23, '橙子', 1.00, 49);
INSERT INTO `material`
VALUES (332, 'yyy', 9.00, 10000);
INSERT INTO `material`
VALUES (7777, 'yyy', 9.00, 10000);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`
(
    `order_id`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `order_list`   varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `order_price`  double(10, 2)                                           NOT NULL,
    `order_userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `order_date`   datetime(0)                                             NULL DEFAULT NULL,
    `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders`
VALUES ('202106221936342@3ojbk', '金菠萝果汁,沙棘汁,美式', 34.00, '2@3', '2021-06-22 00:00:00', 'Finish');
INSERT INTO `orders`
VALUES ('202106222103242@3ojbk', '金菠萝果汁,西米露牛奶', 22.00, '2@3', '2021-06-22 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('202106231006542@3ojbk', '沙棘汁,鲜芋牛奶', 25.00, 'ojbk', '2021-06-23 00:00:00', 'Pending');
INSERT INTO `orders`
VALUES ('202106231011142@3ojbk', '沙棘汁,鲜芋牛奶,莓莓果茶,金菠萝果汁', 45.00, 'ojbk', '2021-06-23 00:00:00', 'Pending');
INSERT INTO `orders`
VALUES ('202106231220232@3ojbk', '美式,沙棘汁', 26.00, '2@3', '2021-06-23 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('202106231220532@3ojbk', '美式,沙棘汁,沙棘汁,沙棘汁', 48.00, '2@3', '2021-06-23 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('202106231225412@3ojbk', '美式,沙棘汁,沙棘汁', 37.00, '2@3', '2021-06-23 00:00:00', 'Pending');
INSERT INTO `orders`
VALUES ('2021062411072733', '珍珠奶茶,焦糖奶茶', 20.00, '3', '2021-06-24 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('2021062411165033', '珍珠奶茶,焦糖奶茶,芋泥奶茶', 30.00, '3', '2021-06-24 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('2021062411171633', '焦糖奶茶,芋泥奶茶,红豆奶茶,红豆奶茶', 40.00, '3', '2021-06-24 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('2021062411240733', '珍珠奶茶,焦糖奶茶', 20.00, '3', '2021-06-24 00:00:00', 'Cancelled');
INSERT INTO `orders`
VALUES ('2021062411244833', '莓莓果茶,西瓜果茶', 23.00, '3', '2021-06-24 00:00:00', 'Pending');
INSERT INTO `orders`
VALUES ('2021062411251733', '莓莓果茶,西瓜果茶,鲜橙多多', 35.00, '3', '2021-06-24 00:00:00', 'Pending');
INSERT INTO `orders`
VALUES ('2021062411294933', '焦糖奶茶,珍珠奶茶', 20.00, '3', '2021-06-24 00:00:00', 'Pending');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`
(
    `product_id`        varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `product_name`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `product_price`     double                                                  NOT NULL,
    `product_store`     int(0)                                                  NOT NULL,
    `product_type`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `product_materials` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products`
VALUES ('BOSS20210624110023', '珍珠奶茶', 10, 10, '醇香奶茶', '奶茶粉,糖,珍珠');
INSERT INTO `products`
VALUES ('BOSS20210624110051', '焦糖奶茶', 10, 10, '醇香奶茶', '奶茶粉,糖,焦糖');
INSERT INTO `products`
VALUES ('BOSS20210624110106', '芋泥奶茶', 10, 10, '醇香奶茶', '奶茶粉,糖,芋泥');
INSERT INTO `products`
VALUES ('BOSS20210624110140', '红豆奶茶', 10, 10, '醇香奶茶', '奶茶粉,糖,红豆');
INSERT INTO `products`
VALUES ('BOSS20210624110211', '莓莓果茶', 10, 10, '果茶', '草莓');
INSERT INTO `products`
VALUES ('BOSS20210624110407', '西瓜果茶', 13, 10, '果茶', '西瓜');
INSERT INTO `products`
VALUES ('BOSS20210624110437', '鲜橙多多', 12, 10, '果茶', '橙子');
INSERT INTO `products`
VALUES ('BOSS20210624110536', '金桔柠檬', 5, 10, '果茶', '柠檬');
INSERT INTO `products`
VALUES ('BOSS20210624110602', '满杯葡萄汁', 8, 10, '果茶', '葡萄');

-- ----------------------------
-- Table structure for turnovers
-- ----------------------------
DROP TABLE IF EXISTS `turnovers`;
CREATE TABLE `turnovers`
(
    `id`            int(0)         NOT NULL AUTO_INCREMENT,
    `turnover`      decimal(10, 0) NOT NULL COMMENT '营业额',
    `turnover_date` date           NOT NULL COMMENT '营业日期',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of turnovers
-- ----------------------------

-- ----------------------------
-- Table structure for typeinfo
-- ----------------------------
DROP TABLE IF EXISTS `typeinfo`;
CREATE TABLE `typeinfo`
(
    `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY (`type_name`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of typeinfo
-- ----------------------------
INSERT INTO `typeinfo`
VALUES ('咖啡');
INSERT INTO `typeinfo`
VALUES ('果茶');
INSERT INTO `typeinfo`
VALUES ('牛奶');
INSERT INTO `typeinfo`
VALUES ('蛋糕甜点');
INSERT INTO `typeinfo`
VALUES ('醇香奶茶');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `Id`       varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `Phone`    varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `balance`  double(255, 0) UNSIGNED                                 NOT NULL,
    PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES ('2@3', 'ojbk', '2', '23', 99729);
INSERT INTO `users`
VALUES ('3', '3', '33333', '3', 99811);

SET FOREIGN_KEY_CHECKS = 1;
