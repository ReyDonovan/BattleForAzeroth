Delete from `creature_template_addon` where `entry` = 44365;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(44365, 0, 29257, 0, 1, 0, '');

Delete from `gossip_menu` where `MenuId` = 11823;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES 
(11823, 16575);

-- Garrosh Hellcream - texts --
Delete from `creature_text` where `CreatureId` = 44629;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 0, 0, 'This better be important, Sylvanas. You know how I detest this place and its foul stench. Why have you called for me?', 12, 0, 100, 0, 0, 20496, 0, 0, 'Garrosh Hellscream 1');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 1, 0, 'And more importantly, what are those Scourge fiends doing here?', 12, 0, 100, 0, 0, 20497, 0, 0, 'Garrosh Hellscream 2');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 2, 0, 'Get on with it, Sylvanas.', 12, 0, 100, 0, 0, 20498, 0, 0, 'Garrosh Hellscream 3');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 3, 0, 'What you have done here, Sylvanas... it goes against the laws of nature. Disgusting is the only word I have to describe it.', 12, 0, 100, 0, 0, 20499, 0, 0, 'Garrosh Hellscream 4');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 4, 0, 'Have you given any thought to what this means, Sylvanas?', 12, 0, 100, 0, 0, 20500, 0, 0, 'Garrosh Hellscream 5');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 5, 0, 'What difference is there between you and the Lich King now?', 12, 0, 100, 0, 0, 20501, 0, 0, 'Garrosh Hellscream 6');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 6, 0, 'Watch your clever mouth, bitch.', 12, 0, 100, 0, 0, 20502, 0, 0, 'Garrosh Hellscream 7');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 7, 0, 'Cromush, you stay behind and make sure the Banshee Queen is well \'guarded.\' I will be expecting a full report when next we meet.', 12, 0, 100, 0, 0, 20503, 0, 0, 'Garrosh Hellscream 8');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44629, 8, 0, 'Remember, Sylvanas, eventually we all have to stand before our maker and face judgment. Your day may come sooner than others\'....', 12, 0, 100, 0, 0, 20504, 0, 0, 'Garrosh Hellscream 9');

-- High Warlord Cromush - texts --
Delete from `creature_text` where `CreatureId` = 44640;
INSERT INTO `creature_text` (`CreatureId`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `comment`) VALUES
(44640, 0, 0, 'ABBERATION!', 12, 0, 100, 0, 0, 0, 'High Warlord Cromush 1'),
(44640, 1, 0, 'As you command, Warchief!', 12, 0, 100, 0, 0, 0, 'High Warlord Cromush 2');

