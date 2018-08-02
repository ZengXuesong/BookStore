/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2018-08-02 09:02:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '淘宝', '贵州');
INSERT INTO `admin` VALUES ('3', '天猫', '四川');
INSERT INTO `admin` VALUES ('4', '天猫', '四川');
INSERT INTO `admin` VALUES ('5', '天猫', '四川');
INSERT INTO `admin` VALUES ('6', '天猫', '四川');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image_url` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `descript` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `browse_times` int(11) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '《小猪佩奇》', '1', '450', '1.jpg', '《小猪佩奇》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('2', '《绿野仙踪》', '1', '400', '2.jpg', '《绿野仙踪》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('3', '《安徒生童话》', '1', '500', '3.jpg', '《安徒生童话》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('4', '《高数18讲》', '2', '450', '4.jpg', '《高数18讲》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('5', '《念念有词》', '2', '450', '5.jpg', '《念念有词》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('6', '《线性代数》', '2', '50', '6.jpg', '《线性代数》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('7', '《遮天》', '3', '45', '7.jpg', '《遮天》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('8', '《长生界》', '3', '40', '8.jpg', '《长生界》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('9', '《天线宝宝》', '3', '80', '9.jpg', '《天线宝宝》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('10', '《平凡的世界》', '4', '45', '10.jpg', '《平凡的世界》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('11', '《人间词话》', '4', '50', '11.jpg', '人间词话（近代极富盛名的词话著作，集编、校、释、评于一体，赏读于一书）（1-9年级必读书单）中国二十世纪著名的诗词美学经典，深受', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('12', '《浮生六记》', '4', '40', '12.jpg', '《浮生六记》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('13', '《苏东坡传》', '5', '40', '13.jpg', '《苏东坡传》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('14', '《高卢战纪》', '5', '50', '14.jpg', '《高卢战纪》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('15', '《我的一生略小于美国》', '5', '40', '15.jpg', '《我的一生略小于美国》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('16', '《鬼谷子的局》', '6', '45', '16.jpg', '《鬼谷子的局》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('17', '《汗青堂丛书018》', '6', '40', '17.jpg', '《汗青堂丛书018》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('18', '《美国秩序的根基》', '6', '40', '18.jpg', '《美国秩序的根基》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('19', '《利用Python进行数据》', '7', '23', '19.jpg', '《利用Python进行数据》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('20', '《Java从入门到精通》', '7', '54', '20.jpg', '《Java从入门到精通》', '1', '125', '25', '1', '2018-07-30 14:53:24');
INSERT INTO `book` VALUES ('21', '《区块链原理、设计与》', '7', '32', '21.jpg', '《区块链原理、设计与》', '1', '125', '25', '1', '2018-07-30 14:53:24');

-- ----------------------------
-- Table structure for `book_detail`
-- ----------------------------
DROP TABLE IF EXISTS `book_detail`;
CREATE TABLE `book_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `publish_home` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `all_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('15', '1', '6', '6', '300');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `all_price` double DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '1', '21', '12', '2018-08-01 19:53:31', 'lch', '分为氛围', '18275128836', '384', '分为人 它额而天太热二俄国 ', '1');

-- ----------------------------
-- Table structure for `search`
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `browse_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of search
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '童书');
INSERT INTO `type` VALUES ('2', '教辅');
INSERT INTO `type` VALUES ('3', '小说');
INSERT INTO `type` VALUES ('4', '文学');
INSERT INTO `type` VALUES ('5', '传记');
INSERT INTO `type` VALUES ('6', '历史');
INSERT INTO `type` VALUES ('7', '科技');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lch', '123456', '18744723124', '1', '1524320242@qq.com', null, null, null);
INSERT INTO `user` VALUES ('2', '123', '123', '13595362271', null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'leica', '123456', '13595362272', '0', '', '2018-07-29 17:03:38', '2018-07-29 17:03:38', '0');
INSERT INTO `user` VALUES ('4', 'leihong', '123456', '18275128836', '0', '12skgdjbasuig', '2018-08-01 23:53:50', '2018-08-01 23:53:50', '0');
