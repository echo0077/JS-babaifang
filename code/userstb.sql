/*
Navicat MySQL Data Transfer

Source Server         : fengjie
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : userstb

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-10-12 22:45:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `cid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dateline` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `support` int(20) DEFAULT NULL,
  `oppose` int(20) DEFAULT NULL,
  `gid` int(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('116', 'feng@qq.con', '为二位非常大市场', '2019-10-10 21:46:08', '0', '0', '49');
INSERT INTO `content` VALUES ('117', 'feng@qq.con', '范德萨', '2019-10-10 21:48:00', '0', '0', '49');
INSERT INTO `content` VALUES ('118', 'feng@qq.con', '阿斯顿法国', '2019-10-12 09:48:51', '6', '0', '1');
INSERT INTO `content` VALUES ('119', 'feng@qq.con', '热武器热无群', '2019-10-12 09:48:53', '0', '2', '1');
INSERT INTO `content` VALUES ('120', 'feng@qq.con', '范德萨', '2019-10-10 21:59:14', '0', '0', '1');
INSERT INTO `content` VALUES ('121', 'feng@qq.con', '氨基酸的勘察', '2019-10-10 22:12:29', '5', '5', '52');
INSERT INTO `content` VALUES ('122', 'feng@qq.con', '啊终于写完了留言板，我要枯liao', '2019-10-10 22:14:45', '2', '3', '58');
INSERT INTO `content` VALUES ('112', 'feng@qq.con', '二维大多', '2019-10-10 21:37:45', '0', '0', '49');
INSERT INTO `content` VALUES ('113', 'feng@qq.con', '撒大声地', '2019-10-10 21:40:19', '0', '0', '49');
INSERT INTO `content` VALUES ('114', 'feng@qq.con', '违法的武器啊', '2019-10-10 21:41:48', '0', '0', '49');
INSERT INTO `content` VALUES ('115', 'feng@qq.con', '温热无大', '2019-10-11 12:38:57', '6', '5', '49');
INSERT INTO `content` VALUES ('123', '13111111111', '氛围防守打法侧翻', '2019-10-10 23:10:13', '1', '1', '54');
INSERT INTO `content` VALUES ('124', 'ying@qq.con', '八百方的商品均来自正规合法药房，八百方作为第三方医药平台仅做信息展示。', '2019-10-10 23:21:34', '9', '6', '161');
INSERT INTO `content` VALUES ('125', 'feng@qq.con', '困顿，纠结，这时候应该怎么办呢，来瓶红牛，红牛就是无限能量', '2019-10-11 07:59:33', '2', '1', '57');
INSERT INTO `content` VALUES ('126', 'feng@qq.con', 'ε=(´ο｀*)))唉', '2019-10-11 08:02:49', '7', '2', '61');
INSERT INTO `content` VALUES ('127', 'feng@qq.con', '可怜弱小又无助', '2019-10-11 08:05:21', '5', '0', '61');
INSERT INTO `content` VALUES ('128', 'feng@qq.con', '还有什么可爱的表情，在哪里，在梦里梦里梦里多甜蜜', '2019-10-11 08:05:20', '4', '0', '61');
INSERT INTO `content` VALUES ('129', 'ying@qq.con', '我这里最贵的居然是肾宝片，啧', '2019-10-11 12:41:24', '4', '1', '162');
INSERT INTO `content` VALUES ('130', 'ying@qq.con', '只卖得起这么便宜的药', '2019-10-11 12:56:17', '2', '0', '77');
INSERT INTO `content` VALUES ('131', 'ying@qq.con', '维生素E软胶囊', '2019-10-11 13:12:01', '0', '0', '86');
INSERT INTO `content` VALUES ('132', 'ying@qq.con', '我让他与', '2019-10-11 15:13:20', '6', '5', '81');
INSERT INTO `content` VALUES ('133', 'ying@qq.con', '理我看到啦时刻打开速度快', '2019-10-11 16:03:29', '1', '0', '64');
INSERT INTO `content` VALUES ('134', 'ying@qq.con', '二维二翁', '2019-10-12 00:26:48', '1', '1', '50');
INSERT INTO `content` VALUES ('135', 'feng@qq.con', '哎呀好想睡觉啊', '2019-10-12 10:40:48', '0', '0', '50');
INSERT INTO `content` VALUES ('136', '13111111111', '好药啊', '2019-10-12 13:39:45', '3', '5', '179');
INSERT INTO `content` VALUES ('137', '13111111111', '阿斯顿法国和健康', '2019-10-12 13:41:06', '7', '5', '48');
INSERT INTO `content` VALUES ('138', '13111111111', '立即恢复到', '2019-10-12 13:41:24', '7', '5', '48');
INSERT INTO `content` VALUES ('139', '13111111111', '困了饿了就喝王老吉', '2019-10-12 18:29:58', '7', '4', '66');
INSERT INTO `content` VALUES ('140', '', '任务分为非', '2019-10-12 21:13:35', '0', '0', '1');
INSERT INTO `content` VALUES ('141', '13121122222', '玩儿若群无多', '2019-10-12 21:16:18', '0', '0', '1');
INSERT INTO `content` VALUES ('142', '13422222222', '入单人套餐v', '2019-10-12 21:43:30', '9', '7', '1');
INSERT INTO `content` VALUES ('143', '13444444444', '如东方广场春风吹', '2019-10-12 21:38:25', '4', '4', '51');
INSERT INTO `content` VALUES ('144', '13555555555', '胡赛会继续哦便开始', '2019-10-12 21:49:18', '6', '4', '1');
INSERT INTO `content` VALUES ('145', '13666666666', '与会两节课', '2019-10-12 21:49:17', '4', '4', '1');
INSERT INTO `content` VALUES ('146', 'feng@qq.con', '都阿斯加德看都开始', '2019-10-12 22:33:00', '4', '4', '48');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `gid` int(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `shuliang` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `kucun` varchar(255) DEFAULT NULL,
  `priceall` float(20,0) DEFAULT NULL,
  `checked` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', 'ying@qq.con', '1', '波立维', '98.00', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '10', '98', 'true');
INSERT INTO `dingdan` VALUES ('54', 'ying@qq.con', '1', '合贝爽', '21.00', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '116', '21', 'true');
INSERT INTO `dingdan` VALUES ('50', 'ying@qq.con', '4', '万爽力', '45.00', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '108', '180', 'true');
INSERT INTO `dingdan` VALUES ('54', '13422222222', '6', '合贝爽', '21.00', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '116', '126', 'true');
INSERT INTO `dingdan` VALUES ('48', '13555555555', '3', '虎力散胶囊', '23.00', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '104', '69', 'true');
INSERT INTO `dingdan` VALUES ('51', '13444444444', '15', '散列通', '8.00', 'http://img.800pharm.com/images//product/99200/20120507/1336393199310.jpg', '110', '120', 'true');
INSERT INTO `dingdan` VALUES ('1', '13422222222', '10', '波立维', '98.00', 'http://img.800pharm.com/images//20170103/20170103164116_412.jpg', '10', '980', 'true');
INSERT INTO `dingdan` VALUES ('54', '13422222222', '1', '合贝爽', '21.00', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '116', '21', 'true');
INSERT INTO `dingdan` VALUES ('1', '13666666666', '1', '波立维', '98.00', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '10', '98', 'false');

-- ----------------------------
-- Table structure for inf
-- ----------------------------
DROP TABLE IF EXISTS `inf`;
CREATE TABLE `inf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `paw` varchar(255) NOT NULL,
  `passtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inf
-- ----------------------------
INSERT INTO `inf` VALUES ('1', '13122222222', 'QQ12345', '2019-10-06 20:49:29');
INSERT INTO `inf` VALUES ('2', '13111111111', 'qq123456', '2019-10-07 13:24:39');
INSERT INTO `inf` VALUES ('4', 'feng@qq.con', 'qq123456', '2019-10-07 18:55:24');
INSERT INTO `inf` VALUES ('10', '13144444444', 'qq123456', '2019-10-07 19:43:02');
INSERT INTO `inf` VALUES ('11', 'ying@qq.con', 'qq123456', '2019-10-10 23:11:36');
INSERT INTO `inf` VALUES ('12', 'yuan@qq.con', 'qq123456', '2019-10-12 10:46:09');
INSERT INTO `inf` VALUES ('15', 'liqi@qq.con', 'qq123456', '2019-10-12 10:49:46');
INSERT INTO `inf` VALUES ('14', 'liu@qq.con', 'qq123456', '2019-10-12 10:46:55');
INSERT INTO `inf` VALUES ('16', '13155555555', 'qq123456', '2019-10-12 20:37:32');
INSERT INTO `inf` VALUES ('17', '13166666666', 'qq123456', '2019-10-12 21:00:06');
INSERT INTO `inf` VALUES ('18', '13188888888', 'qq123456', '2019-10-12 21:06:52');
INSERT INTO `inf` VALUES ('19', '13121122222', 'qq123456', '2019-10-12 21:14:33');
INSERT INTO `inf` VALUES ('20', '13422222222', 'qq123456', '2019-10-12 21:22:02');
INSERT INTO `inf` VALUES ('21', '13222222222', 'qq123456', '2019-10-12 21:33:01');
INSERT INTO `inf` VALUES ('22', '13444444444', 'qq123456', '2019-10-12 21:36:55');
INSERT INTO `inf` VALUES ('23', '13555555555', 'qq123456', '2019-10-12 21:41:57');
INSERT INTO `inf` VALUES ('24', '13666666666', 'qq123456', '2019-10-12 21:47:57');
INSERT INTO `inf` VALUES ('25', '13655555555', 'qq123456', '2019-10-12 22:30:38');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `shopName` varchar(255) DEFAULT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `tex` varchar(255) DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `gid` int(11) NOT NULL,
  `xiaoliang` int(11) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `kucun` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('波立维', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', ' --【Sanofi Winthrop Industrie 】', '氯吡格雷用于以下患者，预防动脉粥样硬化血栓形成事件： 近期心肌梗死患者（从几天到小于35天）、近期缺血性卒中患者（从7天到小于6个月）或确诊外周动脉性疾病的患者。 急性冠脉综合征的患者 非ST段抬高性急性冠脉综合征（包括不稳定性心绞痛或非Q波心肌梗死），包括经皮冠状动脉介入术后置入支架的患者，与阿司匹林合用。 用于ST段抬高性急性冠脉综合征患者，与阿司匹林联合，可合并在溶栓治疗中使用。更多信息参见【临床试验】', '功能主治：氯吡格雷用于以下患者，预防动脉粥样硬化血栓形成事件： 近期心肌梗死患者（从几天到小于35天）、近期缺血性卒中患者（从7天到小于6个月）或确诊外周动脉性疾病的患者。 急性冠', '98', '1', '30', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg,http://img.800pharm.com/images//20170103/20170103164116_412.jpg,http://img.800pharm.com/images//20170103/20170103164116_412.jpg,http://img.800pharm.com/images//20170103/20170103164116_412.jpg', '10');
INSERT INTO `list` VALUES ('虎力散胶囊', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', ' --【云南云河药业股份有限公司 】', '驱风除湿，舒筋活络，行瘀，消肿定痛。用于风湿麻木，筋骨疼痛，跌打损伤，创伤流血。', '功能主治：驱风除湿，舒筋活络，行瘀，消肿定痛。用于风湿麻木，筋骨疼痛，跌打损伤，创伤流血。', '23', '48', '121', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '104');
INSERT INTO `list` VALUES ('强力定眩片', 'http://img.800pharm.com/images//20160202/20160202153530_65.jpg', ' --【陕西汉王药业有限公司】', '降压、降脂、定眩。用于高血压、动脉硬化、高血脂症以及上述诸病引起的头痛、头晕、目眩、耳鸣、失眠等症。', '功能主治：降压、降脂、定眩。用于高血压、动脉硬化、高血脂症以及上述诸病引起的头痛、头晕、目眩、耳鸣、失眠等症。', '26', '49', '123', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '106');
INSERT INTO `list` VALUES ('万爽力', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', ' --【施维雅(天津)制药有限公司 】', '心绞痛发作的预防性治疗，眩晕和耳鸣的辅助性对症治疗。', '功能主治：心绞痛发作的预防性治疗，眩晕和耳鸣的辅助性对症治疗。', '45', '50', '125', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '108');
INSERT INTO `list` VALUES ('散列通', 'http://img.800pharm.com/images//product/99200/20120507/1336393199310.jpg', ' --【西南药业股份有限公司 】', '用于普通感冒或流行性感冒引起的发热，也用于缓解轻至中度疼痛如头痛、关节痛、偏头痛、牙痛、肌肉痛、神经痛、痛经。', '功能主治：用于普通感冒或流行性感冒引起的发热，也用于缓解轻至中度疼痛如头痛、关节痛、偏头痛、牙痛、肌肉痛、神经痛、痛经。', '8', '51', '127', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '110');
INSERT INTO `list` VALUES ('利焕', 'http://img.800pharm.com/images//20160830/20160830141809_555.jpg', ' --【南京白敬宇制药有限责任公司 】', '各种类型的高血压及心绞痛', '功能主治：各种类型的高血压及心绞痛', '10', '52', '129', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '112');
INSERT INTO `list` VALUES ('玄宁', 'http://img.800pharm.com/images//product/base/20130508/1367997102145.jpg', ' --【石药集团欧意药业有限公司 】', '1．高血压病。可单独使用本品治疗也可与其他抗高血压药物合用。\n2．慢性稳定性心绞痛及变异型心绞痛。可单独使用本品治疗也可与其他抗心绞痛药物合用。', '功能主治：1．高血压病。可单独使用本品治疗也可与其他抗高血压药物合用。\n2．慢性稳定性心绞痛及变异型心绞痛。可单独使用本品治疗也可与其他抗心绞痛药物合用。', '43', '53', '131', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '114');
INSERT INTO `list` VALUES ('合贝爽', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', ' --【天津田边制药有限公司 】', '用于轻、中度高血压及心绞痛。', '功能主治：用于轻、中度高血压及心绞痛。', '21', '54', '133', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '116');
INSERT INTO `list` VALUES ('络德', 'http://img.800pharm.com/images///pms/upload/images/original/032017/22160/1d5b9d4c7183d964a8745012b8e2668e06252a16.jpg', ' --【北京巨能制药有限责任公司 】', '能治轻、中度高血压，可单独或与其他抗高血压（尤其是噻嗪类利尿剂）联合应用。', '功能主治：能治轻、中度高血压，可单独或与其他抗高血压（尤其是噻嗪类利尿剂）联合应用。', '18', '55', '135', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '118');
INSERT INTO `list` VALUES ('博苏', 'http://img.800pharm.com/images//20160126/20160126101956_775.jpg', ' --【北京华素制药股份有限公司 】', '用于原发性高血压心绞痛治疗。伴有心室收缩功能减退的中度至重度慢性稳定性心力衰竭。在使用本品前，需要遵医嘱接受ACE抑制剂、利尿剂和选择性使用强心苷类药物治疗。 ', '功能主治：用于原发性高血压心绞痛治疗。伴有心室收缩功能减退的中度至重度慢性稳定性心力衰竭。在使用本品前，需要遵医嘱接受ACE抑制剂、利尿剂和选择性使用强心苷类药物治疗。 ', '18', '56', '137', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '120');
INSERT INTO `list` VALUES ('泰嘉', 'http://img.800pharm.com/images///pms/upload/images/original/062018/27093/1e8ba5a25632a52e55f0e980dd942e3e59f681b5.jpg', ' --【深圳信立泰药业股份有限公司 】', '预防和治疗因血小板高聚集状态引起的心、脑及其它动脉的循环障碍疾病。', '功能主治：预防和治疗因血小板高聚集状态引起的心、脑及其它动脉的循环障碍疾病。', '70', '57', '139', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '122');
INSERT INTO `list` VALUES ('云南白药', 'http://img.800pharm.com/images//20160122/20160122105929_945.jpg', ' --【云南白药集团股份有限公司 】', '化瘀止血，活血止痛，解毒消肿。用于跌打损伤，瘀血肿痛，吐血，咳血，便血，痔血，崩漏下血，疮疡肿毒及软组织挫伤，闭合性骨折，支气管扩张及肺结核咳血，溃疡病出血，以及皮扶感染性疾病。 ', '功能主治：化瘀止血，活血止痛，解毒消肿。用于跌打损伤，瘀血肿痛，吐血，咳血，便血，痔血，崩漏下血，疮疡肿毒及软组织挫伤，闭合性骨折，支气管扩张及肺结核咳血，溃疡病出血，以及皮', '20', '58', '141', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '124');
INSERT INTO `list` VALUES ('伲福达', 'http://img.800pharm.com/images///pms/upload/images/original/042017/21110/e77a9cc495046c9048da3a6ee6f286b5c03220b4.jpg', ' --【青岛黄海制药有限责任公司 】', '用于治疗高血压、心绞痛。', '功能主治：用于治疗高血压、心绞痛。', '21', '59', '143', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '126');
INSERT INTO `list` VALUES ('通心络胶囊', 'http://img.800pharm.com/images//20151023/20151023135153_462.png', ' --【石家庄以岭药业股份有限公司 】', '益气活血、通络止痛。用于冠心病心绞痛属心气虚乏、血瘀络阻证，症见胸部憋闷，刺痛、绞痛、固定不移，心悸自汗，气短乏力，舌质紫暗或有瘀斑，脉细涩或结代。亦用于气虚血瘀络阻型中风病，症见半身不遂或偏身麻木，口舌歪斜，言语不利。', '功能主治：益气活血、通络止痛。用于冠心病心绞痛属心气虚乏、血瘀络阻证，症见胸部憋闷，刺痛、绞痛、固定不移，心悸自汗，气短乏力，舌质紫暗或有瘀斑，脉细涩或结代。亦用于气虚血瘀络', '27', '60', '145', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '128');
INSERT INTO `list` VALUES ('倍他乐克', 'http://img.800pharm.com/images//20151118/20151118142854_243.jpg', ' --【AstraZeneca AB 】', '用于治疗高血压。心绞痛。伴有左心室收缩功能异常的症状稳定的慢性心力衰竭。', '功能主治：用于治疗高血压。心绞痛。伴有左心室收缩功能异常的症状稳定的慢性心力衰竭。', '17', '61', '147', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '130');
INSERT INTO `list` VALUES ('倍他乐克', 'http://img.800pharm.com/images//20160126/20160126150508_795.jpg', ' --【阿斯利康制药有限公司 】', '用于治疗高血压、心绞痛、心肌梗死、肥厚型心肌病、主动脉夹层、心律失常、甲状腺功能亢进、心脏神经官能症等。近年来尚用于心力衰竭的治疗，此时应在有经验的医师指导下使用。', '功能主治：用于治疗高血压、心绞痛、心肌梗死、肥厚型心肌病、主动脉夹层、心律失常、甲状腺功能亢进、心脏神经官能症等。近年来尚用于心力衰竭的治疗，此时应在有经验的医师指导下使用。', '8', '62', '149', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '132');
INSERT INTO `list` VALUES ('阿咖酚散', 'http://img.800pharm.com/images//20161012/20161012154559_697.jpg', ' --【广州白云山制药股份有限公司白云山何济公制药厂】', '用于感冒流感引起的发热、头痛；也用于缓解轻、中度疼痛如关节痛、神经痛、牙痛月经痛、肌肉痛、神经痛、痛经。 ', '功能主治：用于感冒流感引起的发热、头痛；也用于缓解轻、中度疼痛如关节痛、神经痛、牙痛月经痛、肌肉痛、神经痛、痛经。 ', '10', '63', '151', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '134');
INSERT INTO `list` VALUES ('感冒清热软胶囊', 'http://img.800pharm.com/images//20160429/20160429134937_985.jpg', ' --【石药集团欧意药业有限公司 】', '疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', '功能主治：疏风散寒，解表清热。用于风寒感冒，头痛发热，恶寒身痛，鼻流清涕，咳嗽咽干。', '20', '64', '153', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '136');
INSERT INTO `list` VALUES ('益盛振源胶囊', 'http://img.800pharm.com/images//20160825/20160825111957_185.jpg', ' --【吉林省集安益盛药业股份有限公司 】', '益气通脉，宁心安神，生津止渴。用于胸痹、心悸、不寐，消渴气虚证，症见痛胸闷；心悸不安，失眠健忘，口渴多饮气短乏力；冠心病，心绞痛，心律失常，神经衰弱，2型糖尿病见上述证候者。', '功能主治：益气通脉，宁心安神，生津止渴。用于胸痹、心悸、不寐，消渴气虚证，症见痛胸闷；心悸不安，失眠健忘，口渴多饮气短乏力；冠心病，心绞痛，心律失常，神经衰弱，2型糖尿病见上述', '30', '65', '155', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '138');
INSERT INTO `list` VALUES ('王老吉', 'http://img.800pharm.com/images//20160307/20160307172952_969.jpg', ' --【广州王老吉药业股份有限公司 】', '清热解暑，去湿生津。用于四时感冒，发热喉痛，湿热积滞，口干尿赤。', '功能主治：清热解暑，去湿生津。用于四时感冒，发热喉痛，湿热积滞，口干尿赤。', '17', '66', '157', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '140');
INSERT INTO `list` VALUES ('血塞通片', 'http://img.800pharm.com/images//20160202/20160202101116_813.jpg', ' --【云南维和药业股份有限公司 】', '活血祛瘀，通脉活络，抑制血小板聚集和增加脑血流量。用于脑路瘀阻，中风偏瘫，心脉瘀阻，胸痹心痛；脑血管病后遗症，冠心病心绞痛属上述证候者。', '功能主治：活血祛瘀，通脉活络，抑制血小板聚集和增加脑血流量。用于脑路瘀阻，中风偏瘫，心脉瘀阻，胸痹心痛；脑血管病后遗症，冠心病心绞痛属上述证候者。', '14', '67', '159', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '142');
INSERT INTO `list` VALUES ('思考林', 'http://img.800pharm.com/images///pms/upload/images/original/072019/18113/bd0e10f08c98d281bf53d9c2bec560447fba6c3d.jpg', ' --【齐鲁制药有限公司 】', '胞磷胆碱：用于治疗颅脑损伤或脑血管意外所引起的神经系统的后遗症。\n抗栓胶囊：活血化瘀，抗栓通脉。用于血栓闭塞性脉管炎瘀血阻络证。对脑血栓、心肌梗塞，血栓性静脉炎等亦有较好的辅助治疗作用。\n乌龙养血胶囊：补气养血。适用于气血亏虚所致的身倦乏力，心悸，胸闷，多梦，神疲等症。\n中智草晶华红景天破壁草本：益气活血，通脉平喘。用于气虚血瘀，胸痹心痛，中风偏瘫，倦怠气喘。', '功能主治：胞磷胆碱：用于治疗颅脑损伤或脑血管意外所引起的神经系统的后遗症。\n抗栓胶囊：活血化瘀，抗栓通脉。用于血栓闭塞性脉管炎瘀血阻络证。对脑血栓、心肌梗塞，血栓性静脉炎等亦', '46', '68', '161', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '144');
INSERT INTO `list` VALUES ('海昆肾喜胶囊', 'http://img.800pharm.com/images///pms/upload/images/original/072017/24153/58e94a62a792a76e0a22ac8ae508a92810fd5abc.jpg', ' --【吉林省辉南长龙生化药业股份有限公司 】', '化浊排毒。用于慢性肾功能衰竭（代偿期 失代偿期和尿毒症早期）湿浊证，证见恶心 呕吐 纳差 腹胀 慎重困倦 尿少 浮肿 苔厚腻。', '功能主治：化浊排毒。用于慢性肾功能衰竭（代偿期 失代偿期和尿毒症早期）湿浊证，证见恶心 呕吐 纳差 腹胀 慎重困倦 尿少 浮肿 苔厚腻。', '67', '69', '163', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '146');
INSERT INTO `list` VALUES ('欧来宁', 'http://img.800pharm.com/images///pms/upload/images/original/072017/28135/2d5307256790bb188ab79291ef91cacf889bc2d1.jpg', ' --【石药集团欧意药业有限公司 】', '适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '功能主治：适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '88', '70', '165', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '148');
INSERT INTO `list` VALUES ('复方鳖甲软肝片', 'http://img.800pharm.com/images//20170109/20170109101740_967.jpg', ' --【内蒙古福瑞医疗科技股份有限公司 】', '软坚散结，化瘀解毒，益气养血，用于慢性肝炎肝纤维化，以及早期肝硬化属瘀血阻络，气血亏虚，兼热毒未尽证。症见：胁肋隐痛或肋下痞块，面色晦黯，脘腹胀满，纳差便溏，神疲乏力，口干口苦，赤缕红丝等。', '功能主治：软坚散结，化瘀解毒，益气养血，用于慢性肝炎肝纤维化，以及早期肝硬化属瘀血阻络，气血亏虚，兼热毒未尽证。症见：胁肋隐痛或肋下痞块，面色晦黯，脘腹胀满，纳差便溏，神疲乏', '155', '71', '167', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '150');
INSERT INTO `list` VALUES ('参柴肝康软胶囊', 'http://img.800pharm.com/images//product/80000/20130125/1359108271585.jpg', ' --【深圳市佳泰药业股份有限公司 】', '益气舒肝。用于急、慢性肝炎属气虚肝郁证者。', '功能主治：益气舒肝。用于急、慢性肝炎属气虚肝郁证者。', '25', '72', '169', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '152');
INSERT INTO `list` VALUES ('欧兰宁', 'http://img.800pharm.com/images///pms/upload/images/original/032017/20154/17e4674e0c06583b59c7a52e3361c57eb8d21f40.jpg', ' --【江苏豪森药业股份有限公司 】', '奥氮平用于治疗精神分裂症。初始治疗有效的患者，奥氮平在维持治疗期间能够保持基临床效果。奥氮平用于治疗、重度躁狂发作。对奥氮平治疗有效的躁狂发作患者，奥氮平可用于预防双相情感障碍的复发。', '功能主治：奥氮平用于治疗精神分裂症。初始治疗有效的患者，奥氮平在维持治疗期间能够保持基临床效果。奥氮平用于治疗、重度躁狂发作。对奥氮平治疗有效的躁狂发作患者，奥氮平可用于预防', '89', '73', '171', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '154');
INSERT INTO `list` VALUES ('癫痫宁片', 'http://img.800pharm.com/images//20160805/20160805092904_208.jpg', ' --【昆明中药厂有限公司 】', '豁痰开窍，息风安神。用于风痰上扰癫痫病，发作时症见突然昏倒，不省人事，四肢抽搐，喉中痰鸣，口吐涎沫或眼目上视，少倾清醒等症。或用于癔病、失眠等。', '功能主治：豁痰开窍，息风安神。用于风痰上扰癫痫病，发作时症见突然昏倒，不省人事，四肢抽搐，喉中痰鸣，口吐涎沫或眼目上视，少倾清醒等症。或用于癔病、失眠等。', '18', '74', '173', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '156');
INSERT INTO `list` VALUES ('卓夫', 'http://img.800pharm.com/images//20160120/20160120095157_906.jpg', ' --【齐鲁制药有限公司 】', '用于治疗急性和慢性精神分裂症以及其它各种精神病性状态的明显的阳性症状如幻觉、幻想、思维紊乱、敌视、怀疑和明显的阴性症状如反应迟钝、情绪淡漠及社交淡漠、少语。也可减轻与精神分裂症有关的情感症状如：抑郁、负罪感、焦虑。 对于急性期治疗有效的患者，在维持期治疗中，维思通可继续发挥其临床疗效。', '功能主治：用于治疗急性和慢性精神分裂症以及其它各种精神病性状态的明显的阳性症状(如幻觉、幻想、思维紊乱、敌视、怀疑)和明显的阴性症状(如反应迟钝、情绪淡漠及社交淡漠、少语)。也可', '15', '75', '175', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '158');
INSERT INTO `list` VALUES ('夏桑菊颗粒', 'http://img.800pharm.com/images//product/base/20111223/10611481.jpg', ' --【葵花药业集团(重庆)有限公司 】', '清肝明目，疏风散热，除湿痹，解疮毒。用于风热感冒，目赤头痛，头晕耳鸣，咽喉肿痛，疔疮肿毒等症，并可作清凉饮料。', '功能主治：清肝明目，疏风散热，除湿痹，解疮毒。用于风热感冒，目赤头痛，头晕耳鸣，咽喉肿痛，疔疮肿毒等症，并可作清凉饮料。', '20', '76', '177', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '160');
INSERT INTO `list` VALUES ('穿心莲片', 'http://img.800pharm.com/images//product/base/20111223/10616461.jpg', ' --【湖南中和制药有限公司 】', '清热解毒，凉血消肿。用于邪毒内盛，感冒发热，咽喉肿痛，口舌生疮。', '功能主治：清热解毒，凉血消肿。用于邪毒内盛，感冒发热，咽喉肿痛，口舌生疮。', '3', '77', '179', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '162');
INSERT INTO `list` VALUES ('乳癖康胶囊', 'http://img.800pharm.com/images//product/base/20111223/10908391.jpg', ' --【株洲千金药业股份有限公司 】', '疏肝理气，活血化瘀。用于肝气郁结，气滞血瘀所致的乳腺增生，乳房涨痛。', '功能主治：疏肝理气，活血化瘀。用于肝气郁结，气滞血瘀所致的乳腺增生，乳房涨痛。', '42', '78', '181', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '164');
INSERT INTO `list` VALUES ('福静清', 'http://img.800pharm.com/images///pms/upload/images/original/032017/20111/b0394232b4d66ef3e2677101cfde000e05863f66.jpg', ' --【Beaufour Ipsen Industrie 】', '缓解成人便秘的症状。', '功能主治：缓解成人便秘的症状。', '180', '79', '183', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '166');
INSERT INTO `list` VALUES ('艾附暖宫丸', 'http://img.800pharm.com/images//product/base/20111223/11208511.jpg', ' --【兰州佛慈制药股份有限公司 】', '理气养血，暖宫调经。用于血虚气滞、下焦虚寒所致的月经不调、痛经，症见行经后错、经量少、有血块、小腹疼痛、经行小腹冷痛喜热、腰膝痠痛。', '功能主治：理气养血，暖宫调经。用于血虚气滞、下焦虚寒所致的月经不调、痛经，症见行经后错、经量少、有血块、小腹疼痛、经行小腹冷痛喜热、腰膝痠痛。', '16', '80', '185', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '168');
INSERT INTO `list` VALUES ('木香通气丸', 'http://img.800pharm.com/images//product/base/20111223/11212061.jpg', ' --【天津中新药业集团股份有限公司达仁堂制药厂 】', '行气化湿，健脾和胃。用于湿浊阻滞气机所致的胸膈痞闷，脘腹胀痛，呕吐恶心，嗳气纳呆。', '功能主治：行气化湿，健脾和胃。用于湿浊阻滞气机所致的胸膈痞闷，脘腹胀痛，呕吐恶心，嗳气纳呆。', '17', '81', '187', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '170');
INSERT INTO `list` VALUES ('盐酸曲唑酮片', 'http://img.800pharm.com/images//20160309/20160309165052_53.jpg', ' --【Lotus Pharmaceutical CO.LTD 】', '用于抑郁症的治疗，对于伴有或不伴焦虑症的患者均有效。', '功能主治：用于抑郁症的治疗，对于伴有或不伴焦虑症的患者均有效。', '72', '82', '189', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '172');
INSERT INTO `list` VALUES ('马来酸氯苯那敏片', 'http://img.800pharm.com/images//product/base/20111223/11900611.jpg', ' --【黑龙江百泰药业有限公司 】', '本品适用于皮肤过敏症：荨麻疹、湿疹、皮炎、药疹、皮肤瘙痒症、神经性皮炎、虫咬症、日光性皮炎。也可用于过敏性鼻炎，药物及食物过敏。', '功能主治：本品适用于皮肤过敏症：荨麻疹、湿疹、皮炎、药疹、皮肤瘙痒症、神经性皮炎、虫咬症、日光性皮炎。也可用于过敏性鼻炎，药物及食物过敏。', '12', '83', '191', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '174');
INSERT INTO `list` VALUES ('法莫替丁钙镁咀嚼片', 'http://img.800pharm.com/images//product/base/20111231/0127861.jpg', ' --【金日制药(中国)有限公司 】', '适用于缓解成人及12岁以上儿童由于胃酸过多引起的胃灼热（烧心）、反酸、胃疼、胃部不适等症状。\n', '功能主治：适用于缓解成人及12岁以上儿童由于胃酸过多引起的胃灼热（烧心）、反酸、胃疼、胃部不适等症状。\n', '18', '84', '193', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '176');
INSERT INTO `list` VALUES ('葡萄糖酸锌口服溶液', 'http://img.800pharm.com/images//product/base/20111231/1413551.jpg', ' --【广西方略药业集团有限公司 】', '用于治疗因缺钙、锌引起的疾病，包括骨质疏松，手足抽搐症，骨发育不全，佝偻病、妊娠妇女和哺乳期妇女、绝经期妇女钙的补充，小儿生长发育迟缓，食欲缺乏，厌食症，复发性口腔溃疡以及痤疮等。', '功能主治：用于治疗因缺钙、锌引起的疾病，包括骨质疏松，手足抽搐症，骨发育不全，佝偻病、妊娠妇女和哺乳期妇女、绝经期妇女钙的补充，小儿生长发育迟缓，食欲缺乏，厌食症，复发性口腔', '30', '85', '195', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '178');
INSERT INTO `list` VALUES ('维生素E软胶囊	', 'http://img.800pharm.com/images//product/base/20111231/0307291.jpg', ' --【广东三才石岐制药有限公司 】', '用于心、脑血管疾病及习惯性流产、不孕症的辅助治疗', '功能主治：用于心、脑血管疾病及习惯性流产、不孕症的辅助治疗', '7', '86', '197', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '180');
INSERT INTO `list` VALUES ('氟美童', 'http://img.800pharm.com/images//product/99500/20110513/1305253415876.jpg', ' --【Santen Pharmaceutical Co., Ltd. Shiga Plant 】', '外眼部和前眼部的炎症性疾病眼睑炎、结膜炎、角膜炎、巩膜炎、表层巩膜炎、虹膜炎、虹膜睫状体炎、葡萄膜炎、术后炎症等。', '功能主治：外眼部和前眼部的炎症性疾病(眼睑炎、结膜炎、角膜炎、巩膜炎、表层巩膜炎、虹膜炎、虹膜睫状体炎、葡萄膜炎、术后炎症等)。', '26', '87', '199', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '182');
INSERT INTO `list` VALUES ('清热通淋片', 'http://img.800pharm.com/images//product/base/20111231/0133181.jpg', ' --【长春海外制药集团有限公司 】', '清热，利湿，通淋。用于下焦湿热所致热淋，症见小便频急、尿道刺痛、尿液浑浊、口干苦等 以及急性下尿路泌尿系感染见于上述症侯者。', '功能主治：清热，利湿，通淋。用于下焦湿热所致热淋，症见小便频急、尿道刺痛、尿液浑浊、口干苦等 以及急性下尿路泌尿系感染见于上述症侯者。', '21', '88', '201', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '184');
INSERT INTO `list` VALUES ('柴黄胶囊', 'http://img.800pharm.com/images//20161111/20161111134504_794.jpg', ' --【广西方略药业集团有限公司 】', '清热解毒。用于感冒引起的发热，周身不适，头痛目眩，咽喉肿痛。', '功能主治：清热解毒。用于感冒引起的发热，周身不适，头痛目眩，咽喉肿痛。', '15', '89', '203', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '186');
INSERT INTO `list` VALUES ('三黄片薄膜衣', 'http://img.800pharm.com/images///pms/upload/images/original/032017/06144/1332de91ba9bf9bdef3966314344b0619990989b.jpg', ' --【新乡佐今明制药股份有限公司】', '清热解毒。用于火热内盛，咽喉肿痛，牙龈肿痛，口舌生疮，目赤肿痛。', '功能主治：清热解毒。用于火热内盛，咽喉肿痛，牙龈肿痛，口舌生疮，目赤肿痛。', '13', '90', '205', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '188');
INSERT INTO `list` VALUES ('欧来宁', 'http://img.800pharm.com/images///pms/upload/images/original/022017/21153/7a97e13f68a71a8d54d792e44a08ce81a8839501.jpg', ' --【石药集团欧意药业有限公司 】', '适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '功能主治：适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '75', '91', '207', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '190');
INSERT INTO `list` VALUES ('德巴金', 'http://img.800pharm.com/images//20160112/20160112114525_632.jpg', ' --【赛诺菲 (杭州)制药有限公司 】', '癫痫\n既可作为单药治疗，可也作为添加治疗。\n用于治疗全面性癫痫：包括失神发作、肌阵挛发作、强直阵挛发作、失张力发作及混合型发作，特殊类型综合征（WEST,LENNOX-GASTAUT综合征）等。\n用于治疗部分性癫痫：局部癫痫发作、伴有或不伴有全面性发作。\n躁狂症\n用于治疗与双相情感障碍相关的躁狂发作。', '功能主治：癫痫\n既可作为单药治疗，可也作为添加治疗。\n用于治疗全面性癫痫：包括失神发作、肌阵挛发作、强直阵挛发作、失张力发作及混合型发作，特殊类型综合征（WEST,LENNOX-GASTAUT综', '79', '92', '209', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '192');
INSERT INTO `list` VALUES ('益智康脑丸', 'http://img.800pharm.com/images//20160120/20160120093453_985.jpg', ' --【广西强寿药业集团有限公司 】', '补肾益脾，健脑生髓。用于脾肾不足，精血亏虚所致健忘头昏，倦食少，腰膝酸软。', '功能主治：补肾益脾，健脑生髓。用于脾肾不足，精血亏虚所致健忘头昏，倦食少，腰膝酸软。', '35', '93', '211', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '194');
INSERT INTO `list` VALUES ('安神镇惊二十味丸', 'http://img.800pharm.com/images//20160811/20160811095023_702.jpg', ' --【阜新蒙药有限责任公司 】', '镇惊，安神，行气。用于心慌气短，心神不安，气血淤滞，胸肋刺痛等。', '功能主治：镇惊，安神，行气。用于心慌气短，心神不安，气血淤滞，胸肋刺痛等。', '20', '94', '213', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '196');
INSERT INTO `list` VALUES ('左洛复', 'http://img.800pharm.com/images//20151224/20151224093358_103.jpg', ' --【辉瑞制药有限公司 】', '舍曲林用于治疗抑郁症的相关症状，包括伴随焦虑、有或无躁狂史的抑郁症。疗效满意后，继续服用舍曲林可有效地防止抑郁症的复发和再发。\n舍曲林也用于治疗强迫症。疗效满意后，继续服用舍曲林可有效地防止强迫症初始症状的复发。', '功能主治：舍曲林用于治疗抑郁症的相关症状，包括伴随焦虑、有或无躁狂史的抑郁症。疗效满意后，继续服用舍曲林可有效地防止抑郁症的复发和再发。\n舍曲林也用于治疗强迫症。疗效满意后，', '95', '95', '215', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '198');
INSERT INTO `list` VALUES ('仁澳', 'http://img.800pharm.com/images//20160905/20160905103821_948.jpg', ' --【北京四环制药有限公司 】', '本品适用于治疗癫痫原发性全面性强直-阵挛发作和部分性发作，伴有或不伴有继发性全面性发作。 ', '功能主治：本品适用于治疗癫痫原发性全面性强直-阵挛发作和部分性发作，伴有或不伴有继发性全面性发作。 ', '41', '96', '217', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '200');
INSERT INTO `list` VALUES ('健朗星', 'http://img.800pharm.com/images//20160412/20160412093231_793.jpg', ' --【湖南健朗药业有限责任公司 】', '适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '功能主治：适用于轻中度血管性痴呆、老年性痴呆以及脑外伤等症引起的记忆与智能障碍。', '60', '97', '219', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '202');
INSERT INTO `list` VALUES ('启维', 'http://img.800pharm.com/images//20160112/20160112141015_728.jpg', ' --【湖南洞庭药业股份有限公司 】', '精神分裂症。', '功能主治：精神分裂症。', '45', '98', '221', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '204');
INSERT INTO `list` VALUES ('安律凡', 'http://img.800pharm.com/images//20160804/20160804150801_64.jpg', ' --【浙江大冢制药有限公司 】', '用于治疗精神分裂症。在精神分裂症患者的短期（4周和6周）对照试验中确立了阿立哌唑治疗精神分裂症的疗效。选择阿立哌唑用于长期治疗的医生应定期重新评估该药对个别患者的长期疗效。', '功能主治：用于治疗精神分裂症。在精神分裂症患者的短期（4周和6周）对照试验中确立了阿立哌唑治疗精神分裂症的疗效。选择阿立哌唑用于长期治疗的医生应定期重新评估该药对个别患者的长期', '108', '99', '223', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '206');
INSERT INTO `list` VALUES ('【舒坦罗】盐酸帕罗西汀片', 'http://img.800pharm.com/images//20160111/20160111160835_84.jpg', ' --【浙江尖峰药业有限公司 】', '适用于治疗各种类型的抑郁症，包括伴有焦虑的抑郁症及反应性抑郁症。治疗强迫性神经症。治疗伴有或不伴有广场恐怖的惊恐障碍。治疗社交恐怖症社交焦虑症。其它详见说明书。', '功能主治：适用于治疗各种类型的抑郁症，包括伴有焦虑的抑郁症及反应性抑郁症。治疗强迫性神经症。治疗伴有或不伴有广场恐怖的惊恐障碍。治疗社交恐怖症/社交焦虑症。其它详见说明书。', '30', '100', '225', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '208');
INSERT INTO `list` VALUES ('博思清', 'http://img.800pharm.com/images//20140730/20140730114029_23.jpg', ' --【成都康弘药业集团股份有限公司 】', '用于治疗精神分裂症。?\n在精神分裂症患者的短期（4周和6周）对照试验中确立了阿立哌唑治疗精神分裂症的疗效。选择阿立哌唑用于长期治疗的医生应定期重新评估该药对个别患者的长期疗效。', '功能主治：用于治疗精神分裂症。?\n在精神分裂症患者的短期（4周和6周）对照试验中确立了阿立哌唑治疗精神分裂症的疗效。选择阿立哌唑用于长期治疗的医生应定期重新评估该药对个别患者的长', '45', '101', '227', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '210');
INSERT INTO `list` VALUES ('消癌平口服液', 'http://img.800pharm.com/images//100115/20141203/20141203164053_67.jpg', ' --【河南中杰药业有限公司 】', '抗癌，消炎，平喘。用于食道癌、胃癌、肺癌、肝癌。对恶性淋巴瘤、大肠癌、宫颈癌、白血病等恶性肿瘤亦有疗效。并可配合放疗、化疗和手术后治疗。并用于慢性支气管炎、支气管哮喘。', '功能主治：抗癌，消炎，平喘。用于食道癌、胃癌、肺癌、肝癌。对恶性淋巴瘤、大肠癌、宫颈癌、白血病等恶性肿瘤亦有疗效。并可配合放疗、化疗和手术后治疗。并用于慢性支气管炎、支气管哮', '120', '161', '347', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '330');
INSERT INTO `list` VALUES ('汇仁肾宝片', 'http://img.800pharm.com/images///pms/upload/images/original/122018/26163/608555a1aad316266ff9695f528460f99382a145.jpg', ' --【江西汇仁药业有限公司 】', '调和阴阳，温阳补肾，扶正固本。用于腰腿酸痛，精神不振，夜尿频多，畏寒怕冷；妇女白带清稀。', '功能主治：调和阴阳，温阳补肾，扶正固本。用于腰腿酸痛，精神不振，夜尿频多，畏寒怕冷；妇女白带清稀。', '322', '162', '349', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '332');
INSERT INTO `list` VALUES ('【舒绪】盐酸曲唑酮片 ', 'http://img.800pharm.com/images///pms/upload/images/original/072018/12144/a020e1d31cffd3d0e951dc0561dfa12bda52d504.jpg', ' --【沈阳福宁药业有限公司 】', '用于治疗抑郁症和伴随抑郁症状的焦虑症以及药物依赖者戒断后的情绪障碍。', '功能主治：用于治疗抑郁症和伴随抑郁症状的焦虑症以及药物依赖者戒断后的情绪障碍。', '31', '163', '351', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '334');
INSERT INTO `list` VALUES ('开克', 'http://img.800pharm.com/images//product/59000/20110601/1306897351989.jpg', ' --【常州四药制药有限公司 】', '各种抑郁性精神障碍。包括轻性或重性抑郁症，双相情感性精神障碍的抑郁相，心因性抑郁及抑郁性神经症。', '功能主治：各种抑郁性精神障碍。包括轻性或重性抑郁症，双相情感性精神障碍的抑郁相，心因性抑郁及抑郁性神经症。', '28', '164', '353', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '336');
INSERT INTO `list` VALUES ('男宝胶囊', 'http://img.800pharm.com/images//20160412/20160412164836_43.jpg', ' --【天津力生制药股份有限公司 】', '壮阳补肾。用于肾阳不足引起的性欲淡漠，阳痿滑泄，腰腿酸痛，肾囊湿冷，精神萎靡，食欲不振等症。', '功能主治：壮阳补肾。用于肾阳不足引起的性欲淡漠，阳痿滑泄，腰腿酸痛，肾囊湿冷，精神萎靡，食欲不振等症。', '26', '165', '355', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '338');
INSERT INTO `list` VALUES ('头孢氨苄胶囊', 'http://img.800pharm.com/images//20141217/20141217141712_189.jpg', ' --【江西汇仁药业有限公司 】', '适用于敏感菌所致的急性扁桃体炎、咽峡炎、中耳炎、鼻窦炎、支气管炎、肺炎等呼吸道感染、尿路感染及皮肤软组织感染等。本品为口服制剂，不宜用于重症感染。', '功能主治：适用于敏感菌所致的急性扁桃体炎、咽峡炎、中耳炎、鼻窦炎、支气管炎、肺炎等呼吸道感染、尿路感染及皮肤软组织感染等。本品为口服制剂，不宜用于重症感染。', '12', '166', '357', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '340');
INSERT INTO `list` VALUES ('氨苄西林胶囊', 'http://img.800pharm.com/images///pms/upload/images/original/022018/08111/ab329db32dd404b272dfb8077054a7b5bbb6ab4f.jpg', ' --【海口奇力制药股份有限公司 】', '本品为广谱半合成青霉素，毒性极低。抗菌谱与青霉素相似，对草绿色链球、溶血性链球菌、肠球菌有较强的抗菌作用。白喉杆菌、炭疽杆菌、革兰氏阳性厌氧球菌和杆菌对本品敏感；脑膜炎球菌、百日咳杆菌、布氏杆菌亦很敏感。大肠杆菌、沙门氏菌属、痢疾杆菌、变形杆菌、流感杆菌、肺炎双球菌、淋球菌等因部分菌株产生β-内酰胺酶，故都存在不同程度的耐药菌。其中大肠杆菌的耐药率高达50—60%。肠杆菌属细菌，绿脓杆菌及厌氧革兰氏阴性杆菌对本品耐药。本品主要用于治疗由敏感的金葡菌、溶血性链球菌、淋球菌、脑膜炎球菌及白喉杆菌、百日咳杆菌、', '功能主治：本品为广谱半合成青霉素，毒性极低。抗菌谱与青霉素相似，对草绿色链球、溶血性链球菌、肠球菌有较强的抗菌作用。白喉杆菌、炭疽杆菌、革兰氏阳性厌氧球菌和杆菌对本品敏感；脑', '4', '167', '359', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '342');
INSERT INTO `list` VALUES ('盐酸二甲双胍片', 'http://img.800pharm.com/images//product/base/20130829/1377760496456.jpg', ' --【河南兴源制药有限公司 】', '用于单纯饮食控制不满意的2型糖尿病病人，尤其是肥胖和伴高胰岛素血症者，用本药不但有降血糖作用，还可能有减轻体重和高胰岛素血症的效果。对某些磺酰脲类疗效差的患者可奏效，如与磺酰脲类、小肠糖苷酶抑制剂或噻唑烷二酮类降糖药合用，较分别单用的效果更好。亦可用于胰岛素治疗的患者，以减少胰岛素用量。', '功能主治：用于单纯饮食控制不满意的2型糖尿病病人，尤其是肥胖和伴高胰岛素血症者，用本药不但有降血糖作用，还可能有减轻体重和高胰岛素血症的效果。对某些磺酰脲类疗效差的患者可奏效，', '4', '168', '361', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '344');
INSERT INTO `list` VALUES ('百灵鸟', 'http://img.800pharm.com/images///pms/upload/images/original/072018/24195/1aafad6d7501f90ad9d39cf8e2860e674791cd05.jpg', ' --【贵州百灵企业集团正鑫药业有限公司 】', '益气固表，健中醒脾。用于脾肺气虚所致的神倦纳呆，面黄肌瘦，烦躁不宁，表虚自汗，容易感冒。', '功能主治：益气固表，健中醒脾。用于脾肺气虚所致的神倦纳呆，面黄肌瘦，烦躁不宁，表虚自汗，容易感冒。', '24', '169', '363', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '346');
INSERT INTO `list` VALUES ('脑灵片', 'http://img.800pharm.com/images//product/99000/20121101/1351740908244.JPG', ' --【河北百善药业有限公司 】', '补气血，养心肾，健脑安神。用于神经衰弱，健忘失眠，头晕心悸，身倦无力，体虚自汗，阳萎遗精。', '功能主治：补气血，养心肾，健脑安神。用于神经衰弱，健忘失眠，头晕心悸，身倦无力，体虚自汗，阳萎遗精。', '29', '170', '365', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '348');
INSERT INTO `list` VALUES ('益气养阴口服液', 'http://img.800pharm.com/images//20150807/20150807164844_510.jpg', ' --【通化金汇药业股份有限公司 】', '益气养血。用于气血不足所致的气短心悸、面色不华、体虚乏力。', '功能主治：益气养血。用于气血不足所致的气短心悸、面色不华、体虚乏力。', '32', '171', '367', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '350');
INSERT INTO `list` VALUES ('银花感冒颗粒', 'http://img.800pharm.com/images//99999/20150514/20150514151845_598.jpg', ' --【李时珍医药集团有限公司】', '银花感冒颗粒 ，清热，解表，利咽。用于感冒发热、头痛、咽喉肿痛。', '功能主治：银花感冒颗粒 ，清热，解表，利咽。用于感冒发热、头痛、咽喉肿痛。', '34', '172', '369', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '352');
INSERT INTO `list` VALUES ('利巴韦林泡腾颗粒', 'http://img.800pharm.com/images//100172/20150214/20150214114553_641.jpg', ' --【四川百利药业有限责任公司 】', '适用病毒性上呼吸道感染，皮肤疱疹病毒感染。', '功能主治：适用病毒性上呼吸道感染，皮肤疱疹病毒感染。', '25', '173', '371', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '354');
INSERT INTO `list` VALUES ('心脑健片', 'http://img.800pharm.com/images//20150807/20150807155704_775.jpg', ' --【浙江花园药业有限公司 】', '清利头目，醒神健脑，化浊降脂。用于头晕目眩，胸闷气短，倦怠乏力，精神不振，得忆力减退等症。即具有抗凝，促进纤维蛋白原溶解，防止血小板粘附，降低血浆纤维蛋白原的作用，对心血管病伴高纤维蛋白原症及动脉粥样', '功能主治：清利头目，醒神健脑，化浊降脂。用于头晕目眩，胸闷气短，倦怠乏力，精神不振，得忆力减退等症。即具有抗凝，促进纤维蛋白原溶解，防止血小板粘附，降低血浆纤维蛋白原的作用，', '91', '174', '373', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '356');
INSERT INTO `list` VALUES ('康尔心胶囊', 'http://img.800pharm.com/images//20160701/20160701100700_42.jpg', ' --【重庆希尔安药业有限公司 】', '益气活血，滋阴补肾，增加冠脉血流量，降血脂。用于治疗冠心病，心绞痛，胸闷气短等症。', '功能主治：益气活血，滋阴补肾，增加冠脉血流量，降血脂。用于治疗冠心病，心绞痛，胸闷气短等症。', '30', '175', '375', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '358');
INSERT INTO `list` VALUES ('石斛夜光丸大蜜丸', 'http://img.800pharm.com/images//20161216/20161216093355_926.jpg', ' --【天津中新药业集团股份有限公司达仁堂制药厂 】', '滋阴补肾，清肝明目。用于肝肾两亏，阴虚火旺，内障目暗，视物昏花', '功能主治：滋阴补肾，清肝明目。用于肝肾两亏，阴虚火旺，内障目暗，视物昏花', '14', '176', '377', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '360');
INSERT INTO `list` VALUES ('元胡止痛胶囊', 'http://img.800pharm.com/images//20160123/20160123153947_27.jpg', ' --【济南利蒙制药有限公司 】', '理气，活血，止痛。用于行经腹痛，胃痛，胁痛，头痛。', '功能主治：理气，活血，止痛。用于行经腹痛，胃痛，胁痛，头痛。', '21', '177', '379', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '362');
INSERT INTO `list` VALUES ('川贝枇杷糖浆', 'http://img.800pharm.com/images//20161213/20161213153016_60.jpg', ' --【湖南时代阳光药业股份有限公司 】', '清热宣肺，化痰止咳。用于风热犯肺，内郁化火所致的咳嗽痰黄或吐痰不爽，咽喉肿痛，胸闷胀痛，感冒咳嗽及慢性支气管炎见上述证候者', '功能主治：清热宣肺，化痰止咳。用于风热犯肺，内郁化火所致的咳嗽痰黄或吐痰不爽，咽喉肿痛，胸闷胀痛，感冒咳嗽及慢性支气管炎见上述证候者', '7', '178', '381', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '364');
INSERT INTO `list` VALUES ('抗骨增生片', 'http://img.800pharm.com/images//product/base/20130524/155098.jpg', ' --【吉林巨仁堂药业股份有限公司 】', '补肾，活血，止痛。用于肥大性脊椎炎，颈椎病，跟骨刺，增生性关节炎，大骨节病。', '功能主治：补肾，活血，止痛。用于肥大性脊椎炎，颈椎病，跟骨刺，增生性关节炎，大骨节病。', '21', '179', '383', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '366');
INSERT INTO `list` VALUES ('巴桑母酥油丸', 'http://img.800pharm.com/images//100189/20141130/20141130095539_510.jpg', ' --【青海帝玛尔藏药药业有限公司 】', '壮阳益肾、养心安神、强筋骨。用于心悸失眠、脾胃不和、老年虚弱、经络不利、肢体僵直、肾虚、阳痿不举、虚损不足症。', '功能主治：壮阳益肾、养心安神、强筋骨。用于心悸失眠、脾胃不和、老年虚弱、经络不利、肢体僵直、肾虚、阳痿不举、虚损不足症。', '228', '180', '385', 'http://img.800pharm.com/images//20160929/20160929170129_949.jpg,http://img.800pharm.com/images//20160407/20160407160343_46.jpg,http://img.800pharm.com/images//20160825/20160825150805_5.jpg,http://img.800pharm.com/images//20160808/20160808144309_496.jpg', '368');

-- ----------------------------
-- Table structure for matrixtb
-- ----------------------------
DROP TABLE IF EXISTS `matrixtb`;
CREATE TABLE `matrixtb` (
  `matrixname` varchar(255) NOT NULL,
  `paw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`matrixname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrixtb
-- ----------------------------
INSERT INTO `matrixtb` VALUES ('feng', 'feng123456');

-- ----------------------------
-- Table structure for zuji
-- ----------------------------
DROP TABLE IF EXISTS `zuji`;
CREATE TABLE `zuji` (
  `gid` int(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuji
-- ----------------------------
INSERT INTO `zuji` VALUES ('48', 'liu@qq.con', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '46');
INSERT INTO `zuji` VALUES ('52', 'liu@qq.con', 'http://img.800pharm.com/images//20160830/20160830141809_555.jpg', '利焕', '10.00', '45');
INSERT INTO `zuji` VALUES ('1', 'liu@qq.con', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '47');
INSERT INTO `zuji` VALUES ('50', 'liu@qq.con', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '万爽力', '45.00', '44');
INSERT INTO `zuji` VALUES ('53', 'feng@qq.con', 'http://img.800pharm.com/images//product/base/20130508/1367997102145.jpg', '玄宁', '43.00', '109');
INSERT INTO `zuji` VALUES ('56', 'feng@qq.con', 'http://img.800pharm.com/images//20160126/20160126101956_775.jpg', '博苏', '18.00', '39');
INSERT INTO `zuji` VALUES ('48', 'feng@qq.con', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '122');
INSERT INTO `zuji` VALUES ('1', 'feng@qq.con', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '106');
INSERT INTO `zuji` VALUES ('50', 'feng@qq.con', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '万爽力', '45.00', '124');
INSERT INTO `zuji` VALUES ('54', 'ying@qq.con', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '合贝爽', '21.00', '121');
INSERT INTO `zuji` VALUES ('50', 'ying@qq.con', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '万爽力', '45.00', '30');
INSERT INTO `zuji` VALUES ('49', 'ying@qq.con', 'http://img.800pharm.com/images//20160202/20160202153530_65.jpg', '强力定眩片', '26.00', '116');
INSERT INTO `zuji` VALUES ('52', 'ying@qq.con', 'http://img.800pharm.com/images//20160830/20160830141809_555.jpg', '利焕', '10.00', '20');
INSERT INTO `zuji` VALUES ('48', 'ying@qq.con', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '119');
INSERT INTO `zuji` VALUES ('1', 'ying@qq.con', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '120');
INSERT INTO `zuji` VALUES ('162', 'liu@qq.con', 'http://img.800pharm.com/images///pms/upload/images/original/122018/26163/608555a1aad316266ff9695f528460f99382a145.jpg', '汇仁肾宝片', '322.00', '48');
INSERT INTO `zuji` VALUES ('1', '13111111111', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '98');
INSERT INTO `zuji` VALUES ('53', '13111111111', 'http://img.800pharm.com/images//product/base/20130508/1367997102145.jpg', '玄宁', '43.00', '56');
INSERT INTO `zuji` VALUES ('49', '13111111111', 'http://img.800pharm.com/images//20160202/20160202153530_65.jpg', '强力定眩片', '26.00', '68');
INSERT INTO `zuji` VALUES ('54', '13111111111', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '合贝爽', '21.00', '60');
INSERT INTO `zuji` VALUES ('179', '13111111111', 'http://img.800pharm.com/images//product/base/20130524/155098.jpg', '抗骨增生片', '21.00', '80');
INSERT INTO `zuji` VALUES ('48', '13111111111', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '65');
INSERT INTO `zuji` VALUES ('50', '13111111111', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '万爽力', '45.00', '99');
INSERT INTO `zuji` VALUES ('57', '13111111111', 'http://img.800pharm.com/images///pms/upload/images/original/062018/27093/1e8ba5a25632a52e55f0e980dd942e3e59f681b5.jpg', '泰嘉', '70.00', '67');
INSERT INTO `zuji` VALUES ('63', '13111111111', 'http://img.800pharm.com/images//20161012/20161012154559_697.jpg', '阿咖酚散', '10.00', '69');
INSERT INTO `zuji` VALUES ('58', '13111111111', 'http://img.800pharm.com/images//20160122/20160122105929_945.jpg', '云南白药', '20.00', '74');
INSERT INTO `zuji` VALUES ('162', '13111111111', 'http://img.800pharm.com/images///pms/upload/images/original/122018/26163/608555a1aad316266ff9695f528460f99382a145.jpg', '汇仁肾宝片', '322.00', '77');
INSERT INTO `zuji` VALUES ('180', '13111111111', 'http://img.800pharm.com/images//100189/20141130/20141130095539_510.jpg', '巴桑母酥油丸', '228.00', '78');
INSERT INTO `zuji` VALUES ('66', '13111111111', 'http://img.800pharm.com/images//20160307/20160307172952_969.jpg', '王老吉', '17.00', '82');
INSERT INTO `zuji` VALUES ('1', '13121122222', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '83');
INSERT INTO `zuji` VALUES ('1', '13422222222', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '84');
INSERT INTO `zuji` VALUES ('51', '13422222222', 'http://img.800pharm.com/images//product/99200/20120507/1336393199310.jpg', '散列通', '8.00', '85');
INSERT INTO `zuji` VALUES ('54', '13422222222', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '合贝爽', '21.00', '88');
INSERT INTO `zuji` VALUES ('1', '13222222222', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '89');
INSERT INTO `zuji` VALUES ('51', '13444444444', 'http://img.800pharm.com/images//product/99200/20120507/1336393199310.jpg', '散列通', '8.00', '90');
INSERT INTO `zuji` VALUES ('55', '13444444444', 'http://img.800pharm.com/images///pms/upload/images/original/032017/22160/1d5b9d4c7183d964a8745012b8e2668e06252a16.jpg', '络德', '18.00', '93');
INSERT INTO `zuji` VALUES ('1', '13555555555', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '94');
INSERT INTO `zuji` VALUES ('48', '13555555555', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '95');
INSERT INTO `zuji` VALUES ('1', '13666666666', 'http://img.800pharm.com/images//20151023/20151023102903_969.jpg', '波立维', '98.00', '100');
INSERT INTO `zuji` VALUES ('52', '13666666666', 'http://img.800pharm.com/images//20160830/20160830141809_555.jpg', '利焕', '10.00', '101');
INSERT INTO `zuji` VALUES ('49', 'feng@qq.con', 'http://img.800pharm.com/images//20160202/20160202153530_65.jpg', '强力定眩片', '26.00', '123');
INSERT INTO `zuji` VALUES ('51', 'feng@qq.con', 'http://img.800pharm.com/images//product/99200/20120507/1336393199310.jpg', '散列通', '8.00', '113');
INSERT INTO `zuji` VALUES ('54', 'feng@qq.con', 'http://img.800pharm.com/images//20160829/20160829160349_189.jpeg', '合贝爽', '21.00', '114');
INSERT INTO `zuji` VALUES ('50', 'undefined', 'http://img.800pharm.com/images//20160407/20160407112618_115.jpg', '万爽力', '45.00', '117');
INSERT INTO `zuji` VALUES ('48', 'undefined', 'http://img.800pharm.com/images//20160222/20160222150847_252.jpg', '虎力散胶囊', '23.00', '118');
SET FOREIGN_KEY_CHECKS=1;
