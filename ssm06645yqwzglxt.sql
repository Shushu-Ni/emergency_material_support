/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssm06645yqwzglxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-21 17:44:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cx` varchar(255) NOT NULL COMMENT '权限',
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '管理员', 'admin', 'admin', '', '', '2021-11-21 15:44:05');
INSERT INTO `admins` VALUES ('2', '物资管理部', '100', '100', '秦枫', '13800138555', '2021-11-21 15:52:19');

-- ----------------------------
-- Table structure for `bumen`
-- ----------------------------
DROP TABLE IF EXISTS `bumen`;
CREATE TABLE `bumen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bumenmingcheng` varchar(255) NOT NULL COMMENT '部门名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门';

-- ----------------------------
-- Records of bumen
-- ----------------------------
INSERT INTO `bumen` VALUES ('1', 'XX部门', '2021-11-21 15:50:59');
INSERT INTO `bumen` VALUES ('2', 'XXX管理部', '2021-11-21 15:51:13');
INSERT INTO `bumen` VALUES ('3', 'XXX综合部', '2021-11-21 17:35:10');

-- ----------------------------
-- Table structure for `fafangwuzi`
-- ----------------------------
DROP TABLE IF EXISTS `fafangwuzi`;
CREATE TABLE `fafangwuzi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shenqingwuziid` int(10) unsigned NOT NULL COMMENT '申请物资id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `shenqingleixing` varchar(255) NOT NULL COMMENT '申请类型',
  `shenqingshuliang` int(11) NOT NULL COMMENT '申请数量',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `dizhi` varchar(255) NOT NULL COMMENT '地址',
  `shenqingren` varchar(50) NOT NULL COMMENT '申请人',
  `danhao` varchar(50) NOT NULL COMMENT '单号',
  `caozuorenyuan` varchar(50) NOT NULL COMMENT '操作人员',
  `lianxifangshi` varchar(50) NOT NULL COMMENT '联系方式',
  `fafangshijian` varchar(25) NOT NULL COMMENT '发放时间',
  `fafangbeizhu` text NOT NULL COMMENT '发放备注',
  `fafangren` varchar(50) NOT NULL COMMENT '发放人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `fafangwuzi_shenqingwuziid_index` (`shenqingwuziid`),
  KEY `fafangwuzi_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='发放物资';

-- ----------------------------
-- Records of fafangwuzi
-- ----------------------------
INSERT INTO `fafangwuzi` VALUES ('1', '2', '03211602011723', '东北大米长粒米', '1', '小区', '20', '李晓', '13800138000', 'XXX省XX市XXX镇78号', '001', '03211635231047', '秦枫', '13800138552', '2021-11-22 16:35:34', '已发放，请注意查收', '100', '2021-11-21 16:35:52');
INSERT INTO `fafangwuzi` VALUES ('2', '4', '03211612021826', '海氏海诺医用外科口罩', '2', '小区', '40', '冰冰', '13800138222', 'XXX省XX市XXX镇03号', '002', '03211739191707', '秦枫', '13800138878', '2021-11-22 17:39:24', '已发放，请注意查收', '100', '2021-11-21 17:39:39');

-- ----------------------------
-- Table structure for `jiankangdaka`
-- ----------------------------
DROP TABLE IF EXISTS `jiankangdaka`;
CREATE TABLE `jiankangdaka` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `shijian` varchar(25) NOT NULL COMMENT '时间',
  `didian` varchar(255) NOT NULL COMMENT '地点',
  `beizhu` text NOT NULL COMMENT '备注',
  `dakaren` varchar(50) NOT NULL COMMENT '打卡人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='健康打卡';

