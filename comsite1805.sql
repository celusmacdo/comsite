/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : comsite1805

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-11 18:14:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `username` varchar(20) DEFAULT NULL COMMENT '管理员名',
  `password` varchar(32) DEFAULT NULL COMMENT '管理员密码',
  `nickname` varchar(20) DEFAULT NULL COMMENT '管理员昵称',
  `mobile` varchar(11) DEFAULT NULL COMMENT '管理员电话',
  `email` varchar(20) DEFAULT NULL COMMENT '管理员电邮',
  `qq` varchar(20) DEFAULT NULL COMMENT '管理员qq',
  `sex` tinyint(2) DEFAULT NULL COMMENT '管理员性别',
  `login_time` int(10) unsigned DEFAULT NULL COMMENT '登录时间',
  `admin_portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `frozen` tinyint(1) unsigned DEFAULT '0' COMMENT '账号冻结：0代表可以使用，1代表不可以使用',
  `group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('3', 'red', '21232f297a57a5a743894a0e4a801fc3', '红彤彤', '13548038805', '1255388525@qq.com', '1255388525', '1', '1528872305', 'uploads/2018-06-13/tom460bb6ed9a51684b2946e2d6be05a6fb1528872357.jpg', '0', '2');
INSERT INTO `adminuser` VALUES ('4', 'bule', '21232f297a57a5a743894a0e4a801fc3', '蓝晶晶', '13548038805', '1255388525@qq.com', '1255388525', '0', '1529032118', 'uploads/2018-06-15/tom4ef1b3addf8a8932af05212ce4ee14cb1529032124.png', '0', '3');
INSERT INTO `adminuser` VALUES ('5', 'green', '21232f297a57a5a743894a0e4a801fc3', '原谅绿', '13548038805', '1255388525@qq.com', '1255388525', '0', '1531240847', 'uploads/2018-06-15/tom460bb6ed9a51684b2946e2d6be05a6fb1529032108.jpg', '0', '3');
INSERT INTO `adminuser` VALUES ('7', 'admin', '21232f297a57a5a743894a0e4a801fc3', '超级用户', '13548038805', '1366497414@qq.com', '1255388525', '0', '1530589731', 'uploads/2018-06-13/tome6ddbaa40e957c007050197603a7048a1528872086.jpg', '0', '1');
INSERT INTO `adminuser` VALUES ('13', 'admin01', 'c51cd8e64b0aeb778364765013df9ebe', 'admin01', '13537029904', '15654654654@qq.com', '15654654654', '0', '1531299966', 'uploads/2018-07-11/03d017d11b9018aba8f80cdc35aaad9b.png', '0', '3');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `title` varchar(255) DEFAULT NULL COMMENT '文章名称',
  `description` text COMMENT '文章描述',
  `content` text COMMENT '文章内容',
  `photo` varchar(255) DEFAULT NULL,
  `category_id` int(3) unsigned DEFAULT NULL COMMENT '文章分类',
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '传承中国文化，发扬企业精神', '<p>\r\n	企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n</p>\r\n<p>\r\n	价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n</p>\r\n企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。', '<img src=\"http://localhost/comsite1805/home/templates/img/009.png\" alt=\"\" /> <img src=\"http://localhost/comsite1805/home/templates/img/010.png\" alt=\"\" /> <img src=\"http://localhost/comsite1805/home/templates/img/011.png\" alt=\"\" /> \r\n<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>', 'uploads/2018-06-27/ec94d3aaa7f22fa3ca4fc8b91be24088.png', '5', 'about');
INSERT INTO `article` VALUES ('2', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>', null, '6', 'about');
INSERT INTO `article` VALUES ('3', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>', null, '7', 'about');
INSERT INTO `article` VALUES ('4', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>', null, '8', 'about');
INSERT INTO `article` VALUES ('5', '未来是我们的', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', '英利科技有限公司是一家专业从事太阳能光伏产品、LED照明应用产品的研发...', 'uploads/2018-06-29/d5aaca660e8ae9c023e3fdc116b98757.png', '3', 'index');
INSERT INTO `article` VALUES ('6', '企业文化', '企业文化，或称组织文化（Corporate Culture或Organizational Culture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。', '<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>', 'uploads/2018-06-29/d5aaca660e8ae9c023e3fdc116b98757.png', '19', 'contact');
INSERT INTO `article` VALUES ('8', '品质保证', '', '质量保证就是按照一定的标准生产产品的承诺、规范、标准。由国家质量技术监督局，提供产品质量技术标准，即生产配方、成分组成，包装及包装容量多少、运输及贮存中注意的问题，产品要注明生产日期、厂家名称、地址等，经国家质量技术监督局批准这个标准后，公司才能生产产品。国家质量技术监督局就会按这个标准检测生产出来的产品是否符合标准要求，以保证产品的质量符合社会大。为使人民确信某实体能满足质量要求，而在质量体系中实施并根据需要进行证实的全部有计划、有系统的活动，称为质量保证。显然，质量保证一般适用于有合同的场合，其主要目的是使用户确信产品或服务能满足规定', 'uploads/2018-07-11/03d017d11b9018aba8f80cdc35aaad9b.png', '29', null);
INSERT INTO `article` VALUES ('9', '无有售后', '', '在软件开发团队中，由于质量被视为软件产品的生命，而始终被人们所高度关注；然而在现实生活中，许多软件产品却时常陷入质量低下的旋涡，总是不尽人意。究其根源，在于这些软件产品对其质量内涵的把握，仅仅停留在减少软件运行错误、加强软件测试、避免软件缺陷的一般性层面，而对整个软件开发生命周期的全过程质量管理，缺乏总体架构。因此，在大型软件产品的开发与设计中，始终体现全过程质量管理思想的Rational\r\n                            Unified \r\nProcess™(简称RUP)和提供全生命周期支持的软件开发平台，则展现出强大的生命力和独特魅力。质量控制（QC）和质量保证是采取措施，以确保有缺陷的产品或服务的生产和设计符合性能要求。其中质量控制包括的原材料，部件，产品和组件的质量监管，与生产相关的服务和管理，生产和', 'uploads/2018-07-11/b01c2ce25e34f80d499f0488d034b00b.png', '29', null);

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(255) DEFAULT NULL COMMENT '图片名字',
  `banner_url` varchar(255) DEFAULT NULL COMMENT '轮播超链接',
  `banner_info` varchar(255) DEFAULT NULL COMMENT '图片地址路径',
  `category_id` int(20) unsigned DEFAULT NULL COMMENT '分类编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页轮播1', 'home/product.php', 'uploads/2018-06-27/4f0691cfe48c8f74fe413c7b92391ff4.jpg', '22');
INSERT INTO `banner` VALUES ('2', '首页轮播2', 'home/product.php', 'uploads/2018-06-27/f8d8153fb4f29d3af15276db22435d48.jpg', '22');
INSERT INTO `banner` VALUES ('3', '首页轮播3', 'home/product.php', 'uploads/2018-06-27/ac77a946706c680ac33c4a5036e3d810.jpg', '22');
INSERT INTO `banner` VALUES ('4', '关于我们图片', 'home/product.php', 'uploads/2018-07-04/17c72a9e640be14d4c6a11e8fdebd6a5.png', '23');
INSERT INTO `banner` VALUES ('5', '产品中心图片', 'home/product.php', 'uploads/2018-07-04/a0d39d3b813986f8761ffc6a121360d4.png', '24');
INSERT INTO `banner` VALUES ('6', '新闻中心图片', 'home/product.php', 'uploads/2018-07-04/e3b96eed0efa96d3b96ffa3bb5660bed.png', '25');
INSERT INTO `banner` VALUES ('7', '联系我们图片', 'home/product.php', 'uploads/2018-07-04/b34c89a589e833feaf8121bcfd2cddec.png', '26');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `category_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `c` varchar(10) DEFAULT NULL,
  `a` varchar(10) DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL COMMENT '父级编号',
  `is_show` int(1) unsigned DEFAULT '1',
  `admin` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '关于我们', 'about', 'index', '0', '1', '0');
INSERT INTO `category` VALUES ('2', '产品中心', 'product', 'index', '0', '1', '0');
INSERT INTO `category` VALUES ('3', '新闻中心', 'news', 'index', '0', '1', '0');
INSERT INTO `category` VALUES ('4', '联系我们', 'contact', 'index', '0', '1', '0');
INSERT INTO `category` VALUES ('5', '企业文化', 'about', 'index', '1', '1', '0');
INSERT INTO `category` VALUES ('6', '企业理念', 'about', 'index', '1', '1', '0');
INSERT INTO `category` VALUES ('7', '发展历程', 'about', 'index', '1', '1', '0');
INSERT INTO `category` VALUES ('8', '未来目标', 'about', 'index', '1', '1', '0');
INSERT INTO `category` VALUES ('9', '企业新闻', 'news', 'index', '3', '1', '0');
INSERT INTO `category` VALUES ('10', '行业动态', 'news', 'index', '3', '1', '0');
INSERT INTO `category` VALUES ('11', '实时资讯', 'news', 'index', '3', '1', '0');
INSERT INTO `category` VALUES ('12', '招聘新闻', 'news', 'index', '3', '1', '0');
INSERT INTO `category` VALUES ('13', '分体式', 'product', 'index', '2', '1', '0');
INSERT INTO `category` VALUES ('14', '平板型', 'product', 'index', '2', '1', '0');
INSERT INTO `category` VALUES ('15', '管型', 'product', 'index', '2', '1', '0');
INSERT INTO `category` VALUES ('16', '集热型', 'product', 'index', '2', '1', '0');
INSERT INTO `category` VALUES ('17', '网站地图', 'contact', 'index', '4', '1', '0');
INSERT INTO `category` VALUES ('18', '加入我们', 'contact', 'index', '4', '1', '0');
INSERT INTO `category` VALUES ('19', '在线资讯', 'contact', 'index', '4', '1', '0');
INSERT INTO `category` VALUES ('20', '建议投诉', 'contact', 'index', '4', '1', '0');
INSERT INTO `category` VALUES ('21', '轮播图', 'banner', 'index', '0', '0', '0');
INSERT INTO `category` VALUES ('22', '首页轮播', null, null, '21', '1', '0');
INSERT INTO `category` VALUES ('23', '关于我们图片', null, null, '21', '1', '0');
INSERT INTO `category` VALUES ('24', '产品中心图片', null, null, '21', '1', '0');
INSERT INTO `category` VALUES ('25', '新闻中心图片', null, null, '21', '1', '0');
INSERT INTO `category` VALUES ('26', '联系我们图片', null, null, '21', '1', '0');
INSERT INTO `category` VALUES ('29', '产品详情说明', null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `group_allow` text COMMENT '权限分配',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', '超级管理员', '[\"47\",\"51\",\"50\",\"49\",\"48\",\"33\",\"45\",\"36\",\"35\",\"34\",\"29\",\"44\",\"32\",\"31\",\"30\",\"25\",\"43\",\"28\",\"27\",\"26\",\"21\",\"42\",\"24\",\"23\",\"22\",\"17\",\"41\",\"20\",\"19\",\"18\",\"13\",\"40\",\"16\",\"15\",\"14\",\"9\",\"39\",\"12\",\"11\",\"10\",\"5\",\"38\",\"8\",\"7\",\"6\",\"1\",\"37\",\"4\",\"3\",\"2\"]');
INSERT INTO `group` VALUES ('2', '网站编辑', '[\"29\",\"44\",\"32\",\"31\",\"30\",\"25\",\"43\",\"28\",\"27\",\"26\",\"21\",\"42\",\"24\",\"23\",\"22\",\"17\",\"41\",\"20\",\"19\",\"18\",\"13\",\"40\",\"16\",\"15\",\"14\",\"9\",\"39\",\"12\",\"11\",\"10\",\"1\",\"37\",\"4\",\"3\",\"2\"]');
INSERT INTO `group` VALUES ('3', '普通管理员', '[\"25\",\"43\",\"28\",\"27\",\"26\",\"21\",\"42\",\"24\",\"23\",\"22\",\"17\",\"41\",\"20\",\"19\",\"18\",\"13\",\"40\",\"16\",\"15\",\"14\",\"9\",\"39\",\"12\",\"11\",\"10\"]');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接编号',
  `link_logo` varchar(255) DEFAULT NULL COMMENT 'logo图',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for `msg`
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `msg_user` varchar(255) DEFAULT NULL COMMENT '留言姓名',
  `msg_email` varchar(20) DEFAULT NULL COMMENT '留言电邮',
  `msg_content` text COMMENT '留言内容',
  `msg_phone` varchar(255) DEFAULT NULL COMMENT '留言电话',
  `msg_qq` varchar(255) DEFAULT NULL COMMENT '留言qq',
  `msg_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------

-- ----------------------------
-- Table structure for `nav`
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(50) DEFAULT NULL,
  `c` varchar(10) DEFAULT NULL,
  `a` varchar(10) DEFAULT NULL,
  `i` varchar(50) DEFAULT NULL,
  `pid` int(3) unsigned DEFAULT NULL,
  `is_show` int(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES ('1', '分类中心', 'category', 'index', 'glyphicon glyphicon-tasks', '0', '1');
INSERT INTO `nav` VALUES ('5', '管理员中心', 'adminuser', 'index', 'glyphicon glyphicon-user', '0', '1');
INSERT INTO `nav` VALUES ('9', '新闻中心', 'news', 'index', 'glyphicon glyphicon-file', '0', '1');
INSERT INTO `nav` VALUES ('13', '产品中心', 'product', 'index', 'glyphicon glyphicon-shopping-cart', '0', '1');
INSERT INTO `nav` VALUES ('17', '图片中心', 'banner', 'index', 'glyphicon glyphicon-picture', '0', '1');
INSERT INTO `nav` VALUES ('21', '文章中心', 'article', 'index', 'glyphicon glyphicon-book', '0', '1');
INSERT INTO `nav` VALUES ('25', '留言中心', 'contact', 'index', 'glyphicon glyphicon-comment', '0', '1');
INSERT INTO `nav` VALUES ('29', '前台设置', 'setup', 'index', 'glyphicon glyphicon-cog', '0', '1');
INSERT INTO `nav` VALUES ('30', '设置添加', 'setup', 'add', null, '29', '1');
INSERT INTO `nav` VALUES ('31', '设置删除', 'setup', 'del', null, '29', '0');
INSERT INTO `nav` VALUES ('32', '设置修改', 'setup', 'update', null, '29', '0');
INSERT INTO `nav` VALUES ('26', '留言添加', 'contact', 'add', null, '25', '1');
INSERT INTO `nav` VALUES ('27', '留言删除', 'contact', 'del', null, '25', '0');
INSERT INTO `nav` VALUES ('28', '留言修改', 'contact', 'update', null, '25', '0');
INSERT INTO `nav` VALUES ('22', '文章添加', 'article', 'add', null, '21', '1');
INSERT INTO `nav` VALUES ('23', '文章删除', 'article', 'del', null, '21', '0');
INSERT INTO `nav` VALUES ('24', '文章修改', 'article', 'update', null, '21', '0');
INSERT INTO `nav` VALUES ('18', '图片添加', 'banner', 'add', null, '17', '1');
INSERT INTO `nav` VALUES ('19', '图片删除', 'banner', 'del', null, '17', '0');
INSERT INTO `nav` VALUES ('20', '图片修改', 'banner', 'update', null, '17', '0');
INSERT INTO `nav` VALUES ('14', '产品添加', 'product', 'add', null, '13', '1');
INSERT INTO `nav` VALUES ('15', '产品删除', 'product', 'del', null, '13', '0');
INSERT INTO `nav` VALUES ('16', '产品修改', 'product', 'update', null, '13', '0');
INSERT INTO `nav` VALUES ('10', '新闻添加', 'news', 'add', null, '9', '1');
INSERT INTO `nav` VALUES ('11', '新闻删除', 'news', 'del', null, '9', '0');
INSERT INTO `nav` VALUES ('12', '新闻修改', 'news', 'update', null, '9', '0');
INSERT INTO `nav` VALUES ('6', '用户添加', 'adminuser', 'add', null, '5', '1');
INSERT INTO `nav` VALUES ('7', '用户删除', 'adminuser', 'del', null, '5', '0');
INSERT INTO `nav` VALUES ('8', '用户修改', 'adminuser', 'update', null, '5', '0');
INSERT INTO `nav` VALUES ('2', '分类添加', 'category', 'add', null, '1', '1');
INSERT INTO `nav` VALUES ('3', '分类删除', 'category', 'del', null, '1', '0');
INSERT INTO `nav` VALUES ('4', '分类修改', 'category', 'update', null, '1', '0');
INSERT INTO `nav` VALUES ('33', '后台导航', 'nav', 'index', 'glyphicon glyphicon-cog', '0', '1');
INSERT INTO `nav` VALUES ('34', '导航添加', 'nav', 'add', null, '33', '1');
INSERT INTO `nav` VALUES ('35', '导航删除', 'nav', 'del', null, '33', '0');
INSERT INTO `nav` VALUES ('36', '导航修改', 'nav', 'update', null, '33', '0');
INSERT INTO `nav` VALUES ('37', '分类查看', 'category', 'index', null, '1', '1');
INSERT INTO `nav` VALUES ('38', '用户查看', 'adminuser', 'index', null, '5', '1');
INSERT INTO `nav` VALUES ('39', '新闻查看', 'news', 'index', null, '9', '1');
INSERT INTO `nav` VALUES ('40', '产品查看', 'product', 'index', null, '13', '1');
INSERT INTO `nav` VALUES ('41', '图片查看', 'banner', 'index', null, '17', '1');
INSERT INTO `nav` VALUES ('42', '文章查看', 'article', 'index', null, '21', '1');
INSERT INTO `nav` VALUES ('43', '留言查看', 'contact', 'index', null, '25', '1');
INSERT INTO `nav` VALUES ('44', '设置查看', 'setup', 'index', null, '29', '1');
INSERT INTO `nav` VALUES ('45', '导航查看', 'nav', 'index', null, '33', '1');
INSERT INTO `nav` VALUES ('47', '权限管理', 'group', 'index', 'glyphicon glyphicon-cog', '0', '1');
INSERT INTO `nav` VALUES ('48', '权限添加', 'group', 'add', null, '47', '1');
INSERT INTO `nav` VALUES ('49', '权限删除', 'group', 'del', null, '47', '0');
INSERT INTO `nav` VALUES ('50', '权限修改', 'group', 'update', null, '47', '0');
INSERT INTO `nav` VALUES ('51', '权限查看', 'group', 'index', null, '47', '1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻编号',
  `title` varchar(20) DEFAULT NULL COMMENT '新闻标题',
  `description` text COMMENT '新闻描述',
  `content` text COMMENT '新闻内容',
  `ftime` int(10) unsigned DEFAULT NULL COMMENT '发布时间',
  `author` varchar(10) DEFAULT NULL COMMENT '发布人',
  `hits` varchar(10) DEFAULT '0' COMMENT '点击数',
  `news_photo` varchar(255) DEFAULT NULL COMMENT '新闻图片',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT '分类编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '英利携拳头产品亮相2017中国国际工博会', '                                                                                                                                                                                                英利携拳头产品亮相2017中国国际工博会                                                                                                                                                                ', '11月7日，2017年中国国际工业博览会在上海国家会展中心开幕。本届展会以“创新、智能、绿色”为主题，是目前世界上面积最大的会展综合体，英利携两大拳头产品——“熊猫”双面发电组件、智能无热斑组件参会。\r\n<div>\r\n	　　该展会是经国务院批准唯一具有评奖功能的大型工业博览会，已发展成为通过国际展览联盟UFI认证、中国装备制造业最具影响力的国际工业品牌展。英利携手科技部、河北省机械厅参展，设置新能源与电力电工展、科技创新展两个展位，分别推出英利完全拥有自主知识产权的两大拳头产品——“熊猫”双面发电组件和智能无热斑组件。\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920141946.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920143472.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920144598.jpg\" alt=\"\" border=\"0\" /><br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　据了解，英利“熊猫”发电组件是世界三大高效组件之一，具有超强的抗湿热、抗PID性能，已经建成的中国首个光伏“领跑者”示范项目——山西大同采煤沉陷区国家先进技术光伏示范基地项目中，就应用了50兆瓦“熊猫”双面发电组件，月均发电量达648.8万千瓦时，高出常规电站20%。此外，英利智能无热斑组件是行业首创的一项新技术，已实现量产。它彻底杜绝了热斑问题，寿命更长，系统安全性更高，比常规组件发电量高32%，可比常规组件节约25%土地面积，保证了光伏系统的最高收益。\r\n</div>\r\n<div>\r\n	　　“十九大报告明确提出了加快建设实体经济的指引，”英利参与这次展会的负责人赵丹表示，英利会继续响应国家“创新、智能、绿色”号召，高度重视光伏前瞻科技和关键技术研发，创造更多智能光伏组件，智能制造、绿色制造，为振兴实体经济和民族工业而不懈努力，为助力中国成为世界级制造强国而贡献力量。\r\n</div>', '1530676577', 'green', '0', 'uploads/2018-06-25/a70ad40ee8af29abbe623817a8946ace.png', '11');
INSERT INTO `news` VALUES ('3', '英利集团苗青应邀出席第九届清洁能源部长级', '英利集团苗青应邀出席第九届清洁能源部长级会议', '近日，第九届清洁能源部长级会议（CEM9）在哥本哈根举办，英利集团副董事长苗青应国际能源署（IEA）邀请参加会议。\r\n<div>\r\n	　　据介绍，清洁能源部长级会议是全球范围内清洁能源领域唯一常设部长级会议,旨在推动清洁能源技术政策和计划，分享经验教训和最佳实践，并鼓励向全球清洁能源经济过渡。本届大会以“迈向具有竞争力和创新性的低碳经济”为主题，由欧盟委员会与丹麦、瑞典、挪威、芬兰和北欧部长理事会联合主办。“英利在推动全球清洁能源产业发展中进行了很多有益尝试，并取得不少成绩，”苗青表示，英利始终坚持推动绿色可持续发展，致力为世界节能减排作出贡献。<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/20185309452037.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309453310.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309454196.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309455377.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853094606.jpg\" alt=\"\" border=\"0\" /><br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　5月24日上午，部长级20人闭门会议召开。中国能源局副局长李凡荣、丹麦能源部长Lars、德国联邦经济与能源部长Thorsten等十位国家部长代表，及英利、微软、宝马、宜家等十位企业和NGO组织成员代表出席会议，并围绕”如何使企业积极参与购买更多的可再生能源\"这一话题进行了深入探讨。会上，苗青指出，虽然跨国企业都会在总部设立绿色能源使用目标,但并未分配具体额度到海外分子公司,导致清洁能源企业在该领域推动力不足。据了解，全球企业使用可再生能源总发电量已于2017年达到465兆瓦\\小时（相当于法国年发电量）,但可再生能源企业仍需通过技术进步，持续促使企业和政府运用光伏和风电等能源。\r\n</div>\r\n<div>\r\n	　　同日下午，“能源领域倡导女性平等”专题会议举行，加拿大议会秘书长、意大利和德国两国部长以及全球清洁能源企业代表共同出席。会议强调,各国均需在推动女性享有同等就业机会、同岗同酬待遇以及女性领导力方面作出承诺。英利积极响应，并承诺将全力支持和加入“3E”项目。此外，作为非政府机构第一位企业发言代表，苗青介绍，对比传统能源企业72%:\r\n 28%的男女从业比例,新能源行业女性就业比例要高出大约15%。而在英利，这一比例会更高，且女性员工骨干和高级管理者的比例也更加科学。\r\n</div>\r\n<div>\r\n	　　据悉，英利还参与了5月23日题为“可持续发展的城市”的主题会议，与城市规划委员会组建小组共同探讨“马尔默太阳能小镇及社区建设议题”。据介绍，马尔默小镇充分利用夏天光照时间充足的地理位置优势,几乎所有住户均安装了太阳能发电设备。\r\n</div>\r\n<div>\r\n	　　作为深耕光伏20年的绿色能源企业，英利始终坚持以“生产老百姓用得起的绿色电力”为使命，致力于推动绿色、清洁、可再生能源的开发与应用，并参与发起我国首个零碳研究机构——零碳发展研究院。截至目前，已累计超过20吉瓦的高品质英利产品为全球100多个国家和地区提供源源不断的绿色电力，每年减排温室气体1400万吨，相当于植树7亿棵。\r\n</div>', '1529893440', 'white', '0', 'uploads/2018-06-25/e7d42d732350c8aa0d2ed286bc69bb9e.png', '11');
INSERT INTO `news` VALUES ('8', '英利专利项目获中国专利优秀奖', '英利专利项目获中国专利优秀奖', '12月13日，由国家知识产权局和世界知识产权组织共同主办的第十九届中国专利奖颁奖大会在北京举行。英利专利项目“一种太阳能电池栅线电极及太阳能电池片”获中国专利优秀奖。\r\n<div>\r\n	　　本届中国专利奖大会得到了世界知识产权组织、国家有关部委、各地方知识产权局、行业协会以及“两院”院士的大力支持，共推荐了1554项优秀专利项目参加评选，为历年之最。据统计，本届共评选出20项中国专利金奖、5项中国外观设计金奖、802项中国专利优秀奖和68项中国外观设计优秀奖。国家知识产权局局长申长雨、世界知识产权组织副总干事王彬颖等出席大会并共同为第十九届中国专利奖获奖代表颁奖。\r\n</div>\r\n<div>\r\n	　　“中国专利奖”是由国家知识产权局和世界知识产权组织（WIPO)共同审核授予的中国专利界的唯一奖项。大会相关人士介绍，“专利奖的评选程序包括择优推荐、初审受理、专业评审、评审委员会复审、征求社会意见和最终审定六个环节，因此参选作品要过五关斩六将，经历层层选拔才能获得这个奖项。”\r\n</div>\r\n<div>\r\n	　　英利“一种太阳能电池栅线电极及太阳能电池片”获中国专利优秀奖。应用于本技术的光伏太阳能电池片及组件，使晶硅电池单位面积内转化效率更高，同时节约了原材料成本，单片电池片节约银浆0.002克、效率提升0.15瓦，直接提升利润0.53元/片。该产品逐步替代了原有市场主流的三栅线电池组件，广泛应用于国内外大型光伏地面电站和家庭分布式系统，能有效提高市场占有率，增加产品利润。\r\n</div>\r\n<div>\r\n	　　“获得中国专利优秀奖，是对一个企业知识产权实力和科技创新能力的肯定。”英利获奖代表介绍，英利高度重视知识产权工作，截止目前，英利PCT专利申请13项；中国专利申请2260项，授权1976项，行业领先。申请类别涉及化学类、机械类、半导体类、电学类、物理类等。自2012年至今，英利的专利申请量和授权量已连续6年居国内光伏行业第一。同时在今年8月，英利启动知识产权助力企业发展系列活动，持续强化知识产权创造，深入实施专利质量提升工程；强化知识产权运用，构建科学合理的权益分配机制；强化知识产权保护，激发创新热情。\r\n</div>', '1529893398', 'red', '0', 'uploads/2018-06-25/949566dceae8d8f6210a0d2232a4f054.png', '11');
INSERT INTO `news` VALUES ('5', '应对气候变化南南合作培训班来访英利', '应对气候变化南南合作培训班来访英利', '　　为加强在气候领域的国际交流与合作，展现企业在光伏领域的积极贡献以及在推动零碳生产方式和生活理念方面所做的努力，11月3日，参加2017年第二批应对气候变化南南合作“节能低碳产业发展专题培训班”的学员在国家环保部、保定市发改委相关领导的陪同下来访英利集团总部，了解企业发展历史、行业现状、零碳研究等方面的情况。英利集团常务副总经理郑小强带队陪同参观。<br />\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/201711920223225.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920235945.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920241611.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920243115.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201711920244038.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<br />\r\n<div>\r\n	　　作为国家发改委2017年应对气候变化南南合作培训项目的组成部分，此次来华参加培训的学员来自20多个国家共30余人，遍布非洲、亚洲、欧洲、南美洲、北美洲和大洋洲，以当地官员为主。双方进行座谈后，客人先后参观了英利光伏生态小镇、电池生产车间、电谷城市低碳公园，在参观过程中学员们对光伏产品的生产过程及应用项目表现出极大兴趣，并对英利在光伏领域的行业地位以及多年来在推动零碳方面的努力表示赞赏，表示今后还要进一步深化沟通、交流与合作。\r\n</div>\r\n<div>\r\n	　　据悉，作为国家发改委2017年应对气候变化南南合作培训项目的组成部分，环境保护部中国环境科学研究院共举办两场专题培训班，通过集中授课、实地考察和座谈交流等形式，使发展中国家学员全面系统地了解中国政府应对气候变化、低碳产业发展的战略政策实践和成就，为我国企业与发展中国家合作创造机遇，推动可持续发展。另据介绍，此次参观的学员近日参加了保定站系列活动，11月2日，英利集团首席科学家、全球首个零碳研究机构——零碳发展研究院院长宋登元博士为其进行了题目为“英利的低碳光伏之路”的培训授课。\r\n</div>', '1529893420', 'black', '0', 'uploads/2018-06-25/61d9adb0a552a9010c35ccbfb9fa5863.png', '11');
INSERT INTO `news` VALUES ('9', '英利联手源盛、上海建科 推动城市生态建设', '英利联手源盛、上海建科 推动城市生态建设', '12月16日，英利集团有限公司（下简称“英利集团”）、与源盛城发集团、上海市建筑科学研究院（集团）有限公司（下简称“上海建科集团”）签署战略合作协议，三方将围绕未来城市生态建设，推动绿色低碳发展等方面开展战略合作。\r\n<div>\r\n	　　据了解，本次三方进行战略合作，是基于其在各自领域内所具有的优势，围绕未来城市生态建设，推动绿色低碳发展，特别是在京津冀协同发展经济圈及雄安新区的建设规划中，围绕土地资产建设开发、绿色低碳产品研发、可循环绿色能源运用、绿色智慧产业园区规划、生态宜居示范区设计咨询和既有建筑绿色改造等方面开展战略合作。上海建科集团副总经济师潘裕棣表示，“英利集团是国际著名的可再生能源领军企业，源盛城发集团在低碳产业园区开发领域卓有建树，三家机构有着相当大的合作空间，希望通过强强联手持续推进业务发展，为保定的发展、为雄安新区的建设和京津冀的发展贡献力量。”<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/201712219102271.jpg\" alt=\"\" border=\"0\" /><br />\r\n英利集团与源盛城发集团、上海建科集团签署战略合作协议<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　推进绿色低碳发展，是国家建设美丽中国的重要战略，也是雄安新区建设智慧新城的重要任务。“雄安新区的设立为保定带来了巨大发展机遇，”保定市政府党组副书记王林强调，“保定将迎势而上，建设绿色智慧新城、打造优美生态环境、发展高端高新产业、提供优质公共服务、构建快捷高效交通网，推进体制机制改革，扩大全方位对外开放。”\r\n</div>\r\n<div>\r\n	　　另据介绍，多年来，英利集团始终坚持绿色发展、零碳发展，在雄安新区周边参与建设我国首个零碳小镇项目——太行凤凰谷·中国零碳小镇，并于今年7月参与发起成立零碳发展研究院，服务雄安新区建设，实现生态优先、绿色发展的愿景。“‘绿色、低碳、能源、智慧、建设’等是合作各方的核心发展理念，加强企业之间合作，有助于加快转变经济发展方式，推进绿色低碳发展，同时对全面增强内生动力、发展活力、整体实力具有积极意义。”英利集团副总经理、总会计师康玲表示。\r\n</div>', '1529893385', 'admin', '0', 'uploads/2018-06-25/e7d42d732350c8aa0d2ed286bc69bb9e.png', '10');
INSERT INTO `news` VALUES ('11', '英利获河北省专利最高奖项', '英利获河北省专利最高奖项', '近日，河北省科技厅、知识产权局等10部门联合发布《关于2017年河北省知识产权优势培育工程专利奖授奖的决定》，英利能源(中国)有限公司（下简称“英利”）“一种N型MWT太阳能电池”专利获“河北省知识产权优势培育工程专利奖”一等奖。\r\n<div>\r\n	　　据了解，“河北省知识产权优势培育工程专利奖”是河北省对专利项的最高奖励。此次共有百余项专利参加奖项评选，由省科技厅、知识产权局等10部门共同评审，省内各领域专家审核，代表省内专利奖评定最高水平。最终共评选出38项获奖项目，其中一等奖三项，英利“一种N型MWT太阳能电池”专利获“河北省知识产权优势培育工程专利奖”一等奖。<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/20182249262454.jpg\" alt=\"\" border=\"0\" /><br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20182249263710.jpg\" alt=\"\" border=\"0\" /><br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　据介绍，英利“一种N型MWT太阳能电池”专利技术具有降低遮光面积，提高电池效率，减少电池光衰减等特点，从而简化工艺，降低电池生产成本，以实现节约资源，提高经济效益。\r\n</div>\r\n<div>\r\n	　　“自主研发、自主知识产权是企业发展的重要组成部分。”英利专利负责人表示，英利始终高度重视知识产权工作，截止2017年底，英利PCT专利申请13项；中国专利申请2260项，授权1976项，行业领先。自2012年至今，英利的专利申请量和授权量已连续6年居国内光伏行业第一。\r\n</div>', '1529893294', 'admin', '0', 'uploads/2018-06-25/61d9adb0a552a9010c35ccbfb9fa5863.png', '10');
INSERT INTO `news` VALUES ('12', '英利连续六年与环卫工作者共度元宵佳节', '英利连续六年与环卫工作者共度元宵佳节', '为感谢环卫工作者对善美保定建设作出的突出贡献，呼吁更多人关心、关注环卫工作者， 3月2日，英利集团连续第六年邀请市300余名环卫工作者齐聚保定电谷酒店广场，猜灯谜、品美食，共度元宵佳节。\r\n<div>\r\n	　　据了解，第六届与环卫工作者共度元宵佳节活动以“携手拥抱新时代 温暖最美劳动人”为主题，活动现场，热热闹闹的广场舞表演及舞狮子、踩高跷等民俗表演暖心开场，还为300余名古城“美容师”准备了家宴和纪念品。\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20183217283826.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　保定市城市管理综合执法局党组成员、调研员孟庆良为环卫工作者端饭<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20183217285683.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　保定市城市管理综合执法局党组成员、调研员孟庆良讲话<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20183217291632.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　英利集团控股领导苗连生为环卫工作者盛饭<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018321729325.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　猜灯谜活动<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018321729479.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　源盛嘉禾世纪星幼儿园为环卫工作者献歌献画<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018321730989.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　民俗表演<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20183217302378.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　民俗表演<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20183217303949.jpg\" alt=\"\" border=\"0\" /><br />\r\n民俗表演<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018321731130.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	　　环卫工作者看民俗表演<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　活动现场，保定市城市管理综合执法局党组成员、调研员孟庆良表达了对环卫工作者的节日祝福，肯定了英利集团支持雄安新区建设、支持环卫事业的善举，并表示2017年环卫工作得到了市政府、市总工会及社会各界的支持与关心，希望环卫工作者为善美保定建设作出更大贡献。\r\n</div>\r\n<div>\r\n	　　上午十一点，在摆成“家”字型的餐桌上，环卫工人相继就位。“餐桌被拼成‘家’字，寓意着大家在元宵佳节可以阖家团圆，同时也是希望环卫工作者们可以把宴会现场当做自己的家，吃上自在满意的一餐。”据英利集团工会主席张谦介绍，“家文化”始终是英利企业文化最重要的一环，作为扎根保定的企业，英利一直用实际行动来践行善美保定，把公司的家文化传递给社会各界。\r\n</div>\r\n<div>\r\n	　　“这是第四次参加这个家宴活动了，政府和企业每年都想着我们，让我们这些环卫工人们感到很温暖，很值得。”环卫工霍大叔说道。“我就是负责电谷酒店这一片儿卫生工作的，酒店为我们提供吃饭、歇脚、打热水、上厕所等便利，非常贴心。”环卫工王大姐告诉记者。\r\n</div>\r\n<div>\r\n	　　宴请环卫工作者的同时，由保定市文化广电新闻出版局主办、英利集团承办的“元宵喜乐汇”活动于电谷源盛东广场举行。活动汇集各色美食、娱乐项目，除了民俗表演还有猜灯谜赢大奖活动，吸引了广大市民前来一起欢欢喜喜闹元宵。\r\n</div>\r\n<div>\r\n	　　多年来，英利集团在企业发展的同时积极履行社会责任、热心公益事业、发展不忘初心,无条件主动承诺大幅节能减排，帮助残疾工人就业，吸纳下岗工人再就业，累计向灾区、贫困地区、国防、文化教育和体育事业捐赠款物超过1.5亿元。\r\n</div>', '1529893276', 'admin', '0', 'uploads/2018-06-25/949566dceae8d8f6210a0d2232a4f054.png', '10');
INSERT INTO `news` VALUES ('13', '英利推出我国首个“光伏+取暖”系统', '英利推出我国首个“光伏+取暖”系统', '4月13日，“光伏+取暖”系统科普万里行暨河北首批“光伏+取暖”示范项目落成仪式新闻发布会在保定市电谷国际酒店会展中心举行。活动现场，英利集团有限公司（下简称“英利集团”）推出我国首个“光伏+取暖”系统品牌，用技术引领中国清洁能源供暖的未来发展。\r\n<div>\r\n	　　会议以“光暖万家 \r\n美丽中国”为主题，由我国首个零碳研究机构——零碳发展研究院主办，英利集团等单位协办，中国可再生能源学会光伏专委会原主任赵玉文、零碳发展研究院院长宋登元等专家学者与政府、企业、社会各界代表应邀出席。会上，由零碳发展研究院、英利集团共同研发的清洁取暖系统——Inner因能正式对外发布，这也是我国首个“光伏+取暖”系统品牌。<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/2018416917570.jpg\" alt=\"\" border=\"0\" /><br />\r\n发布会现场<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20184169175037.jpg\" alt=\"\" border=\"0\" /><br />\r\n发布会现场<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20184169181983.jpg\" alt=\"\" border=\"0\" /><br />\r\n中国可再生能源学会光伏专委会原主任赵玉文致辞<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20184169184391.jpg\" alt=\"\" border=\"0\" /><br />\r\n零碳发展研究院院长宋登元致辞<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018416919836.jpg\" alt=\"\" border=\"0\" /><br />\r\n河北省首批光伏取暖项目落成仪式剪彩<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20184169193039.jpg\" alt=\"\" border=\"0\" /><br />\r\n“光伏+取暖”系统<br />\r\n<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　数据显示，我国北方整个采暖季的总耗标准煤量是1.84亿吨。冬季燃烧散煤采暖成为造成环境污染的主要原因，煤改电、煤改气成为近年来各省市一项重要的环保政策。今年年初，河北省住房和城乡建设厅下发《河北省农村地区太阳能取暖试点实施方案》，决定完成一批可建设、可持续、可复制、可推广的太阳能取暖试点。作为我国优秀光伏企业，多年来，英利集团积极开展光伏+的各种生动实践。凭借10年以上光伏+污水源泵、冷水源泵的成熟经验，联合零碳发展研究院共同研发“光伏+取暖”系统。配合示范工程项目，先后完成阜平城南庄、安新县马村两个示范项目。“根据对\r\n</div>\r\n<div>\r\n	　　两个示范项目的数据监测显示，在2月5日到3月1日将近一个月的测试期，设备运行正常，室内平均温度在18℃左右。”该项目总工程师蔡春立表示。\r\n</div>\r\n<div>\r\n	　　据了解，该系统具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力四项功能。与传统取暖方式相比，该系统运行费用更低，在20年生命周期内，供热效率可达300%。此外，该系统无需政府投巨资进行基础设施建设，在用电高峰时发电、用电低谷时用电，可有效缓解电网压力。系统自有的光伏电站每发一度电都可以享受国家补贴，空气能热泵享受国家清洁取暖改造补贴，实现绿色环保的同时还能在全生命周期创造收益。“我平时比较忙，家里经常只有老母亲自己在家，过去烧煤取暖一天要添好多回煤，很麻烦。这个系统操作很简单，设置好了按一下，一个冬天都不用管，省心多了，而且水电隔离，安全，老人自己在家我们也放心。”阜平项目业主张金荣表示。\r\n</div>\r\n<div>\r\n	　　“依托丰富的运行经验和数据，‘光伏+取暖’系统更成熟、更稳定。”蔡春立介绍到，该系统实现了光伏电站、空气能热泵、能源管理平台三者的适配组合，使用光伏电站作为空气能热泵的电能补充，空气能热泵将低品位空气热能压缩转化为高品位热能实现取暖，光伏电站将太阳能转化为电能，补充空气能热泵所需的电力，能源管理平台实现智能控制，提高能源利用效率，真正实现清洁取暖与能源投资的双重目标。\r\n</div>\r\n<div>\r\n	　　另据介绍，会议现场还举行了河北省首批“光伏+取暖”项目落成仪式。\r\n</div>', '1529893261', 'admin', '0', 'uploads/2018-06-25/a70ad40ee8af29abbe623817a8946ace.png', '10');
INSERT INTO `news` VALUES ('14', '首届碳博会 英利及“光伏+取暖”系统双双', '2018年首届中国国际低碳科技博览会（下简称“碳博会”）在上海世博展览馆拉开帷幕', '4月22日，2018年首届中国国际低碳科技博览会（下简称“碳博会”）在上海世博展览馆拉开帷幕。期间，碳博会对在低碳环保领域做出贡献的单位和相关产品评选并颁发多个奖项，英利集团有限公司（下简称“英利”）和其推出的我国首个“光伏+取暖”系统分别荣获本届碳博会“最佳组织奖”和“最佳产品奖”。<br />\r\n<br />\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/201842616293154.jpg\" alt=\"\" border=\"0\" /><br />\r\n英利集团副总经理郑祎上台领奖<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201842616322373.jpg\" alt=\"\" border=\"0\" /><br />\r\n最佳组织奖<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　据悉，碳博会以“低碳科技点亮未来”为主题，是由国家发改委、工信部共同指导，相关权威协会和研究机构联合举办的国家级、国际性、专业化博览会。通过集中展示国内外普及适用的低碳科技成果，打造国际间低碳技术与装备展示交易平台，为低碳科技企业架设起国际合作大通道。此外，碳博会针对在低碳环保领域做出贡献的单位和相关产品，评选并颁发出多个奖项，英利荣获“碳博会最佳组织奖”，英利推出的“光伏+取暖”系统荣获“碳博会最佳产品奖”。\r\n</div>\r\n<div>\r\n	　　“英利始终把创新发展放在首位并积极开展光伏+的各种实践。针对我国清洁能源供暖的需求，凭借多年光伏+污水源泵、冷水源泵的成熟经验，于今年联合研发并推出我国首个‘光伏+取暖’系统品牌。”英利首席科学家宋登元博士介绍，该系统具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力四项功能。与传统取暖方式相比，该系统运行费用更低，在20年生命周期内，供热效率可达300%。此外，光伏+取暖，可实现在用电高峰时发电、用电低谷时用电，有效缓解电网压力。\r\n</div>\r\n<div>\r\n	　　据了解，该系统已经在阜平城南庄、安新县马村建设了两个示范项目，据2月5日到3月1日将近一个月的监测数据显示，设备运行正常，室内平均温度在18℃左右。“凭借其稳定的性能，该系统顺利通过业内专家评审，成功亮相近日在廊坊国际会议展览中心举行的‘河北省冬季清洁取暖典型案例展示交流活动’，受到河北省副省长张古江的充分肯定。”宋登元博士表示。\r\n</div>\r\n<div>\r\n	　　多年来，英利始终以“生产老百姓用得起的绿色电力”为己任，致力于推动低碳、绿色、可再生能源的开发与应用，追求低碳绿色发展之路。据宋登元博士介绍，英利2008年获环保部授予的“中国环境友好型企业称号”；2009年加入国际环保组织PV\r\nCYCLE；2012年作为全球第一个可再生能源企业加入WWF碳减排先锋项目；2013年牵头制定我国光伏行业首个清洁生产评价指标体系；2017年联合多家单位共同发起成立零碳发展研究院，英利的低碳绿色发展足迹遍布全球。截至目前，已有超过20吉瓦的英利光伏组件为全球提供着源源不断的绿色电力。\r\n</div>\r\n<div>\r\n	　　“光伏发展之路和低碳绿色发展之路有很多契合点，未来，英利将依托人工智能、工业物联网、大数据、区块链等前沿技术，在低碳能源、低碳建筑、低碳农业、低碳服务、低碳出行、低碳生活等领域，开展技术研究及应用，逐步从光伏组件制造商向智慧能源综合方案提供商过渡，为我国绿色发展战略做出贡献”宋登元博士表示。\r\n</div>\r\n　　另据介绍，英利“光伏+取暖”系统全国科普万里行活动新闻发布会已经在河北举办了三场，“后续我们会在全国范围内加大宣传和推广力度，让‘光伏+取暖’解决方案引领中国清洁能源供暖的未来发展。”宋登元博士最后表示。', '1529893239', 'admin', '0', 'uploads/2018-06-25/61d9adb0a552a9010c35ccbfb9fa5863.png', '9');
INSERT INTO `news` VALUES ('15', '英利光伏新品斩获SNEC“十大亮点”最高', '第十二届(2018)国际太阳能光伏与智慧能源展览会（SNEC）“十大亮点”', '5月30日，第十二届(2018)国际太阳能光伏与智慧能源展览会（SNEC）“十大亮点”在上海浦东新国际博览中心N4馆揭晓。英利智能多主栅高效N型双面发电组件斩获太瓦级钻石奖，据了解，这是SNEC“十大亮点”最高奖项。此外，英利高效P型多主栅半片多晶组件、英利因能航天级高效光伏电站、“金管家”服务、零碳小屋也纷纷获奖。<br />\r\n<br />\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/201853017231767.jpg\" alt=\"\" border=\"0\" /><br />\r\n颁奖现场<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853017233753.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853017235492.jpg\" alt=\"\" border=\"0\" /><br />\r\n获奖留影<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　SNEC光伏展作为全球最具影响力的国际化、专业化、规模化的光伏盛会，每年都汇集了行业内的顶尖企业携最新技术亮相。自2011年以来，为使参展商中最新、最前沿的技术与产品脱颖而出，展会组委会通过自荐海选方式，组织专家评审团综合考虑“先进性、独创性、社会性、专业领域”等要素，评选出“十大亮点”。历经七年的“十大亮点”评选活动，如今已成为SNCE光伏展不可或缺的重要板块。\r\n</div>\r\n<div>\r\n	　　“作为首次亮相SNEC的智能高效光伏新品，英利智能多主栅高效N型双面发电组件受到了广泛关注。”现场工作人员介绍，该组件采用高效N型多主栅双面电池，能够双面吸收利用环境中各种光源，最大程度增加背面发电量增益，同时主栅间距缩小，电流损耗降低，配合专用的圆形焊带，增加反光效果，进一步提升组件功率，高达340瓦以上。该款产品采用全新的分体式智能优化器，能够避免组件正背面受光不均匀、遮挡引起热斑等问题，保证组件发电量提升5-10%，可靠性大大提升。\r\n</div>\r\n<div>\r\n	　　此外，英利高效P型多主栅半片多晶组件荣获“十大亮点”兆瓦级翡翠奖。“该组件采用半片电池技术，可将通过每根主栅的电流降低为1/2，内部电阻损失降低为整片电池的1/4，从而提升组件功率，户外运行及热斑温度低，单瓦发电量增益2%以上。”现场工作人员介绍。\r\n</div>\r\n<div>\r\n	　　作为国内家用光伏市场的开拓者和先驱者，英利旗下国内首个家用光伏整体系统品牌因能推出的航天级高效光伏电站荣获“十大亮点”吉瓦级金奖，“金管家”服务和零碳小屋获得荣耀奖。据介绍，航天级高效光伏电站高度关注产品的安全性、可靠性及高效性，采用了perc加叠瓦技术，同等面积功率更大，BOS更低，同时系统设计进行了优化，直流组串和逆变器配比为1:1.1，可实现过载输出，兼容性更强。“金管家”服务是一整套体系和标准，涵盖了业主与因能对接的每一个环节，“一次安装\r\n终身服务”，对业主提出的问题“24小时响应、48小时解决”。“零碳小屋”是因能推出的集光伏发电、智慧储能、空气能应用等于一体的能源综合利用样板间，传递了健康环保的零碳生活理念与方式。\r\n</div>\r\n<div>\r\n	　　“英利光伏产品、高效光伏电站、‘金管家’服务、零碳小屋获得SNEC‘十大亮点’荣誉，是光伏行业对英利技术和产品的高度认可。”英利首席科学家宋登元博士表示，依托“光伏材料与技术国家重点实验室”等五大国家级研发平台，英利不断引领光伏技术的创新方向。本届SNEC展会英利不仅展出了超高效N型双面叠瓦组件、高效多主栅半片多晶组件等创新光伏产品，还推出全国首个“4S”四位一体服务模式以及防伪、查询、追踪一站式解决平台，彰显了英利从单一的光伏组件制造商向智慧能源综合方案提供商迈进的全新品牌定位。\r\n</div>\r\n<div>\r\n	　　另据了解，在与SNEC光伏展会同期举行的“一带一路”开拓者杯评选活动中，英利凭借在马尔代夫FUSHI岛修建的光油互补电站荣获兆瓦级勇士奖。“目前，英利集团太阳能光伏发电解决方案已经遍布‘一带一路’沿线的埃及、摩洛哥、阿尔及利亚、巴基斯坦等十几个国家，同时多措并举，英利连续举办两届光伏技术与应用国际培训班，向来自亚洲和非洲的发展中国家近400名学员传授光伏产业全产业链的先进适用技术；为非洲20个足球希望中心提供太阳能独立照明系统，推普新能源应用和节能环保理念。”宋登元博士介绍。\r\n</div>', '1529893223', 'admin', '0', 'uploads/2018-06-25/949566dceae8d8f6210a0d2232a4f054.png', '9');
INSERT INTO `news` VALUES ('16', '英利“智”造闪耀SNEC 2018', '第十二届（2018）国际太阳能光伏与智慧能源大会暨展览会（下简称“SNEC”）在上海浦东新国际博览中心隆重举行', '5月28日，第十二届（2018）国际太阳能光伏与智慧能源大会暨展览会（下简称“SNEC”）在上海浦东新国际博览中心隆重举行。我国优秀光伏企业——英利作为主要参展商出席了SNEC开幕剪彩仪式。据介绍，展会现场英利推出全国首个“4S”四位一体服务模式。\r\n<div>\r\n	　　展会现场，英利集团携多款高效智能光伏新品、航天级家用光伏系统、智慧光伏应用产品、清洁取暖解决方案等亮相展会，全方位展示了英利的技术、创新能力和智慧能源综合方案提供商的全新品牌定位。\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853010252347.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<div style=\"text-align:center;\">\r\n	公司展台现场人头攒动<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853010253692.jpg\" alt=\"\" border=\"0\" /><br />\r\n开幕式<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853010264635.jpg\" alt=\"\" border=\"0\" /><br />\r\n英利绿色能源总经理助理翁志铭发布光伏4S服务体系现场<br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185301027293.jpg\" alt=\"\" border=\"0\" /><br />\r\n客户参观英利展品<br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　在英利举办的新品发布会和品牌签约仪式上，英利工作人员向广大客户和来宾推介多款高效智能光伏新品，引起极大关注。“多主栅高效N型双面发电组件采用高效N型多主栅双面电池，主栅间距缩小，电流损耗降低，配合专用的圆形焊带，增加反光效果，组件功率高达340瓦以上。”据现场工作人员刘克铭介绍，该款产品采用全新的分体式智能优化器，能够避免组件正背面受光不均匀、遮挡引起热斑等问题，保证组件发电量提升5-10%，可靠性大大提升。智能关断无热斑组件是在英利首创无热斑组件基础上增加智能关断功能，当电站发生危险时，组件自动进行智能判断后关断直流侧组件输出，再配合接线盒自主切断输出，实现多重保护功能；超高效N型双面叠瓦组件采用无焊带设计，组件中单片电池面积为正常电池的1/5，减小流经电池片的电流，降低组件工作温度，60片板型组件功率高达370瓦以上；高效多主栅半片多晶组件采用半片电池技术，可将通过每根主栅的电流降低为1/2，内部电阻损失降低为整片电池的1/4，从而提升组件功率，单瓦发电量增益2%以上。“其中，超高效N型双面叠瓦组件和高效多主栅半片多晶组件两款产品参与了本届展会十大亮点产品的评选，结果会在展会闭幕当天公布。”刘克铭表示。\r\n</div>\r\n<div>\r\n	　　作为英利的明星产品，“熊猫”双面发电组件也出现在了英利展台，现场还举行了双面证书颁证仪式，据了解，今年4月英利“熊猫”双面发电组件顺利通过全球首个美国UL双面认证，随后5月又获得TÜV莱茵双面认证，“目前英利‘熊猫’已经具有鉴衡认证、美国UL、TÜV莱茵国内外三大知名认证机构的双面认证，充分显示了其可靠的技术和稳定的性能，必将进一步引领双面组件的发展。”展会现场工作人员表示。\r\n</div>\r\n<div>\r\n	　　针对渠道商和客户最为关心的光伏系统和售后服务问题，展会上英利推出全国光伏行业首个“4S”四位一体服务模式并重点介绍了防伪、查询、追踪一站式解决平台。据介绍，4S包括光伏系统解决方案供应、光伏组件及配件提供、售后服务、信息反馈，其核心含义是“光伏产品系统解决方案”，有利于渠道商快速降低成本，提高运营效率，实现价值共赢。此外，现场还演示了英利防伪追踪系统的使用方法、分享运维技术信息并解答疑难问题。“通过向广大客户传递如何快速区分假冒伪劣产品的重要信息，彰显了英利打击假冒伪劣产品和维护消费者权益、利益的决心。”展会现场工作人员介绍。\r\n</div>\r\n<div>\r\n	　　据悉，截至目前，已有累计超过20吉瓦的高品质英利光伏及应用产品为全球100多个国家和地区提供源源不断的绿色电力，每年减排温室气体1400万吨，相当于植树7亿棵。\r\n</div>\r\n<div>\r\n	　　在集中展示高效智能光伏新品和服务解决方案的同时，英利旗下国内首个家用光伏整体系统品牌因能、嘉盛光电科技股份有限公司、易通光伏科技股份有限公司、流云精密机械制造有限公司等也纷纷亮相展会，推介各自领域的产品。\r\n</div>\r\n<div>\r\n	　　作为国内家用光伏市场的开拓者和先驱者，因能率先推动航天技术民用化，推出航天级高效光伏系统，大功率、高颜值、低BOS、发电量进一步提升，同时所安装系统享受“24小时响应、48小时解决，一次安装、终身服务”的金管家售后服务；作为智慧能源建筑解决方案提供商，嘉盛光电展出了太阳能屋顶瓦，取代常规瓦片集成到一个斜坡屋顶以达到设计和美学要求，实现屋顶与太阳能完美结合，此外还有光伏百叶窗、光伏车顶等众多光伏应用产品；作为国内领先的光伏组件配套产品供应商，易通光伏携众多新品在展会亮相，使用集成二极管的PV-YT1606接线盒、适用于多主栅组件的多主栅互联焊带、多主栅网版等，引领光伏材料发展方向；作为专业从事设备自动化及清洁取暖解决方案的提供商，流云精密主要展出了硅片切割、电池生产、组件制造自动化设备备件和配套周边设施，并重点对光伏+取暖系统进行了推介，“该系统具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力四项功能。”展会现场工作人员介绍，通过阜平城南庄、安新县马村两个示范项目收集数据显示，整套系统性能稳定，同时光伏+取暖可以实现用电高峰时发电、用电低谷时用电，从而有效缓解电网压力。系统自有的光伏电站每发一度电都可以享受国家补贴，空气能热泵享受国家清洁取暖改造补贴，实现绿色环保的同时还能在全生命周期创造收益。\r\n</div>\r\n<div>\r\n	　　“多年来英利始终坚持以创新推动高质量发展，在‘创新包容、融合发展’方针的指引下，依托‘光伏材料与技术国家重点实验室’等五大国家级研发平台，不断引领光伏技术的创新方向和进行光伏+智慧能源领域的有力探索。”英利首席科学家宋登元博士表示，此次英利联合多家分公司亮相SNEC，展出内容不仅涉及创新的智能光伏产品，还包括了航天级光伏系统、清洁取暖系统、智慧光伏应用、光伏创新材料等诸多产品和解决方案，充分显示了英利从单一的光伏组件制造商向智慧能源综合方案提供商过渡的全新品牌定位，未来，英利将依托人工智能、工业物联网、大数据、区块链等前沿技术，在绿色发展各领域开展研究并促进产品转化，为我国绿色发展战略做出贡献。\r\n</div>\r\n<div>\r\n	　　据了解，SNEC由亚洲光伏产业协会、中国可再生能源学会等权威机构牵头并邀请美国太阳能行业协会等19个国际机构和组织联合主办，本届展会共吸引来自全球95个国家和地区共1800多家企业参展，展出内容包括光伏生产设备、材料、光伏电池、光伏应用产品和组件以及光伏工程及系统，涵盖了光伏产业链的各个环节，为世界各地的光伏厂商提供了展示技术、产品和服务的平台。十二年来，已经发展成为全球最具影响力的国际化、专业化、规模化的光伏行业盛会。\r\n</div>', '1529893197', 'admin', '10', 'uploads/2018-06-25/a70ad40ee8af29abbe623817a8946ace.png', '9');
INSERT INTO `news` VALUES ('18', '传承中国文化，发扬企业精神', '企业文化，或称组织文化（Corporate Culture或Organizational Culture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。', '<img src=\"http://localhost/comsite1805/home/templates/img/009.png\" alt=\"\" /> <img src=\"http://localhost/comsite1805/home/templates/img/010.png\" alt=\"\" /> <img src=\"http://localhost/comsite1805/home/templates/img/011.png\" alt=\"\" /> \r\n<div>\r\n	<p>\r\n		企业文化，或称组织文化（Corporate Culture或Organizational \r\nCulture），是一个组织由其价值观、信念、仪式、符号、处事方式等组成的其特有的文化形象简单而言，就是企业在日常运行中所表现出的各方各价值观是指企业内成员对某个事件或某种行为好与坏、善与恶、正确与错误、是否值得仿效的一致认识。\r\n	</p>\r\n	<p>\r\n		价值观是企业文化的核心，统一的价值观使企业内成员在判断自己行为时具有统一的标准，并以此来决定自己的行为。\r\n	</p>\r\n	<p>\r\n		企业文化本质，是通过企业制度的严格执行衍生而成，制度上的强制或激励最终促使群体产生某一行为自觉，这一群体的行为自觉便组成了企业文化。企业文化的本质在东堂策《企业文化一字解》中得到深刻印证，其中也详细道出企业文化产生机理。所谓价值观念，是人们基于某种功利性或道义性的追求而对人们（个人、组织）本身的存在、行为和行为结果进行评价的基本观点。可以说，\r\n	</p>\r\n	<p>\r\n		人生就是为了价值的追求，价值观念决定着人生追求行为。价值观不是人们在一时一事上的体现，而是在长期实践活动中形成的关于价值的观念体系。企业的价值观，是指企业职工对企业存在的意义、经营目的、\r\n	</p>\r\n	<p>\r\n		经营宗旨的价值评价和为之追求的整体化、个异化的群体意识，是企业全体职工共同的价值准则。只有在共同的价值准则基础上才能产生企业正确的价值目标。\r\n	</p>\r\n	<p>\r\n		有了正确的价值目标才会有奋力追求价值目标的行为，\r\n	</p>\r\n	<p>\r\n		企业才有希望。因此，企业价值观决定着职工行为的取向，关系企...\r\n	</p>\r\n	<p>\r\n		企业文化具有鲜明的个性和特色，具有相对独立性，每个企业都有其独特的文化淀积，这是由企业的生产经营管理特色、企业传统、企业目标、企业员工素质以及内外环境不企业在一定的时空条件下产生、生存和发展，企业文化是历史的产物。企业文化的继承性体现在三个方面：一是继承优秀的民族文化精华。二是继承企业的文化传统。企业文化的相融性体现在它与企业环境的协调和适应性方面。企业文化反映了时代精神，它必然要与企业的经济环境、政治环境、文化环境以及社区环境相融合。\r\n	</p>\r\n	<p>\r\n		企业文化是一个有机的统一整体，人的发展和企业的发展密不可分，\r\n	</p>\r\n	<p>\r\n		引导企业员工把个人奋斗目标融于企业发展的整体目标之中，追求企业的整体优势和整体意志的实现。\r\n	</p>\r\n</div>\r\n<span id=\"__kindeditor_bookmark_start_0__\"></span>', '1530002329', 'admin', '0', 'uploads/2018-06-26/e7d42d732350c8aa0d2ed286bc69bb9e.png', '9');
INSERT INTO `news` VALUES ('20', '国家技术标准创新基地(光伏)筹建工作调度', '为贯彻落实省、市领导在《国家标准委关于同意筹建国家技术标准创新基地(光伏)的复函》(国标委综合函[2018]6号)的批示精神，6月12日，保定市人民政府办公厅组织在英利集团本部召开筹建工作调度会，市政府党组副书记王林，市政府副秘书长付建宾，省质监局，市质监局、发改委、财政局、工信局、金融办、科技局等领导出席，英利集团董事长王亦逾带队参加会议并做相关汇报。付建宾副秘书长主持本次会议。<br />', '为贯彻落实省、市领导在《国家标准委关于同意筹建国家技术标准创新基地(光伏)的复函》(国标委综合函[2018]6号)的批示精神，6月12日，保定市人民政府办公厅组织在英利集团本部召开筹建工作调度会，市政府党组副书记王林，市政府副秘书长付建宾，省质监局，市质监局、发改委、财政局、工信局、金融办、科技局等领导出席，英利集团董事长王亦逾带队参加会议并做相关汇报。付建宾副秘书长主持本次会议。<br />\r\n<br />\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/2018614161690.jpg\" alt=\"\" border=\"0\" /> \r\n</div>\r\n<br />\r\n<div>\r\n	　　据了解，今年2月，国标委批准河北省筹建国家技术标准创新基地(光伏)，由英利作为创新基地承担单位，这是我国首个光伏领域技术标准创新基地，也是河北省唯一的一个国家技术标准创新基地。会上，英利首席科学家宋登元博士介绍了创新基地概况、申请过程、建设内容及筹建建议。与会市直部门均表示将大力支持创新基地建设工作，河北省质监局标准化处处长郭永志指出，要充分认识到创新基地建设工作的重要意义，立足河北，服务全国光伏产业发展，从而走向国际。\r\n</div>\r\n<div>\r\n	　　最后，王林副书记发表重要讲话，他表示，创新基地建设意义重大，“影响深远，来之不易，全省唯一，示范引领”，同时创新基地建设也是保定市创建中国制造2025示范区很重要的一部分，要以政策创新提供支持保障，通过“五个一”，协调和发挥好保定市的资源，全力保障创新基地建设。\r\n</div>\r\n<div>\r\n	　　作为光伏领域技术标准创新基地承担单位，近年来英利大力实施标准化战略，牵头成立了河北省太阳能光伏标准化技术委员会，主持制定和参与制定IEC和SEMI国际标准、国家标准、行业标准等各类标准超过80项，总数量位居全国光伏行业前列。国家技术标准创新基地(光伏)建设完成后，不仅针对光伏产业的技术创新、市场需求，制定出一批技术标准，而且还将成为技术标准成果转化、创新标准化人才培养、标准化国际合作、标准试验验证等方面的重要平台。为创新成果转化提供标准化支撑，发展具有自主知识产权的核心技术，提高我国在新能源领域的话语权。\r\n</div>\r\n　　据了解，在河北省建设创新基地，将依托京津冀城市群及河北石保廊国家级高新技术开发区进行建设，具有明显的区位优势，既符合京津冀协同发展战略规划，而且能更好地服务于雄安新区作为创新驱动发展引领区和全球创新中心的定位发展，同时也将推动国家新能源产业的发展，对治理河北省雾霾，打响蓝天保卫战具有重要意义。', '1530002295', 'admin', '0', 'uploads/2018-06-26/8921238dd6474aa04f53ca09cd8514e5.jpg', '12');
INSERT INTO `news` VALUES ('21', '英利集团苗青应邀出席第九届清洁能源部长级', '近日，第九届清洁能源部长级会议（CEM9）在哥本哈根举办，英利集团副董事长苗青应国际能源署（IEA）邀请参加会议。', '来源：中国网 &nbsp; 2018-05-29 17:54\r\n<div>\r\n	　　近日，第九届清洁能源部长级会议（CEM9）在哥本哈根举办，英利集团副董事长苗青应国际能源署（IEA）邀请参加会议。\r\n</div>\r\n<div>\r\n	　　据介绍，清洁能源部长级会议是全球范围内清洁能源领域唯一常设部长级会议,旨在推动清洁能源技术政策和计划，分享经验教训和最佳实践，并鼓励向全球清洁能源经济过渡。本届大会以“迈向具有竞争力和创新性的低碳经济”为主题，由欧盟委员会与丹麦、瑞典、挪威、芬兰和北欧部长理事会联合主办。“英利在推动全球清洁能源产业发展中进行了很多有益尝试，并取得不少成绩，”苗青表示，英利始终坚持推动绿色可持续发展，致力为世界节能减排作出贡献。<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/20185309452037.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309453310.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309454196.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/20185309455377.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201853094606.jpg\" alt=\"\" border=\"0\" /><br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　5月24日上午，部长级20人闭门会议召开。中国能源局副局长李凡荣、丹麦能源部长Lars、德国联邦经济与能源部长Thorsten等十位国家部长代表，及英利、微软、宝马、宜家等十位企业和NGO组织成员代表出席会议，并围绕”如何使企业积极参与购买更多的可再生能源\"这一话题进行了深入探讨。会上，苗青指出，虽然跨国企业都会在总部设立绿色能源使用目标,但并未分配具体额度到海外分子公司,导致清洁能源企业在该领域推动力不足。据了解，全球企业使用可再生能源总发电量已于2017年达到465兆瓦\\小时（相当于法国年发电量）,但可再生能源企业仍需通过技术进步，持续促使企业和政府运用光伏和风电等能源。\r\n</div>\r\n<div>\r\n	　　同日下午，“能源领域倡导女性平等”专题会议举行，加拿大议会秘书长、意大利和德国两国部长以及全球清洁能源企业代表共同出席。会议强调,各国均需在推动女性享有同等就业机会、同岗同酬待遇以及女性领导力方面作出承诺。英利积极响应，并承诺将全力支持和加入“3E”项目。此外，作为非政府机构第一位企业发言代表，苗青介绍，对比传统能源企业72%:\r\n 28%的男女从业比例,新能源行业女性就业比例要高出大约15%。而在英利，这一比例会更高，且女性员工骨干和高级管理者的比例也更加科学。\r\n</div>\r\n<div>\r\n	　　据悉，英利还参与了5月23日题为“可持续发展的城市”的主题会议，与城市规划委员会组建小组共同探讨“马尔默太阳能小镇及社区建设议题”。据介绍，马尔默小镇充分利用夏天光照时间充足的地理位置优势,几乎所有住户均安装了太阳能发电设备。\r\n</div>\r\n<div>\r\n	　　作为深耕光伏20年的绿色能源企业，英利始终坚持以“生产老百姓用得起的绿色电力”为使命，致力于推动绿色、清洁、可再生能源的开发与应用，并参与发起我国首个零碳研究机构——零碳发展研究院。截至目前，已累计超过20吉瓦的高品质英利产品为全球100多个国家和地区提供源源不断的绿色电力，每年减排温室气体1400万吨，相当于植树7亿棵。\r\n</div>', '1530003649', 'admin', '0', 'uploads/2018-06-26/d4f47f8a67cabee9e9f496889a2c6b7a.jpg', '12');
INSERT INTO `news` VALUES ('22', '“光伏+取暖”系统将推广应用----实现', '在日前举行的2018（首届）中国国际低碳科技博览会上，一个以零碳排放为目标，融合了“光伏+取暖”、储能系统、光伏屋顶瓦、光伏百叶窗、光伏路灯等应用的零碳小屋模型引起了参观者的浓厚兴趣。据我国首个零碳研究机构零碳发展研究院院长、太阳能光伏企业英利集团首席科学家宋登元介绍，这个零碳小屋不仅具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力4项功能，还能在全生命周期创造收益。', '在日前举行的2018（首届）中国国际低碳科技博览会上，一个以零碳排放为目标，融合了“光伏+取暖”、储能系统、光伏屋顶瓦、光伏百叶窗、光伏路灯等应用的零碳小屋模型引起了参观者的浓厚兴趣。据我国首个零碳研究机构零碳发展研究院院长、太阳能光伏企业英利集团首席科学家宋登元介绍，这个零碳小屋不仅具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力4项功能，还能在全生命周期创造收益。\r\n<div>\r\n	　　数据显示，我国北方整个采暖季的总耗标准煤量是1.84亿吨。冬季燃烧散煤采暖成为造成环境污染的主要原因，煤改电、煤改气成为近年来各省市一项重要的环保政策。但煤改电和煤改气的效果并不尽如人意。两种技术方案虽然各有所长，但有很大的局限性。煤改气初始投资低，气源跟不上，煤改电则费用很高，电网压力大。\r\n</div>\r\n<div>\r\n	　　宋登元说，“光伏+取暖”用的是零碳排放的新能源，不受这些条件局限，因而市场潜力巨大。针对我国清洁能源供暖的需求，英利集团凭借多年“光伏+污水源泵、冷水源泵”的成熟经验，与零碳发展研究院联合研发并推出了“光伏+取暖”系统品牌，去年已在雄安新区建立了示范点，效果非常好，不仅解决了村民取暖问题，而且电费也大幅下降。下一步将在河北省内率先展开推广应用。今年年初，河北省住房和城乡建设厅下发了《河北省农村地区太阳能取暖试点实施方案》，决定在2018年完成一批可建设、可持续、可复制、可推广的太阳能取暖试点。\r\n</div>\r\n<div>\r\n	　　“国家在这方面的支持力度很大，从村民的可接受程度和取暖的效果来看，试点达到了预期的效果，最重要的是解决了冬天取暖二氧化碳排放的问题。”宋登元说。\r\n</div>\r\n<div>\r\n	　　据介绍，“光伏+取暖”产品方案的系统优势在于光伏发电收益稳定；可有效缓解电网负荷压力；热效率大于300%，一机四用，可以提供制冷、供热、热水和绿色电力；遮阳隔热，降低建筑能耗；安全环保，节能减排。“‘光伏+取暖’可以改善电网质量、缓解供电压力，可以减少政府初装补贴支出，还可以为农户创造额外收益。”宋登元说。\r\n</div>\r\n<div>\r\n	　　与传统取暖方式相比，“光伏+取暖”系统运行费用更低，在20年生命周期内，供热效率可达300%。此外，该系统无需政府投巨资进行基础设施建设，在用电高峰时发电、用电低谷时用电，可有效缓解电网压力。\r\n</div>\r\n<div>\r\n	　　“光伏+取暖”系统自有的光伏电站每发一千瓦时电都可以享受国家补贴，空气能热泵享受国家清洁取暖改造补贴，实现绿色环保的同时，还能在全生命周期创造收益。\r\n</div>\r\n<div>\r\n	　　“光伏+取暖”系统成熟、稳定，实现了光伏电站、空气能热泵、能源管理平台三者的适配组合，使用光伏电站作为空气能热泵的电能补充，空气能热泵将低品位空气热能压缩转化为高品位热能实现取暖，光伏电站将太阳能转化为电能，补充空气能热泵所需的电力，能源管理平台实现智能控制，提高能源利用效率，真正实现清洁取暖与能源投资的双重目标。\r\n</div>', '1530003819', 'admin', '0', 'uploads/2018-06-26/61d9adb0a552a9010c35ccbfb9fa5863.png', '12');
INSERT INTO `news` VALUES ('23', '英利“光伏+取暖”系统亮相清洁取暖典型案', '核心提示：4月20日，河北省冬季清洁取暖典型案例展示交流活动在廊坊国际会议展览中心举行，经过活动专家委员会评审，英利集团安新马村太阳', '核心提示：4月20日，河北省冬季清洁取暖典型案例展示交流活动在廊坊国际会议展览中心举行，经过活动专家委员会评审，英利集团安新马村太阳\r\n<div>\r\n	　　4月20日，“河北省冬季清洁取暖典型案例展示交流活动”在廊坊国际会议展览中心举行，经过活动专家委员会评审，英利集团安新马村“太阳能光伏+空气能热泵”采暖示范案例通过终审，并应邀参展。\r\n</div>\r\n<div>\r\n	　　本次活动是由河北省住房和城乡建设厅、省发展和改革委员会、省环境保护厅共同主办，我省共计80余项清洁取暖案例通过评审，旨在总结交流近年来清洁取暖项目中适用成熟的新技术、新经验，展示推广新材料、新装备，进一步推动我省清洁取暖工作，改善大气环境。<br />\r\n&nbsp;\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	<img src=\"http://www.yingligroup.com/pictures/news/20184261624836.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201842616242647.jpg\" alt=\"\" border=\"0\" /><br />\r\n<br />\r\n<img src=\"http://www.yingligroup.com/pictures/news/201842616244255.jpg\" alt=\"\" border=\"0\" /><br />\r\n&nbsp;\r\n</div>\r\n<div>\r\n	　　在当天的展示中，河北省副省长张古江来到英利集团展台，对“光伏+取暖”项目进行了深入了解，他表示“光伏+取暖”是个好项目，可以成村连片开展。其他观众也纷纷提出各种问题：“安装这个系统多少钱一平方米？”“暖和吗？冬天雾霾厉害的时候能供暖吗？”对于公众疑问，英利集团该项目总工程师蔡春立进行了耐心解答：“根据我们对示范项目业主家15天的采暖实际监测数据显示，平均室温在18℃以上。”蔡春立表示，5千瓦光伏发电系统年发电量约6660度，采用自发自用、余电上网模式下，年可收益5045元，除去取暖季用户支出电费1911元，年收益3143元。\r\n</div>\r\n<div>\r\n	　　据介绍，安新马村“太阳能光伏+空气能热泵”采暖示范案例安装的正是英利集团联合零碳发展研究院共同研发的Inner因能“光伏+取暖”系统，目前已经成功建设了包括安新、阜平等在内的河北首批“光伏+取暖”示范项目。该系统具备冬天供暖、夏天制冷、四季供应热水、全年生产绿色电力四项功能。与传统取暖方式相比，该系统运行费用更低，供热效率可达300%，可有效缓解电网压力。系统自有的光伏电站每发一度电都可以享受国家补贴，空气能热泵享受国家清洁取暖改造补贴，实现绿色环保的同时还能在全生命周期创造收益。“烧煤老得添煤，这个系统设置一下一个冬天都不用管，省心多了，还干净。”示范项目业主张国信表示。\r\n</div>\r\n<div>\r\n	　　据悉，进行案例和产品展示的同时，英利集团也把其正在进行的“光伏+取暖”系统全国科普万里行活动搬到展会现场，“后续我们会在全国范围内加大宣传和推广力度，让‘光伏+取暖’解决方案惠及社会各界，为经济和社会发展、为环境治理做出更大贡献。”蔡春立表示。\r\n</div>', '1530003901', 'admin', '0', 'uploads/2018-06-26/efe222882af0baa54fefadfa7122b479.jpg', '12');
INSERT INTO `news` VALUES ('24', '英利多主栅组件亮相南非能源展览会', '                                                                        长城网保定3月30日讯(通讯员 刘宁 记者 李艮春)3月27日，为期两天的南非能源和电力展览会在约翰内斯堡桑顿会议中心开幕。英利携多主栅组件等高效光伏产品参展，成为展会唯一一家展出多主栅组件的光伏企业。                                                            ', '<div style=\"text-align:center;\">\r\n<img src=\"http://www.yingligroup.com/pictures/news/2018421631548.jpg\" alt=\"\" border=\"0\" />\r\n</div>\r\n<div style=\"text-align:center;\">\r\n	展会现场。 刘宁 摄<br />\r\n&nbsp;\r\n</div>\r\n<p>\r\n	　　长城网保定3月30日讯(通讯员 刘宁 记者 李艮春)3月27日，为期两天的南非能源和电力展览会在约翰内斯堡桑顿会议中心开幕。英利携多主栅组件等高效光伏产品参展，成为展会唯一一家展出多主栅组件的光伏企业。\r\n</p>\r\n<p>\r\n	　　南非能源和电力展览会由南非特兰展览集团主办，是目前南非最大、最专业的电力展览会。展会吸引来自美国、中国、印度、意大利等多个国家共200余家企业，共同分享行业信息，寻求商机与合作。英利重点展出了多主栅组件、“熊猫”双面发电组件和智能无热斑组件。据英利参展人员介绍，展会仅有英利一家展出了多主栅组件，受到了与会来宾的青睐。\r\n</p>\r\n<p>\r\n	　　“多主栅组件作为英利2018年的明星产品，除了颜值超高之外，更重要的是降低光能浪费和获得更高的效率。”英利参展人员介绍，作为一种新兴的高效太阳能组件技术，多主栅能在大幅降低电池片生产过程中的银浆耗量的同时，提升5-7W的功率增益。相较于其他高效电池技术，多主栅技术不改变电池内部结构，性能稳定，更易实现量产。\r\n</p>', '1530600844', 'admin', '0', 'uploads/2018-06-26/b92b8d2edbe865e173ecb240bcb54d67.jpg', '10');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `pro_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '产品名称',
  `pro_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '产品预览图',
  `pro_description` text CHARACTER SET utf8 COMMENT '产品描述',
  `pro_content` text COLLATE utf8_unicode_ci COMMENT '产品介绍',
  `addtime` int(10) unsigned DEFAULT NULL,
  `additions` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人员',
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '灯泡', 'uploads/2018-06-26/8d08368f2dbca62669d805ed09bf1881.png', '灯泡灯泡                    ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1529975295', 'admin', '15');
INSERT INTO `product` VALUES ('2', '大型电池', 'uploads/2018-06-26/82e64a51e97001217c8e6b2b28ad1595.png', '大型电池                    ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1529975275', 'admin', '15');
INSERT INTO `product` VALUES ('3', '太阳能板', 'uploads/2018-06-26/27567ab84a2d3a3109af4154745cc273.png', '太阳能板                                        ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1529975211', 'admin', '15');
INSERT INTO `product` VALUES ('4', '空调', 'uploads/2018-06-27/03d017d11b9018aba8f80cdc35aaad9b.png', '公司对每一个项目从方案设计、生产加工、物流配送、安装调试及售...                    ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1530068790', 'admin', '14');
INSERT INTO `product` VALUES ('6', '热水器', 'uploads/2018-06-27/b01c2ce25e34f80d499f0488d034b00b.png', '制造冷气部分和制造热水部分。其实这两个部分又是紧密地联系在一起...                                        ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1530068783', 'admin', '14');
INSERT INTO `product` VALUES ('7', '电子秤', 'uploads/2018-06-27/b07f55c7fd136392763729b9782f7776.png', '密不可分，且必须同时工作。即制造热水的同时，给厨房制冷...                                        ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1530068774', 'admin', '14');
INSERT INTO `product` VALUES ('9', '飞机', 'uploads/2018-06-26/0aaabbd4c5ffc552e39847fbea1630c1.png', '                        音速飞机                                        ', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1530503696', 'admin', '13');
INSERT INTO `product` VALUES ('10', '灯管', 'uploads/2018-06-26/eed4691f43cf4faf41007ab142652fb4.png', '灯管灯管', '<ul>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器品牌: 威豪福临门\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			CCC证书编号: 2016010706840003\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			型号: flm-202\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			采购地: 中国大陆\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			热水器类型: 一体式\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			颜色分类: 304经济型18管主机 304经济\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			最大容积（L）: 200L以上\r\n		</p>\r\n	</li>\r\n	<li>\r\n		<span></span> \r\n		<p>\r\n			能效等级: 一级\r\n		</p>\r\n	</li>\r\n</ul>', '1530503704', 'admin', '16');

-- ----------------------------
-- Table structure for `setup`
-- ----------------------------
DROP TABLE IF EXISTS `setup`;
CREATE TABLE `setup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup
-- ----------------------------
INSERT INTO `setup` VALUES ('1', 'logo', 'uploads/2018-06-28/1bb87d41d15fe27b500a4bfcde01bb0e.png', '1');
INSERT INTO `setup` VALUES ('2', '官方微信', 'uploads/2018-06-28/cfa575bf96a962dfe1cf0ee5f7779d6a.png', '1');
INSERT INTO `setup` VALUES ('3', '企业地址', '上海市浦东新区金桥路福建天安大厦9层901', '0');
INSERT INTO `setup` VALUES ('4', '企业电话', '028-8621593', '0');
INSERT INTO `setup` VALUES ('5', '企业传真', '028-8621593', '0');
INSERT INTO `setup` VALUES ('6', '企业QQ', '5684125645', '0');
INSERT INTO `setup` VALUES ('7', '企业网址', 'WWW.YINGTE.COM', '0');
INSERT INTO `setup` VALUES ('8', '联系人', '周女士', '0');
INSERT INTO `setup` VALUES ('9', '联系电话', '13856212359', '0');