-- Lady Sylvanas Windrunner - texts --
Delete from `creature_text` where `CreatureId` = 44365;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 0, 0, 'Where is that Orge headed buffoon?', 12, 0, 100, 0, 0, 20459, 0, 0, 'Lady Sylvanas Windrunner 1');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 1, 0, 'Ah, speak of the devil...', 12, 0, 100, 0, 0, 20460, 0, 0, 'Lady Sylvanas Windrunner 2');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 2, 0, 'Warchief, so glad you could make it.', 12, 0, 100, 0, 0, 20461, 0, 0, 'Lady Sylvanas Windrunner 3');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 3, 0, 'With the death of the Lich King, many of the more intelligent Scourge became...unemployed. Those \'fiends,\' as you so delicately put it, are called val\'kyr. They are under my command now...', 12, 0, 100, 0, 0, 20462, 0, 0, 'Lady Sylvanas Windrunner 4');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 4, 0, '...and they are part of the reason that I asked to see you.', 12, 0, 100, 0, 0, 20463, 0, 0, 'Lady Sylvanas Windrunner 5');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 5, 0, 'Very well, Warchief. I have solved the plight of the Forsaken!', 12, 0, 100, 0, 0, 20464, 0, 0, 'Lady Sylvanas Windrunner 6');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 6, 0, 'As a race, we Forsaken are unable to procreate.', 12, 0, 100, 0, 0, 20465, 0, 0, 'Lady Sylvanas Windrunner 7');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 7, 0, 'With the aid of the val\'kyr, we are now able to take the corpses of the fallen and create new Forsaken.', 12, 0, 100, 0, 0, 20466, 0, 0, 'Lady Sylvanas Windrunner 8');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 8, 0, 'Agatha, show the Warchief!', 12, 0, 100, 0, 0, 20467, 0, 0, 'Lady Sylvanas Windrunner 9');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (44365, 9, 0, 'Warchief, without these new Forsaken my people would die out...Out hold upon Gilneas and northern Lordaeron would crumble.', 12, 0, 100, 0, 0, 20468, 0, 0, 'Lady Sylvanas Windrunner 10');
Delete from `waypoints` where `entry` in (445920, 445921, 445922, 445923, 445924, 445925, 445926, 445927, 445928, 445929, 445935);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(445920, 1, 1372.98, 1041.06, 56.38103, 'Fallen Human 1'),
(445921, 1, 1378.16, 1031.71, 56.37173, 'Fallen Human 1'),
(445922, 1, 1372.58, 1038.07, 55.96663, 'Fallen Human 1'),
(445923, 1, 1375.42, 1033.81, 55.65223, 'Fallen Human 1'),
(445924, 1, 1369.65, 1033.67, 55.96683, 'Fallen Human 1'),
(445925, 1, 1367.33, 1035.38, 56.30403, 'Fallen Human 1'),
(445926, 1, 1370.66, 1030.82, 56.13403, 'Fallen Human 1'),
(445927, 1, 1374.14, 1036.35, 55.92173, 'Fallen Human 1'),
(445928, 1, 1369.57, 1036.9, 55.99803, 'Fallen Human 1'),
(445929, 1, 1377.3, 1035.93, 56.09613, 'Fallen Human 1'),
(445935, 1, 1373.35, 1031.58, 55.61893, 'Fallen Human 1');

Delete from `waypoints` where `entry` in (445930, 445931, 445932, 445933);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(445930, 1, 1376, 1029.61, 55.93743, 'Fallen Human 1'),
(445931, 1, 1369.71, 1040.19, 56.02123, 'Fallen Human 1'),
(445932, 1, 1375.2, 1038.58, 56.24513, 'Fallen Human 1'),
(445933, 1, 1372.08, 1034.98, 55.84893, 'Fallen Human 1');


-- Garrosh Hellscream - waypoints --
Delete from `waypoints` where `entry` in (446290);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(446290, 1, 1373.891, 1051.011, 53.177, 'Garrosh Hellscream 1'),
(446290, 2, 1363.928, 1059.524, 53.024, 'Garrosh Hellscream 2');

-- High Warlord Cromush - waypoints --
Delete from `waypoints` where `entry` in (446400);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(446400, 0, 1408.146, 1081.673, 60.479, 'High Warlord Cromush 1'),
(446400, 1, 1406.512, 1090.116, 60.479, 'High Warlord Cromush 2'),
(446400, 2, 1396.526, 1091.166, 58.229, 'High Warlord Cromush 3'),
(446400, 3, 1389.335, 1088.211, 54.888, 'High Warlord Cromush 4'),
(446400, 4, 1380.581, 1079.219, 52.551, 'High Warlord Cromush 5'),
(446400, 5, 1369.57, 1065.622, 53.054, 'High Warlord Cromush 6'),
(446400, 6, 1369.633, 1054.702, 53.155, 'High Warlord Cromush 7'),
(446400, 7, 1373.516, 1047.433, 53.222, 'High Warlord Cromush 8');

Delete from `waypoints` where `entry` in (446080);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(446080, 1, 1364.064, 1028.712, 71.34, 'Agatha 1'),
(446080, 2, 1367, 1030.3, 63.18, 'Agatha 2'),
(446080, 3, 1364.1, 1028.6, 58.466, 'Agatha 3');

