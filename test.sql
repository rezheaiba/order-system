/*
Navicat MySQL Data Transfer

Source Server         : TEST
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-07-10 09:43:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bookid` int(10) NOT NULL,
  `bookcount` int(5) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  PRIMARY KEY (`bookid`),
  KEY `hui` (`userid`),
  CONSTRAINT `hui` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '30', '123');
INSERT INTO `book` VALUES ('2', '25', '456');
INSERT INTO `book` VALUES ('3', '18', '789');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `cardId` int(10) NOT NULL AUTO_INCREMENT,
  `cardInfo` varchar(30) DEFAULT NULL,
  `minister_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`cardId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('1', 'number1', '1');
INSERT INTO `card` VALUES ('2', 'number2', '2');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'USA');
INSERT INTO `country` VALUES ('2', 'England');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(20) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `id` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '化学', '2');
INSERT INTO `course` VALUES ('2', '物理', '3');
INSERT INTO `course` VALUES ('3', '英语', '5');

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES ('1', 'firguy', 'ps1', 'male', '24');
INSERT INTO `custom` VALUES ('2', 'secguy', 'ps2', 'boy', '23');
INSERT INTO `custom` VALUES ('3', 'secguy', 'ps2', 'boy', '23');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '鱼香肉', '15元', '好吃', '2018年07月29日 10:05:41');
INSERT INTO `food` VALUES ('3', '地三鲜', '10元', '好吃不上火', '2018年06月11日 01:02:37');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(10) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `goodsPrice` double(10,2) NOT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=20200727 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('20200723', '我的书', '100.00');
INSERT INTO `goods` VALUES ('20200724', '《孤独旅行家》', '29.00');
INSERT INTO `goods` VALUES ('20200725', '《快乐星球》', '3.00');
INSERT INTO `goods` VALUES ('20200726', '笔记本电脑', '5499.00');

-- ----------------------------
-- Table structure for match_student
-- ----------------------------
DROP TABLE IF EXISTS `match_student`;
CREATE TABLE `match_student` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `ranking` int(10) NOT NULL,
  `tID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of match_student
-- ----------------------------
INSERT INTO `match_student` VALUES ('10001', '姬云启1', '5', '20002');
INSERT INTO `match_student` VALUES ('10002', '姬云启2', '2', '20002');
INSERT INTO `match_student` VALUES ('10003', '姬云启3', '6', '20002');
INSERT INTO `match_student` VALUES ('10004', '姬云启4', '7', '20001');
INSERT INTO `match_student` VALUES ('10005', '姬云启5', '10', '20001');

-- ----------------------------
-- Table structure for match_teacher
-- ----------------------------
DROP TABLE IF EXISTS `match_teacher`;
CREATE TABLE `match_teacher` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `tname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tposition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `toption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of match_teacher
-- ----------------------------
INSERT INTO `match_teacher` VALUES ('20001', '导师甲', '教授', '软件学院教授，软件学院副教授', '基于移动互联网的软件设计与开发');
INSERT INTO `match_teacher` VALUES ('20002', '导师乙', '教授', '软件学院教授，软件学院副教授', '软件开发与测试');
INSERT INTO `match_teacher` VALUES ('20003', '导师丙', '教授', '软件学院教授，软件学院副教授', '软件可视化技术');
INSERT INTO `match_teacher` VALUES ('20004', '导师丁', '教授', '软件学院教授，软件学院副教授', '云计算与大数据分析');
INSERT INTO `match_teacher` VALUES ('20005', '导师戊', '教授', '软件学院教授，软件学院副教授', '公共服务平台的设计与运维技术');
INSERT INTO `match_teacher` VALUES ('20006', '导师己', '教授', '软件学院教授，软件学院副教授', '移动云计算与大数据技术及应用');

-- ----------------------------
-- Table structure for minister
-- ----------------------------
DROP TABLE IF EXISTS `minister`;
CREATE TABLE `minister` (
  `mid` int(5) NOT NULL AUTO_INCREMENT,
  `mname` varchar(20) DEFAULT NULL,
  `countryId` int(5) DEFAULT NULL,
  `cardid` int(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of minister
-- ----------------------------
INSERT INTO `minister` VALUES ('1', 'aaa', '1', '1');
INSERT INTO `minister` VALUES ('2', 'bbb', '1', '2');
INSERT INTO `minister` VALUES ('3', 'ccc', '1', '3');
INSERT INTO `minister` VALUES ('4', 'ddd', '2', '4');
INSERT INTO `minister` VALUES ('5', 'eee', '2', '5');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `name` varchar(50) DEFAULT NULL,
  `phoneNumber` int(20) NOT NULL,
  `myGoods` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `ordernumber` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('姬云启', '110', '我的书', '家', '4720', '2020-07-10');

-- ----------------------------
-- Table structure for sheet1
-- ----------------------------
DROP TABLE IF EXISTS `sheet1`;
CREATE TABLE `sheet1` (
  `ID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sheet1
-- ----------------------------
INSERT INTO `sheet1` VALUES ('120153405012', '张超越   ', '42');
INSERT INTO `sheet1` VALUES ('120153503011', '孔祥帅   ', '35');
INSERT INTO `sheet1` VALUES ('120173502002', '于小溪   ', '39');
INSERT INTO `sheet1` VALUES ('120173502003', '于洋  ', '4');
INSERT INTO `sheet1` VALUES ('120173502015', '王秋实   ', '6');
INSERT INTO `sheet1` VALUES ('120173502025', '邓王锋   ', '13');
INSERT INTO `sheet1` VALUES ('120173502031', '冉运环   ', '15');
INSERT INTO `sheet1` VALUES ('120173502033', '付豪  ', '33');
INSERT INTO `sheet1` VALUES ('120173502034', '白鸿洲   ', '23');
INSERT INTO `sheet1` VALUES ('120173502047', '刘陆洲   ', '1');
INSERT INTO `sheet1` VALUES ('120173502063', '孙志双   ', '30');
INSERT INTO `sheet1` VALUES ('120173502078', '李金泽   ', '9');
INSERT INTO `sheet1` VALUES ('120173502092', '李舒琪   ', '16');
INSERT INTO `sheet1` VALUES ('120173502097', '吴昊  ', '32');
INSERT INTO `sheet1` VALUES ('120173502101', '吴嘉昊   ', '21');
INSERT INTO `sheet1` VALUES ('120173502102', '何欢  ', '20');
INSERT INTO `sheet1` VALUES ('120173502103', '何琪炎   ', '37');
INSERT INTO `sheet1` VALUES ('120173502105', '佟烁  ', '24');
INSERT INTO `sheet1` VALUES ('120173502106', '佟浩  ', '3');
INSERT INTO `sheet1` VALUES ('120173502115', '张利丰   ', '2');
INSERT INTO `sheet1` VALUES ('120173502118', '张泳欣   ', '12');
INSERT INTO `sheet1` VALUES ('120173502119', '张振超   ', '10');
INSERT INTO `sheet1` VALUES ('120173502128', '陈序蓬   ', '26');
INSERT INTO `sheet1` VALUES ('120173502135', '林子贺   ', '27');
INSERT INTO `sheet1` VALUES ('120173502139', '岳家名   ', '17');
INSERT INTO `sheet1` VALUES ('120173502155', '钟江文   ', '5');
INSERT INTO `sheet1` VALUES ('120173502156', '钟佳慧   ', '14');
INSERT INTO `sheet1` VALUES ('120173502159', '姜富雄   ', '8');
INSERT INTO `sheet1` VALUES ('120173502160', '洪自强   ', '41');
INSERT INTO `sheet1` VALUES ('120173502164', '都书璠   ', '19');
INSERT INTO `sheet1` VALUES ('120173502170', '徐智男   ', '7');
INSERT INTO `sheet1` VALUES ('120173502171', '徐福源   ', '28');
INSERT INTO `sheet1` VALUES ('120173502176', '高晓庄   ', '17');
INSERT INTO `sheet1` VALUES ('120173502178', '郭雨彤   ', '25');
INSERT INTO `sheet1` VALUES ('120173502180', '陶晓伟   ', '38');
INSERT INTO `sheet1` VALUES ('120173502181', '姬云启   ', '22');
INSERT INTO `sheet1` VALUES ('120173502187', '盛永旭   ', '40');
INSERT INTO `sheet1` VALUES ('120173502194', '楚涛  ', '31');
INSERT INTO `sheet1` VALUES ('120173502197', '蔡义清   ', '11');
INSERT INTO `sheet1` VALUES ('120173502202', '管晓忆   ', '28');
INSERT INTO `sheet1` VALUES ('120173502206', '戴雨航   ', '33');
INSERT INTO `sheet1` VALUES ('120173502208', '魏伯燃   ', '36');
INSERT INTO `sheet1` VALUES ('120173502142            ', '周凯  ', '1');
INSERT INTO `sheet1` VALUES ('120173502210            ', '魏怡  ', '2');
INSERT INTO `sheet1` VALUES ('120173502120            ', '张悠扬   ', '3');
INSERT INTO `sheet1` VALUES ('120173502013            ', '王连超   ', '4');
INSERT INTO `sheet1` VALUES ('120173502090            ', '李崎铭   ', '5');
INSERT INTO `sheet1` VALUES ('120173502006            ', '马源  ', '6');
INSERT INTO `sheet1` VALUES ('120173502088            ', '李悦  ', '7');
INSERT INTO `sheet1` VALUES ('120173502173            ', '高山  ', '8');
INSERT INTO `sheet1` VALUES ('120173502112            ', '张芷贤   ', '9');
INSERT INTO `sheet1` VALUES ('120173502201            ', '裴明尧   ', '10');
INSERT INTO `sheet1` VALUES ('120173502014            ', '王凯璐   ', '11');
INSERT INTO `sheet1` VALUES ('120173502066            ', '孙秋生   ', '12');
INSERT INTO `sheet1` VALUES ('120173502036            ', '冯兴博   ', '13');
INSERT INTO `sheet1` VALUES ('120173502123            ', '张殿林   ', '14');
INSERT INTO `sheet1` VALUES ('120173502184            ', '曹欣宇   ', '15');
INSERT INTO `sheet1` VALUES ('120173502057            ', '池铄非   ', '16');
INSERT INTO `sheet1` VALUES ('120173502166            ', '顾振琦   ', '17');
INSERT INTO `sheet1` VALUES ('120173502174            ', '高华泽   ', '18');
INSERT INTO `sheet1` VALUES ('120173502052            ', '刘桂遥   ', '19');
INSERT INTO `sheet1` VALUES ('120173502145            ', '单瑞晴   ', '20');
INSERT INTO `sheet1` VALUES ('120173502038            ', '曲仕秀   ', '21');
INSERT INTO `sheet1` VALUES ('120173502024            ', '卞宇  ', '22');
INSERT INTO `sheet1` VALUES ('120173502199            ', '蔡晶晶   ', '23');
INSERT INTO `sheet1` VALUES ('120173502099            ', '吴佳轩   ', '24');
INSERT INTO `sheet1` VALUES ('120173502182            ', '黄文宣   ', '25');
INSERT INTO `sheet1` VALUES ('120173502027            ', '石欣然   ', '26');
INSERT INTO `sheet1` VALUES ('120173502140            ', '周长胜   ', '27');
INSERT INTO `sheet1` VALUES ('120173502080            ', '李泽雨   ', '28');
INSERT INTO `sheet1` VALUES ('120173502050            ', '刘金鹏   ', '29');
INSERT INTO `sheet1` VALUES ('120173502035            ', '丛生强   ', '30');
INSERT INTO `sheet1` VALUES ('120173502084            ', '李勃萱   ', '31');
INSERT INTO `sheet1` VALUES ('120173502007            ', '王上元   ', '32');
INSERT INTO `sheet1` VALUES ('120173502195            ', '鲍一鸣   ', '33');
INSERT INTO `sheet1` VALUES ('120173502028            ', '石硕  ', '34');
INSERT INTO `sheet1` VALUES ('120173502152            ', '胡伟  ', '35');
INSERT INTO `sheet1` VALUES ('120173502029            ', '卢珍妮   ', '36');
INSERT INTO `sheet1` VALUES ('120173502055            ', '闫萱  ', '37');
INSERT INTO `sheet1` VALUES ('120173502177            ', '郭乃铭   ', '38');
INSERT INTO `sheet1` VALUES ('120173502077            ', '李佳钰   ', '39');
INSERT INTO `sheet1` VALUES ('120173502185            ', '龚浩鸾   ', '40');
INSERT INTO `sheet1` VALUES ('120153503026            ', '代沙聪   ', '41');
INSERT INTO `sheet1` VALUES ('120173502111            ', '张乐新   ', '42');
INSERT INTO `sheet1` VALUES ('120173502209            ', '魏佳琦   ', '43');
INSERT INTO `sheet1` VALUES ('120154501008            ', '孙枫  ', '44');
INSERT INTO `sheet1` VALUES ('120163503085            ', '杨跃  ', '45');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', null, 'wefew');
INSERT INTO `student` VALUES ('3', 'qqq', 'n');
INSERT INTO `student` VALUES ('5', 'jjj', 'l');
INSERT INTO `student` VALUES ('7', 'yyy', 'n');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(10) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('111', 'aaa', '未订购');
INSERT INTO `user` VALUES ('123', 'aaa', '已订购');
INSERT INTO `user` VALUES ('222', '222', '已订购');
INSERT INTO `user` VALUES ('456', 'bbb', '未订购');
INSERT INTO `user` VALUES ('789', 'ccc', '未订购');
INSERT INTO `user` VALUES ('1234', '1111', '已订购');
INSERT INTO `user` VALUES ('4321', '4444', '已订购');
