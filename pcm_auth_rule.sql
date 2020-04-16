/*
Navicat MySQL Data Transfer

Source Server         : 58f867406ee75.sh.cdb.myqcloud.com_4019
Source Server Version : 50628
Source Host           : 58f867406ee75.sh.cdb.myqcloud.com:4019
Source Database       : xlzx

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2019-07-02 18:31:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pcm_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `pcm_auth_rule`;
CREATE TABLE `pcm_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '父权限的ID',
  `college_id` int(10) unsigned NOT NULL COMMENT '所属学校ID',
  `name` char(80) NOT NULL COMMENT '规则唯一标识',
  `rule_name` char(120) NOT NULL COMMENT '规则中文名称',
  `icon` char(20) DEFAULT NULL COMMENT '菜单图标',
  `menu_name` char(12) NOT NULL COMMENT '菜单名称',
  `menu_route` char(120) DEFAULT NULL COMMENT '菜单路由',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单 1 : 是  0 : 否',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0 : 禁用 1 : 启用',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcm_auth_rule
-- ----------------------------
INSERT INTO `pcm_auth_rule` VALUES ('1', '0', '0', 'admin', '人员管理', 'icon-renyuanguanli', '人员管理', 'admin', '1', '1', '1');
INSERT INTO `pcm_auth_rule` VALUES ('2', '0', '0', 'Gauge', '测评中心', 'icon-baobei', '测评中心', 'Gauge', '1', '1', '2');
INSERT INTO `pcm_auth_rule` VALUES ('3', '1', '0', 'admin/Groupsettings', '单位组别设置', null, '单位组别设置', 'admin/Groupsettings', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('4', '1', '0', 'api/v2', '管理员管理', null, '管理员管理', 'api/v2', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('5', '1', '0', 'api/v3', '学生管理', null, '学生管理', 'api/v3', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('6', '4', '0', 'admin/admintype', '管理员类型', null, '管理员类型', 'admin/admintype', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('7', '4', '0', 'admin/adminlist', '管理员列表', null, '管理员列表', 'admin/adminlist', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('8', '5', '0', 'admin/setdata', '学生资料录入', null, '学生资料录入', 'admin/setdata', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('9', '5', '0', 'admin/admindata', '学生资料管理', null, '学生资料管理', 'admin/admindata', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('10', '5', '0', 'admin/stucomment', '学生评价', null, '学生评价', 'admin/stucomment', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('12', '33', '0', 'data/vrdata/presentation', 'VR报告', null, 'VR报告', 'data/vrdata/presentation', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('13', '0', '0', 'artical', '文章管理', 'icon-wenzhang', '文章管理', 'artical', '1', '1', '6');
INSERT INTO `pcm_auth_rule` VALUES ('14', '33', '0', 'data/game/gameCenter', '沙盘游戏', 'icon-youxi', '沙盘游戏', 'data/game/gameCenter', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('18', '13', '0', 'artical/column', '栏目管理', null, '栏目管理', 'artical/column', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('19', '13', '0', 'artical/articalList', '文章列表', null, '文章列表', 'artical/articalList', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('20', '13', '0', 'artical/publish', '发表文章', null, '发表文章', 'artical/publish', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('23', '0', '0', 'Consultation', '咨询中心', 'icon-zixun', '咨询中心', 'Consultation', '1', '1', '4');
INSERT INTO `pcm_auth_rule` VALUES ('24', '26', '0', 'Consultation/appointment', '预约管理', null, '预约管理', 'Consultation/appointment', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('25', '26', '0', 'Consultation/manageTime', '咨询时间', null, '咨询时间', 'Consultation/manageTime', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('26', '23', '0', 'Consultation2', '咨询管理', null, '咨询管理', 'Consultation2', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('27', '23', '0', 'interview', '访谈管理', null, '访谈管理', 'interview', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('28', '23', '0', 'Consultation/racking', '个案追踪', null, '个案追踪', 'Consultation/racking', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('29', '23', '0', 'function', '功能室管理', null, '功能室管理', 'function', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('30', '26', '0', 'Consultation/history', '记录管理', null, '记录管理', 'Consultation/history', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('31', '26', '0', 'Consultation/message', '问题留言', null, '问题留言', 'Consultation/message', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('32', '0', '0', 'crisis', '危机干预', 'icon-weijibaogao', '危机干预', 'crisis', '1', '1', '3');
INSERT INTO `pcm_auth_rule` VALUES ('33', '0', '0', 'data', '数据中心', 'icon-cloud-machine', '数据中心', 'data', '1', '1', '7');
INSERT INTO `pcm_auth_rule` VALUES ('34', '0', '0', 'system', '系统设置', 'icon-system-', '系统设置', 'system', '1', '1', '8');
INSERT INTO `pcm_auth_rule` VALUES ('35', '27', '0', 'Consultation/arrangement', '访谈时间安排', null, '访谈时间安排', 'Consultation/arrangement', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('36', '27', '0', 'Consultation/invitation', '访谈邀请记录', null, '访谈邀请记录', 'Consultation/invitation', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('37', '27', '0', 'Consultation/historyview', '访谈记录管理', null, '访谈记录管理', 'Consultation/historyview', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('38', '29', '0', 'Consultation/use', '功能室使用', null, '功能室使用', 'Consultation/use', '1', '0', '0');
INSERT INTO `pcm_auth_rule` VALUES ('39', '29', '0', 'Consultation/setting', '功能室设置', null, '功能室设置', 'Consultation/setting', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('40', '34', '0', 'system/setpramas', '系统参数设置', null, '系统参数设置', 'system/setpramas', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('41', '34', '0', 'system/measure', '测量参数设置', null, '测量参数设置', 'system/measure', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('42', '34', '0', 'system/Consultation', '咨询参数设置', null, '咨询参数设置', 'system/Consultation', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('43', '34', '0', 'system/personinfo', '个人信息设置', null, '个人信息设置', 'systen/personinfo', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('44', '32', '0', 'crisis/Assessment', '评估管理', null, '评估管理', 'crisis/Assessment', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('45', '32', '0', 'crisis/strategy', '应对策略指导', null, '应对策略指导', 'crisis/strategy', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('46', '32', '0', 'crisis/emergency', '危机应急管理', null, '危机应急管理', 'crisis/emergency', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('47', '32', '0', 'crisis/died', '危机后管理', null, '危机后管理', 'crisis/died', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('48', '46', '0', 'crisis/prowarn', '预警触发', null, '预警触发', 'crisis/prowarn', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('49', '46', '0', 'crisis/safeplan', '安全计划', null, '安全计划', 'crisis/safeplan', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('50', '46', '0', 'crisis/preTeam', '危机预防小组', null, '危机预防小组', 'crisis/preTeam', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('51', '46', '0', 'crisis/environment', '环境安全管理', null, '环境安全管理', 'crisis/environment', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('52', '47', '0', 'crisis/cases', '个案总结', null, '个案总结', 'crisis/cases', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('53', '47', '0', 'crisis/DeathNotice', '\r\n学生死亡通知模板', null, '\r\n学生死亡通知模板', 'crisis/DeathNotice', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('54', '2', '0', 'Gauge/test1', '量表管理', null, '量表管理', 'Gauge/test1', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('55', '2', '0', 'Gauge/test2', '测试结果管理', null, '测试结果管理', 'Gauge/test2', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('56', '55', '0', 'Gauge/result', '测试结果查看', null, '测试结果查看', 'Gauge/result', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('57', '54', '0', 'Gauge/alltest', '系统量表', null, '系统量表', 'Gauge/alltest', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('58', '33', '0', 'data/Coachdata', '身心反馈数据', null, '身心反馈数据', 'data/Coachdata', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('59', '33', '0', 'data/feedback', '身心放松数据', null, '身心放松数据', 'data/feedback', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('60', '33', '0', 'data/relex', '团体辅导数据', null, '团体辅导数据', 'data/relex', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('61', '6', '0', '/api/v1/admin/rules', '获取全部权限规则', null, '获取全部权限规则', '/api/v1/admin/rules', '0', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('62', '3', '0', '/api/v1/admin/unit/delUnitGroup', '班级删除接口', null, '班级删除接口', '/api/v1/admin/unit/delUnitGroup', '0', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('63', '33', '0', 'data/archives', '档案中心', null, '档案中心', 'data/archives', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('64', '63', '0', 'data/archives/monthwork', '咨询中心月报表', null, '咨询中心月报表', 'data/archives/monthwork', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('65', '63', '0', 'data/archives/daywork', '操作系统日志', null, '操作系统日志', 'data/archives/daywork', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('66', '63', '0', 'data/archives/phyArchive', '学生心理档案', null, '学生心理档案', 'data/archives/phyArchive', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('68', '54', '0', 'Gauge/selftestSheet', '自有量表', null, '自有量表', 'Gauge/selftestSheet', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('69', '2', '0', 'Gauge/testgroup', '测试组合及分发', null, '测试组合及分发', 'Gauge/testgroup', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('70', '2', '0', 'Gauge/testdata', '测试数据录入', null, '测试数据录入', 'Gauge/testdata', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('71', '70', '0', '', '录入测试数据', null, '测试数据录入', 'Gauge/testdata/handdata', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('72', '70', '0', 'Gauge/testdata/import', '导入测试数据', null, '导入测试数据', 'Gauge/testdata/impo', '1', '1', '0');
INSERT INTO `pcm_auth_rule` VALUES ('73', '55', '0', 'Gauge/warning', '测试结果预警', null, '测试结果预警', 'Gauge/warning', '1', '1', '0');