Delete from `conditions` where `SourceEntry` = 83173 and `SourceTypeOrReferenceId` = 13; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 0, 83173, 0, 18, 1, 44592, 0, 0, '', 'Raise Forsaken - target Fallen Human'),
(13, 0, 83173, 0, 18, 1, 44593, 0, 0, '', 'Raise Forsaken - target Fallen Human');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 44951;

-- Grand Executor Mortuus 44615 SAI
SET @ENTRY := 44615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,19,0,100,0,26965,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Quest '' Taken - Run Script"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Quest Taken - Remove Npc Flag Questgiver"),
(@ENTRY,0,3,0,38,0,100,0,0,1,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Data Set 0 1 - Add Npc Flag Questgiver");

-- Actionlist SAI
SET @ENTRY := 4436500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,28,0,100,1,94688,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - INCORRECT EVENT TYPE - Say Line 0 (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 0 (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,4,20459,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20459 (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,5000,5000,0,0,12,44630,3,250000,0,0,0,8,0,0,0,1404.71,1063.73,60.5617,0,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Portal from Orgrimmar 44630' (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,0,0,0,0,12,44630,3,250000,0,0,0,8,0,0,0,1393.27,1021.2,53.2225,0,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Portal from Orgrimmar 44630' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,12,44630,3,250000,0,0,0,8,0,0,0,1358.62,1054.72,53.12,0,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Portal from Orgrimmar 44630' (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,66,0,0,0,0,0,0,9,44632,0,25,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Orientation Closest Creature 'Dark Ranger 44632' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 1 (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,4,20460,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20460 (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,3000,3000,0,0,12,44636,3,120000,0,0,0,8,0,0,0,1357.85,1050.12,52.9982,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1359.1,1046.55,52.9705,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,11,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1360.75,1048.84,53.1289,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,12,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1360.89,1051.81,53.1979,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,13,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1363.08,1048.15,53.2222,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,14,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1364.08,1050.84,53.2916,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,15,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1364.43,1053.62,53.2934,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1366.69,1050.31,53.342,5.25344,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,17,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1384.33,1022.04,53.2812,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,18,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1385.79,1025.99,53.2259,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,19,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1386.69,1023.26,53.2439,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,20,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1387.9,1029.71,53.2185,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,21,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1388.05,1026.91,53.2083,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,22,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1388.16,1020.88,53.2552,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,23,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1389.79,1024.51,53.2083,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,12,44636,3,210000,0,0,0,8,0,0,0,1391.1,1027.73,53.2048,2.82743,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Hellscream's Elite 44636' (No Repeat)"),
(@ENTRY,9,25,0,0,0,100,1,0,0,0,0,12,44629,3,210000,0,0,0,8,0,0,0,1379.41,1043.7,54.145,3.745,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'Garrosh Hellscream 44629' (No Repeat)"),
(@ENTRY,9,26,0,0,0,100,1,0,0,0,0,12,44640,3,210000,0,0,0,8,0,0,0,1403.3,1071.42,60.479,3.9495,"Lady Sylvanas Windrunner 44365 - On Script - Summon Creature 'High Warlord Cromush 44640' (No Repeat)"),
(@ENTRY,9,27,0,0,0,100,1,1000,1000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Orientation Home Position (No Repeat)"),
(@ENTRY,9,28,0,0,0,100,1,22000,22000,0,0,66,0,0,0,0,0,0,9,44629,0,25,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Orientation Closest Creature 'Garrosh Hellscream 44629' (No Repeat)"),
(@ENTRY,9,29,0,0,0,100,1,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 2 (No Repeat)"),
(@ENTRY,9,30,0,0,0,100,1,0,0,0,0,4,20461,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20461 (No Repeat)"),
(@ENTRY,9,31,0,0,0,100,1,3000,3000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Orientation Home Position (No Repeat)"),
(@ENTRY,9,32,0,0,0,100,1,1000,1000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 3 (No Repeat)"),
(@ENTRY,9,33,0,0,0,100,1,0,0,0,0,4,20462,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20462 (No Repeat)"),
(@ENTRY,9,34,0,0,0,100,1,15000,15000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 4 (No Repeat)"),
(@ENTRY,9,35,0,0,0,100,1,0,0,0,0,4,20463,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20463 (No Repeat)"),
(@ENTRY,9,36,0,0,0,100,1,7000,7000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 5 (No Repeat)"),
(@ENTRY,9,37,0,0,0,100,1,0,0,0,0,4,20464,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20464 (No Repeat)"),
(@ENTRY,9,38,0,0,0,100,1,8000,8000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 6 (No Repeat)"),
(@ENTRY,9,39,0,0,0,100,1,0,0,0,0,4,20465,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20465 (No Repeat)"),
(@ENTRY,9,40,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 7"),
(@ENTRY,9,41,0,0,0,100,1,0,0,0,0,4,20466,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20466 (No Repeat)"),
(@ENTRY,9,42,0,0,0,100,0,10000,10000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 8"),
(@ENTRY,9,43,0,0,0,100,1,0,0,0,0,4,20467,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20467 (No Repeat)"),
(@ENTRY,9,44,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,19,44608,30,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Data 0 1"),
(@ENTRY,9,45,0,0,0,100,0,32000,32000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 9"),
(@ENTRY,9,46,0,0,0,100,1,0,0,0,0,4,20468,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20468 (No Repeat)"),
(@ENTRY,9,47,0,0,0,100,0,22000,22000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Say Line 10"),
(@ENTRY,9,48,0,0,0,100,1,0,0,0,0,4,20469,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Play Sound 20469 (No Repeat)"),
(@ENTRY,9,49,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,44615,50,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Set Data 0 1"),
(@ENTRY,9,50,0,0,0,100,0,0,0,0,0,33,44629,0,0,0,0,0,18,100,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Script - Quest Credit 'Garrosh Hellscream 44629'");

-- Portal from Orgrimmar 44630 SAI
SET @ENTRY := 44630;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,55761,2,0,0,0,0,1,0,0,0,0,0,0,0,"Portal from Orgrimmar 44630 - Out of Combat - Cast 'Air Revenant Entrance 55761' (No Repeat)");

-- Fallen Human SAI
SET @GUID := -187009;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459200,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187527;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459201,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -186827;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459202,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -186951;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44593;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459203,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187006;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459204,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187530;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459205,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187008;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44593;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459206,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187532;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459207,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187012;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459208,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187531;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459209,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187049;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459210,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187007;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459300,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187526;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459301,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -186950;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459302,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Fallen Human SAI
SET @GUID := -187523;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44592;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,25,0,100,0,0,0,0,0,11,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Reset - Cast 'Spell Id77619'"),
(@GUID,0,2,0,8,0,100,0,83173,0,0,0,80,4459303,0,2,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit 'Spell Id83173' - Run Script");

-- Actionlist SAI
SET @ENTRY := 4459200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445920,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445921,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459202;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445922,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459203;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445923,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459204;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445924,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459205;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445925,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459206;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445926,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459207;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445927,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459208;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445928,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459209;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445929,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459210;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445935,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445930,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459301;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445931,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459302;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445932,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4459303;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,77619,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id77619' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,11,61971,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly On (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,53,0,445933,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,8000,8000,0,0,28,61971,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Remove Aura 'Spell Id61971' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Fly Off (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,1000,1000,0,0,11,83149,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83149' (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,0,0,0,0,94,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag  (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,11,83150,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Cast 'Spell Id83150' (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Set Dynamic Flag Dead (No Repeat)");

-- Garrosh Hellscream 44629 SAI
SET @ENTRY := 44629;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - Out of Combat - Run Script (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4462900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,11,12980,2,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Simple Teleport 12980' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,97,0,0,0,0,0,0,8,0,0,0,1378,1045.09,53.582,4.00257,"Garrosh Hellscream 44629 - On Script - Jump To Pos (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,3000,3000,0,0,66,0,0,0,0,0,0,9,44635,0,25,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Set Orientation Closest Creature 'Hill Fox 44635' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 0 (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,0,0,0,0,4,20496,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20496 (No Repeat)"),
(@ENTRY,9,7,0,0,0,100,1,13000,13000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Set Orientation Home Position (No Repeat)"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 1 (No Repeat)"),
(@ENTRY,9,9,0,0,0,100,1,0,0,0,0,4,20497,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20497 (No Repeat)"),
(@ENTRY,9,10,0,0,0,100,1,500,500,0,0,11,48349,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Emote Point 48349' (No Repeat)"),
(@ENTRY,9,11,0,0,0,100,1,30000,30000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 2 (No Repeat)"),
(@ENTRY,9,12,0,0,0,100,1,0,0,0,0,4,20498,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20498 (No Repeat)"),
(@ENTRY,9,13,0,0,0,100,1,45000,45000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 3 (No Repeat)"),
(@ENTRY,9,14,0,0,0,100,1,0,0,0,0,4,20499,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20499 (No Repeat)"),
(@ENTRY,9,15,0,0,0,100,1,25000,25000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 4 (No Repeat)"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,4,20500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20500 (No Repeat)"),
(@ENTRY,9,17,0,0,0,100,1,6000,6000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 5 (No Repeat)"),
(@ENTRY,9,18,0,0,0,100,1,0,0,0,0,4,20501,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20501 (No Repeat)"),
(@ENTRY,9,19,0,0,0,100,1,12000,12000,0,0,66,0,0,0,0,0,0,9,44635,0,25,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Set Orientation Closest Creature 'Hill Fox 44635' (No Repeat)"),
(@ENTRY,9,20,0,0,0,100,1,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 6 (No Repeat)"),
(@ENTRY,9,21,0,0,0,100,1,0,0,0,0,4,20502,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20502 (No Repeat)"),
(@ENTRY,9,22,0,0,0,100,1,1000,1000,0,0,11,48349,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Emote Point 48349' (No Repeat)"),
(@ENTRY,9,23,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,9,44640,0,25,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Set Orientation Closest Creature 'High Warlord Cromush 44640'"),
(@ENTRY,9,24,0,0,0,100,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 7"),
(@ENTRY,9,25,0,0,0,100,1,0,0,0,0,4,20503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20503 (No Repeat)"),
(@ENTRY,9,26,0,0,0,100,1,2000,2000,0,0,11,79506,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Spell Id79506' (No Repeat)"),
(@ENTRY,9,27,0,0,0,100,1,2000,2000,0,0,11,79506,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Spell Id79506' (No Repeat)"),
(@ENTRY,9,28,0,0,0,100,0,12000,12000,0,0,66,0,0,0,0,0,0,9,44635,0,25,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Set Orientation Closest Creature 'Hill Fox 44635'"),
(@ENTRY,9,29,0,0,0,100,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Say Line 8"),
(@ENTRY,9,30,0,0,0,100,1,0,0,0,0,4,20504,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Play Sound 20504 (No Repeat)"),
(@ENTRY,9,31,0,0,0,100,0,2000,2000,0,0,11,79506,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Spell Id79506'"),
(@ENTRY,9,32,0,0,0,100,0,2000,2000,0,0,11,79506,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Spell Id79506'"),
(@ENTRY,9,33,0,0,0,100,0,5000,5000,0,0,53,0,446290,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Start Waypoint"),
(@ENTRY,9,34,0,0,0,100,1,7000,7000,0,0,11,12980,2,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Cast 'Simple Teleport 12980' (No Repeat)"),
(@ENTRY,9,35,0,0,0,100,1,100,100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream 44629 - On Script - Despawn Instant (No Repeat)");

-- High Warlord Cromush 44640 SAI
SET @ENTRY := 44640;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,1,0,0,0,0,11,12980,2,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Just Summoned - Cast 'Simple Teleport 12980' (No Repeat)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Just Summoned - Run Script (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 4464000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,53,1,446400,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,8000,8000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Set Orientation Home Position (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,83000,83000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Say Line 0 (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,50000,50000,0,0,66,0,0,0,0,0,0,9,44629,0,25,0,0,0,0,"High Warlord Cromush 44640 - On Script - Set Orientation Closest Creature 'Garrosh Hellscream 44629' (No Repeat)"),
(@ENTRY,9,4,0,0,0,100,1,0,0,0,0,11,6245,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Cast 'Force Target - Salute 6245' (No Repeat)"),
(@ENTRY,9,5,0,0,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Say Line 1 (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,30000,30000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush 44640 - On Script - Despawn Instant (No Repeat)");

-- Agatha 44608 SAI
SET @ENTRY := 44608;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Data Set 0 1 - Run Script");

-- Actionlist SAI
SET @ENTRY := 4460800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,28,94688,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Script - Remove Aura 'Spell Id94688' (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,53,0,446080,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Script - Start Waypoint (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,1,9000,9000,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Script - Pause Waypoint (No Repeat)"),
(@ENTRY,9,3,0,0,0,100,1,0,0,0,0,11,83173,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Script - Cast 'Spell Id83173' (No Repeat)"),
(@ENTRY,9,6,0,0,0,100,1,13000,13000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha 44608 - On Script - Set Orientation Home Position (No Repeat)");

-- Grand Executor Mortuus 44615 SAI
SET @ENTRY := 44615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26965,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Quest '' Taken - Set Event Phase 2"),
(@ENTRY,0,1,0,19,2,100,0,26965,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Quest '' Taken - Run Script (Phase 2)"),
(@ENTRY,0,2,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Reset - Set Event Phase 1");

-- Actionlist SAI
SET @ENTRY := 4461500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,45,0,1,0,0,0,0,9,44365,0,25,0,0,0,0,"Grand Executor Mortuus 44615 - On Script - Set Data 0 1 (No Repeat)"),
(@ENTRY,9,1,0,0,0,100,1,192000,192000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus 44615 - On Script - Set Event Phase 1 (No Repeat)");

-- Hellscream's Elite 44636 SAI
SET @ENTRY := 44636;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,12980,2,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite 44636 - Out of Combat - Cast 'Simple Teleport 12980' (No Repeat)"),
(@ENTRY,0,1,0,1,0,100,1,180000,180000,0,0,11,12980,2,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite 44636 - Out of Combat - Cast 'Simple Teleport 12980' (No Repeat)"),
(@ENTRY,0,2,0,1,0,100,1,180100,180100,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite 44636 - Out of Combat - Despawn Instant (No Repeat)");

-- Lady Sylvanas Windrunner 44365 SAI
SET @ENTRY := 44365;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner 44365 - On Data Set 0 1 - Run Script");

DELETE FROM `creature` WHERE `guid`=187534 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187533 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187529 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187528 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187525 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187524 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187048 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=187011 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=186949 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=186947 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=186829 and (`id` = 44593 or `id` = 44592);
DELETE FROM `creature` WHERE `guid`=186826 and (`id` = 44593 or `id` = 44592);

update `creature_template` set `InhabitType` = 4 where `entry` = 44608;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=83173 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=44593 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 83173, 0, 0, 31, 0, 5, 44593, 0, 0, 0, 0, '', 'Raise Forsaken - target Fallen Human');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=83173 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=44592 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 83173, 0, 1, 31, 0, 5, 44592, 0, 0, 0, 0, '', 'Raise Forsaken - target Fallen Human');

update `creature` set `spawntimesecs` = 5 where `id` in (44592, 44593);
