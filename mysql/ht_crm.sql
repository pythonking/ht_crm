/*
 Navicat Premium Data Transfer

 Source Server         : crm-test
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : ht_crm

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 08/04/2018 10:33:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `timestamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `pinyin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyid` int(10) UNSIGNED DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_document
-- ----------------------------
DROP TABLE IF EXISTS `t_document`;
CREATE TABLE `t_document`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `contexttype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_document
-- ----------------------------
INSERT INTO `t_document` VALUES (1, '镶嵌-库存数据模板20180403160026.xlsx', '6 KB', '2018-04-04 15:28:34', '张飞', 'doc', '92e60875-4cd5-481c-b302-3941fe027930.xlsx', NULL, 0, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
INSERT INTO `t_document` VALUES (2, '一级菜单', NULL, '2018-04-04 15:29:32', '张飞', 'dir', NULL, NULL, 0, NULL);
INSERT INTO `t_document` VALUES (3, '二级菜单', NULL, '2018-04-04 15:29:57', '张飞', 'dir', NULL, NULL, 2, NULL);
INSERT INTO `t_document` VALUES (4, 'ht_crm.sql', '10 KB', '2018-04-04 15:58:37', '张飞', 'doc', 'e510dd1c-880b-4483-81b4-09c3dd81d626.sql', NULL, 3, 'application/octet-stream');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '管理员');
INSERT INTO `t_role` VALUES (2, '经理');
INSERT INTO `t_role` VALUES (3, '员工');

-- ----------------------------
-- Table structure for t_sales
-- ----------------------------
DROP TABLE IF EXISTS `t_sales`;
CREATE TABLE `t_sales`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `custid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `progress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lasttime` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `successtime` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sales_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sales_file`;
CREATE TABLE `t_sales_file`  (
  `id` int(11) NOT NULL,
  `salesid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contenttype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `size` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sales_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sales_log`;
CREATE TABLE `t_sales_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `salesid` int(11) DEFAULT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `salesid` int(11) DEFAULT NULL,
  `custid` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remindertime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `done` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES (1, 2, NULL, NULL, '接待客户', '2018-04-06', '2018-04-06', '#cccccc', '2018-04-06 9:50:00', 1);
INSERT INTO `t_task` VALUES (2, 2, NULL, NULL, '接待客户', '2018-04-07', '2018-04-07', '#61a5e8', '2018-04-07 16:25:00', NULL);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weixin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roleid` int(11) DEFAULT NULL,
  `enable` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '670b14728ad9902aecba32e22fa4f6bd', '管理员', '', '2018-04-04 14:58:47', 1, 1);
INSERT INTO `t_user` VALUES (2, 'king', '670b14728ad9902aecba32e22fa4f6bd', '张飞', NULL, '2018-04-04 15:18:44', 2, 1);
INSERT INTO `t_user` VALUES (3, 'leo', '670b14728ad9902aecba32e22fa4f6bd', '赵云', NULL, '2018-04-04 15:19:44', 3, 1);
INSERT INTO `t_user` VALUES (4, 'yjt', '670b14728ad9902aecba32e22fa4f6bd', '杨军涛', '10009084040', '2018-04-04 15:33:07', 3, 1);

-- ----------------------------
-- Table structure for t_user_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_log`;
CREATE TABLE `t_user_log`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logintime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_log
-- ----------------------------
INSERT INTO `t_user_log` VALUES (1, '2018-04-04 15:15', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (2, '2018-04-04 15:20', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (3, '2018-04-04 15:20', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (4, '2018-04-04 15:21', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (5, '2018-04-04 15:25', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (6, '2018-04-04 15:27', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (7, '2018-04-04 15:27', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (8, '2018-04-04 15:32', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (9, '2018-04-04 15:33', '127.0.0.1', 4);
INSERT INTO `t_user_log` VALUES (10, '2018-04-04 15:37', '127.0.0.1', 4);
INSERT INTO `t_user_log` VALUES (11, '2018-04-04 15:41', '127.0.0.1', 4);
INSERT INTO `t_user_log` VALUES (12, '2018-04-04 15:44', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (13, '2018-04-04 15:44', '127.0.0.1', 4);
INSERT INTO `t_user_log` VALUES (14, '2018-04-04 15:47', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (15, '2018-04-04 15:48', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (16, '2018-04-04 15:50', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (17, '2018-04-08 10:04', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (18, '2018-04-08 10:05', '127.0.0.1', 1);
INSERT INTO `t_user_log` VALUES (19, '2018-04-08 10:06', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (20, '2018-04-08 10:07', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (21, '2018-04-08 10:11', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (22, '2018-04-08 10:31', '127.0.0.1', 2);
INSERT INTO `t_user_log` VALUES (23, '2018-04-08 10:31', '127.0.0.1', 2);

SET FOREIGN_KEY_CHECKS = 1;
