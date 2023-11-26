/*
 Navicat Premium Data Transfer

 Source Server         : Mysql8-Docker
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:13306
 Source Schema         : hvfish_bill

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 26/11/2023 17:23:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES (15, 536, NULL, 3000, '2023-11-25 21:42:42', '2023-11-25 21:42:42', '2023-11-25 21:42:42');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'consume', '/images/account/eat.png', '三餐', '2023-11-25 21:59:57', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (2, 'consume', '/images/account/shopping.png', '购物', '2023-11-25 21:59:57', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (3, 'consume', '/images/account/sock.png', '零食', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (4, 'consume', '/images/account/fruit.png', '水果', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (5, 'consume', '/images/account/plane.png', '出行', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (6, 'consume', '/images/account/car.png', '修车', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (7, 'consume', '/images/account/education.png', '学习', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (8, 'consume', '/images/account/children.png', '小孩', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (9, 'consume', '/images/account/gift.png', '送礼', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (10, 'consume', '/images/account/pet.png', '购物', '2023-11-25 21:59:58', '2023-11-25 23:00:13');
INSERT INTO `category` VALUES (13, 'income', '/images/account/salary.png', '工资', '2023-11-25 22:05:23', '2023-11-25 23:00:17');
INSERT INTO `category` VALUES (14, 'income', '/images/account/bonus.png', '奖金', '2023-11-25 22:05:23', '2023-11-25 23:35:56');
INSERT INTO `category` VALUES (15, 'income', '/images/account/financing.png', '理财', '2023-11-25 22:05:23', '2023-11-25 23:00:05');
INSERT INTO `category` VALUES (16, 'income', '/images/account/lifefee.png', '生活费', '2023-11-25 22:05:23', '2023-11-25 23:36:01');
INSERT INTO `category` VALUES (17, 'income', '/images/account/vicejob.png', '兼职', '2023-11-25 22:05:23', '2023-11-25 23:00:05');
INSERT INTO `category` VALUES (18, 'income', '/images/account/wipeout.png', '报销', '2023-11-25 22:05:23', '2023-11-25 23:00:05');
INSERT INTO `category` VALUES (19, 'income', '/images/account/refund.png', '退款', '2023-11-25 22:05:23', '2023-11-25 23:36:05');
INSERT INTO `category` VALUES (20, 'income', '/images/account/gift.png', '礼金', '2023-11-25 22:05:23', '2023-11-25 23:00:05');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `category_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `type` tinyint(1) NULL DEFAULT 0 COMMENT '0-支出 1-收入',
  `record_time` date NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX ```idx_user_id```(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 533 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (529, 536, 1, 12.00, '早上吃个煎饼果子', 0, '2023-11-25', '2023-11-25 21:40:55', '2023-11-25 21:40:55');
INSERT INTO `record` VALUES (530, 536, 13, 3000.00, '工资到账', 1, '2023-11-25', '2023-11-25 21:41:25', '2023-11-25 21:41:25');
INSERT INTO `record` VALUES (531, 536, 2, 56.00, '买个耳机', 0, '2023-11-25', '2023-11-25 21:41:53', '2023-11-25 21:41:53');
INSERT INTO `record` VALUES (532, 536, 8, 985.00, '学费', 0, '2023-11-25', '2023-11-25 21:47:29', '2023-11-25 21:47:29');
INSERT INTO `record` VALUES (533, 536, 1, 1.00, '测试', 0, '2023-11-25', '2023-11-25 21:53:54', '2023-11-25 21:53:54');
INSERT INTO `record` VALUES (534, 536, 2, 55.00, '1', 0, '2023-11-25', '2023-11-25 21:57:53', '2023-11-25 21:57:53');
INSERT INTO `record` VALUES (535, 536, 10, 1.00, '1', 0, '2023-11-25', '2023-11-25 21:58:05', '2023-11-25 21:58:05');
INSERT INTO `record` VALUES (536, 536, 1, 1.00, '测试', 0, '2023-11-25', '2023-11-25 22:00:11', '2023-11-25 22:00:11');
INSERT INTO `record` VALUES (537, 536, 20, 9.00, '1', 1, '2023-11-25', '2023-11-25 22:02:54', '2023-11-25 22:02:54');
INSERT INTO `record` VALUES (538, 536, 13, 222.00, '666', 0, '2023-11-25', '2023-11-25 23:14:06', '2023-11-25 23:14:06');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信唯一ID',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 537 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (534, 'oFHxU50bfZ4_RsQy5SV4HVd__x14', NULL, NULL, '2023-11-25 21:40:28', '2023-11-25 21:40:28');
INSERT INTO `user` VALUES (535, 'oFHxU50bfZ4_RsQy5SV4HVd__x14', NULL, NULL, '2023-11-25 21:40:28', '2023-11-25 21:40:28');
INSERT INTO `user` VALUES (536, 'oFHxU50bfZ4_RsQy5SV4HVd__x14', NULL, NULL, '2023-11-25 21:40:28', '2023-11-25 21:40:28');

SET FOREIGN_KEY_CHECKS = 1;
