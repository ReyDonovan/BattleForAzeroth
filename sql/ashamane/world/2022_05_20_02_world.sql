UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=135153;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135153;
INSERT INTO `smart_scripts` VALUES
(135153, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 124768, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(135153, 0, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 143, 5375, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=124725;
DELETE FROM `smart_scripts` WHERE `entryorguid`=124725;
INSERT INTO `smart_scripts` VALUES
(124725, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 124587, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(124725, 0, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 143, 5366, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=135064;
DELETE FROM `smart_scripts` WHERE `entryorguid`=135064;
INSERT INTO `smart_scripts` VALUES
(135064, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 124588, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(135064, 0, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 143, 5362, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
