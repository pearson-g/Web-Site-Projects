/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : kawa

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-10-16 16:36:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gemel_addonarticle`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_addonarticle`;
CREATE TABLE `gemel_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_addonarticle
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_addonimages`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_addonimages`;
CREATE TABLE `gemel_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagestyle` smallint(6) NOT NULL DEFAULT '1',
  `maxwidth` smallint(6) NOT NULL DEFAULT '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL DEFAULT '0',
  `col` smallint(6) NOT NULL DEFAULT '0',
  `isrm` smallint(6) NOT NULL DEFAULT '0',
  `ddmaxwidth` smallint(6) NOT NULL DEFAULT '200',
  `pagepicnum` smallint(6) NOT NULL DEFAULT '12',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  `pro_reff` mediumtext,
  `pro_app` mediumtext,
  `pro_spe` mediumtext,
  `pro_pac` mediumtext,
  `pro_related` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_addonimages
-- ----------------------------
INSERT INTO `gemel_addonimages` VALUES ('1', '45', '3', '800', '{gemel:pagestyle maxwidth=\'800\' pagepicnum=\'\' ddmaxwidth=\'200\' row=\'100\' col=\'100\' value=\'3\'/}\r\n{gemel:img ddimg=\'/upload/allimg/170922/art-01-lp.jpg\' text=\'\' width=\'558\' height=\'418\'} /upload/allimg/170922/art-01.jpg {/gemel:img}\r\n', '100', '100', '1', '200', '0', '', '127.0.0.1', '', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				S/N</th>\r\n			<th>\r\n				OEM</th>\r\n			<th>\r\n				Part&nbsp;No.</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				1</td>\r\n			<td>\r\n				Lester</td>\r\n			<td>\r\n				13933</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				2</td>\r\n			<td>\r\n				Bosch</td>\r\n			<td>\r\n				124325019</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				3</td>\r\n			<td>\r\n				Bosch</td>\r\n			<td>\r\n				124515028</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				4</td>\r\n			<td>\r\n				Bosch</td>\r\n			<td>\r\n				124515040</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				5</td>\r\n			<td>\r\n				Bosch</td>\r\n			<td>\r\n				986044330</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				6</td>\r\n			<td>\r\n				Bosch</td>\r\n			<td>\r\n				4433</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				7</td>\r\n			<td>\r\n				Lucas</td>\r\n			<td>\r\n				LRA01987</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				8</td>\r\n			<td>\r\n				Lucas</td>\r\n			<td>\r\n				LRA02082</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				9</td>\r\n			<td>\r\n				Lucas</td>\r\n			<td>\r\n				LRA1987</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				10</td>\r\n			<td>\r\n				Lucas</td>\r\n			<td>\r\n				LRA2082</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				11</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				2542227</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				12</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				2542233C</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				13</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				2542324</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				14</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				437173</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				15</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				437358</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				16</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				439260</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				17</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				SG12B011</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				18</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				SG12B025</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				19</td>\r\n			<td>\r\n				Valeo</td>\r\n			<td>\r\n				SG12B054</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				20</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				059903015F</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				21</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				059903015G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				22</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				059903015GX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				23</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				06C903016</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				24</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				06C903016A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				25</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				078903016F</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				26</td>\r\n			<td>\r\n				Volkswagen</td>\r\n			<td>\r\n				078903016H</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				S/N</th>\r\n			<th>\r\n				Make</th>\r\n			<th>\r\n				Model</th>\r\n			<th>\r\n				Engine</th>\r\n			<th>\r\n				Year</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				1</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.4&nbsp;V6</td>\r\n			<td>\r\n				2393ccm&nbsp;AML&nbsp;AMM&nbsp;APZ&nbsp;APS&nbsp;ARJ</td>\r\n			<td>\r\n				Jan-98</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				2</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.4&nbsp;V6&nbsp;Quattro&nbsp;A4&nbsp;2.4&nbsp;V6&nbsp;Q</td>\r\n			<td>\r\n				2393ccm&nbsp;AML&nbsp;AMM&nbsp;APZ&nbsp;APS&nbsp;ARJ</td>\r\n			<td>\r\n				Jan-98</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				3</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8</td>\r\n			<td>\r\n				2771ccm&nbsp;AQD</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				4</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8</td>\r\n			<td>\r\n				2771ccm&nbsp;APR</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				5</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8</td>\r\n			<td>\r\n				2771ccm&nbsp;AMX</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				6</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8&nbsp;Quattro</td>\r\n			<td>\r\n				2771ccm&nbsp;AQD</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				7</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8&nbsp;Quattro</td>\r\n			<td>\r\n				2771ccm&nbsp;APR</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				8</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A4&nbsp;2.8&nbsp;Quattro</td>\r\n			<td>\r\n				2771ccm&nbsp;AMX</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				9</td>\r\n			<td>\r\n				Audi</td>\r\n			<td>\r\n				A6&nbsp;2.4</td>\r\n			<td>\r\n				2396ccm&nbsp;AJG</td>\r\n			<td>\r\n				Jan-98</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				10</td>\r\n			<td>\r\n				Skoda</td>\r\n			<td>\r\n				Superb&nbsp;2.8&nbsp;V6&nbsp;(3U)</td>\r\n			<td>\r\n				2771ccm&nbsp;AMX&nbsp;BBG</td>\r\n			<td>\r\n				1月8日</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				11</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6</td>\r\n			<td>\r\n				2771ccm&nbsp;AMX</td>\r\n			<td>\r\n				00-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				12</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6</td>\r\n			<td>\r\n				2771ccm&nbsp;BBG</td>\r\n			<td>\r\n				00-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				13</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6</td>\r\n			<td>\r\n				2771ccm&nbsp;ACK</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				14</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6</td>\r\n			<td>\r\n				2771ccm&nbsp;APR</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				15</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;4-Motion</td>\r\n			<td>\r\n				2771ccm&nbsp;BBG</td>\r\n			<td>\r\n				00-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				16</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;4-Motion</td>\r\n			<td>\r\n				2771ccm&nbsp;AMX</td>\r\n			<td>\r\n				00-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				17</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;4-Motion</td>\r\n			<td>\r\n				2771ccm&nbsp;ATQ</td>\r\n			<td>\r\n				00-05</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				18</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;Syncro</td>\r\n			<td>\r\n				2771ccm&nbsp;ACK</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				19</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;Syncro</td>\r\n			<td>\r\n				2771ccm&nbsp;ALG</td>\r\n			<td>\r\n				98-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				20</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;Syncro</td>\r\n			<td>\r\n				2771ccm&nbsp;AQD</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				21</td>\r\n			<td>\r\n				Vw&nbsp;Volkswagen</td>\r\n			<td>\r\n				Passat&nbsp;2.8&nbsp;V6&nbsp;Syncro</td>\r\n			<td>\r\n				2771ccm&nbsp;ATX</td>\r\n			<td>\r\n				99-00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				Type</th>\r\n			<th>\r\n				Valeo&nbsp;Alternator</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Parameter</td>\r\n			<td>\r\n				12V&nbsp;&nbsp;90A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Application</td>\r\n			<td>\r\n				For&nbsp;Audi,Volkswagen,Skoda</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Brand</td>\r\n			<td>\r\n				Kava</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Kava&nbsp;No.</td>\r\n			<td>\r\n				KAV1052</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Condition</td>\r\n			<td>\r\n				100%&nbsp;New</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<ul>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-01.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-02.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-03.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-04.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-05.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-06.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-07.jpg\" width=\"270\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"190\" src=\"/images/products/art-packge-08.jpg\" width=\"270\" /></li>\r\n</ul>\r\n', '');

-- ----------------------------
-- Table structure for `gemel_addoninfos`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_addoninfos`;
CREATE TABLE `gemel_addoninfos` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(60) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT ' ',
  `senddate` int(11) NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nativeplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `linkman` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_addoninfos
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_admintype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_admintype`;
CREATE TABLE `gemel_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_admintype
-- ----------------------------
INSERT INTO `gemel_admintype` VALUES ('1', '信息发布员', '1', 't_AccList a_AccNew a_AccList a_MyList a_MyEdit a_MyDel sys_MdPwd sys_Feedback sys_MyUpload ');
INSERT INTO `gemel_admintype` VALUES ('5', '频道管理员', '1', 't_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
INSERT INTO `gemel_admintype` VALUES ('10', '超级管理员', '1', 'admin_AllowAll ');

-- ----------------------------
-- Table structure for `gemel_admin_list`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_admin_list`;
CREATE TABLE `gemel_admin_list` (
  `id` int(10) unsigned NOT NULL,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` text,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_admin_list
-- ----------------------------
INSERT INTO `gemel_admin_list` VALUES ('1', '10', 'gemeladmin', 'e53b93079be7ceb0d7611d99266ef826', 'admin', '', '', '0', '1507773745', '127.0.0.1');

-- ----------------------------
-- Table structure for `gemel_advancedsearch`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_advancedsearch`;
CREATE TABLE `gemel_advancedsearch` (
  `mid` int(11) NOT NULL,
  `maintable` varchar(256) NOT NULL DEFAULT '',
  `mainfields` text,
  `addontable` varchar(256) DEFAULT NULL,
  `addonfields` text,
  `forms` text,
  `template` varchar(256) NOT NULL DEFAULT '',
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_advancedsearch
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_arcatt`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arcatt`;
CREATE TABLE `gemel_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arcatt
-- ----------------------------
INSERT INTO `gemel_arcatt` VALUES ('5', 's', '滚动');
INSERT INTO `gemel_arcatt` VALUES ('1', 'h', '头条');
INSERT INTO `gemel_arcatt` VALUES ('3', 'f', '幻灯');
INSERT INTO `gemel_arcatt` VALUES ('2', 'c', '推荐');
INSERT INTO `gemel_arcatt` VALUES ('7', 'p', '图片');
INSERT INTO `gemel_arcatt` VALUES ('8', 'j', '跳转');
INSERT INTO `gemel_arcatt` VALUES ('4', 'a', '特荐');
INSERT INTO `gemel_arcatt` VALUES ('6', 'b', '加粗');

-- ----------------------------
-- Table structure for `gemel_arccache`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arccache`;
CREATE TABLE `gemel_arccache` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `cachedata` mediumtext,
  PRIMARY KEY (`md5hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arccache
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_archives`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_archives`;
CREATE TABLE `gemel_archives` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `ismake` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '1',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `money` smallint(6) NOT NULL DEFAULT '0',
  `title` char(120) NOT NULL DEFAULT '',
  `shorttitle` char(36) NOT NULL DEFAULT '',
  `color` char(7) NOT NULL DEFAULT '',
  `writer` char(20) NOT NULL DEFAULT '',
  `source` char(30) NOT NULL DEFAULT '',
  `litpic` char(100) NOT NULL DEFAULT '',
  `pubdate` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` char(30) NOT NULL DEFAULT '',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `voteid` mediumint(8) NOT NULL,
  `notpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(500) NOT NULL DEFAULT '',
  `filename` varchar(40) NOT NULL DEFAULT '',
  `dutyadmin` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tackid` int(10) NOT NULL DEFAULT '0',
  `mtype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `mainindex` (`arcrank`,`typeid`,`channel`,`flag`,`mid`),
  KEY `lastpost` (`lastpost`,`scores`,`goodpost`,`badpost`,`notpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_archives
-- ----------------------------
INSERT INTO `gemel_archives` VALUES ('1', '45', '0', '1506051928', 'p', '1', '2', '0', '622', '0', 'Audi A6,A4 98-00 Alternator,', '0124325019,0124515028,0124515040', '', 'admin', '未知', '/images/products/list-2-01.png', '1506051928', '1506051991', '1', '', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `gemel_arcmulti`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arcmulti`;
CREATE TABLE `gemel_arcmulti` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` char(60) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `innertext` varchar(255) NOT NULL DEFAULT '',
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `arcids` text NOT NULL,
  `ordersql` varchar(255) DEFAULT NULL,
  `addfieldsSql` varchar(255) DEFAULT NULL,
  `addfieldsSqlJoin` varchar(255) DEFAULT NULL,
  `attstr` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arcmulti
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_arcrank`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arcrank`;
CREATE TABLE `gemel_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) unsigned NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arcrank
-- ----------------------------
INSERT INTO `gemel_arcrank` VALUES ('1', '0', '开放浏览', '5', '0', '0', '');
INSERT INTO `gemel_arcrank` VALUES ('2', '-1', '待审核稿件', '0', '0', '0', '');
INSERT INTO `gemel_arcrank` VALUES ('3', '10', '注册会员', '5', '0', '100', '');

-- ----------------------------
-- Table structure for `gemel_arctiny`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arctiny`;
CREATE TABLE `gemel_arctiny` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(5) NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arctiny
-- ----------------------------
INSERT INTO `gemel_arctiny` VALUES ('1', '45', '0', '0', '2', '1506051991', '1506051928', '1');

-- ----------------------------
-- Table structure for `gemel_arctype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_arctype`;
CREATE TABLE `gemel_arctype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `reid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortrank` smallint(5) unsigned NOT NULL DEFAULT '50',
  `typename` char(60) NOT NULL DEFAULT '',
  `typedir` char(250) NOT NULL DEFAULT '',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `defaultname` char(15) NOT NULL DEFAULT 'index.html',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `channeltype` smallint(6) DEFAULT '1',
  `maxpage` smallint(6) NOT NULL DEFAULT '-1',
  `ispart` smallint(6) NOT NULL DEFAULT '0',
  `corank` smallint(6) NOT NULL DEFAULT '0',
  `tempindex` char(50) NOT NULL DEFAULT '',
  `templist` char(50) NOT NULL DEFAULT '',
  `temparticle` char(50) NOT NULL DEFAULT '',
  `namerule` char(50) NOT NULL DEFAULT '',
  `namerule2` char(50) NOT NULL DEFAULT '',
  `modname` char(20) NOT NULL DEFAULT '',
  `description` char(250) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `seotitle` varchar(80) NOT NULL DEFAULT '',
  `moresite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sitepath` char(60) NOT NULL DEFAULT '',
  `siteurl` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `cross` tinyint(1) NOT NULL DEFAULT '0',
  `crossid` text,
  `content` mediumtext,
  `smalltypes` text,
  `typepic2` varchar(100) DEFAULT NULL,
  `typepic` varchar(100) DEFAULT NULL,
  `open_new` smallint(6) DEFAULT NULL,
  `ddimg_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ddimg_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_arctype
-- ----------------------------
INSERT INTO `gemel_arctype` VALUES ('1', '0', '0', '50', 'About Us', '{cmspath}/about_us', '1', 'index.html', '0', '1', '-1', '1', '0', '{style}/index_about.htm', '{style}/list_about.htm', '{style}/article_about.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', 'Starter Motor, Auto Alternator', '0', '{cmspath}/about_us', '', '0', '0', '', '&nbsp;', '', '', '/images/about/about-banner.jpg', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('2', '0', '0', '50', 'Products', '{cmspath}/products', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_02.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', 'Starter Motor, Auto Alternator', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('3', '0', '0', '50', 'News', '{cmspath}/news', '1', 'index.html', '0', '1', '-1', '0', '0', '{style}/index_news.htm', '{style}/list_news.htm', '{style}/article_news.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', 'Starter Motor, Auto Alternator', '0', '{cmspath}/news', '', '0', '0', '', '&nbsp;', '', '', '/images/news/news-banner.jpg', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('4', '0', '0', '50', 'Contact Us', '{cmspath}/contact-us', '1', 'index.html', '0', '1', '-1', '1', '0', '{style}/index_contact.htm', '{style}/list_contact.htm', '{style}/article_contact.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', 'Starter Motor, Auto Alternator', '0', '{cmspath}/contact-us', '', '0', '0', '', '&nbsp;', '', '', '/images/contact/contact-banner.jpg', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('5', '2', '2', '50', 'Alternator', '{cmspath}/alternator', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-02.png', '/images/products/index-alternator.png', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('6', '2', '2', '52', 'Starter', '{cmspath}/starter', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-02.png', '/images/products/index-startermotor.png', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('7', '2', '2', '53', 'Starter Parts', '{cmspath}/starter-parts', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '/images/products/index-startermotorpart.png', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('8', '2', '2', '51', 'Alternator Parts', '{cmspath}/alternator-parts', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '/images/products/index-alternatorpart.png', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('9', '2', '2', '50', 'Diesel', '{cmspath}/diesel', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('10', '2', '2', '50', 'Marine', '{cmspath}/marine', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('11', '2', '2', '50', 'Tractor', '{cmspath}/tractor', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('12', '2', '2', '50', 'Forklift', '{cmspath}/forklift', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('13', '2', '2', '50', 'Truck&Bus', '{cmspath}/truck&bus', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('14', '2', '2', '50', 'Automotive', '{cmspath}/automotive', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('15', '2', '2', '50', 'Armature', '{cmspath}/armature', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-03.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('16', '2', '2', '50', 'Field Coil', '{cmspath}/products/field-coil', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-04.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('17', '2', '2', '50', 'Solenoid Switch', '{cmspath}/products/solenoid-switch', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-05.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('18', '2', '2', '50', 'Brush Holder', '{cmspath}/products/brush-holder', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-06.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('19', '2', '2', '50', 'Carbon Brush', '{cmspath}/products/carbon brush', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-07.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('20', '2', '2', '50', 'Drive Gear', '{cmspath}/products/drive-gear', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-08.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('22', '2', '2', '50', 'Field Case', '{cmspath}/products/field-case', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-09.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('23', '2', '2', '50', 'Housing', '{cmspath}/products/housing', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-10.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('24', '2', '2', '50', 'Pulley', '{cmspath}/products/pulley', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-11.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('25', '2', '2', '50', 'Rotor', '{cmspath}/products/rotor', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-12.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('27', '2', '2', '50', 'Rectifier', '{cmspath}/products/rectifier', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-13.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('28', '2', '2', '50', 'Regulator', '{cmspath}/products/regulator', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-14.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('30', '2', '2', '50', 'Slip Ring', '{cmspath}/products/slip-ring', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-15.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('31', '2', '2', '50', 'Stator', '{cmspath}/stator', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '/images/products/list-16.png', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('120', '9', '2', '50', 'Deutz', '{cmspath}/diesel/deutz', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('45', '5', '2', '50', 'Lucas', '{cmspath}/alternator/lucas', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('44', '5', '2', '50', 'Iskra', '{cmspath}/alternator/iskra', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('43', '5', '2', '50', 'Hitachi', '{cmspath}/alternator/hitachi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('42', '5', '2', '50', 'Ford', '{cmspath}/alternator/ford', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('41', '5', '2', '50', 'Denso', '{cmspath}/alternator/denso', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('39', '5', '2', '50', 'Bosch', '{cmspath}/alternator/bosch', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('40', '5', '2', '50', 'Delco', '{cmspath}/alternator/delco', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('46', '5', '2', '50', 'Mitsubishi', '{cmspath}/alternator/mitsubishi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('47', '14', '2', '50', 'Alfa Romeo', '{cmspath}/automotive/alfa-romeo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('48', '5', '2', '50', 'Marelli', '{cmspath}/alternator/marelli', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('49', '5', '2', '50', 'Mando', '{cmspath}/alternator/mando', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('50', '14', '2', '50', 'Audi', '{cmspath}/automotive/audi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('51', '5', '2', '50', 'Motorola', '{cmspath}/alternator/motorola', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('52', '5', '2', '50', 'Nikko', '{cmspath}/alternator/nikko', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('53', '14', '2', '50', 'BedFord', '{cmspath}/automotive/bedford', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('54', '5', '2', '50', 'Prestolite', '{cmspath}/alternator/prestolite', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('55', '14', '2', '50', 'Bmw', '{cmspath}/automotive/bmw', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('56', '5', '2', '50', 'Sawafuji', '{cmspath}/alternator/sawafuji', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('57', '5', '2', '50', 'Valeo', '{cmspath}/alternator/valeo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('58', '14', '2', '50', 'Buick', '{cmspath}/automotive/buick', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('59', '14', '2', '50', 'Cadillac', '{cmspath}/automotive/cadillac', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('60', '14', '2', '50', 'Chrysler', '{cmspath}/automotive/chrysler', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('61', '14', '2', '50', 'Citroen', '{cmspath}/automotive/citroen', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('62', '14', '2', '50', 'Chevrolet', '{cmspath}/automotive/chevrolet', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('63', '14', '2', '50', 'Daihatsu', '{cmspath}/automotive/daihatsu', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('64', '14', '2', '50', 'Dodge', '{cmspath}/automotive/dodge', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('65', '14', '2', '50', 'Dacia', '{cmspath}/automotive/dacia', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('66', '14', '2', '50', 'Daewoo', '{cmspath}/automotive/daewoo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('67', '14', '2', '50', 'Fiat', '{cmspath}/automotive/fiat', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('68', '14', '2', '50', 'Ford', '{cmspath}/automotive/ford', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('69', '13', '2', '50', 'DAF', '{cmspath}/truck&bus/daf', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('70', '14', '2', '50', 'Holden', '{cmspath}/automotive/holden', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('71', '13', '2', '50', 'Ford', '{cmspath}/products/truck&bus/ford', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('72', '13', '2', '50', 'Freightliner', '{cmspath}/truck&bus/freightliner', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('73', '14', '2', '50', 'Honda', '{cmspath}/automotive/honda', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('74', '13', '2', '50', 'International', '{cmspath}/truck&bus/international', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('75', '13', '2', '50', 'Iveco', '{cmspath}/truck&bus/iveco', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('76', '13', '2', '50', 'Kassbohrer', '{cmspath}/truck&bus/kassbohrer', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('77', '14', '2', '50', 'Hyundai', '{cmspath}/automotive/hyundai', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('78', '13', '2', '50', 'Kenworth', '{cmspath}/truck&bus/kenworth', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('79', '14', '2', '50', 'Infiniti', '{cmspath}/automotive/infiniti', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('80', '13', '2', '50', 'Mack', '{cmspath}/truck&bus/mack', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('81', '13', '2', '50', 'Man', '{cmspath}/truck&bus/man', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('82', '14', '2', '50', 'Isuzu', '{cmspath}/automotive/isuzu', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('83', '13', '2', '50', 'Mercedes', '{cmspath}/truck&bus/mercedes', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('84', '14', '2', '50', 'Jaguar', '{cmspath}/automotive/jaguar', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('85', '13', '2', '50', 'Peterbilt', '{cmspath}/truck&bus/peterbilt', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('86', '14', '2', '50', 'Jeep', '{cmspath}/automotive/jeep', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('87', '13', '2', '50', 'Renault', '{cmspath}/truck&bus/renault', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('88', '14', '2', '50', 'Kia', '{cmspath}/automotive/kia', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('89', '13', '2', '50', 'Scania', '{cmspath}/truck&bus/scania', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('90', '14', '2', '50', 'Lada', '{cmspath}/automotive/lada', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('91', '14', '2', '50', 'Lincoln', '{cmspath}/automotive/lincoln', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('92', '14', '2', '50', 'Lexus', '{cmspath}/automotive/lexus', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('93', '13', '2', '50', 'Thermo King', '{cmspath}/truck&bus/thermo-king', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('94', '14', '2', '50', 'Lombardini', '{cmspath}/automotive/lombardini', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('95', '13', '2', '50', 'Volvo', '{cmspath}/truck&bus/volvo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('96', '13', '2', '50', 'Western Star', '{cmspath}/truck&bus/western-star', '1', 'index.html', '1', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('97', '14', '2', '50', 'Lancia', '{cmspath}/automotive/lancia', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('98', '14', '2', '50', 'Land Rover', '{cmspath}/automotive/land-rover', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('99', '14', '2', '50', 'Mazda', '{cmspath}/automotive/mazda', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('100', '14', '2', '50', 'Mercedes', '{cmspath}/automotive/mercedes', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('101', '14', '2', '50', 'Mitsubishi', '{cmspath}/automotive/mitsubishi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('119', '9', '2', '50', 'Hino', '{cmspath}/diesel/hino', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('102', '14', '2', '50', 'Mercury', '{cmspath}/automotive/mercury', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('103', '14', '2', '50', 'Nissan', '{cmspath}/automotive/nissan', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('104', '14', '2', '50', 'Opel', '{cmspath}/automotive/opel', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('105', '14', '2', '50', 'Porsche', '{cmspath}/automotive/porsche', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('106', '14', '2', '50', 'Pontiac', '{cmspath}/automotive/pontiac', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('107', '14', '2', '50', 'Peugeot', '{cmspath}/automotive/peugeot', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('108', '14', '2', '50', 'Renault', '{cmspath}/automotive/renault', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('109', '14', '2', '50', 'Skoda', '{cmspath}/automotive/skoda', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('110', '14', '2', '50', 'Seat', '{cmspath}/automotive/seat', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('111', '14', '2', '50', 'Saab', '{cmspath}/automotive/saab', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('112', '14', '2', '50', 'Ssangyong', '{cmspath}/automotive/ssangyong', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('113', '14', '2', '50', 'Subaru', '{cmspath}/automotive/subaru', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('114', '14', '2', '50', 'Suzuki', '{cmspath}/automotive/suzuki', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('115', '14', '2', '50', 'Toyota', '{cmspath}/automotive/toyota', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('116', '14', '2', '50', 'Vauxhall', '{cmspath}/automotive/vauxhall', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('117', '14', '2', '50', 'Volvo', '{cmspath}/automotive/volvo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('118', '14', '2', '50', 'Volkswagen', '{cmspath}/automotive/volkswagen', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('121', '9', '2', '50', 'Isuzu', '{cmspath}/diesel/isuzu', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('122', '9', '2', '50', 'Toyota', '{cmspath}/diesel/toyota', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('123', '9', '2', '50', 'Nissan', '{cmspath}/diesel/nissan', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('124', '9', '2', '50', 'Yanmar', '{cmspath}/diesel/yanmar', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('125', '7', '2', '50', 'Armature', '{cmspath}/starter-parts/armature', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('126', '9', '2', '50', 'Perkins', '{cmspath}/diesel/perkins', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('127', '7', '2', '50', 'Field coil', '{cmspath}/starter-parts/field-coil', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('128', '9', '2', '50', 'Komatsu', '{cmspath}/diesel/komatsu', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('129', '7', '2', '50', 'Solenoid switch', '{cmspath}/starter-parts/solenoid-switch', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('130', '9', '2', '50', 'Cummins', '{cmspath}/diesel/cummins', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('131', '7', '2', '50', 'Brush holder', '{cmspath}/starter-parts/brush-holder', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('132', '9', '2', '50', 'Mitsubishi', '{cmspath}/diesel/mitsubishi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('133', '7', '2', '50', 'Carbon brush', '{cmspath}/starter-parts/carbon-brush', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('134', '9', '2', '50', 'Caterpillar', '{cmspath}/diesel/caterpillar', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('135', '7', '2', '50', 'Shift lever', '{cmspath}/starter-parts/shift-lever', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('136', '7', '2', '50', 'Drive gear', '{cmspath}/starter-parts/drive-gear', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('137', '7', '2', '50', 'Field case', '{cmspath}/starter-parts/field-case', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('138', '7', '2', '50', 'Housing', '{cmspath}/starter-parts/housing', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('139', '7', '2', '50', 'Switch Parts', '{cmspath}/starter-parts/switch-parts', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('140', '8', '2', '50', 'Brush', '{cmspath}/alternator-parts/brush', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('141', '8', '2', '50', 'Pulley', '{cmspath}/alternator-parts/pulley', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('142', '8', '2', '50', 'Rotor', '{cmspath}/alternator-parts/rotor', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('143', '8', '2', '50', 'Rectifier', '{cmspath}/alternator-parts/rectifier', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('144', '8', '2', '50', 'Regulator', '{cmspath}/alternator-parts/regulator', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('145', '8', '2', '50', 'Slip ring', '{cmspath}/alternator-parts/slip-ring', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('146', '6', '2', '50', 'Bosch', '{cmspath}/starter/bosch', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('147', '6', '2', '50', 'Delco', '{cmspath}/starter/delco', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('148', '6', '2', '50', 'Denso', '{cmspath}/starter/denso', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('149', '6', '2', '50', 'Ford', '{cmspath}/starter/ford', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_produts.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('150', '6', '2', '50', 'Hitachi', '{cmspath}/starter/hitachi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('151', '6', '2', '50', 'Iskra', '{cmspath}/starter/iskra', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('152', '6', '2', '50', 'Lucas', '{cmspath}/starter/lucas', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('153', '6', '2', '50', 'Mitsubishi', '{cmspath}/starter/mitsubishi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('154', '6', '2', '50', 'Marelli', '{cmspath}/starter/marelli', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('155', '10', '2', '50', 'Toyota', '{cmspath}/marine/toyota', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('156', '10', '2', '50', 'Nissan', '{cmspath}/marine/nissan', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('157', '6', '2', '50', 'Mando', '{cmspath}/starter/mando', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('158', '6', '2', '50', 'Motorola', '{cmspath}/starter/motorola', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('159', '6', '2', '50', 'Nikko', '{cmspath}/starter/nikko', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('160', '6', '2', '50', 'Prestolite', '{cmspath}/starter/prestolite', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('161', '10', '2', '50', 'Yanmar', '{cmspath}/marine/yanmar', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('162', '6', '2', '50', 'Sawafuji', '{cmspath}/starter/sawafuji', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('163', '10', '2', '50', 'Perkins', '{cmspath}/marine/perkins', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('164', '6', '2', '50', 'Valeo', '{cmspath}/starter/valeo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('165', '11', '2', '50', 'UTB', '{cmspath}/tractor/utb', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('166', '11', '2', '50', 'FIA', '{cmspath}/tractor/fia', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('167', '11', '2', '50', 'MF', '{cmspath}/tractor/mf', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('168', '12', '2', '50', 'Linde', '{cmspath}/forklift/linde', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('169', '12', '2', '50', 'Case', '{cmspath}/forklift/case', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('170', '12', '2', '50', 'Caterpillar', '{cmspath}/forklift/caterpillar', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('171', '12', '2', '50', 'Clark', '{cmspath}/forklift/clark', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('172', '12', '2', '50', 'Daewoo', '{cmspath}/forklift/daewoo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('173', '12', '2', '50', 'Doosan', '{cmspath}/forklift/doosan', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('174', '12', '2', '50', 'JCB', '{cmspath}/forklift/jcb', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('175', '12', '2', '50', 'Hyundai', '{cmspath}/forklift/hyundai', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('176', '12', '2', '50', 'Hyster', '{cmspath}/forklift/hyster', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('177', '12', '2', '50', 'John Deere', '{cmspath}/forklift/john-deere', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('178', '12', '2', '50', 'Komatsu', '{cmspath}/forklift/komatsu', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('179', '12', '2', '50', 'Mitsubishi', '{cmspath}/forklift/mitsubishi', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('180', '12', '2', '50', 'Nissan', '{cmspath}/forklift/nissan', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('181', '12', '2', '50', 'Sumitomo', '{cmspath}/forklift/sumitomo', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('182', '12', '2', '50', 'TCM', '{cmspath}/forklift/tcm', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('183', '12', '2', '50', 'Toyota', '{cmspath}/forklift/toyota', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_prodcuts.htm', '{style}/list_products_01.htm', '{style}/article_prodcuts.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');
INSERT INTO `gemel_arctype` VALUES ('184', '12', '2', '50', 'Yale', '{cmspath}/forklift/yale', '1', 'index.html', '0', '2', '-1', '0', '0', '{style}/index_products.htm', '{style}/list_products_01.htm', '{style}/article_products.htm', '{typedir}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/products', '', '0', '0', '', '&nbsp;', '', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `gemel_area`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_area`;
CREATE TABLE `gemel_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_area
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_channeltype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_channeltype`;
CREATE TABLE `gemel_channeltype` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `nid` varchar(20) NOT NULL DEFAULT '',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `maintable` varchar(50) NOT NULL DEFAULT 'gemel_archives',
  `addtable` varchar(50) NOT NULL DEFAULT '',
  `addcon` varchar(30) NOT NULL DEFAULT '',
  `mancon` varchar(30) NOT NULL DEFAULT '',
  `editcon` varchar(30) NOT NULL DEFAULT '',
  `useraddcon` varchar(30) NOT NULL DEFAULT '',
  `usermancon` varchar(30) NOT NULL DEFAULT '',
  `usereditcon` varchar(30) NOT NULL DEFAULT '',
  `fieldset` text,
  `listfields` text,
  `allfields` text,
  `issystem` smallint(6) NOT NULL DEFAULT '0',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `arcsta` smallint(6) NOT NULL DEFAULT '-1',
  `usertype` char(10) NOT NULL DEFAULT '',
  `sendrank` smallint(6) NOT NULL DEFAULT '10',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `needdes` tinyint(1) NOT NULL DEFAULT '1',
  `needpic` tinyint(1) NOT NULL DEFAULT '1',
  `titlename` varchar(20) NOT NULL DEFAULT '标题',
  `onlyone` smallint(6) NOT NULL DEFAULT '0',
  `dfcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`,`isshow`,`arcsta`,`sendrank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_channeltype
-- ----------------------------
INSERT INTO `gemel_channeltype` VALUES ('1', 'article', '普通文章', 'gemel_archives', 'gemel_addonarticle', 'article_add.php', 'content_list.php', 'article_edit.php', 'article_add.php', 'content_list.php', 'article_edit.php', '<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `gemel_channeltype` VALUES ('2', 'image', '图片集', 'gemel_archives', 'gemel_addonimages', 'album_add.php', 'content_i_list.php', 'album_edit.php', 'album_add.php', 'content_list.php', 'album_edit.php', '<field:pagestyle itemname=\"页面风格\" type=\"number\" isnull=\"true\" default=\"2\" rename=\"\" notsend=\"1\" />	\r\n<field:imgurls itemname=\"图片集合\" type=\"img\" isnull=\"true\" default=\"\" rename=\"\" page=\"split\"/>	\r\n<field:body itemname=\"图集内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\"></field:body>\r\n<field:pro_related itemname=\"相关产品图\" autofield=\"1\" notsend=\"0\" type=\"imgfile\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pro_related>\r\n<field:pro_reff itemname=\"Refference Numbe\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pro_reff>\r\n<field:pro_app itemname=\"Application\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pro_app>\r\n<field:pro_spe itemname=\"Specification\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pro_spe>\r\n<field:pro_pac itemname=\"Packing\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">\r\n</field:pro_pac>\r\n', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `gemel_channeltype` VALUES ('3', 'product', '产品中心', 'gemel_archives', 'gemel_product', 'archives_add.php', 'content_list.php', 'archives_edit.php', 'archives_add.php', 'content_list.php', 'archives_edit.php', '<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:price>	\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:trueprice>	\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:brand>	\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:units>	\n<field:uptime itemname=\"上架时间\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:uptime>	\n<field:body itemname=\"详细介绍\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n', 'price,trueprice,brand,units', '', '0', '1', '1', '-1', '', '10', '0', '1', '1', '产品名称', '0', '0');

-- ----------------------------
-- Table structure for `gemel_co_htmls`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_co_htmls`;
CREATE TABLE `gemel_co_htmls` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isexport` tinyint(1) NOT NULL DEFAULT '0',
  `result` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `nid` (`nid`),
  KEY `typeid` (`typeid`,`title`,`url`,`dtime`,`isdown`,`isexport`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_co_htmls
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_co_mediaurls`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_co_mediaurls`;
CREATE TABLE `gemel_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hash` char(32) NOT NULL DEFAULT '',
  `tofile` char(60) NOT NULL DEFAULT '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_co_mediaurls
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_co_note`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_co_note`;
CREATE TABLE `gemel_co_note` (
  `nid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `notename` varchar(50) NOT NULL DEFAULT '',
  `sourcelang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `cotime` int(10) unsigned NOT NULL DEFAULT '0',
  `pnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isok` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `usemore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listconfig` text,
  `itemconfig` text,
  PRIMARY KEY (`nid`),
  KEY `isok` (`isok`,`channelid`,`cotime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_co_note
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_co_onepage`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_co_onepage`;
CREATE TABLE `gemel_co_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `issource` smallint(6) NOT NULL DEFAULT '1',
  `lang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `rule` text,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_co_onepage
-- ----------------------------
INSERT INTO `gemel_co_onepage` VALUES ('5', 'http://www.yingxiaoli.com', '政元软件', '1', 'gb2312', '<div class=\"content\">{@body}</div>');

-- ----------------------------
-- Table structure for `gemel_co_urls`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_co_urls`;
CREATE TABLE `gemel_co_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `nid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_co_urls
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_diyforms`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_diyforms`;
CREATE TABLE `gemel_diyforms` (
  `diyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `posttemplate` varchar(50) NOT NULL,
  `viewtemplate` varchar(50) NOT NULL,
  `listtemplate` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '',
  `info` text,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`diyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_diyforms
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_dl_log`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_dl_log`;
CREATE TABLE `gemel_dl_log` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(16) NOT NULL,
  `lang` char(6) NOT NULL,
  `dtype` varchar(10) NOT NULL,
  `dltime` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dltime` (`dltime`),
  KEY `dl_ip` (`ip`,`dltime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_dl_log
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_downloads`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_downloads`;
CREATE TABLE `gemel_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_downloads
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_erradd`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_erradd`;
CREATE TABLE `gemel_erradd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned DEFAULT NULL,
  `title` char(60) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `errtxt` mediumtext,
  `oktxt` mediumtext,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_erradd
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_feedback`;
CREATE TABLE `gemel_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `arctitle` varchar(60) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bad` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `good` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ftype` set('feedback','good','bad') NOT NULL DEFAULT 'feedback',
  `face` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_flink`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_flink`;
CREATE TABLE `gemel_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_flink
-- ----------------------------
INSERT INTO `gemel_flink` VALUES ('2', '1', 'http://www.yingxiaoli.com', '政元软件', '', '', '', '1226375403', '1', '2');

-- ----------------------------
-- Table structure for `gemel_flinktype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_flinktype`;
CREATE TABLE `gemel_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_flinktype
-- ----------------------------
INSERT INTO `gemel_flinktype` VALUES ('1', '综合网站');

-- ----------------------------
-- Table structure for `gemel_freelist`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_freelist`;
CREATE TABLE `gemel_freelist` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `namerule` varchar(50) NOT NULL DEFAULT '',
  `listdir` varchar(60) NOT NULL DEFAULT '',
  `defaultpage` varchar(20) NOT NULL DEFAULT '',
  `nodefault` smallint(6) NOT NULL DEFAULT '0',
  `templet` varchar(50) NOT NULL DEFAULT '',
  `edtime` int(11) NOT NULL DEFAULT '0',
  `maxpage` smallint(5) unsigned NOT NULL DEFAULT '100',
  `click` int(11) NOT NULL DEFAULT '1',
  `listtag` mediumtext,
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_freelist
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_guestbook`;
CREATE TABLE `gemel_guestbook` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `tid` mediumint(8) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `face` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `ischeck` (`ischeck`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_homepageset`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_homepageset`;
CREATE TABLE `gemel_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_homepageset
-- ----------------------------
INSERT INTO `gemel_homepageset` VALUES ('gemelsoft/index.htm', '../index.html', '1');

-- ----------------------------
-- Table structure for `gemel_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_keywords`;
CREATE TABLE `gemel_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(16) NOT NULL DEFAULT '',
  `rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sta` smallint(6) NOT NULL DEFAULT '1',
  `rpurl` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `keyword` (`keyword`,`rank`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_log`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_log`;
CREATE TABLE `gemel_log` (
  `lid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `method` char(10) NOT NULL DEFAULT '',
  `query` char(200) NOT NULL DEFAULT '',
  `cip` char(15) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_log
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_company`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_company`;
CREATE TABLE `gemel_member_company` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(36) NOT NULL DEFAULT '',
  `product` varchar(50) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vocation` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cosize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` text,
  `comface` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_company
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_feed`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_feed`;
CREATE TABLE `gemel_member_feed` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `type` char(20) CHARACTER SET gb2312 NOT NULL DEFAULT '0',
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(253) NOT NULL,
  `note` char(200) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_flink`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_flink`;
CREATE TABLE `gemel_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_flink
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_friends`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_friends`;
CREATE TABLE `gemel_member_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `floginid` char(20) NOT NULL DEFAULT '',
  `funame` char(36) NOT NULL DEFAULT '',
  `mid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ftype` tinyint(4) NOT NULL DEFAULT '0',
  `groupid` int(8) NOT NULL DEFAULT '1',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_friends
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_group`;
CREATE TABLE `gemel_member_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `mid` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_group
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_guestbook`;
CREATE TABLE `gemel_member_guestbook` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gid` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`aid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_list`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_list`;
CREATE TABLE `gemel_member_list` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtype` varchar(20) NOT NULL DEFAULT '个人',
  `userid` char(20) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `exptime` smallint(6) NOT NULL DEFAULT '0',
  `money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` char(50) NOT NULL DEFAULT '',
  `scores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `matt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spacesta` smallint(6) NOT NULL DEFAULT '0',
  `face` char(50) NOT NULL DEFAULT '',
  `safequestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `safeanswer` char(30) NOT NULL DEFAULT '',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` char(16) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` char(16) NOT NULL DEFAULT '',
  `checkmail` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`mid`),
  KEY `userid` (`userid`,`sex`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_list
-- ----------------------------
INSERT INTO `gemel_member_list` VALUES ('1', '个人', 'gemeladmin', 'e53b93079be7ceb0d7611d99266ef826', 'gemeladmin', '男', '10', '0', '0', '0', '', '10000', '10', '0', '', '0', '', '1505725373', '', '1507773745', '127.0.0.1', '-1');

-- ----------------------------
-- Table structure for `gemel_member_model`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_model`;
CREATE TABLE `gemel_member_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `table` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `issystem` int(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_model
-- ----------------------------
INSERT INTO `gemel_member_model` VALUES ('1', '个人', 'gemel_member_person', '个人会员模型', '1', '1', '	\n<field:onlynet itemname=\"联系方式限制\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:onlynet>	\n	\n<field:sex itemname=\"性别\" autofield=\"1\" type=\"radio\" isnull=\"true\" default=\"男,女,保密\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:sex>	\n	\n<field:uname itemname=\"昵称/公司名称\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uname>	\n	\n<field:qq itemname=\"QQ\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"12\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:qq>	\n	\n<field:msn itemname=\"MSN\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:msn>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:place itemname=\"目前所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:place>	\n	\n	\n<field:oldplace itemname=\"家乡所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:oldplace>	\n	\n	\n<field:birthday itemname=\"生日\" autofield=\"1\" type=\"datetime\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:birthday>	\n	\n<field:star itemname=\"星座\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:star>	\n	\n<field:income itemname=\"收入\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:income>	\n	\n<field:education itemname=\"学历\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:education>	\n	\n<field:height itemname=\"身高\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"160\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:height>	\n	\n<field:bodytype itemname=\"体重\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:bodytype>	\n	\n<field:blood itemname=\"血型\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:blood>	\n	\n<field:vocation itemname=\"职业\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:smoke itemname=\"吸烟\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:smoke>	\n	\n<field:marital itemname=\"婚姻状况\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:marital>	\n	\n<field:house itemname=\"住房\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:house>	\n	\n<field:drink itemname=\"饮酒\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:drink>	\n	\n<field:datingtype itemname=\"交友\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:datingtype>	\n	\n<field:language itemname=\"语言\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:language>	\n	\n	\n<field:nature itemname=\"性格\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"性格外向,性格内向,活泼开朗,豪放不羁,患得患失,冲动,幽默,稳重,轻浮,沉默寡言,多愁善感,时喜时悲,附庸风雅,能说会道,坚强,脆弱,幼稚,成熟,快言快语,损人利己,狡猾善变,交际广泛,优柔寡断,自私,真诚,独立,依赖,难以琢磨,悲观消极,郁郁寡欢,胆小怕事,乐观向上,任性,自负,自卑,拜金,温柔体贴,小心翼翼,暴力倾向,逆来顺受,不拘小节,暴躁,倔强,豪爽,害羞,婆婆妈妈,敢做敢当,助人为乐,耿直,虚伪,孤僻,老实,守旧,敏感,迟钝,婆婆妈妈,武断,果断,刻薄\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:nature>	\n	\n<field:lovemsg itemname=\"人生格言\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"100\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:lovemsg>	\n	\n<field:address itemname=\"家庭住址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n');
INSERT INTO `gemel_member_model` VALUES ('2', '企业', 'gemel_member_company', '公司企业会员模型', '1', '1', '	\n<field:company itemname=\"公司名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"36\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:company>	\n	\n<field:product itemname=\"公司产品\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:product>	\n	\n<field:place itemname=\"所在地址\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:place>	\n	\n<field:vocation itemname=\"所属行业\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:cosize itemname=\"公司规模\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:cosize>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:fax itemname=\"传真\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:fax>	\n	\n<field:linkman itemname=\"联系人\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"20\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:linkman>	\n	\n<field:address itemname=\"详细地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:email itemname=\"邮箱\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:email>	\n	\n<field:url itemname=\"地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:url>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n	\n<field:checked itemname=\"是否审核\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"1\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:checked>	\n	\n<field:introduce itemname=\"公司简介\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:introduce>	\n	\n<field:comface itemname=\"公司标志\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"255\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:comface>	\n');

-- ----------------------------
-- Table structure for `gemel_member_msg`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_msg`;
CREATE TABLE `gemel_member_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `id` (`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_operation`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_operation`;
CREATE TABLE `gemel_member_operation` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `buyid` varchar(80) NOT NULL DEFAULT '',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(10) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL DEFAULT '0',
  `sta` int(11) NOT NULL DEFAULT '0',
  `oldinfo` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `buyid` (`buyid`),
  KEY `pid` (`pid`,`mid`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_operation
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_person`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_person`;
CREATE TABLE `gemel_member_person` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `onlynet` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '男',
  `uname` char(30) NOT NULL DEFAULT '',
  `qq` char(12) NOT NULL DEFAULT '',
  `msn` char(50) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `oldplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `star` smallint(6) unsigned NOT NULL DEFAULT '1',
  `income` smallint(6) NOT NULL DEFAULT '0',
  `education` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '160',
  `bodytype` smallint(6) NOT NULL DEFAULT '0',
  `blood` smallint(6) NOT NULL DEFAULT '0',
  `vocation` smallint(6) NOT NULL DEFAULT '0',
  `smoke` smallint(6) NOT NULL DEFAULT '0',
  `marital` smallint(6) NOT NULL DEFAULT '0',
  `house` smallint(6) NOT NULL DEFAULT '0',
  `drink` smallint(6) NOT NULL DEFAULT '0',
  `datingtype` smallint(6) NOT NULL DEFAULT '0',
  `language` set('普通话','上海话','广东话','英语','日语','韩语','法语','意大利语','德语','西班牙语','俄语','阿拉伯语') DEFAULT NULL,
  `nature` set('性格外向','性格内向','活泼开朗','豪放不羁','患得患失','冲动','幽默','稳重','轻浮','沉默寡言','多愁善感','时喜时悲','附庸风雅','能说会道','坚强','脆弱','幼稚','成熟','快言快语','损人利己','狡猾善变','交际广泛','优柔寡断','自私','真诚','独立','依赖','难以琢磨','悲观消极','郁郁寡欢','胆小怕事','乐观向上','任性','自负','自卑','拜金','温柔体贴','小心翼翼','暴力倾向','逆来顺受','不拘小节','暴躁','倔强','豪爽','害羞','婆婆妈妈','敢做敢当','助人为乐','耿直','虚伪','孤僻','老实','守旧','敏感','迟钝','婆婆妈妈','武断','果断','刻薄') DEFAULT NULL,
  `lovemsg` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_person
-- ----------------------------
INSERT INTO `gemel_member_person` VALUES ('1', '1', '男', 'gemeladmin', '', '', '', '', '0', '0', '1980-01-01', '1', '0', '0', '160', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `gemel_member_pms`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_pms`;
CREATE TABLE `gemel_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floginid` varchar(20) NOT NULL DEFAULT '',
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tologinid` char(20) NOT NULL DEFAULT '',
  `folder` enum('inbox','outbox') DEFAULT 'inbox',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `message` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_pms
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_snsmsg`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_snsmsg`;
CREATE TABLE `gemel_member_snsmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_snsmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_space`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_space`;
CREATE TABLE `gemel_member_space` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pagesize` smallint(5) unsigned NOT NULL DEFAULT '10',
  `matt` smallint(6) NOT NULL DEFAULT '0',
  `spacename` varchar(50) NOT NULL DEFAULT '',
  `spacelogo` varchar(50) NOT NULL DEFAULT '',
  `spacestyle` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(100) NOT NULL DEFAULT '没签名',
  `spacenews` text,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_space
-- ----------------------------
INSERT INTO `gemel_member_space` VALUES ('1', '10', '0', 'gemeladmin的空间', '', 'person', '', '');

-- ----------------------------
-- Table structure for `gemel_member_stow`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_stow`;
CREATE TABLE `gemel_member_stow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_stow
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_stowtype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_stowtype`;
CREATE TABLE `gemel_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_stowtype
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_tj`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_tj`;
CREATE TABLE `gemel_member_tj` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `article` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album` smallint(5) unsigned NOT NULL DEFAULT '0',
  `archives` smallint(5) unsigned NOT NULL DEFAULT '0',
  `homecount` int(10) unsigned NOT NULL DEFAULT '0',
  `pagecount` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soft` int(10) NOT NULL DEFAULT '0',
  `info` int(10) NOT NULL DEFAULT '0',
  `shop` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_tj
-- ----------------------------
INSERT INTO `gemel_member_tj` VALUES ('1', '0', '0', '0', '0', '426', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `gemel_member_type`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_type`;
CREATE TABLE `gemel_member_type` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '30',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_type
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_member_vhistory`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_member_vhistory`;
CREATE TABLE `gemel_member_vhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `loginid` char(20) NOT NULL DEFAULT '',
  `vid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vloginid` char(20) NOT NULL DEFAULT '',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vip` char(15) NOT NULL DEFAULT '',
  `vtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `vtime` (`vtime`),
  KEY `mid` (`mid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_member_vhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_moneycard_record`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_moneycard_record`;
CREATE TABLE `gemel_moneycard_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ctid` int(11) NOT NULL DEFAULT '0',
  `cardid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `isexp` smallint(6) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `utime` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `ctid` (`ctid`),
  KEY `cardid` (`cardid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_moneycard_record
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_moneycard_type`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_moneycard_type`;
CREATE TABLE `gemel_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_moneycard_type
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_mtypes`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_mtypes`;
CREATE TABLE `gemel_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtypename` char(40) NOT NULL,
  `channelid` smallint(6) NOT NULL DEFAULT '1',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_mtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_multiserv_config`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_multiserv_config`;
CREATE TABLE `gemel_multiserv_config` (
  `remoteuploads` smallint(6) NOT NULL DEFAULT '0',
  `remoteupUrl` text NOT NULL,
  `rminfo` text,
  `servinfo` mediumtext,
  PRIMARY KEY (`remoteuploads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_multiserv_config
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_myad`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_myad`;
CREATE TABLE `gemel_myad` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `clsid` smallint(5) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `adname` varchar(60) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_myad
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_myadtype`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_myadtype`;
CREATE TABLE `gemel_myadtype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_myadtype
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_mytag`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_mytag`;
CREATE TABLE `gemel_mytag` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_mytag
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_payment`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_payment`;
CREATE TABLE `gemel_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `fee` varchar(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_payment
-- ----------------------------
INSERT INTO `gemel_payment` VALUES ('3', 'alipay', '支付宝', '2', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/><a href=\"https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335994340215837114&market_type=from_agent_contract&pro_codes=6ACD133C5F350958F7F62F29651356BB \" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '1', 'a:4:{s:14:\"alipay_account\";a:4:{s:5:\"title\";s:14:\"支付宝用户账号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:20:\"yuan12345xin@163.com\";}s:10:\"alipay_key\";a:4:{s:5:\"title\";s:14:\"交易安全校验码\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"dsfsdf\";}s:14:\"alipay_partner\";a:4:{s:5:\"title\";s:12:\"合作者身份ID\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"1\";}s:17:\"alipay_pay_method\";a:5:{s:5:\"title\";s:14:\"支付宝账号类型\";s:11:\"description\";s:52:\"请选择您最后一次跟支付宝签订的协议里面说明的接口类型\";s:4:\"type\";s:6:\"select\";s:5:\"iterm\";s:58:\"0:使用标准双接口,1:使用担保交易接口,2:使用即时到帐交易接口\";s:5:\"value\";s:1:\"1\";}}', '1', '0', '1');
INSERT INTO `gemel_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称	\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。	\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '4', 'a:0:{}', '1', '1', '0');
INSERT INTO `gemel_payment` VALUES ('1', 'cod', '货到付款', '0', '开通城市：×××	\n货到付款区域：×××', '3', 'a:0:{}', '1', '1', '0');
INSERT INTO `gemel_payment` VALUES ('6', 'yeepay', 'YeePay易宝', '12', 'YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。<input type=\"button\" name=\"Submit\" value=\"立即注册\" onclick=\"window.open(\"https://www.yeepay.com/selfservice/requestRegister.action\")\" />', '2', 'a:2:{s:10:\"yp_account\";a:4:{s:5:\"title\";s:8:\"商户编号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:2:\"aa\";}s:6:\"yp_key\";a:4:{s:5:\"title\";s:8:\"商户密钥\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:3:\"dsa\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for `gemel_plus`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_plus`;
CREATE TABLE `gemel_plus` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plusname` varchar(30) NOT NULL DEFAULT '',
  `menustring` varchar(200) NOT NULL DEFAULT '',
  `mainurl` varchar(50) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `filelist` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_plus
-- ----------------------------
INSERT INTO `gemel_plus` VALUES ('27', '友情链接模块', '<m:item name=\'友情链接\' link=\'friendlink_main.php\' rank=\'plus_友情链接\' target=\'main\' />', '', 'Gemel Team', '1', '');
INSERT INTO `gemel_plus` VALUES ('24', '文件管理器', '<m:item name=\'文件管理器\' link=\'file_manage_main.php\' rank=\'plus_文件管理器\' target=\'main\' />', '', 'Gemel Team', '1', '');

-- ----------------------------
-- Table structure for `gemel_product`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_product`;
CREATE TABLE `gemel_product` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(250) NOT NULL DEFAULT '',
  `units` varchar(250) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_product
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_purview`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_purview`;
CREATE TABLE `gemel_purview` (
  `mid` mediumint(8) DEFAULT '0',
  `typeid` smallint(5) DEFAULT '0',
  `rank` smallint(6) DEFAULT NULL,
  `pkey` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pvalue` text NOT NULL,
  KEY `pkey` (`pkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_purview
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_pwd_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_pwd_tmp`;
CREATE TABLE `gemel_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `mailtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_pwd_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_ratings`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_ratings`;
CREATE TABLE `gemel_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT '0',
  `total_value` int(11) NOT NULL DEFAULT '0',
  `used_ips` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_rpad`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_rpad`;
CREATE TABLE `gemel_rpad` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `adname` varchar(60) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adtype` varchar(30) NOT NULL DEFAULT '',
  `normparams` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_rpad
-- ----------------------------
INSERT INTO `gemel_rpad` VALUES ('3', '0', 'index_banner', '首页banner', '0', '1505879408', '1508471408', 'slide', 'a:5:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"pic\";a:10:{i:0;s:27:\"/images/slide/banner-02.jpg\";i:1;s:27:\"/images/slide/banner-03.jpg\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";i:9;s:0:\"\";}s:4:\"link\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";i:9;s:0:\"\";}s:4:\"text\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";i:9;s:0:\"\";}}', '');
INSERT INTO `gemel_rpad` VALUES ('4', '0', 'fir_banner', '首页第一张banner', '0', '1505885841', '1508477841', 'code', '<img data-thumb=\"/images/blank.png\" height=\"660\" src=\"/images/slide/banner-01.jpg\" width=\"1600\" />', '');
INSERT INTO `gemel_rpad` VALUES ('5', '0', 'index_about', '公司介绍', '0', '1506387277', '1508979277', 'code', '<p>\r\n	<em>Chongqing Kava Auto Electrical Co., Ltd.,</em> a professional manufacturer and exporter, has been established in 2001, specializing in starter and alternator. The products are widely used on cars, trucks and bus, forklifts and heavy equipment for American, European, and Japanese and Korean automobiles, and exported to more than <em>30 countries</em>, like Columbia, USA, Canada, Iran, Norway, Greece and so on...</p>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('6', '0', 'about_icon', '首页about图标', '0', '1506387472', '1508979472', 'code', '<ul>\r\n	<li class=\"trucks\">\r\n		<i><em>&nbsp;</em></i><span>Trucks</span></li>\r\n	<li class=\"bus\">\r\n		<i><em>&nbsp;</em></i><span>Bus</span></li>\r\n	<li class=\"forklift\">\r\n		<i><em>&nbsp;</em></i><span>Forklift</span></li>\r\n	<li class=\"cars\">\r\n		<i><em>&nbsp;</em></i><span>Cars</span></li>\r\n	<li class=\"excavator\">\r\n		<i><em>&nbsp;</em></i><span>Excavator </span></li>\r\n</ul>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('7', '0', 'index_sample', '首页样品展览', '0', '1506387647', '1508979647', 'code', '<ul class=\"clear\">\r\n	<li>\r\n		<img alt=\"\" height=\"400\" src=\"/images/sample/sample-01.jpg\" width=\"350\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"400\" src=\"/images/sample/sample-02.jpg\" width=\"350\" /></li>\r\n	<li>\r\n		<img alt=\"\" height=\"400\" src=\"/images/sample/sample-03.jpg\" width=\"350\" /></li>\r\n	<li class=\"sample-text\">\r\n		<span>Sample<br />\r\n		Room <i>&nbsp;</i></span>\r\n		<p>\r\n			Specializing in<br />\r\n			starter and<br />\r\n			alternator</p>\r\n	</li>\r\n</ul>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('8', '0', 'footer_contact', '底部联系方式', '0', '1506387715', '1508979715', 'code', '<h3>\r\n	CONTACT US</h3>\r\n<ul>\r\n	<li>\r\n		E-mail:<a href=\"mailto:sammy@kavaparts.cn\">sammy@kavaparts.cn </a></li>\r\n	<li>\r\n		Tel: 86-23-6171-0017</li>\r\n	<li>\r\n		Fax: 86-23-86615365</li>\r\n	<li>\r\n		Mobile: 86-18323243007</li>\r\n	<li>\r\n		Add: 60# da shui jing industrial zone,<br />\r\n		sha ping ba district, Chongqing, China</li>\r\n</ul>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('9', '0', 'footer_about', '底部公司介绍', '0', '1506387793', '1508979793', 'code', '<h3>\r\n	ABOUT US</h3>\r\n<div class=\"about-us\">\r\n	<ul>\r\n		<li>\r\n			Company profile</li>\r\n		<li>\r\n			Our customer</li>\r\n		<li>\r\n			Service</li>\r\n		<li>\r\n			Product Contents</li>\r\n	</ul>\r\n</div>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('10', '0', 'index_flow', '首页关注我们', '0', '1506387832', '1508979832', 'code', '<ul>\r\n	<li class=\"twi\">\r\n		<a class=\"hvr-wobble-vertical\" href=\"\">&nbsp;</a></li>\r\n	<li class=\"goo\">\r\n		<a class=\"hvr-wobble-vertical\" href=\"\">&nbsp;</a></li>\r\n	<li class=\"fac\">\r\n		<a class=\"hvr-wobble-vertical\" href=\"\">&nbsp;</a></li>\r\n	<li class=\"lin\">\r\n		<a class=\"hvr-wobble-vertical\" href=\"\">&nbsp;</a></li>\r\n</ul>\r\n', '');
INSERT INTO `gemel_rpad` VALUES ('11', '0', 'contact_way', '联系页面联系方式', '0', '1506395138', '1508987138', 'code', '<ul class=\"clear\">\r\n	<li>\r\n		<h3>\r\n			China factory<i>&nbsp;</i></h3>\r\n		<p>\r\n			Name: Mr sammy</p>\r\n		<p>\r\n			Tel: 86-23-6171-0017</p>\r\n		<p>\r\n			Duty: International Marketing Department</p>\r\n		<p>\r\n			Email:<a href=\"mailto:sammy@kavaparts.cn\">sammy@kavaparts.cn</a><br />\r\n			<a href=\"mailto:kavaparts@hotmail.com\">kavaparts@hotmail.com</a></p>\r\n	</li>\r\n	<li>\r\n		<h3>\r\n			Iran office<i>&nbsp;</i></h3>\r\n		<p>\r\n			Name: Jacqueline</p>\r\n		<p>\r\n			Tel: 86-23-6171-0017</p>\r\n		<p>\r\n			Duty: Sale</p>\r\n		<p>\r\n			Email:<a href=\"mailto:kava5@kavaparts.cn\"> kava5@kavaparts.cn </a></p>\r\n	</li>\r\n	<li>\r\n		<h3>\r\n			Iran office <i>&nbsp;</i></h3>\r\n		<p>\r\n			Name:Abby</p>\r\n		<p>\r\n			Tel: 86-23-6171-0017</p>\r\n		<p>\r\n			Duty:Sale</p>\r\n		<p>\r\n			Email:<a href=\"mailto:kava5@kavaparts.cn\"> kava5@kavaparts.cn </a></p>\r\n	</li>\r\n	<li>\r\n		<h3>\r\n			Company<i>&nbsp;</i></h3>\r\n		<p>\r\n			Tel: 86-18323243007</p>\r\n		<p>\r\n			Fax: 86-23-86615365</p>\r\n		<p>\r\n			Zip: 400030</p>\r\n		<p>\r\n			Address:60# da shui jing industrial zone, sha ping ba district,</p>\r\n	</li>\r\n</ul>\r\n', '');

-- ----------------------------
-- Table structure for `gemel_scores`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_scores`;
CREATE TABLE `gemel_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned DEFAULT '0',
  `integral` int(10) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_scores
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_search_cache`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_search_cache`;
CREATE TABLE `gemel_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `rsnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ids` mediumtext,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_search_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_search_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_search_keywords`;
CREATE TABLE `gemel_search_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL DEFAULT '',
  `spwords` char(50) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_search_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_sgpage`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sgpage`;
CREATE TABLE `gemel_sgpage` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `ismake` smallint(6) NOT NULL DEFAULT '1',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `likeid` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `ismake` (`ismake`,`uptime`),
  KEY `likeid` (`likeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sgpage
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_shops_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_shops_delivery`;
CREATE TABLE `gemel_shops_delivery` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `des` char(255) DEFAULT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_shops_delivery
-- ----------------------------
INSERT INTO `gemel_shops_delivery` VALUES ('1', '送货上门', '10.21', '送货上门,领取商品时付费.', '0');
INSERT INTO `gemel_shops_delivery` VALUES ('2', '特快专递（EMS）', '25.00', '特快专递（EMS）,要另收手续费.', '0');
INSERT INTO `gemel_shops_delivery` VALUES ('3', '普通邮递', '5.00', '普通邮递', '0');
INSERT INTO `gemel_shops_delivery` VALUES ('4', '邮局快邮', '12.00', '邮局快邮', '0');

-- ----------------------------
-- Table structure for `gemel_shops_orders`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_shops_orders`;
CREATE TABLE `gemel_shops_orders` (
  `oid` varchar(80) NOT NULL,
  `userid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `paytype` tinyint(2) NOT NULL DEFAULT '1',
  `cartcount` int(10) NOT NULL DEFAULT '0',
  `dprice` float(13,2) NOT NULL DEFAULT '0.00',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `priceCount` float(13,2) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  KEY `stime` (`stime`),
  KEY `userid` (`userid`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_shops_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_shops_products`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_shops_products`;
CREATE TABLE `gemel_shops_products` (
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `oid` varchar(80) NOT NULL DEFAULT '',
  `userid` int(10) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `buynum` int(10) NOT NULL DEFAULT '9',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_shops_products
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_shops_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_shops_userinfo`;
CREATE TABLE `gemel_shops_userinfo` (
  `userid` int(10) NOT NULL,
  `oid` varchar(80) NOT NULL DEFAULT '',
  `consignee` char(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_shops_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_softconfig`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_softconfig`;
CREATE TABLE `gemel_softconfig` (
  `downtype` smallint(6) NOT NULL DEFAULT '0',
  `ismoresite` smallint(6) NOT NULL DEFAULT '0',
  `gotojump` smallint(6) NOT NULL DEFAULT '0',
  `islocal` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sites` text,
  `downmsg` text,
  `moresitedo` smallint(5) unsigned NOT NULL DEFAULT '1',
  `dfrank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dfywboy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `argrange` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_softconfig
-- ----------------------------
INSERT INTO `gemel_softconfig` VALUES ('0', '1', '1', '1', 'http://www.aaa.com | 镜像地址一	\nhttp://www.bbb.com | 镜像地址二	\nhttp://www.ccc.com | 镜像地址三	\n', '<p>?推荐使用第三方专业下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />	\n?如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />	\n?下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />	\n?如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />	\n?本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。</p>', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `gemel_sphinx`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sphinx`;
CREATE TABLE `gemel_sphinx` (
  `countid` int(11) unsigned NOT NULL,
  `maxaid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_stepselect`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_stepselect`;
CREATE TABLE `gemel_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_stepselect
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_sysconfig`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sysconfig`;
CREATE TABLE `gemel_sysconfig` (
  `aid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'string',
  `value` text,
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sysconfig
-- ----------------------------
INSERT INTO `gemel_sysconfig` VALUES ('1', 'cfg_basehost', '站点根网址', '1', 'string', 'http://kawa.com');
INSERT INTO `gemel_sysconfig` VALUES ('2', 'cfg_cmspath', '安装目录', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('3', 'cfg_cookie_encode', 'cookie加密码', '2', 'string', 'DpUNw6926V');
INSERT INTO `gemel_sysconfig` VALUES ('4', 'cfg_indexurl', '网页主页链接', '1', 'string', '/');
INSERT INTO `gemel_sysconfig` VALUES ('5', 'cfg_backup_dir', '数据备份目录（在config目录内）', '2', 'string', 'backupdata');
INSERT INTO `gemel_sysconfig` VALUES ('6', 'cfg_indexname', '主页链接名', '1', 'string', '首页');
INSERT INTO `gemel_sysconfig` VALUES ('7', 'cfg_webname', '网站名称', '1', 'string', 'Chongqing Kava Auto Electrial Co.,Ltd');
INSERT INTO `gemel_sysconfig` VALUES ('8', 'cfg_adminemail', '网站发信EMAIL', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('9', 'cfg_html_editor', 'Html编辑器（ckeditor）', '2', 'string', 'ckeditor');
INSERT INTO `gemel_sysconfig` VALUES ('10', 'cfg_arcdir', '文档HTML默认保存路径', '1', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('11', 'cfg_medias_dir', '图片/上传文件默认路径', '1', 'string', '/upload');
INSERT INTO `gemel_sysconfig` VALUES ('12', 'cfg_ddimg_width', '缩略图默认宽度', '3', 'number', '120');
INSERT INTO `gemel_sysconfig` VALUES ('13', 'cfg_ddimg_height', '缩略图默认高度', '3', 'number', '110');
INSERT INTO `gemel_sysconfig` VALUES ('63', 'cfg_album_width', '图集默认显示图片的大小', '3', 'number', '800');
INSERT INTO `gemel_sysconfig` VALUES ('15', 'cfg_imgtype', '图片浏览器文件类型', '3', 'string', 'jpg|gif|png');
INSERT INTO `gemel_sysconfig` VALUES ('16', 'cfg_softtype', '允许上传的软件类型', '3', 'bstring', 'zip|gz|rar|iso|doc|xls|ppt|wps');
INSERT INTO `gemel_sysconfig` VALUES ('17', 'cfg_mediatype', '允许的多媒体文件类型', '3', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov');
INSERT INTO `gemel_sysconfig` VALUES ('18', 'cfg_specnote', '专题的最大节点数', '2', 'number', '6');
INSERT INTO `gemel_sysconfig` VALUES ('19', 'cfg_list_symbol', '栏目位置的间隔符号', '2', 'string', ' > ');
INSERT INTO `gemel_sysconfig` VALUES ('20', 'cfg_notallowstr', '禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '非典|艾滋病|阳痿');
INSERT INTO `gemel_sysconfig` VALUES ('21', 'cfg_feedbackcheck', '评论及留言(是/否)需审核', '5', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('22', 'cfg_keyword_replace', '关键字替换(是/否)使用本功能会影响HTML生成速度', '2', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('23', 'cfg_fck_xhtml', '编辑器(是/否)使用XHTML', '1', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('24', 'cfg_df_style', '模板默认风格', '1', 'string', 'gemelsoft');
INSERT INTO `gemel_sysconfig` VALUES ('25', 'cfg_multi_site', '(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('58', 'cfg_rm_remote', '远程图片本地化', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('27', 'cfg_gemel_log', '(是/否)开启管理日志', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('28', 'cfg_powerby', '网站版权信息', '1', 'bstring', 'Copyright &copy; 2017 Chongqing Kava Auto Electrial Co.,Ltd.');
INSERT INTO `gemel_sysconfig` VALUES ('722', 'cfg_jump_once', '跳转网址是否直接跳转？（否则显示中转页）', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('723', 'cfg_task_pwd', '系统计划任务客户端许可密码<br/>(需要客户端，通常不会太重要)', '7', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('29', 'cfg_arcsptitle', '(是/否)开启分页标题，开启会影响HTML生成速度', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('30', 'cfg_arcautosp', '(是/否)开启长文章自动分页', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('31', 'cfg_arcautosp_size', '文章自动分页大小（单位: K）', '6', 'number', '5');
INSERT INTO `gemel_sysconfig` VALUES ('32', 'cfg_auot_description', '自动摘要长度（0-500，0表示不启用）', '7', 'number', '240');
INSERT INTO `gemel_sysconfig` VALUES ('33', 'cfg_ftp_host', 'FTP主机', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('34', 'cfg_ftp_port', 'FTP端口', '2', 'number', '21');
INSERT INTO `gemel_sysconfig` VALUES ('35', 'cfg_ftp_user', 'FTP用户名', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('36', 'cfg_ftp_pwd', 'FTP密码', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('37', 'cfg_ftp_root', '网站根在FTP中的目录', '2', 'string', '/');
INSERT INTO `gemel_sysconfig` VALUES ('38', 'cfg_ftp_mkdir', '是否强制用FTP创建目录', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('39', 'cfg_feedback_ck', '评论加验证码重确认', '5', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('40', 'cfg_list_son', '上级列表是否包含子类内容', '6', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('41', 'cfg_mb_open', '是否开启会员功能', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('42', 'cfg_mb_album', '是否开启会员图集功能', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('43', 'cfg_mb_upload', '是否允许会员上传非图片附件', '4', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('44', 'cfg_mb_upload_size', '会员上传文件大小(K)', '4', 'number', '1024');
INSERT INTO `gemel_sysconfig` VALUES ('45', 'cfg_mb_sendall', '是否开放会员对自定义模型投稿', '4', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('46', 'cfg_mb_rmdown', '是否把会员指定的远程文档下载到本地', '4', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('47', 'cfg_cli_time', '服务器时区设置', '2', 'number', '8');
INSERT INTO `gemel_sysconfig` VALUES ('48', 'cfg_mb_addontype', '会员附件许可的类型', '4', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xls|ppt|wps');
INSERT INTO `gemel_sysconfig` VALUES ('49', 'cfg_mb_max', '会员附件总大小限制(MB)', '4', 'number', '500');
INSERT INTO `gemel_sysconfig` VALUES ('20', 'cfg_replacestr', '替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '她妈|它妈|他妈|你妈|去死|贱人');
INSERT INTO `gemel_sysconfig` VALUES ('719', 'cfg_makeindex', '发布文章后马上更新网站主页', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('51', 'cfg_keyword_like', '使用关键词关连文章', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('52', 'cfg_index_max', '网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可', '6', 'number', '10000');
INSERT INTO `gemel_sysconfig` VALUES ('53', 'cfg_index_cache', 'arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)', '6', 'number', '86400');
INSERT INTO `gemel_sysconfig` VALUES ('54', 'cfg_tplcache', '是否启用模板缓存', '6', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('55', 'cfg_tplcache_dir', '模板缓存目录', '6', 'string', '/config/tplcache');
INSERT INTO `gemel_sysconfig` VALUES ('56', 'cfg_makesign_cache', '发布/修改单个文档是否使用调用缓存', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('59', 'cfg_arc_dellink', '删除非站内链接', '7', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('60', 'cfg_arc_autopic', '提取第一张图片作为缩略图', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('61', 'cfg_arc_autokeyword', '自动提取关键字', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('62', 'cfg_title_maxlen', '文档标题最大长度<br>改此参数后需要手工修改数据表', '7', 'number', '120');
INSERT INTO `gemel_sysconfig` VALUES ('64', 'cfg_check_title', '发布文档时是否检测重复标题', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('65', 'cfg_album_row', '图集多行多列样式默认行数', '3', 'number', '100');
INSERT INTO `gemel_sysconfig` VALUES ('66', 'cfg_album_col', '图集多行多列样式默认列数', '3', 'number', '100');
INSERT INTO `gemel_sysconfig` VALUES ('67', 'cfg_album_pagesize', '图集多页多图每页显示最大数', '3', 'number', '12');
INSERT INTO `gemel_sysconfig` VALUES ('68', 'cfg_album_style', '图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表', '3', 'number', '3');
INSERT INTO `gemel_sysconfig` VALUES ('69', 'cfg_album_ddwidth', '图集默认缩略图大小', '3', 'number', '200');
INSERT INTO `gemel_sysconfig` VALUES ('70', 'cfg_mb_notallow', '不允许注册的会员id', '4', 'bstring', 'www,bbs,ftp,mail,user,users,admin,administrator');
INSERT INTO `gemel_sysconfig` VALUES ('71', 'cfg_mb_idmin', '用户id最小长度', '4', 'number', '3');
INSERT INTO `gemel_sysconfig` VALUES ('72', 'cfg_mb_pwdmin', '用户密码最小长度', '4', 'number', '3');
INSERT INTO `gemel_sysconfig` VALUES ('73', 'cfg_md_idurl', '是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('74', 'cfg_mb_rank', '注册会员默认级别<br>[会员权限管理中]查看级别代表的数字', '4', 'number', '10');
INSERT INTO `gemel_sysconfig` VALUES ('76', 'cfg_feedback_time', '两次评论至少间隔时间(秒钟)', '5', 'number', '30');
INSERT INTO `gemel_sysconfig` VALUES ('77', 'cfg_feedback_numip', '每个IP一小时内最大评论数', '5', 'number', '30');
INSERT INTO `gemel_sysconfig` VALUES ('78', 'cfg_md_mailtest', '是否限制Email只能注册一个帐号', '4', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('79', 'cfg_mb_spacesta', '会员使用权限开通状态<br>(-10 邮件验证 -1 手工审核, 0 没限制)', '4', 'number', '-1');
INSERT INTO `gemel_sysconfig` VALUES ('728', 'cfg_mb_allowreg', '是否允许新会员注册', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('729', 'cfg_mb_adminlock', '是否禁止访问管理员帐号的空间', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('81', 'cfg_vdcode_member', '会员投稿是否使用验证码', '5', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('83', 'cfg_mb_cktitle', '会员投稿是否检测重复标题', '5', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('84', 'cfg_mb_editday', '投稿多长时间后不能再修改[天]', '5', 'number', '7');
INSERT INTO `gemel_sysconfig` VALUES ('729', 'cfg_sendarc_scores', '投稿可获取积分', '5', 'number', '10');
INSERT INTO `gemel_sysconfig` VALUES ('88', 'cfg_caicai_sub', '被踩扣除文章好评度', '5', 'number', '2');
INSERT INTO `gemel_sysconfig` VALUES ('89', 'cfg_caicai_add', '被顶扣除文章好评度', '5', 'number', '2');
INSERT INTO `gemel_sysconfig` VALUES ('90', 'cfg_feedback_add', '详细好评可获好评度', '5', 'number', '5');
INSERT INTO `gemel_sysconfig` VALUES ('91', 'cfg_feedback_sub', '详细恶评扣除好评度', '5', 'number', '5');
INSERT INTO `gemel_sysconfig` VALUES ('730', 'cfg_sendfb_scores', '参与评论可获积分', '5', 'number', '3');
INSERT INTO `gemel_sysconfig` VALUES ('92', 'cfg_search_max', '最大搜索检查文档数', '6', 'number', '50000');
INSERT INTO `gemel_sysconfig` VALUES ('93', 'cfg_search_maxrc', '最大返回搜索结果数', '6', 'number', '300');
INSERT INTO `gemel_sysconfig` VALUES ('94', 'cfg_search_time', '搜索间隔时间(秒/对网站所有用户)', '6', 'number', '3');
INSERT INTO `gemel_sysconfig` VALUES ('95', 'cfg_baidunews_limit', '百度新闻xml更新新闻数量 最大100', '8', 'string', '100');
INSERT INTO `gemel_sysconfig` VALUES ('223', 'cfg_smtp_port', 'smtp服务器端口', '2', 'string', '25');
INSERT INTO `gemel_sysconfig` VALUES ('221', 'cfg_sendmail_bysmtp', '是否启用smtp方式发送邮件', '2', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('222', 'cfg_smtp_server', 'smtp服务器', '2', 'string', 'smtp.163.com');
INSERT INTO `gemel_sysconfig` VALUES ('224', 'cfg_smtp_usermail', 'SMTP服务器的用户邮箱', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('225', 'cfg_smtp_user', 'SMTP服务器的用户帐号', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('226', 'cfg_smtp_password', 'SMTP服务器的用户密码', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('96', 'cfg_updateperi', '百度新闻xml更新时间 （单位：分钟）', '8', 'string', '15');
INSERT INTO `gemel_sysconfig` VALUES ('227', 'cfg_online_type', '在线支付网关类型', '2', 'string', 'nps');
INSERT INTO `gemel_sysconfig` VALUES ('706', 'cfg_upload_switch', '删除文章文件同时删除相关附件文件', '2', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('708', 'cfg_rewrite', '是否使用伪静态', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('707', 'cfg_allsearch_limit', '网站全局搜索时间限制', '2', 'string', '1');
INSERT INTO `gemel_sysconfig` VALUES ('709', 'cfg_delete', '文章回收站(是/否)开启', '2', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('710', 'cfg_keywords', '站点默认关键字', '1', 'string', 'Starter Motor, Auto Alternator');
INSERT INTO `gemel_sysconfig` VALUES ('711', 'cfg_description', '站点描述', '1', 'bstring', 'Chongqing Kava Auto Electrical Co., Ltd., a professional manufacturer and exporter, has been established in 2001, specializing in starter and alternator.');
INSERT INTO `gemel_sysconfig` VALUES ('712', 'cfg_beian', '网站备案号', '1', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('713', 'cfg_need_typeid2', '是否启用副栏目', '6', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('72', 'cfg_mb_pwdtype', '前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位', '4', 'string', '32');
INSERT INTO `gemel_sysconfig` VALUES ('716', 'cfg_cache_type', 'id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)', '6', 'string', 'id');
INSERT INTO `gemel_sysconfig` VALUES ('717', 'cfg_max_face', '会员上传头像大小限制(单位：KB)', '3', 'number', '50');
INSERT INTO `gemel_sysconfig` VALUES ('718', 'cfg_typedir_df', '栏目网址使用目录名（不显示默认页，即是 /a/abc/ 形式）', '2', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('719', 'cfg_make_andcat', '发表文章后马上更新相关栏目', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('720', 'cfg_make_prenext', '发表文章后马上更新上下篇', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('721', 'cfg_feedback_forbid', '是否禁止所有评论(将包括禁止顶踩等)', '5', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('724', 'cfg_addon_domainbind', '附件目录是否绑定为指定的二级域名', '7', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('725', 'cfg_addon_domain', '附件目录的二级域名', '7', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('726', 'cfg_df_dutyadmin', '默认责任编辑(dutyadmin)', '7', 'string', 'admin');
INSERT INTO `gemel_sysconfig` VALUES ('727', 'cfg_mb_allowncarc', '是否允许用户空间显示未审核文章', '4', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('730', 'cfg_mb_spaceallarc', '会员空间中所有文档的频道ID(不限为0)', '4', 'number', '0');
INSERT INTO `gemel_sysconfig` VALUES ('731', 'cfg_face_adds', '上传头像增加积分', '5', 'number', '10');
INSERT INTO `gemel_sysconfig` VALUES ('732', 'cfg_moreinfo_adds', '填写详细资料增加积分', '5', 'number', '20');
INSERT INTO `gemel_sysconfig` VALUES ('733', 'cfg_money_scores', '多少积分可以兑换一个金币', '5', 'number', '50');
INSERT INTO `gemel_sysconfig` VALUES ('734', 'cfg_mb_wnameone', '是否允许用户笔名/昵称重复', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('735', 'cfg_arc_dirname', '是否允许用目录作为文档文件名<br />文档命名规则需改为：{typedir}/{aid}/index.html', '7', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('736', 'cfg_puccache_time', '需缓存内容全局缓存时间(秒)', '6', 'number', '36000');
INSERT INTO `gemel_sysconfig` VALUES ('737', 'cfg_arc_click', '文档默认点击数(-1表示随机50-200)', '7', 'number', '-1');
INSERT INTO `gemel_sysconfig` VALUES ('738', 'cfg_addon_savetype', '附件保存形式(按data函数日期参数)', '3', 'string', 'ymd');
INSERT INTO `gemel_sysconfig` VALUES ('739', 'cfg_qk_uploadlit', '异步上传缩略图(空间太不稳定的用户关闭此项)', '3', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('740', 'cfg_login_adds', '登录会员中心获积分', '5', 'number', '2');
INSERT INTO `gemel_sysconfig` VALUES ('741', 'cfg_userad_adds', '会员推广获积分', '5', 'number', '10');
INSERT INTO `gemel_sysconfig` VALUES ('742', 'cfg_ddimg_full', '缩略图是否使用强制大小(对背景填充)', '3', 'bool', 'Y');
INSERT INTO `gemel_sysconfig` VALUES ('743', 'cfg_ddimg_bgcolor', '缩略图空白背景填充颜色(0-白,1-黑)', '3', 'number', '0');
INSERT INTO `gemel_sysconfig` VALUES ('744', 'cfg_replace_num', '文档内容同一关键词替换次数(0为全部替换)', '7', 'number', '2');
INSERT INTO `gemel_sysconfig` VALUES ('745', 'cfg_uplitpic_cut', '上传缩略图后是否马上弹出裁剪框', '3', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('746', 'cfg_album_mark', '图集是否使用水印(小图也会受影响)', '3', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('747', 'cfg_mb_feedcheck', '会员动态是否需要审核', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('748', 'cfg_mb_msgischeck', '会员状态是否需要审核', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('749', 'cfg_mb_reginfo', '注册是否需要完成详细资料的填写', '4', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('750', 'cfg_remote_site', '是否启用远程站点', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('751', 'cfg_title_site', '是否发布和编辑文档时远程发布(启用远程站点的前提下)', '2', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('752', 'cfg_mysql_type', '数据库类型（支持mysql和mysqli）', '2', 'string', 'mysql');
INSERT INTO `gemel_sysconfig` VALUES ('753', 'cfg_sphinx_article', '是否启用文章全文检索功能（需配置sphinx服务器）', '7', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('754', 'cfg_sphinx_host', 'Sphinx服务器主机地址', '7', 'string', 'localhost');
INSERT INTO `gemel_sysconfig` VALUES ('755', 'cfg_sphinx_port', 'Sphinx服务器端口号', '7', 'number', '9312');
INSERT INTO `gemel_sysconfig` VALUES ('14', 'cfg_domain_cookie', '跨域共享cookie的域名(例如: .yingxiaoli.com)', '2', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('756', 'cfg_memcache_enable', '是否启用memcache缓存，如果为否(N)，默认使用文件缓存', '6', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('757', 'cfg_memcache_mc_defa', '默认memcache缓存服务器地址', '6', 'string', 'memcache://127.0.0.1:11211/default127');
INSERT INTO `gemel_sysconfig` VALUES ('758', 'cfg_memcache_mc_oth', '附加memcache缓存服务器地址', '6', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('759', 'cfg_cross_sectypeid', '支持交叉栏目显示副栏目内容', '7', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('760', 'cfg_digg_update', '顶踩缓存异步更新间隔（0为不缓存）', '6', 'number', '0');
INSERT INTO `gemel_sysconfig` VALUES ('761', 'cfg_feedback_guest', '是否允许匿名评论', '5', 'bool', 'N');
INSERT INTO `gemel_sysconfig` VALUES ('762', 'cfg_cnzz', '站长统计', '1', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('763', 'cfg_kf', '客服代码', '1', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('764', 'smtp_email', '留言接收邮箱', '1', 'string', '');
INSERT INTO `gemel_sysconfig` VALUES ('765', 'cfg_disable_funs', '禁用PHP函数', '7', 'bstring', 'phpinfo,eval,exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,file_put_contents');
INSERT INTO `gemel_sysconfig` VALUES ('766', 'cfg_disable_tags', '禁用模板标签', '7', 'bstring', '');

-- ----------------------------
-- Table structure for `gemel_sys_enum`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sys_enum`;
CREATE TABLE `gemel_sys_enum` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ename` char(30) NOT NULL DEFAULT '',
  `evalue` char(20) NOT NULL DEFAULT '0',
  `egroup` char(20) NOT NULL DEFAULT '',
  `disorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sys_enum
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sys_module`;
CREATE TABLE `gemel_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashcode` char(32) NOT NULL DEFAULT '',
  `modname` varchar(30) NOT NULL DEFAULT '',
  `indexname` varchar(20) NOT NULL DEFAULT '',
  `indexurl` varchar(30) NOT NULL DEFAULT '',
  `ismember` tinyint(4) NOT NULL DEFAULT '1',
  `menustring` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sys_module
-- ----------------------------
INSERT INTO `gemel_sys_module` VALUES ('1', '1f35620fb42d452fa2bdc1dee1690f92', '文件管理器', '', '', '0', '');
INSERT INTO `gemel_sys_module` VALUES ('2', 'b437d85a7a7bc778c9c79b5ec36ab9aa', '友情链接', '', '', '0', '');

-- ----------------------------
-- Table structure for `gemel_sys_set`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sys_set`;
CREATE TABLE `gemel_sys_set` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL DEFAULT '',
  `items` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sys_set
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_sys_task`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_sys_task`;
CREATE TABLE `gemel_sys_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(50) NOT NULL,
  `dourl` varchar(100) NOT NULL,
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtime` varchar(10) DEFAULT '0000',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freq` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `parameter` text,
  `settime` int(10) unsigned NOT NULL DEFAULT '0',
  `sta` enum('运行','成功','失败') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_sys_task
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_tagindex`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_tagindex`;
CREATE TABLE `gemel_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(12) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `weekcc` int(10) unsigned NOT NULL DEFAULT '0',
  `monthcc` int(10) unsigned NOT NULL DEFAULT '0',
  `weekup` int(10) unsigned NOT NULL DEFAULT '0',
  `monthup` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_tagindex
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_taglist`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_taglist`;
CREATE TABLE `gemel_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_taglist
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_uploads`;
CREATE TABLE `gemel_uploads` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `arcid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `url` char(80) NOT NULL DEFAULT '',
  `mediatype` smallint(6) NOT NULL DEFAULT '1',
  `width` char(10) NOT NULL DEFAULT '',
  `height` char(10) NOT NULL DEFAULT '',
  `playtime` char(10) NOT NULL DEFAULT '',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `memberid` (`mid`),
  KEY `arcid` (`arcid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_uploads
-- ----------------------------
INSERT INTO `gemel_uploads` VALUES ('1', '0', '170920/1-1F920135421332.jpg', '/upload/allimg/170920/1-1F920135421332.jpg', '1', '1600', '660', '0', '257270', '1505886861', '1');
INSERT INTO `gemel_uploads` VALUES ('4', '1', 'Audi A6,A4 98-00 Alternator,', '/upload/allimg/170922/art-01.jpg', '0', '0', '0', '0', '60420', '1506059671', '1');
INSERT INTO `gemel_uploads` VALUES ('3', '1', 'Audi A6,A4 98-00 Alternator,', '/upload/allimg/170922/art-01-lp.jpg', '1', '0', '0', '0', '8794', '1506051991', '1');
INSERT INTO `gemel_uploads` VALUES ('5', '1', 'Audi A6,A4 98-00 Alternator,', '/upload/allimg/170922/art-01-lp.jpg', '1', '0', '0', '0', '8568', '1506059673', '1');

-- ----------------------------
-- Table structure for `gemel_verifies`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_verifies`;
CREATE TABLE `gemel_verifies` (
  `nameid` char(32) NOT NULL DEFAULT '',
  `cthash` varchar(32) NOT NULL DEFAULT '',
  `method` enum('local','official') NOT NULL DEFAULT 'official',
  `filename` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_verifies
-- ----------------------------

-- ----------------------------
-- Table structure for `gemel_vote`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_vote`;
CREATE TABLE `gemel_vote` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `votename` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ismore` tinyint(6) NOT NULL DEFAULT '0',
  `isallow` tinyint(6) NOT NULL DEFAULT '0',
  `view` tinyint(6) NOT NULL DEFAULT '0',
  `spec` int(20) unsigned NOT NULL DEFAULT '0',
  `isenable` tinyint(6) NOT NULL DEFAULT '0',
  `votenote` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_vote
-- ----------------------------
INSERT INTO `gemel_vote` VALUES ('1', '你是从哪儿得知本站的？', '1266336000', '1584547200', '0', '0', '1', '1', '0', '0', '<v:note id=\"1\" count=\"1\">朋友介绍</v:note>rn<v:note id=\"2\" count=\"0\">门户网站的搜索引擎</v:note>rn<v:note id=\"3\" count=\"2\">Google或百度搜索</v:note>rn<v:note id=\"4\" count=\"2\">别的网站上的链接</v:note>rn<v:note id=\"5\" count=\"1\">其它途径</v:note>rn');

-- ----------------------------
-- Table structure for `gemel_vote_member`
-- ----------------------------
DROP TABLE IF EXISTS `gemel_vote_member`;
CREATE TABLE `gemel_vote_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gemel_vote_member
-- ----------------------------
