-- Thrall 45042 SAI
SET @ENTRY := 45042;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,28892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall 45042 - On Respawn - Cast 'Nature Channeling 28892'");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=45005;
INSERT INTO `npc_spellclick_spells` VALUES 
(45005, 84071, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=45004;
INSERT INTO `npc_spellclick_spells` VALUES 
(45004, 46598, 0, 0);

delete from `vehicle_template_accessory` where `entry`=45004;
-- 45004	45028	0	1	Wyvern - Aggra	6	30000

delete from `vehicle_template_accessory` where `entry`=45024;
-- 45024	45027	0	1	Wyvern - Aggra	6	30000

UPDATE `creature_template` SET `faction`=35 WHERE `entry`=45028;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=45024;

UPDATE `creature_template` SET `InhabitType`=4, `ScriptName`="npc_wyvern_45004" WHERE `entry`=45004;

UPDATE `creature_template` SET `ScriptName`="npc_wyvern_45005" WHERE `entry`=45005;

UPDATE `creature` SET spawntimesecs=120 WHERE guid=257393;
-- should be working but isn't
-- DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (18) AND `SourceGroup` IN (45005) AND `Sourceentry` IN (84071);
-- INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `Sourceentry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- (18, 45005, 84071, 0, 0, 28, 0, 27123, 0, 0, 0, 0, 0, '', '');

DELETE FROM `waypoint_data` WHERE `id` = 4500401;
INSERT INTO `waypoint_data` VALUES 
(4500401, 0, 833.6, 1052.91, -6.74, 0, 0, 1, 0, 100, 0),
(4500401, 1, 842.7, 1051.95, 1.74, 0, 0, 1, 0, 100, 0),
(4500401, 2, 770.34, 949.726, 38.8637, 0, 0, 1, 0, 100, 0),
(4500401, 3, 792.222, 737.495, 38.8637, 0, 0, 1, 0, 100, 0),
(4500401, 4, 920.221, 698.87, 3.86366, 0, 0, 1, 0, 100, 0),
(4500401, 5, 985.457, 788.34, -31.0252, 0, 0, 1, 0, 100, 0),
(4500401, 6, 937.471, 883.339, -39.7197, 0, 0, 1, 0, 100, 0),
(4500401, 7, 835.682, 853.524, -54.1363, 0, 0, 1, 0, 100, 0),
(4500401, 8, 842.057, 757.833, -80.2752, 0, 0, 1, 0, 100, 0),
(4500401, 9, 948.002, 751.8, -107.581, 0, 0, 1, 0, 100, 0),
(4500401, 10, 947.352, 798.976, -147.995, 0, 0, 1, 0, 100, 0),
(4500401, 11, 893.021, 788.55, -245.521, 0, 0, 1, 0, 100, 0);

DELETE FROM `waypoint_data` WHERE `id` = 4502401;
INSERT INTO `waypoint_data` VALUES 
(4502401, 0, 1109.14, 649.396, 413.65, 0, 0, 1, 0, 100, 0),
(4502401, 1, 954.589, 657.99, 289.706, 0, 0, 1, 0, 100, 0),
(4502401, 2, 875.491, 621.337, 191.761, 0, 0, 00, 0, 100, 0),
(4502401, 3, 837.281, 565.34, 122.955, 0, 0, 00, 0, 100, 0),
(4502401, 4, 820.571, 487.705, 39.7609, 0, 0, 00, 0, 100, 0),
(4502401, 5, 903.094, 501.446, -36.7289, 0, 0, 00, 0, 100, 0),
(4502401, 6, 935.057, 506.95, -48.1708, 0, 0, 00, 0, 100, 0);

UPDATE `creature_template` SET `ScriptName`="npc_wyvern_45024" WHERE `entry`=45024;

UPDATE `creature_template` SET `faction`=1629, `InhabitType`=4 WHERE `entry`=45024;

UPDATE `creature_template` SET HealthModifier=1, `faction`=35 WHERE `entry`=45027;

-- vashj'ir

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=39584;
INSERT INTO `npc_spellclick_spells` VALUES 
(39584, 76546, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41051;
INSERT INTO `npc_spellclick_spells` VALUES 
(41051, 46598, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41986;
INSERT INTO `npc_spellclick_spells` VALUES 
(41986, 76546, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41225;
INSERT INTO `npc_spellclick_spells` VALUES 
(41225, 76546, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42202;
INSERT INTO `npc_spellclick_spells` VALUES 
(42202, 78749, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40760;
INSERT INTO `npc_spellclick_spells` VALUES 
(40760, 46598, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41057;
INSERT INTO `npc_spellclick_spells` VALUES 
(41057, 46598, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41157;
INSERT INTO `npc_spellclick_spells` VALUES 
(41157, 46598, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40223;
INSERT INTO `npc_spellclick_spells` VALUES 
(40223, 46598, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=41098;
INSERT INTO `npc_spellclick_spells` VALUES 
(41098, 46598, 1, 0);

Delete from `creature_text` where `CreatureID` in (45027, 45028);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(45027, 0, 0, 'You made it!  Good!', 12, 0, 100, 4, 0, 22610, 45175, 'Aggra to Player'),
(45027, 1, 0, 'This is the Temple of Earth.  It\'s the most important structure in Deepholm.', 12, 0, 100, 0, 0, 22611, 45176, 'Aggra to Player'),
(45027, 2, 0, 'There was once a Titan-made stone inside.  It was known as the World Pillar.  The name was literal.  It bore the weight of all the elemental and magnetic forces in Deepholm.', 12, 0, 100, 0, 0, 22612, 45180, 'Aggra to Player'),
(45027, 3, 0, 'It was shattered when Deathwing broke through the dome above and created the rift between the two worlds.  All of Deepholm is going to collapse into Azeroth if we do not put the World Pillar back together.', 12, 0, 100, 0, 0, 22613, 45182, 'Aggra to Player'),
(45027, 4, 0, 'The first fragment was going to be delivered to us by a Horde gunship known as the Storm\'s Fury.  It never made it here.', 12, 0, 100, 0, 0, 22614, 45186, 'Aggra to Player'),
(45027, 5, 0, 'We\'ve taken control of the temple and we\'re containing as much of the damage as we can.  Go inside and speak to Maruut; he\'s in charge.', 12, 0, 100, 0, 0, 22615, 45187, 'Aggra to Player'),
(45027, 6, 0, 'We are all counting on you.', 12, 0, 100, 0, 0, 22616, 45191, 'Aggra to Player'),
(45028, 0, 0, 'I hope you have a strong stomach.  Travelling through the breach is not for the weak.', 12, 0, 100, 0, 0, 22606, 45169, 'Aggra to Player'),
(45028, 1, 0, 'We\'re at the center of the Maelstrom, the rift between Deepholm and our world.  Watch as it threatens to tear our world apart!', 12, 0, 100, 0, 0, 22607, 0, 'Aggra to Player'),
(45028, 2, 0, 'Let us hope Thrall and the others can contain it while you\'re inside.', 12, 0, 100, 0, 0, 22608, 45171, 'Aggra to Player'),
(45028, 3, 0, 'This is it!  Brace yourself!', 14, 0, 100, 0, 0, 22609, 45172, 'Aggra to Player');

DELETE FROM `spell_target_position` WHERE `ID`=84073 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (84073, 0, 646, 1040.91, 544.689, 681.86, 0);
DELETE FROM `spell_target_position` WHERE `ID`=84073 AND `EffectIndex`=1;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (84073, 1, 646, 1040.91, 544.689, 681.86, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=94687 AND `ScriptName`='spell_waters_of_farseeing_94687';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (94687, 'spell_waters_of_farseeing_94687');
