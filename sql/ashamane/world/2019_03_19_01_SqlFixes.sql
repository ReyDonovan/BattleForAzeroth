-- Elder Aldryth 88797 SAI
SET @ENTRY := 88797;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,59,0,100,1,1,0,0,0,33,88743,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Timed Event 1 Triggered - Quest Credit 'Find Elder Aldryth Credit 88743' (No Repeat)"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,53,1,@ENTRY*100+00,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Timed Event 0 Triggered - Start Waypoint (No Repeat)"),
(@ENTRY,0,3,4,40,0,100,0,3,0,0,0,54,5000,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 3 Reached - Pause Waypoint"),
(@ENTRY,0,4,5,40,0,100,0,3,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 3 Reached - Say Line 0"),
(@ENTRY,0,5,6,40,0,100,0,4,0,0,0,54,10000,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 4 Reached - Pause Waypoint"),
(@ENTRY,0,6,7,40,0,100,0,4,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 4 Reached - Say Line 1"),
(@ENTRY,0,7,8,40,0,100,0,5,0,0,0,1,2,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 5 Reached - Say Line 2"),
(@ENTRY,0,8,9,40,0,100,0,5,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 5 Reached - Despawn Instant"),
(@ENTRY,0,9,0,73,0,100,0,0,0,0,0,67,1,2000,2000,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Spellclick - Create Timed Event");

-- Elder Aldryth 88797 Waypoint
DELETE FROM `waypoints` WHERE `entry`=8879700;
INSERT INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(8879700,1,200.659485,6423.083008,-22.386225,'Elder Aldryth waypoint 1'),
(8879700,2,194.590363,6422.728516,-22.840078,'Elder Aldryth waypoint 2'),
(8879700,3,194.590363,6422.728516,-1.630288,'Elder Aldryth waypoint 3'), 
(8879700,4,196.034836,6428.789551,-1.582636,'Elder Aldryth waypoint 4'),
(8879700,5,196.211792,6456.946777,-1.532654,'Elder Aldryth waypoint 5');

-- Elder Aldryth 88797
DELETE FROM `creature_text` WHERE `creatureid`=88797;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(88797,0,0,'Thank you, stranger.',12,0,100,0,0,0,0,0,'Elder Aldryth'),
(88797,1,0,'I don`t know what happened. I heard a loud crashing noise, and then I found myself stuck beneath this beam. Since then, I`ve just been waiting.',12,0,100,0,0,0,0,0,'Elder Aldryth'),
(88797,2,0,'Now, where did that lovely girl run off to?',12,0,100,0,0,0,0,0,'Elder Aldryth');


Delete from `npc_spellclick_spells` where `npc_entry` = 88797;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(88797, 178389, 1, 0);

update `creature_template` set `npcflag` = 16777216 where `entry` = 88797;

update `creature_template` set `gossip_menu_id` = 12125 where `entry` = 15188;

-- Cenarion Emissary Blackhoof 15188 SAI
SET @ENTRY := 15188;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,12125,0,0,0,85,86565,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cenarion Emissary Blackhoof 15188 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id86565'");

UPDATE `creature_template` SET `unit_flags` = 768 WHERE (entry = 38806);

Delete from `creature_template_addon` where entry = 39867;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(39867, 0, 0, 50397184, 1, 0, '49414'); -- 39867 - -Unknown-

set @CGUID = 282106000;
DELETE FROM `creature` WHERE `guid` = @CGUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID, 39867, 1, 616, 5040, 0, 1, 0, 0, 0, 3919.505, -3138.938, 1042.473, 0.6108652, 120, 0, 0, 0, 0, 0, 0, 0, 0, 14333); -- -Unknown- (Area: -Unknown- - Difficulty: 0) (Auras: 49414 - -Unknown-)

INSERT IGNORE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(38806, 0, 0, 'BY FIRE BE PURGED!!!!', 14, 0, 100, 0, 0, 23335, 39839, 'Ragnaros to Player'),
(39128, 0, 0, 'No... it can\'t be.  Our forward outpost has been obliterated!', 12, 0, 100, 0, 0, 20950, 39185, 'Aronus to Player'),
(39128, 1, 0, 'Is it too late?  I feel Deathwing\'s presence nearby!', 12, 0, 100, 0, 0, 20951, 39186, 'Aronus to Player'),
(39128, 2, 0, 'The Firelord has risen!  We must send word to the others.  Let us hurry!', 12, 0, 100, 0, 0, 20952, 39189, 'Aronus to Player');