-- ----------------------------
-- Records of jiankangdaka
-- ----------------------------
INSERT INTO `jiankangdaka` VALUES ('1', '秦枫', '2021-11-21 16:36:14', 'XX市XXX区XX镇100号', '', '100', '2021-11-21 16:36:22');
INSERT INTO `jiankangdaka` VALUES ('2', '李晓', '2021-11-21 16:37:29', 'XX市XXX区XX镇100号', '', '001', '2021-11-21 16:37:35');
INSERT INTO `jiankangdaka` VALUES ('3', '冰冰', '2021-11-21 17:37:41', 'XX市XXX区XX镇13号', '', '002', '2021-11-21 17:37:44');
INSERT INTO `jiankangdaka` VALUES ('4', '秦枫', '2021-11-21 17:42:18', 'XX市XXX区XX镇33号', '', '100', '2021-11-21 17:42:21');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `liuyanneirong` text NOT NULL COMMENT '留言内容',
  `liuyanren` varchar(50) NOT NULL COMMENT '留言人',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('1', '李晓', '13800138000', '希望物资方面可以再增加多一点', '001', '好的，我这边跟进一下', '2021-11-21 16:39:39');
INSERT INTO `liuyanban` VALUES ('2', '冰冰', '13800138222', '希望可以增加多一些物资', '002', '好的，这边会跟进处理的', '2021-11-21 17:38:21');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '1', 'upload/20210321/79491616313242526.jpg', '#', '2021-11-21 15:54:04');
INSERT INTO `lunbotu` VALUES ('2', '2', 'upload/20210321/43301616313250711.png', '#', '2021-11-21 15:54:12');
INSERT INTO `lunbotu` VALUES ('3', '3', 'upload/20210321/92631616313267575.png', '#', '2021-11-21 15:54:29');

-- ----------------------------
-- Table structure for `quanguoyiqing`
-- ----------------------------
DROP TABLE IF EXISTS `quanguoyiqing`;
CREATE TABLE `quanguoyiqing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diqu` varchar(255) NOT NULL COMMENT '地区',
  `shangbaoriqi` varchar(25) NOT NULL COMMENT '上报日期',
  `xinzeng` int(11) NOT NULL COMMENT '新增',
  `xianyou` int(11) NOT NULL COMMENT '现有',
  `leiji` int(11) NOT NULL COMMENT '累计',
  `zhiyu` int(11) NOT NULL COMMENT '治愈',
  `siwang` int(11) NOT NULL COMMENT '死亡',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='全国疫情';

-- ----------------------------
-- Records of quanguoyiqing
-- ----------------------------
INSERT INTO `quanguoyiqing` VALUES ('1', '城市1', '2021-11-21', '0', '10', '21', '21', '0', '2021-11-21 16:01:20');
INSERT INTO `quanguoyiqing` VALUES ('2', '城市2', '2021-11-21', '0', '0', '15', '10', '5', '2021-11-21 16:01:41');
INSERT INTO `quanguoyiqing` VALUES ('3', '城市3', '2021-11-21', '0', '0', '0', '0', '0', '2021-11-21 17:34:41');

