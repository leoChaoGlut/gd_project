/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : graduate_project

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-02-14 10:36:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `email` varchar(250) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `pwd` varchar(25) DEFAULT NULL,
  `seniority` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('1', 'name1', '18', null, '123', null);
INSERT INTO `common_user` VALUES ('2', 'name2', null, null, '456', null);
INSERT INTO `common_user` VALUES ('3', 'name3', null, null, '123', null);
INSERT INTO `common_user` VALUES ('4', 'name4', null, null, '123', null);
INSERT INTO `common_user` VALUES ('5', 'name5', null, null, '1234', null);
INSERT INTO `common_user` VALUES ('6', 'name6', null, null, '123', null);
INSERT INTO `common_user` VALUES ('7', null, null, null, '12', null);

-- ----------------------------
-- Table structure for vita_chart
-- ----------------------------
DROP TABLE IF EXISTS `vita_chart`;
CREATE TABLE `vita_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用于用户管理简历',
  `email` varchar(250) DEFAULT NULL,
  `json` varchar(10000) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL COMMENT '如果type_id=0 则代表该简历是用户上传的简历,对应的json就是服务器上存储的简历的url',
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
  `email` varchar(250) DEFAULT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for vita_mid_user_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_user_skill`;
CREATE TABLE `vita_mid_user_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) DEFAULT NULL,
  `skill_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_skill
-- ----------------------------
INSERT INTO `vita_mid_user_skill` VALUES ('1', '1', '5');
INSERT INTO `vita_mid_user_skill` VALUES ('2', '1', '6');
INSERT INTO `vita_mid_user_skill` VALUES ('3', '1', '7');
INSERT INTO `vita_mid_user_skill` VALUES ('4', '2', '5');
INSERT INTO `vita_mid_user_skill` VALUES ('5', '3', '5');
INSERT INTO `vita_mid_user_skill` VALUES ('6', '3', '7');
INSERT INTO `vita_mid_user_skill` VALUES ('7', '4', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_skill
-- ----------------------------
INSERT INTO `vita_skill` VALUES ('5', '前端', null);
INSERT INTO `vita_skill` VALUES ('6', '后端', null);
INSERT INTO `vita_skill` VALUES ('7', 'SQL', null);
INSERT INTO `vita_skill` VALUES ('8', 'NoSQL', null);
INSERT INTO `vita_skill` VALUES ('9', 'HTML5', '5');
INSERT INTO `vita_skill` VALUES ('10', 'CSS3', '5');
INSERT INTO `vita_skill` VALUES ('11', 'Spring', '6');

-- ----------------------------
-- Table structure for vita_type
-- ----------------------------
DROP TABLE IF EXISTS `vita_type`;
CREATE TABLE `vita_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_type
-- ----------------------------
