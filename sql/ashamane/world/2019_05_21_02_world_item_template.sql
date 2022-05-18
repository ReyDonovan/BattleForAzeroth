/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2019-05-19 23:00:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `item_template`
-- ----------------------------
DROP TABLE IF EXISTS `item_template`;
CREATE TABLE `item_template` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `AllowableRace` bigint(20) NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT '0',
  `ClassID` tinyint(4) NOT NULL DEFAULT '0',
  `SubclassID` tinyint(4) NOT NULL DEFAULT '0',
  `SoundOverrideSubclass` tinyint(4) NOT NULL DEFAULT '0',
  `GroupSoundsID` tinyint(4) NOT NULL DEFAULT '0',
  `AppearanceID` int(11) NOT NULL DEFAULT '0',
  `TransmogSourceTypeEnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags3` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags4` int(10) unsigned NOT NULL DEFAULT '0',
  `PriceRandomValue` float NOT NULL DEFAULT '1',
  `PriceVariance` float NOT NULL DEFAULT '1',
  `BuyCount` int(10) unsigned NOT NULL DEFAULT '1',
  `BuyPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `SellPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxCount` int(11) NOT NULL DEFAULT '0',
  `Stackable` int(11) NOT NULL DEFAULT '1',
  `ItemStatAllocation1` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation2` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation3` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation4` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation5` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation6` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation7` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation8` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation9` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation10` int(11) NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier1` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier2` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier3` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier4` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier5` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier6` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier7` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier8` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier9` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier10` float NOT NULL DEFAULT '0',
  `ItemRange` float NOT NULL DEFAULT '0',
  `BagFamily` int(10) unsigned NOT NULL DEFAULT '0',
  `QualityModifier` float NOT NULL DEFAULT '0',
  `Duration` int(10) unsigned NOT NULL DEFAULT '0',
  `DmgVariance` float NOT NULL DEFAULT '0',
  `AllowableClass` smallint(6) NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemStatValue1` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue2` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue3` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue4` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue5` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue6` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue7` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue8` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue9` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue10` smallint(6) NOT NULL DEFAULT '0',
  `ScalingStatDistribution` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemDelay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StartQuestID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LockID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RandomProperty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RandomSuffix` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemSet` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Map` smallint(6) NOT NULL DEFAULT '0',
  `TotemCategory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SocketBonus` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GemProperties` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LimitCategory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredHoliday` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredTransmogHoliday` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemNameDescriptionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InventoryType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint(4) NOT NULL DEFAULT '0',
  `RequiredPVPRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredPVPMedal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ContainerSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemStatType1` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType2` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType3` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType4` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType5` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType6` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType7` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType8` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType9` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType10` tinyint(4) NOT NULL DEFAULT '0',
  `DamageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Bonding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LanguageID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PageMaterialID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Material` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SheatheType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketType1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketType2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketType3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellWeightCategory` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellWeight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ArtifactID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellID_1` int(11) NOT NULL DEFAULT '0',
  `SpellID_2` int(11) NOT NULL DEFAULT '0',
  `SpellID_3` int(11) NOT NULL DEFAULT '0',
  `SpellID_4` int(11) NOT NULL DEFAULT '0',
  `SpellID_5` int(11) NOT NULL DEFAULT '0',
  `Trigger_1` tinyint(4) NOT NULL DEFAULT '0',
  `Trigger_2` tinyint(4) NOT NULL DEFAULT '0',
  `Trigger_3` tinyint(4) NOT NULL DEFAULT '0',
  `Trigger_4` tinyint(4) NOT NULL DEFAULT '0',
  `Trigger_5` tinyint(4) NOT NULL DEFAULT '0',
  `Charges_1` smallint(6) NOT NULL DEFAULT '0',
  `Charges_2` smallint(6) NOT NULL DEFAULT '0',
  `Charges_3` smallint(6) NOT NULL DEFAULT '0',
  `Charges_4` smallint(6) NOT NULL DEFAULT '0',
  `Charges_5` smallint(6) NOT NULL DEFAULT '0',
  `Category_1` smallint(6) NOT NULL DEFAULT '0',
  `Category_2` smallint(6) NOT NULL DEFAULT '0',
  `Category_3` smallint(6) NOT NULL DEFAULT '0',
  `Category_4` smallint(6) NOT NULL DEFAULT '0',
  `Category_5` smallint(6) NOT NULL DEFAULT '0',
  `Cooldown_1` int(11) NOT NULL DEFAULT '0',
  `Cooldown_2` int(11) NOT NULL DEFAULT '0',
  `Cooldown_3` int(11) NOT NULL DEFAULT '0',
  `Cooldown_4` int(11) NOT NULL DEFAULT '0',
  `Cooldown_5` int(11) NOT NULL DEFAULT '0',
  `CategoryCooldown_1` int(11) NOT NULL DEFAULT '0',
  `CategoryCooldown_2` int(11) NOT NULL DEFAULT '0',
  `CategoryCooldown_3` int(11) NOT NULL DEFAULT '0',
  `CategoryCooldown_4` int(11) NOT NULL DEFAULT '0',
  `CategoryCooldown_5` int(11) NOT NULL DEFAULT '0',
  `ChrSpecializationID_1` smallint(6) NOT NULL DEFAULT '0',
  `ChrSpecializationID_2` smallint(6) NOT NULL DEFAULT '0',
  `ChrSpecializationID_3` smallint(6) NOT NULL DEFAULT '0',
  `ChrSpecializationID_4` smallint(6) NOT NULL DEFAULT '0',
  `ChrSpecializationID_5` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of item_template
-- ----------------------------
INSERT INTO `item_template` VALUES ('133755', '-1', '幽光鱼竿', '钓鱼神器', '132932', '2', '20', '1', '12', '0', '2', '1', '8192', '0', '0', '1.0194', '1', '1', '132932', '1804001', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '32768', '0', '0', '0.4', '-1', '750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '73', '6', '0', '0', '0', '0', '197886', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `item_template` VALUES ('2', '-1', '任务完成器', '选择需要完成的任务', '646494', '15', '0', '-1', '9', '0', '0', '64', '8192', '0', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `item_template` VALUES ('1', '-1', '传送器', '传说中的传送器,偶尔会到达不可描述的地方', '646494', '15', '0', '-1', '9', '0', '0', '64', '8192', '0', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `item_template` VALUES ('3', '-1', '场景进度完成器', '点击完成当前阶段，进入下一个阶段', '646494', '15', '0', '-1', '9', '0', '0', '64', '8192', '0', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `item_template` VALUES ('7', '-1', '幻化外观解锁器', '解锁你所获得物品的所有副本模式幻化外观。', '134544', '15', '0', '-1', '9', '0', '0', '512', '8192', '0', '0', '1', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
