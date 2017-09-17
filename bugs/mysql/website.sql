/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : website

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-07-18 21:16:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_username` varchar(16) NOT NULL,
  `ad_password` varchar(18) NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for bug
-- ----------------------------
DROP TABLE IF EXISTS `bug`;
CREATE TABLE `bug` (
  `bug_id` int(11) NOT NULL AUTO_INCREMENT,
  `summary` varchar(300) DEFAULT NULL,
  `pon_id` int(11) DEFAULT NULL,
  `bug_status` int(11) DEFAULT NULL,
  `reporter_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `handler_id` int(11) DEFAULT NULL,
  `bug_comment` varchar(255) DEFAULT NULL,
  `result_id` int(11) DEFAULT NULL,
  `bug_os` text,
  `bug_description` text,
  `submite_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bug_id`),
  KEY `FK_Bug_Project` (`pro_id`),
  KEY `FK_Bug_Severity` (`pon_id`),
  KEY `FK_Bug_Handler` (`handler_id`),
  KEY `FK_Bug_Reporter_` (`reporter_id`),
  CONSTRAINT `bug_ibfk_1` FOREIGN KEY (`handler_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `bug_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `project` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bug_ibfk_3` FOREIGN KEY (`reporter_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `bug_ibfk_4` FOREIGN KEY (`pon_id`) REFERENCES `ponderance` (`pon_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bug
-- ----------------------------
INSERT INTO `bug` VALUES ('12', '231212323', '5', '5', '2', '38', '2', '', '1', ' 2323', ' 23232', '2017-07-16 18:24:59');
INSERT INTO `bug` VALUES ('13', 'test ', '6', '1', '1', '39', '1', null, null, ' hhh ', ' hhh ', '2017-07-17 12:15:55');
INSERT INTO `bug` VALUES ('14', '121', '6', '1', '2', '38', '1', null, null, ' 12', ' `12', '2017-07-17 12:18:11');
INSERT INTO `bug` VALUES ('15', '121', '5', '1', '2', '38', '1', null, null, ' 2131', ' 213', '2017-07-17 12:19:02');
INSERT INTO `bug` VALUES ('16', '123', '6', '1', '1', '38', '1', null, null, ' we ', ' 2er', '2017-07-17 12:19:52');
INSERT INTO `bug` VALUES ('17', 'eew ', '5', '1', '1', '38', '1', null, null, ' ws ', ' sw ', '2017-07-17 12:20:45');
INSERT INTO `bug` VALUES ('18', '142643', '5', '1', '4', '38', '1', null, null, ' Sfed ', ' !Fwe ', '2017-07-17 12:23:34');

-- ----------------------------
-- Table structure for bugfile
-- ----------------------------
DROP TABLE IF EXISTS `bugfile`;
CREATE TABLE `bugfile` (
  `bugfile_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(500) NOT NULL,
  `bug_id` int(11) NOT NULL,
  `creat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bugfile_id`),
  KEY `FK_File_BUG` (`bug_id`),
  CONSTRAINT `bugfile_ibfk_1` FOREIGN KEY (`bug_id`) REFERENCES `bug` (`bug_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bugfile
-- ----------------------------
INSERT INTO `bugfile` VALUES ('1', 'c68eb301-9b9b-4f10-a462-6871b07a0d98.jpg', '15', '2017-07-17 12:19:17');
INSERT INTO `bugfile` VALUES ('2', '556e4e8f-6054-47b0-bb09-ea386e0da439.jpg', '17', '2017-07-17 12:20:54');
INSERT INTO `bugfile` VALUES ('3', '82298a3c-ea62-446c-8ad9-2194d2025155.mp4', '18', '2017-07-17 12:24:18');
INSERT INTO `bugfile` VALUES ('4', '211db3b9-d3be-46dc-8fcb-2afb28f33b69.jpg', '15', '2017-07-17 12:26:24');

-- ----------------------------
-- Table structure for bugseverity
-- ----------------------------
DROP TABLE IF EXISTS `bugseverity`;
CREATE TABLE `bugseverity` (
  `bugseverity_id` int(11) NOT NULL AUTO_INCREMENT,
  `severity` varchar(20) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`bugseverity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bugseverity
-- ----------------------------

-- ----------------------------
-- Table structure for ponderance
-- ----------------------------
DROP TABLE IF EXISTS `ponderance`;
CREATE TABLE `ponderance` (
  `pon_id` int(11) NOT NULL AUTO_INCREMENT,
  `pon_name` varchar(255) NOT NULL,
  `pon_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ponderance
-- ----------------------------
INSERT INTO `ponderance` VALUES ('5', '严重', '严重');
INSERT INTO `ponderance` VALUES ('6', '不严重', '不严重');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(300) NOT NULL,
  `pro_description` text NOT NULL,
  `pro_version` varchar(200) DEFAULT NULL,
  `pro_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('38', 'web测试', 'web测试', null, 'http://www.baidu.com');
INSERT INTO `project` VALUES ('39', '21', '1232', '1.2', 'htts\r\np://www.so.com');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `result_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `result_name` varchar(255) NOT NULL,
  `result_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('00000000001', '复现成功', '复现成功');
INSERT INTO `result` VALUES ('00000000002', '复现失败', '复现失败');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_num` varchar(12) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `register_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `useraddress` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `userscore` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `hostnumber` int(11) DEFAULT NULL,
  `handlernumber` int(11) DEFAULT NULL,
  `signnumber` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin1', 'admin', '123456', '1', '2017-07-17 23:50:45', 'scs', '12', '4', '15882679987', '1', '4', '0', '0', '1', '2725144703@qq.com');
INSERT INTO `user` VALUES ('2', '5120152558', '敖海洋', '123456', '1', '2017-07-16 18:16:36', '四川省', '0', '6', '15882679987', '9ced5437-3791-4730-a352-9df55ea64774.jpg', '5', '1', '0', '你好', '2725144703@qq.com');
INSERT INTO `user` VALUES ('4', '5120152556', '123456', '123456', '2', '2017-07-18 00:14:30', '789', '10', '1', '18281577252', 'bf588c00-dff7-4775-8bc0-8c8b6725b839.jpg', '1', null, null, '12', '2725144703@qq.com');
