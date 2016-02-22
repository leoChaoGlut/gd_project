/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : graduate_project

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-02-22 20:06:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for common_log
-- ----------------------------
DROP TABLE IF EXISTS `common_log`;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL COMMENT 'ip地址:192.168.1.1',
  `visited_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_log
-- ----------------------------

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `pwd` varchar(25) DEFAULT NULL,
  `seniority` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('1', '1', 'name1', '18', null, '123', null);
INSERT INTO `common_user` VALUES ('2', '2', 'name2', null, null, '456', null);
INSERT INTO `common_user` VALUES ('3', '3', 'name3', null, null, '123', null);
INSERT INTO `common_user` VALUES ('4', '4', 'name4', null, null, '123', null);
INSERT INTO `common_user` VALUES ('5', '5', 'name5', null, null, '1234', null);
INSERT INTO `common_user` VALUES ('6', '6', 'name6', null, null, '123', null);
INSERT INTO `common_user` VALUES ('7', '7', null, null, null, '12', null);

-- ----------------------------
-- Table structure for vita_chart
-- ----------------------------
DROP TABLE IF EXISTS `vita_chart`;
CREATE TABLE `vita_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用于用户管理简历',
  `user_id` int(11) DEFAULT NULL,
  `json` varchar(10000) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL COMMENT '如果type_id=0 则代表该简历是用户上传的简历,对应的json就是服务器上存储的简历的url',
  `has_deleted` tinyint(4) DEFAULT '0' COMMENT '0:未删除;1:已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_chart
-- ----------------------------
INSERT INTO `vita_chart` VALUES ('9', '1', '{\"1\":{\"name\":\"1\",\"prof\":\"74\",\"parent\":\"\",\"children\":{}}}', '2', '1');

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
-- Table structure for vita_mid_user_skill
-- ----------------------------
DROP TABLE IF EXISTS `vita_mid_user_skill`;
CREATE TABLE `vita_mid_user_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_mid_user_skill
-- ----------------------------
INSERT INTO `vita_mid_user_skill` VALUES ('10', '1', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vita_type
-- ----------------------------
INSERT INTO `vita_type` VALUES ('1', '树形能力图');
INSERT INTO `vita_type` VALUES ('2', '饼状能力图');
INSERT INTO `vita_type` VALUES ('5', '上传的简历');
