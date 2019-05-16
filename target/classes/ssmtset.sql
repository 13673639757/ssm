/*
Navicat MySQL Data Transfer

Source Server         : cs
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : ssmtset

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-07-24 16:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '30', '123456');
INSERT INTO `user` VALUES ('3', 'cs', '25', '123456');
INSERT INTO `user` VALUES ('4', 'qw', '12', '123');
INSERT INTO `user` VALUES ('5', 'de', '34', '123456');
INSERT INTO `user` VALUES ('7', 'gd', '27', '123');
INSERT INTO `user` VALUES ('8', 'qwe', '25', '123');
INSERT INTO `user` VALUES ('9', '123', '12', '123');
INSERT INTO `user` VALUES ('10', 'csa', '22', '123');
INSERT INTO `user` VALUES ('11', 'asda', '11', '123');
