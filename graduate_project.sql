/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : graduate_project

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-02-11 00:42:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for vita_chart
-- ----------------------------
DROP TABLE IF EXISTS `vita_chart`;
CREATE TABLE `vita_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `json` varchar(10000) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_chart
-- ----------------------------

-- ----------------------------
-- Table structure for vita_mid_chart_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_chart_skill`;
CREATE TABLE `vita_mid_chart_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chart_id` int(11) DEFAULT NULL,
  `skill_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_chart_skill
-- ----------------------------

-- ----------------------------
-- Table structure for vita_mid_user_role
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_user_role`;
CREATE TABLE `vita_mid_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for vita_role
-- ----------------------------
DROP TABLE IF EXISTS `vita_role`;
CREATE TABLE `vita_role` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_role
-- ----------------------------

-- ----------------------------
-- Table structure for vita_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_skill`;
CREATE TABLE `vita_skill` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_skill
-- ----------------------------