-- ----------------------------
-- Table structure for `ruku`
-- ----------------------------
DROP TABLE IF EXISTS `ruku`;
CREATE TABLE `ruku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wuzixinxiid` int(10) unsigned NOT NULL COMMENT '物资信息id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `danhao` varchar(50) NOT NULL COMMENT '单号',
  `rukuleixing` varchar(255) NOT NULL COMMENT '入库类型',
  `rukushuliang` int(11) NOT NULL COMMENT '入库数量',
  `rukushijian` varchar(25) NOT NULL COMMENT '入库时间',
  `wuzitigongfang` int(10) unsigned NOT NULL COMMENT '物资提供方',
  `caozuorenyuan` varchar(50) NOT NULL COMMENT '操作人员',
  `lianxifangshi` varchar(50) NOT NULL COMMENT '联系方式',
  `jutiweizhi` varchar(255) NOT NULL COMMENT '具体位置',
  `beizhu` text NOT NULL COMMENT '备注',
  `rukuren` varchar(50) NOT NULL COMMENT '入库人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `ruku_wuzixinxiid_index` (`wuzixinxiid`),
  KEY `ruku_leixing_index` (`leixing`),
  KEY `ruku_wuzitigongfang_index` (`wuzitigongfang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='入库';

-- ----------------------------
-- Records of ruku
-- ----------------------------
INSERT INTO `ruku` VALUES ('1', '2', '03211602011723', '东北大米长粒米', '1', '03211642551067', '采购', '12', '2021-11-22 16:43:02', '1', '秦枫', '13800138875', 'XX省XX市XXX镇100号', '已进行入库', '100', '2021-11-21 16:43:47');
INSERT INTO `ruku` VALUES ('2', '8', '03211612021826', '海氏海诺医用外科口罩', '2', '03211740554707', '捐赠', '28', '2021-11-23 17:41:01', '2', '秦枫', '13800137825', 'XX省XX市XXX镇100号', '已登记入库', '100', '2021-11-21 17:41:22');

-- ----------------------------
-- Table structure for `shenhe`
-- ----------------------------
DROP TABLE IF EXISTS `shenhe`;
CREATE TABLE `shenhe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shenqingwuziid` int(10) unsigned NOT NULL COMMENT '申请物资id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `shenqingleixing` varchar(255) NOT NULL COMMENT '申请类型',
  `shenqingshuliang` int(11) NOT NULL COMMENT '申请数量',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `dizhi` varchar(255) NOT NULL COMMENT '地址',
  `shenqingren` varchar(50) NOT NULL COMMENT '申请人',
  `shenhe` varchar(255) NOT NULL COMMENT '审核',
  `shenhemiaoshu` text NOT NULL COMMENT '审核描述',
  `shenpiren` varchar(50) NOT NULL COMMENT '审批人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shenhe_shenqingwuziid_index` (`shenqingwuziid`),
  KEY `shenhe_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='审核';

-- ----------------------------
-- Records of shenhe
-- ----------------------------
INSERT INTO `shenhe` VALUES ('1', '2', '03211602011723', '东北大米长粒米', '1', '小区', '20', '李晓', '13800138000', 'XXX省XX市XXX镇78号', '001', '通过', '已收到申请，给予通过', '100', '2021-11-21 16:34:05');
INSERT INTO `shenhe` VALUES ('2', '3', '03211612021826', '海氏海诺医用外科口罩', '2', '个人', '10', '李晓', '13800138000', 'XXX省XX市XXX镇78号', '001', '驳回', '物资需要先给社区类的服务工作者使用，等物资充足再申请', '100', '2021-11-21 16:34:57');
INSERT INTO `shenhe` VALUES ('3', '4', '03211612021826', '海氏海诺医用外科口罩', '2', '小区', '40', '冰冰', '13800138222', 'XXX省XX市XXX镇03号', '002', '通过', '同意', '100', '2021-11-21 17:38:55');
INSERT INTO `shenhe` VALUES ('4', '5', '03211603187554', '原香菜籽油5L', '1', '个人', '10', '冰冰', '13800138222', 'XXX省XX市XXX镇03号', '002', '驳回', '不同意', '100', '2021-11-21 17:39:10');

-- ----------------------------
-- Table structure for `shenqingwuzi`
-- ----------------------------
DROP TABLE IF EXISTS `shenqingwuzi`;
CREATE TABLE `shenqingwuzi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wuzixinxiid` int(10) unsigned NOT NULL COMMENT '物资信息id',
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `shenqingleixing` varchar(255) NOT NULL COMMENT '申请类型',
  `shenqingshuliang` int(11) NOT NULL COMMENT '申请数量',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `dizhi` varchar(255) NOT NULL COMMENT '地址',
  `zhuangtai` varchar(50) NOT NULL COMMENT '状态',
  `shenqingmiaoshu` text NOT NULL COMMENT '申请描述',
  `shenqingren` varchar(50) NOT NULL COMMENT '申请人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shenqingwuzi_wuzixinxiid_index` (`wuzixinxiid`),
  KEY `shenqingwuzi_leixing_index` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='申请物资';

-- ----------------------------
-- Records of shenqingwuzi
-- ----------------------------
INSERT INTO `shenqingwuzi` VALUES ('2', '2', '03211602011723', '东北大米长粒米', '1', '小区', '20', '李晓', '13800138000', 'XXX省XX市XXX镇78号', '已发放', '社区老人不方便出门购买，申请大米给老人家能吃上米饭', '001', '2021-11-21 16:32:28');
INSERT INTO `shenqingwuzi` VALUES ('3', '8', '03211612021826', '海氏海诺医用外科口罩', '2', '个人', '10', '李晓', '13800138000', 'XXX省XX市XXX镇78号', '驳回', '疫情严重，口罩难买，出门不方便', '001', '2021-11-21 16:33:05');
INSERT INTO `shenqingwuzi` VALUES ('4', '8', '03211612021826', '海氏海诺医用外科口罩', '2', '小区', '40', '冰冰', '13800138222', 'XXX省XX市XXX镇03号', '已发放', '社区需要大量口罩', '002', '2021-11-21 17:37:21');
INSERT INTO `shenqingwuzi` VALUES ('5', '3', '03211603187554', '原香菜籽油5L', '1', '个人', '10', '冰冰', '13800138222', 'XXX省XX市XXX镇03号', '驳回', '的风格广泛的得分', '002', '2021-11-21 17:37:37');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '收藏用户',
  `xwid` int(10) unsigned NOT NULL COMMENT '对应模块id',
  `biao` varchar(255) NOT NULL COMMENT '收藏得模块',
  `biaoti` varchar(255) NOT NULL COMMENT '显示的标题',
  `url` varchar(512) NOT NULL COMMENT '收藏URL',
  `ziduan` varchar(255) NOT NULL COMMENT '对应模块字段',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏记录';

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------

-- ----------------------------
-- Table structure for `wuzileibie`
-- ----------------------------
DROP TABLE IF EXISTS `wuzileibie`;
CREATE TABLE `wuzileibie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leibiemingcheng` varchar(255) NOT NULL COMMENT '类别名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='物资类别';

-- ----------------------------
-- Records of wuzileibie
-- ----------------------------
INSERT INTO `wuzileibie` VALUES ('1', '生活用品', '2021-11-21 16:05:48');
INSERT INTO `wuzileibie` VALUES ('2', '医疗物资', '2021-11-21 16:00:48');
INSERT INTO `wuzileibie` VALUES ('3', '测试', '2021-11-21 17:33:40');

-- ----------------------------
-- Table structure for `wuzitigongfang`
-- ----------------------------
DROP TABLE IF EXISTS `wuzitigongfang`;
CREATE TABLE `wuzitigongfang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `fuzeren` varchar(50) NOT NULL COMMENT '负责人',
  `lianxifangshi` varchar(50) NOT NULL COMMENT '联系方式',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `dizhi` varchar(255) NOT NULL COMMENT '地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='物资提供方';

-- ----------------------------
-- Records of wuzitigongfang
-- ----------------------------
INSERT INTO `wuzitigongfang` VALUES ('1', '生活用品供应商', '张大海', '1380078424', '78922888@qq.com', 'XXX省XX市XXX镇01号', '2021-11-21 15:48:58');
INSERT INTO `wuzitigongfang` VALUES ('2', '医疗用品供应商', '黄海', '13800137589', '78922597@qq.com', 'XXX省XX市XXX镇02号', '2021-11-21 15:50:40');

-- ----------------------------
-- Table structure for `wuzixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `wuzixinxi`;
CREATE TABLE `wuzixinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL COMMENT '编号',
  `mingcheng` varchar(255) NOT NULL COMMENT '名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型',
  `danwei` varchar(255) NOT NULL COMMENT '单位',
  `wuzitigongfang` int(10) unsigned NOT NULL COMMENT '物资提供方',
  `kucun` int(11) NOT NULL COMMENT '库存',
  `miaoshu` longtext NOT NULL COMMENT '描述',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `wuzixinxi_leixing_index` (`leixing`),
  KEY `wuzixinxi_wuzitigongfang_index` (`wuzitigongfang`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='物资信息';

-- ----------------------------
-- Records of wuzixinxi
-- ----------------------------
INSERT INTO `wuzixinxi` VALUES ('1', '03211555093798', '3D洗衣凝珠洗衣液球', 'upload/20210321/92711616313390125.png', '1', '件', '1', '100', '<div class=\"prod-detail-container\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; width: 788px; float: left; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"><div id=\"productDetail\" class=\"pro-detail-pics\" style=\"padding: 18px; overflow: hidden;\"><div moduleid=\"R9000526_2\" modulename=\"商品信息\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><img alt=\"\" src=\"./upload/1616313454853.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616313455178.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616313455218.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616313455295.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p></div><div moduleid=\"R9000526_3\" modulename=\"商品特色\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><img alt=\"\" src=\"./upload/1616313455387.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p></div><div moduleid=\"R9000526_4\" modulename=\"商品实拍\"><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><img alt=\"\" src=\"./upload/1616313455441.png\" class=\"err-product\" style=\"border-style: initial; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p></div></div></div>', '2021-11-21 15:57:35');
INSERT INTO `wuzixinxi` VALUES ('2', '03211602011723', '东北大米长粒米', 'upload/20210321/29801616313758015.png', '1', '包', '1', '92', '<p><img alt=\"\" src=\"./upload/1616313796706.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616313796757.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:03:16');
INSERT INTO `wuzixinxi` VALUES ('3', '03211603187554', '原香菜籽油5L', 'upload/20210321/31281616313825346.png', '1', '件', '1', '100', '<p><img alt=\"\" src=\"./upload/1616313855976.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:04:16');
INSERT INTO `wuzixinxi` VALUES ('4', '03211604171594', '宽芯挂面', 'upload/20210321/6541616313916754.png', '1', '箱', '1', '100', '<p><img alt=\"\" src=\"./upload/1616313952179.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616313952254.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:05:52');
INSERT INTO `wuzixinxi` VALUES ('5', '03211606321172', '收纳篮塑料镂空收纳筐', 'upload/20210321/80921616314066218.png', '1', '件', '1', '100', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"><img alt=\"\" src=\"./upload/1616314101028.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314101115.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314101129.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314101145.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p>', '2021-11-21 16:08:21');
INSERT INTO `wuzixinxi` VALUES ('6', '03211608221193', '塑料硬毛拖把', 'upload/20210321/63951616314166253.png', '1', '件', '1', '100', '<p><img alt=\"\" src=\"./upload/1616314233689.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314233839.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314233909.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314233943.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:10:33');
INSERT INTO `wuzixinxi` VALUES ('7', '03211611249942', '家庭医药箱急救箱', 'upload/20210321/94461616314287982.png', '2', '件', '2', '100', '<p><img alt=\"\" src=\"./upload/1616314318784.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314318890.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314318987.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314319031.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:12:01');
INSERT INTO `wuzixinxi` VALUES ('8', '03211612021826', '海氏海诺医用外科口罩', 'upload/20210321/99951616314343947.png', '2', '包', '2', '88', '<p><img alt=\"\" src=\"./upload/1616314375898.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:12:55');
INSERT INTO `wuzixinxi` VALUES ('9', '03211612561628', '消毒液杀菌', 'upload/20210321/8711616314442186.png', '2', '件', '2', '100', '<p><img alt=\"\" src=\"./upload/1616314457786.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314458049.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:14:18');
INSERT INTO `wuzixinxi` VALUES ('10', '03211614191557', '滴露(Dettol)消毒液1.8L', 'upload/20210321/13071616314492243.png', '2', '箱', '2', '100', '<p><img alt=\"\" src=\"./upload/1616314524146.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314524218.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:15:24');
INSERT INTO `wuzixinxi` VALUES ('11', '03211615251098', '稳健医疗消毒酒精片', 'upload/20210321/76391616314563372.png', '2', '件', '2', '100', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal; text-align: center;\"><img alt=\"\" src=\"./upload/1616314586878.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314586980.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314587070.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314587171.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/><img alt=\"\" src=\"./upload/1616314587383.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; word-break: break-all; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal; text-align: center;\"><img alt=\"\" src=\"./upload/1616314587424.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background: url(&quot;images/blankbg.gif?v=2015102601&quot;) 50% 50% no-repeat; max-width: 750px;\"/></p><p><br/></p>', '2021-11-21 16:16:27');
INSERT INTO `wuzixinxi` VALUES ('12', '03211616289406', '王大生膏贴', 'upload/20210321/14781616314622112.png', '2', '件', '2', '100', '<p><img alt=\"\" src=\"./upload/1616314646188.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/><img alt=\"\" src=\"./upload/1616314646273.png\" class=\"err-product\" style=\"border-style: initial; word-break: break-all; background-image: url(&quot;images/blankbg.gif?v=2015102601&quot;); background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 750px; color: rgb(102, 102, 102); font-family: Arial, &quot;Microsoft YaHei&quot;, SimSun; font-size: 12px; white-space: normal;\"/></p>', '2021-11-21 16:17:26');
INSERT INTO `wuzixinxi` VALUES ('13', '03211733434269', '测试测试', 'upload/20210321/76191616319228649.png', '3', '箱', '2', '50', '<p>考虑实际得分上课了饭卡里说的更<span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span><span style=\"white-space: normal;\">考虑实际得分上课了饭卡里说的更何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</span>何况技术的开发工具是发时间的弗兰克是觉得粉红色空间复活节</p>', '2021-11-21 17:34:04');

-- ----------------------------
-- Table structure for `xinwenfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻分类';

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES ('1', '站内新闻', '2021-11-21 15:52:42');
INSERT INTO `xinwenfenlei` VALUES ('2', '行业资讯', '2021-11-21 15:57:06');
INSERT INTO `xinwenfenlei` VALUES ('3', '公告', '2021-11-21 15:51:28');

-- ----------------------------
-- Table structure for `xinwenxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) NOT NULL COMMENT '标题',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `dianjilv` int(11) NOT NULL COMMENT '点击率',
  `neirong` longtext NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xinwenxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES ('1', '国内疫情已得到良好控制，还有必要接种疫苗吗？', '3', 'upload/20210321/93531616314791283.png', 'admin', '5', '<p>国内疫情已得到良好控制，还有必要接种疫苗吗？3月21日下午，国务院联防联控机制召开新闻发布会，介绍新冠病毒疫苗安全性有效性有关情况。会上，国家卫生健康委疾控局一级巡视员贺青华回应，当前新冠疫情仍然在全球流行，根据目前国际疫情形势来看，疫情仍将持续比较长的时间，甚至今后还要与我们共存，所以我们随时都可能因为传染源的引入而导致新冠疫情在国内流行，甚至暴发流行。</p><p>他表示，前期由于我国疫情已经得到了有效控制，没有形成大规模的暴发流行，人群因为感染新冠病毒获得的免疫力比例比较低，所以在这个时候，就必须通过接种新冠疫苗，让更多人群获得免疫力，获得保护力。“我在这里再次建议大家尽快接种新冠病毒疫苗，早日获得免疫力、保护力。”</p><p><br/></p>', '2021-11-21 16:20:08');
INSERT INTO `xinwenxinxi` VALUES ('2', '调查显示疫情期间人们日均多睡近10分钟', '1', 'upload/20210321/2781616314855689.png', 'admin', '1', '<p>【新华社微特稿】法国知名智能健康产品制造商威辛斯公司对全球多地用户的最新调查显示，人们在新冠疫情期间日均多睡将近10分钟。这或与人们居家时间变长、因防疫规定减少夜间活动等因素有关。</p><p>威辛斯主要提供智能手表、体脂秤等智能产品，收集分析14个国家和地区逾500万名用户相关数据后得出了上述结论。</p><p>日本共同社21日援引调查报告内容报道，威辛斯用户2020年日均比2019年多睡9分50秒，且受调查国家和地区中无一出现睡眠时间减少情况。其中，意大利人日均增加睡眠时间最长，为12分52秒；英国人以12分27秒的日均睡眠增时位居第二。</p><p>报告认为，人们睡眠时间增加或与全球多数地区为遏制疫情关闭餐馆酒吧等场所、民众“夜间活动大幅减少”等有关。相比疫情较严重的欧洲地区，东亚地区疫情控制较好，民众外出限制相对宽松，因此日均睡眠时长增幅不大。</p><p>按照报告说法，由于不少企业鼓励员工远程办公，不少人不用花时间通勤，从而可以多睡一会儿。</p><p>调查发现，62.27%的调查对象2020年睡眠质量较高，比2019年增加4个百分点。报告认为，不少地区为防止疫情蔓延采取宵禁等措施，客观上营造出较为安静的睡眠环境，严禁多人聚会等规定则意味着“人们一整周可能保持更规律睡眠”，加上人们睡眠时长增加，多方面因素促成睡眠质量提升。（完）（王鑫方）</p><p><br/></p>', '2021-11-21 16:20:56');
INSERT INTO `xinwenxinxi` VALUES ('3', '复活节迎来第三波？欧洲疫情再次反扑', '2', 'upload/20210321/20921616314935531.png', 'admin', '1', '<p>财联社（上海，编辑 周玲）讯，复活节（4月4日）前夕，欧洲疫情大有卷土重来之势，新增感染数再次激增，多国重启封锁措施。德国卫生部长施潘（Jens Spahn）近日警告，欧洲可能没有足够疫苗控制第三波疫情。</p><p>英国去年年底发现的新变异毒株，被认为是此次欧洲疫情反扑的主要原因。自去年11月以来，本周法国7日平均新增疫情感染数，首次超过2.5万例。</p><div></div><p>为应对疫情再次蔓延态势，法国首都和北部地区于当地时间周五（19日）重启了封锁措施，仅留学校和必需品商店继续开放。</p><p>3月初，德国总理默克尔曾宣布放松封锁措施，当时德国疫情形势一度好转，7日内平均感染数为65人/10万，但目前这一数字已经达到96人，人们担心复活节可能会重演圣诞节的疫情态势。</p><p>“不断上升的病例数可能意味着，未来几周我们无法采取进一步开放措施。”德国卫生部长施潘（Jens Spahn）周五在新闻发布会上表示：“相反，我们甚至可能得后退一步。”</p><div></div><p>有独无偶，意大利总理德拉吉（Mario Draghi）近日也宣布在全国范围内重启封锁措施，并搁置了复活节计划。根据约翰霍普金斯大学（Johns Hopkins University）数据，意大利的疫情死亡人数在全球排名第六——死亡人数超103，855。</p><div></div><p>另据外媒报道，近期波兰疫情感染数也在大幅增加，其中约52%的新增病例与英国变种病毒有关。</p><div></div><p>虽然欧盟各国均在努力推进疫苗接种活动，但迄今为止，与英美等国相比，其他国家的疫苗推进情况都不理想。</p><p>疫苗的供应和采购一直被认为是个大问题，因被怀疑有“血凝”的副作用，牛津大学与英国阿斯利康公司联合研发的新冠疫苗已被多国叫停。</p><p>德国卫生部长施潘（Jens Spahn）于当地时间周五警告，欧洲可能没有足够疫苗控制第三波疫情。</p><p><br/></p>', '2021-11-21 16:22:21');
INSERT INTO `xinwenxinxi` VALUES ('4', '测试测试测试测试', '3', 'upload/20210321/25401616319324972.png', 'admin', '1', '<p>看了介绍的弗兰克圣迭戈火箭来说法国健身房喀什酱豆腐艰苦撒旦收到了弗兰克教授的</p>', '2021-11-21 17:35:30');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL COMMENT '用户名',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `dizhi` varchar(255) NOT NULL COMMENT '地址',
  `bumen` int(10) unsigned NOT NULL COMMENT '部门',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `yonghu_bumen_index` (`bumen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '李晓', '男', '13800138000', '78922333@qq.com', '441991199901011117', 'XXX省XX市XXX镇78号', '1', '2021-11-21 15:51:56');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '冰冰', '女', '13800138222', '78922666@qq.com', '441991199901012117', 'XXX省XX市XXX镇03号', '3', '2021-11-21 17:36:23');
