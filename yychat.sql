/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : yychat

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-05-18 23:44:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `masteruser` varchar(20) DEFAULT NULL,
  `slaveuser` varchar(20) DEFAULT NULL,
  `relationtype` varchar(2) DEFAULT NULL COMMENT '"1"表示好友\r\n“2”表示陌生人',
  KEY `masteruser` (`masteruser`),
  KEY `slaveuser` (`slaveuser`),
  CONSTRAINT `relation_ibfk_1` FOREIGN KEY (`masteruser`) REFERENCES `user` (`username`),
  CONSTRAINT `relation_ibfk_2` FOREIGN KEY (`slaveuser`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('pdh', '大海', '1');
INSERT INTO `relation` VALUES ('pdh', 'pdh1', '1');
INSERT INTO `relation` VALUES ('pdh', 'pdh2', '1');
INSERT INTO `relation` VALUES ('pdh', 'pdh3', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'pdh', '123456');
INSERT INTO `user` VALUES ('2', '大海', '123456');
INSERT INTO `user` VALUES ('3', 'pdh1', '123456');
INSERT INTO `user` VALUES ('4', 'pdh2', '123456');
INSERT INTO `user` VALUES ('5', 'pdh3', '123456');

-- ----------------------------
-- Table structure for yychat
-- ----------------------------
DROP TABLE IF EXISTS `yychat`;
CREATE TABLE `yychat` (
  `/*` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yychat
-- ----------------------------
INSERT INTO `yychat` VALUES ('Navicat MySQL Data Transfer');
INSERT INTO `yychat` VALUES (null);
INSERT INTO `yychat` VALUES ('Source Server         : mysql1');
INSERT INTO `yychat` VALUES ('Source Server Version : 50624');
INSERT INTO `yychat` VALUES ('Source Host           : 127.0.0.1:3306');
INSERT INTO `yychat` VALUES ('Source Database       : yychat');
INSERT INTO `yychat` VALUES (null);
INSERT INTO `yychat` VALUES ('Target Server Type    : MYSQL');
INSERT INTO `yychat` VALUES ('Target Server Version : 50624');
INSERT INTO `yychat` VALUES ('File Encoding         : 65001');
INSERT INTO `yychat` VALUES (null);
INSERT INTO `yychat` VALUES ('Date: 2019-05-02 19:53:01');
INSERT INTO `yychat` VALUES ('*/');
INSERT INTO `yychat` VALUES (null);
INSERT INTO `yychat` VALUES ('SET FOREIGN_KEY_CHECKS=0;');
INSERT INTO `yychat` VALUES (null);
INSERT INTO `yychat` VALUES ('-- ----------------------------');
INSERT INTO `yychat` VALUES ('-- Table structure for relationship');
INSERT INTO `yychat` VALUES ('-- ----------------------------');
INSERT INTO `yychat` VALUES ('DROP TABLE IF EXISTS `relationship`;');
INSERT INTO `yychat` VALUES ('CREATE TABLE `relationship` (');
INSERT INTO `yychat` VALUES ('  `masteruser` varchar(20) DEFAULT NULL,');
INSERT INTO `yychat` VALUES ('  `slaveuser` varchar(20) DEFAULT NULL,');
INSERT INTO `yychat` VALUES ('  `relationtype` varchar(2) DEFAULT NULL COMMENT \'1\"表示好友\\r\\n“2”表示陌生人\',\r\n  KEY `masteruser` (`masteruser`),\r\n  KEY `slaveuser` (`slaveuser`),\r\n  CONSTRAINT `relationship_ibfk_1` FOREIGN KEY (`masteruser`) REFERENCES `user` (`username`),\r\n  CONSTRAINT `rela');
