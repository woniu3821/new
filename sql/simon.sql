/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : simon

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-04-11 21:36:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_table`
-- ----------------------------
DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `company` text NOT NULL,
  `groups` text NOT NULL,
  `organize` text NOT NULL,
  `team` text,
  `outfites` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_table
-- ----------------------------
INSERT INTO `admin_table` VALUES ('1', '[{\"njxs\":\"南京新生\"},{\"whxs\":\"武汉新生\"},{\"gzxs\":\"广州新生\"},{\"hfxs\":\"合肥新生\"}]', '[{\"path\":\"/creat\",\"name\":\"任务管理\",\"icon\":\"el-icon-edit-outline\",\"child\":[{\"name\":\"新建任务\",\"path\":\"/creat/build\"},{\"name\":\"已建任务\",\"path\":\"/creat/created\"},{\"name\":\"任务统计\",\"path\":\"/creat/census\"}]},{\"path\":\"/schedule\",\"name\":\"日程管理\",\"icon\":\"el-icon-bell\"},{\"path\":\"/dailylog\",\"name\":\"工作日志\",\"icon\":\"el-icon-date\"},{\"path\":\"/setting\",\"name\":\"系统设置\",\"icon\":\"el-icon-setting\",\"child\":[{\"name\":\"用户管理\",\"path\":\"/setting/list\"},{\"name\":\"权限管理\",\"path\":\"/setting/authority\"},{\"name\":\"组织管理\",\"path\":\"/setting/organize\"}]}]', '[{\"wangluobu\":[{\"chengxuzu\":\"程序组\"},{\"meigongzu\":\"美工组\"},{\"nanjing\":\"南京竞价\"},{\"wuhan\":\"武汉竞价\"},{\"shenzhen\":\"深圳竞价\"},{\"guangzhou\":\"广州竞价\"}]},{\"youhuabu\":[{\"yhzy\":\"优化专员\"},{\"biaji\":\"编辑\"}]}]', '[{\"nanjing\":[{\"nanjing1\":\"南京1部\"},{\"nanjing2\":\"南京2部\"},{\"nanjing3\":\"南京3部\"}]},{\"wuhan\":[{\"wuhan1\":\"武汉1部\"},{\"wuhan2\":\"武汉2部\"}]}]', '[{\"value\":\"zhinan\",\"label\":\"网络部\",\"children\":[{\"value\":\"shejiyuanze\",\"label\":\"程序组\",\"children\":[{\"value\":\"yizhi\",\"label\":\"沈涛\"},{\"value\":\"fankui\",\"label\":\"李先京\"},{\"value\":\"xiaolv\",\"label\":\"王应红\"},{\"value\":\"kekong\",\"label\":\"李月娥\"}]},{\"value\":\"daohang\",\"label\":\"导航\",\"children\":[{\"value\":\"cexiangdaohang\",\"label\":\"侧向导航\"},{\"value\":\"dingbudaohang\",\"label\":\"顶部导航\"}]}]},{\"value\":\"zhinan\",\"label\":\"优化部\",\"children\":[{\"value\":\"shejiyuanze\",\"label\":\"程序组\",\"children\":[{\"value\":\"yizhi\",\"label\":\"沈涛\"},{\"value\":\"fankui\",\"label\":\"李先京\"},{\"value\":\"xiaolv\",\"label\":\"李洁\"},{\"value\":\"kekong\",\"label\":\"田金喜\"}]},{\"value\":\"daohang\",\"label\":\"导航\",\"children\":[{\"value\":\"cexiangdaohang\",\"label\":\"侧向导航\"},{\"value\":\"dingbudaohang\",\"label\":\"导航1\"}]}]}]');

-- ----------------------------
-- Table structure for `authority_table`
-- ----------------------------
DROP TABLE IF EXISTS `authority_table`;
CREATE TABLE `authority_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `fid` tinyint(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `orders` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority_table
-- ----------------------------
INSERT INTO `authority_table` VALUES ('48', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '11', '', '10');
INSERT INTO `authority_table` VALUES ('49', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '12', '', '2');
INSERT INTO `authority_table` VALUES ('50', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '13', '', '3');
INSERT INTO `authority_table` VALUES ('51', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '14', '', '4');
INSERT INTO `authority_table` VALUES ('52', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '15', '', '5');
INSERT INTO `authority_table` VALUES ('53', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '1', '', '6');
INSERT INTO `authority_table` VALUES ('54', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '5', '', '7');
INSERT INTO `authority_table` VALUES ('55', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '6', '', '8');
INSERT INTO `authority_table` VALUES ('56', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '7', '', '9');
INSERT INTO `authority_table` VALUES ('57', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '3', '', '15');
INSERT INTO `authority_table` VALUES ('58', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '8', '', '11');
INSERT INTO `authority_table` VALUES ('59', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '10', '', '12');
INSERT INTO `authority_table` VALUES ('60', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '9', '', '13');
INSERT INTO `authority_table` VALUES ('61', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '4', '', '14');
INSERT INTO `authority_table` VALUES ('62', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '2', '', '15');
INSERT INTO `authority_table` VALUES ('63', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '11', '', '10');
INSERT INTO `authority_table` VALUES ('64', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '12', '', '2');
INSERT INTO `authority_table` VALUES ('65', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '13', '', '3');
INSERT INTO `authority_table` VALUES ('66', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '14', '', '4');
INSERT INTO `authority_table` VALUES ('67', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '15', '', '5');
INSERT INTO `authority_table` VALUES ('68', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '1', '', '6');
INSERT INTO `authority_table` VALUES ('69', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '5', '', '7');
INSERT INTO `authority_table` VALUES ('70', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '6', '', '8');
INSERT INTO `authority_table` VALUES ('71', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '7', '', '9');
INSERT INTO `authority_table` VALUES ('72', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '3', '', '1');
INSERT INTO `authority_table` VALUES ('73', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '8', '', '11');
INSERT INTO `authority_table` VALUES ('74', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '10', '', '12');
INSERT INTO `authority_table` VALUES ('75', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '9', '', '13');
INSERT INTO `authority_table` VALUES ('76', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '4', '', '14');
INSERT INTO `authority_table` VALUES ('77', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '2', '', '15');
INSERT INTO `authority_table` VALUES ('78', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '11', '', '1');
INSERT INTO `authority_table` VALUES ('79', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '12', '', '2');
INSERT INTO `authority_table` VALUES ('80', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '13', '', '3');
INSERT INTO `authority_table` VALUES ('81', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '14', '', '4');
INSERT INTO `authority_table` VALUES ('82', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '15', '', '5');
INSERT INTO `authority_table` VALUES ('83', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '1', '', '6');
INSERT INTO `authority_table` VALUES ('84', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '5', '', '7');
INSERT INTO `authority_table` VALUES ('85', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '6', '', '8');
INSERT INTO `authority_table` VALUES ('86', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '7', '', '9');
INSERT INTO `authority_table` VALUES ('87', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '3', '', '10');
INSERT INTO `authority_table` VALUES ('88', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '8', '', '11');
INSERT INTO `authority_table` VALUES ('89', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '10', '', '12');
INSERT INTO `authority_table` VALUES ('90', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '9', '', '13');
INSERT INTO `authority_table` VALUES ('91', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '4', '', '14');
INSERT INTO `authority_table` VALUES ('92', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '2', '', '15');
INSERT INTO `authority_table` VALUES ('93', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '11', '', '1');
INSERT INTO `authority_table` VALUES ('94', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '12', '', '2');
INSERT INTO `authority_table` VALUES ('95', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '13', '', '3');
INSERT INTO `authority_table` VALUES ('96', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '14', '', '4');
INSERT INTO `authority_table` VALUES ('97', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '15', '', '5');
INSERT INTO `authority_table` VALUES ('98', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '1', '', '6');
INSERT INTO `authority_table` VALUES ('99', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '5', '', '7');
INSERT INTO `authority_table` VALUES ('100', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '6', '', '8');
INSERT INTO `authority_table` VALUES ('101', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '7', '', '9');
INSERT INTO `authority_table` VALUES ('102', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '3', '', '10');
INSERT INTO `authority_table` VALUES ('103', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '8', '', '11');
INSERT INTO `authority_table` VALUES ('104', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '10', '', '12');
INSERT INTO `authority_table` VALUES ('105', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '9', '', '13');
INSERT INTO `authority_table` VALUES ('106', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '4', '', '14');
INSERT INTO `authority_table` VALUES ('107', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '2', '', '15');

-- ----------------------------
-- Table structure for `framework_table`
-- ----------------------------
DROP TABLE IF EXISTS `framework_table`;
CREATE TABLE `framework_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `path` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `end` tinyint(4) DEFAULT NULL,
  `orders` tinyint(4) DEFAULT NULL,
  `census` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of framework_table
-- ----------------------------
INSERT INTO `framework_table` VALUES ('1', '1', '0', '/creat', '任务管理', 'el-icon-edit-outline', null, null, '0', '6', '0');
INSERT INTO `framework_table` VALUES ('2', '2', '0', '/schedule', '日程管理', 'el-icon-bell', null, null, '1', '15', '0');
INSERT INTO `framework_table` VALUES ('3', '3', '0', '/setting', '系统设置', 'el-icon-setting', '', null, '0', '10', '0');
INSERT INTO `framework_table` VALUES ('4', '4', '0', '/dailylog', '工作日志', 'el-icon-date', null, null, '1', '14', '0');
INSERT INTO `framework_table` VALUES ('5', '5', '1', '/build', '新建任务', null, null, null, '0', '7', '0');
INSERT INTO `framework_table` VALUES ('6', '6', '1', '/created', '已建任务', null, null, null, '0', '8', '0');
INSERT INTO `framework_table` VALUES ('7', '7', '1', '/census', '任务统计', null, null, null, '0', '9', '0');
INSERT INTO `framework_table` VALUES ('8', '8', '3', '/usersetting', '用户管理', null, null, null, '0', '11', '0');
INSERT INTO `framework_table` VALUES ('9', '9', '3', '/authority', '权限管理', null, '', '', '0', '13', '0');
INSERT INTO `framework_table` VALUES ('10', '10', '3', '/organize', '组织管理', null, '', '按钮1,按钮2,按钮3', '0', '12', '0');
INSERT INTO `framework_table` VALUES ('11', '11', '0', '/work', '我的任务', 'el-icon-tickets', null, '按钮2,按钮3,按钮4', '0', '1', '0');
INSERT INTO `framework_table` VALUES ('12', '12', '11', '/working', '当前任务', null, null, null, '0', '2', '1');
INSERT INTO `framework_table` VALUES ('13', '13', '11', '/waiting', '待接收任务', null, null, null, '0', '3', '1');
INSERT INTO `framework_table` VALUES ('14', '14', '11', '/overtimer', '超时任务', null, null, null, '0', '4', '0');
INSERT INTO `framework_table` VALUES ('15', '15', '11', '/finished', '已完成任务', null, null, null, '0', '5', '0');

-- ----------------------------
-- Table structure for `mission_table`
-- ----------------------------
DROP TABLE IF EXISTS `mission_table`;
CREATE TABLE `mission_table` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timebegain` int(11) NOT NULL,
  `timeend` int(11) NOT NULL,
  `peoples` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mission_table
-- ----------------------------
INSERT INTO `mission_table` VALUES ('126', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '3213213', '1523200107', '1522722600', '丁思慧,李月娥,崔涛', '3213213213');
INSERT INTO `mission_table` VALUES ('127', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '	 很高兴你能来学习这套Vue2.0视频课程	 很高兴你能来学习这套Vue2.0视频课程，现在越来越', '1523259616', '1524016800', '丁思慧,李月娥,张存财,王金刚,崔涛', '	\n很高兴你能来学习这套Vue2.0视频课程，');
INSERT INTO `mission_table` VALUES ('128', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', 'fgsfdsa', '1523253253', '1524018600', '崔涛', '很高兴你能来学习这套Vue2.0视频课程，现在越来越多的小公司开始使用Vue来作为前端开发框架了，而且Vue的生态也越来越好，无论你是前端的老手还是新手，都有必要认真并系统的学习，有可能的话尽量在工作中使用它了。\n\n学习这套课程你需要的前置知识：\n\nHTML的基础知识，你需要达到中级水平，写前端页面的结构代码完全没有问题。\nCSS的基础知识，最好做过半年以上的切图和布局，最好了解CSS3的知识。\nJavascript的基础知识，对基本语法掌握，这个要求不高，因为遇到难的我会在视频中讲解。\nnode.js初级知识，只需要会npm的使用和项目初始化就可以了\n如果你对上面三个知识还不了解，建议不要冒进学习，会影响你的学习热情。但你已经是科班出身或者在培训班毕业后想继续学习，是完全没有难度的。');
INSERT INTO `mission_table` VALUES ('129', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '范德萨发', '1523266734', '1523930400', '崔涛', '范德萨范德萨发');
INSERT INTO `mission_table` VALUES ('130', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '测试发顺丰大师傅', '1523323424', '1523323800', '崔涛', '时间测试');
INSERT INTO `mission_table` VALUES ('131', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '大萨达撒456146556', '1523327729', '1523932200', 'ceshi1,丁思慧,李月娥,张存财,王金刚,崔涛', '大萨达撒大所多');

-- ----------------------------
-- Table structure for `organize_table`
-- ----------------------------
DROP TABLE IF EXISTS `organize_table`;
CREATE TABLE `organize_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` varchar(64) NOT NULL,
  `parentid` varchar(64) DEFAULT NULL,
  `seter` varchar(64) DEFAULT NULL,
  `lastchange` int(11) DEFAULT NULL,
  `tags` varchar(20) DEFAULT NULL,
  `end` tinyint(4) DEFAULT NULL,
  `flag` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organize_table
-- ----------------------------
INSERT INTO `organize_table` VALUES ('4', '$2a$05$yLdr9li186X9OxsdQsBHkuGN3obqOxmRdoHl.OihoOkxLOmODVb9y', '', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '南京新生', '0', 'company');
INSERT INTO `organize_table` VALUES ('5', '$2a$05$.LQPEslHoQjh9dRjUWmgd.XapY67UVGu0jfJ8l0cCD0wa3.DOERCC', '$2a$05$yLdr9li186X9OxsdQsBHkuGN3obqOxmRdoHl.OihoOkxLOmODVb9y', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '网络部', '0', 'groups');
INSERT INTO `organize_table` VALUES ('6', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$.LQPEslHoQjh9dRjUWmgd.XapY67UVGu0jfJ8l0cCD0wa3.DOERCC', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序组', '0', 'organize');
INSERT INTO `organize_table` VALUES ('7', '$2a$05$vZy7f1tg0jYuEK56d9tCcuRGNvW0aFKBwN4dpofqh/d8zA7/ZEZlm', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序一部', '1', 'team');
INSERT INTO `organize_table` VALUES ('8', '$2a$05$xqQ0x3FHMU2GO5ZJO.1Aweug8Y1U4U2p3NdGvN9hd/w6PpKpFDuL6', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序二部', '1', 'team');
INSERT INTO `organize_table` VALUES ('9', '$2a$05$Hpi5kMTjyNY8JicgNkowues579l/XlyGxYqIWgulRm3HXRLiLG6JG', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序三部', '1', 'team');
INSERT INTO `organize_table` VALUES ('10', '$2a$05$dKNK1UfNyrZvc50T8B5Sju8RCHRxxZLrRkDCPNREmbg8klUTp/5Ta', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序四部', '1', 'team');
INSERT INTO `organize_table` VALUES ('11', '$2a$05$GZE03OLY6k1qx1Aysm/bXOhZ/MsGuzj/BCuJH0Dfm6syzNUJoXB0W', '$2a$05$SoJ6Hc7fHBJELRd9f95htenydGUzR9ve0mmguNZ/YsVxfluQ5ttWu', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '程序五部', '1', 'team');
INSERT INTO `organize_table` VALUES ('12', '$2a$05$je1iU1CpCCh9lavGHnlCOuntmNxlTWrl8zJe0vG7eB7PfNrWRra9S', '$2a$05$.LQPEslHoQjh9dRjUWmgd.XapY67UVGu0jfJ8l0cCD0wa3.DOERCC', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '竞价', '0', 'organize');
INSERT INTO `organize_table` VALUES ('13', '$2a$05$VEoYhNKnaQulpe7FQ14Lte6koWEZFWwENaqxI0gNsKBEoKSX3oDru', '$2a$05$je1iU1CpCCh9lavGHnlCOuntmNxlTWrl8zJe0vG7eB7PfNrWRra9S', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '南京一部', '1', 'team');
INSERT INTO `organize_table` VALUES ('14', '$2a$05$YHTlD3ze.5bbHy9v84blLedVh0viD9X5q7URJmOM3Yhc5Bi34dWLO', '$2a$05$.LQPEslHoQjh9dRjUWmgd.XapY67UVGu0jfJ8l0cCD0wa3.DOERCC', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '美工', '1', 'organize');
INSERT INTO `organize_table` VALUES ('15', '$2a$05$KS3xeQEiz745sVhTsWBImuD4GZzxhDU8GdPAr5Y6M7IND019MnTQO', '', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '武汉新生', '0', 'company');
INSERT INTO `organize_table` VALUES ('16', '$2a$05$eGlyqiD0KY.rP/f3NzRyLuogGcrOGbg2SaM.p3tdi/y3BO8IbS6hW', '', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '成都新生', '1', 'company');
INSERT INTO `organize_table` VALUES ('17', '$2a$05$offENtHVJXsZwy6kFV8fz.xIxdO0gzgGwi5hj7s/4PsfC/9NB6JMO', '', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '上海新生', '0', 'company');
INSERT INTO `organize_table` VALUES ('18', '$2a$05$v2W2fHeB1XAfx8EIkMhfmeMb1ysasLAJ1vrkkmB9eGXUyKOVT8Px.', '$2a$05$KS3xeQEiz745sVhTsWBImuD4GZzxhDU8GdPAr5Y6M7IND019MnTQO', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '门诊部', '1', 'groups');
INSERT INTO `organize_table` VALUES ('19', '$2a$05$dPPnlG./Sv2Rn3ORcvVeneYpRKYHISHCq4GJNwWFTMMzpUqAeQtWm', '$2a$05$offENtHVJXsZwy6kFV8fz.xIxdO0gzgGwi5hj7s/4PsfC/9NB6JMO', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '网络部', '0', 'groups');
INSERT INTO `organize_table` VALUES ('20', '$2a$05$k1Ti8YkL2kTt6dQtvovrT.bMS2ZUcphVJTl10RiBQy21nwhtT0gM6', '$2a$05$dPPnlG./Sv2Rn3ORcvVeneYpRKYHISHCq4GJNwWFTMMzpUqAeQtWm', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '上海竞价', '1', 'organize');
INSERT INTO `organize_table` VALUES ('21', '$2a$05$uduRzd/DHseYqVt2tj6Oo.soiXYMqImoIYLzAiMyf0DhNlnoVeA3K', '$2a$05$dPPnlG./Sv2Rn3ORcvVeneYpRKYHISHCq4GJNwWFTMMzpUqAeQtWm', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '门诊医生', '1', 'organize');
INSERT INTO `organize_table` VALUES ('22', '$2a$05$S1lvvQfk3zugT1fIVt6BjemuN8gmsm/m97y.alHljgwxikMp2DXt.', '', '$2a$05$pHEU9rqznUfVuHGtHHVrAO5JxWtjXoEVU.ZLsu8lqQy9tIx3SN4NW', '2147483647', '福州新生', '1', 'company');

-- ----------------------------
-- Table structure for `task_table`
-- ----------------------------
DROP TABLE IF EXISTS `task_table`;
CREATE TABLE `task_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touser` varchar(64) NOT NULL,
  `missionid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `accepttime` int(11) NOT NULL,
  `intime` tinyint(4) NOT NULL,
  `complatetime` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_table
-- ----------------------------
INSERT INTO `task_table` VALUES ('50', '$2a$05$cCB8ypmSes6CcO2wi8RngOIS8.GkM1RkMXQOCKUyrcPdw3loTJBD6', '126', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('51', '$2a$05$l2ubiLrx45GcQElXVNp7nOIZYE7I9rdj22I9fJtlLVPiS48QwuuBC', '126', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('52', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '126', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('66', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '128', '1', '1523447862', '1', '1523448044');
INSERT INTO `task_table` VALUES ('81', '$2a$05$cCB8ypmSes6CcO2wi8RngOIS8.GkM1RkMXQOCKUyrcPdw3loTJBD6', '127', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('82', '$2a$05$l2ubiLrx45GcQElXVNp7nOIZYE7I9rdj22I9fJtlLVPiS48QwuuBC', '127', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('83', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '127', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('84', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '127', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('85', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '127', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('89', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '129', '1', '1523447864', '0', '0');
INSERT INTO `task_table` VALUES ('91', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '130', '1', '1523447866', '0', '0');
INSERT INTO `task_table` VALUES ('92', '$2a$05$VnYSus7WbekLxzdi0AJtT.ZTWBrLzK/fZLt2jGEw5kfHiFhJExq2y', '131', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('93', '$2a$05$cCB8ypmSes6CcO2wi8RngOIS8.GkM1RkMXQOCKUyrcPdw3loTJBD6', '131', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('94', '$2a$05$l2ubiLrx45GcQElXVNp7nOIZYE7I9rdj22I9fJtlLVPiS48QwuuBC', '131', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('95', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '131', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('96', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '131', '0', '0', '0', '0');
INSERT INTO `task_table` VALUES ('97', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '131', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `user_table`
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `outfit` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `disable` tinyint(4) NOT NULL,
  `working` tinyint(4) NOT NULL,
  `frames` varchar(64) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('35', '$2a$05$VnYSus7WbekLxzdi0AJtT.ZTWBrLzK/fZLt2jGEw5kfHiFhJExq2y', 'ceshi1', '$2a$05$U/Z9FYqekpq02p7xdv8jNOjzMmIeFWxuA06kstYNCkmU8DsgL20ly', '$2a$05$GZE03OLY6k1qx1Aysm/bXOhZ/MsGuzj/BCuJH0Dfm6syzNUJoXB0W', '0', '0', '0', '');
INSERT INTO `user_table` VALUES ('36', '$2a$05$cCB8ypmSes6CcO2wi8RngOIS8.GkM1RkMXQOCKUyrcPdw3loTJBD6', '丁思慧', '$2a$05$kE6gqGItPOBucezD454qyukJVvWEW3uNmFEG50.9QsogwJphHtT5y', '$2a$05$YHTlD3ze.5bbHy9v84blLedVh0viD9X5q7URJmOM3Yhc5Bi34dWLO', '0', '0', '0', '1,2,3');
INSERT INTO `user_table` VALUES ('37', '$2a$05$l2ubiLrx45GcQElXVNp7nOIZYE7I9rdj22I9fJtlLVPiS48QwuuBC', '李月娥', '$2a$05$P0kOWve0.szLVasKMDdfc.9rEcbP1MGngVYPENT8SDlxoKC8He9S.', '$2a$05$vZy7f1tg0jYuEK56d9tCcuRGNvW0aFKBwN4dpofqh/d8zA7/ZEZlm', '0', '0', '0', '11,12,13,14,15,1,5,6,7,3,8,10,9,4,2');
INSERT INTO `user_table` VALUES ('43', '$2a$05$6acMc28K1hJa2.sBWm6yV.LF5/fAbkUL7xF9iUr8oo5RnDsUJfLq.', '张存财', '$2a$05$mPWzo3JbWpH3QrAUv6GM.OgJldTa/uGV/1zFc2ED0VYTDXFqwezX.', '$2a$05$Hpi5kMTjyNY8JicgNkowues579l/XlyGxYqIWgulRm3HXRLiLG6JG', '0', '0', '0', '11,12,13,14,15,1,5,6,7,3,8,10,4,2');
INSERT INTO `user_table` VALUES ('44', '$2a$05$jR7.Pbs25hHy6/ba.LHNcOK0DS6FT93AjpbD6w08QvT/QDcaNYBFe', '王金刚', '$2a$05$tMrM1fKwu65mWMNjcx9NYexrikN0dmUcUaVqpn1PX6eVZsv4/TZi.', '$2a$05$xqQ0x3FHMU2GO5ZJO.1Aweug8Y1U4U2p3NdGvN9hd/w6PpKpFDuL6', '0', '0', '0', '11,12,13,14,15,1,5,6,7,3,8,9,10');
INSERT INTO `user_table` VALUES ('45', '$2a$05$Wv9Nf.axeTHU7ldbT8JfieB/6DZHViCPWgYZ963wx.KObUVeK6o/e', '崔涛', '$2a$05$.PBKh6JoZuOhJ5IQN.IyI.4dvChTEC2b8gkyaD1H/WcCEQ.GezTEq', '$2a$05$vZy7f1tg0jYuEK56d9tCcuRGNvW0aFKBwN4dpofqh/d8zA7/ZEZlm', '0', '0', '0', '11,12,13,14,15,1,5,6,7,3,8,10,9,4,2');
INSERT INTO `user_table` VALUES ('46', '$2a$05$yXEGCcqioi5nBOc1.DPYfe7eydcEerdByT0Qk7h/1l54n6C3lyIsa', '朱星星', '$2a$05$/zcJ2wJ0.Cna/Duya6GjnO3czRLRHQ0tmrprVhTL.DqDgLqdtvsta', '$2a$05$dKNK1UfNyrZvc50T8B5Sju8RCHRxxZLrRkDCPNREmbg8klUTp/5Ta', '0', '0', '0', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15');
