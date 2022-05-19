update `npc_spellclick_spells` set `spell_id` = 73945 where `npc_entry` = 39464;

update creature_template set npcflag=16777216, unit_flags=262976, AIName="", ScriptName="npc_drowned_thunder_lizard_39464" where entry=39464;

update `creature_template` set`AIName` = "", `ScriptName` = "npc_wayward_plainstrider" where `entry` =39337;

-- Fizzle Darkclaw 3203 SAI
SET @ENTRY := 3203;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,11240,0,0,0,85,74024,1,0,0,0,0,7,0,0,0,0,0,0,0,"Fizzle Darkclaw 3203 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id74024'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fizzle Darkclaw 3203 - On Gossip Option 0 Selected - Close Gossip");

DELETE FROM `quest_objectives` WHERE `ID`=256506;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (256506, 25188, 0, 0, 0, 39331, 1, 0, 0, 0, 'Help Grandmatron Tekla', 20444);
DELETE FROM `quest_objectives` WHERE `ID`=256508;
DELETE FROM `quest_objectives` WHERE `ID`=256507;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (256507, 25188, 0, 0, 1, 39332, 1, 0, 0, 0, ' \r\nHelp Misha Tor\'kren\r\n \r\nHelp Zen\'Taji\r\n', 28153);
DELETE FROM `quest_objectives` WHERE `ID`=256509;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (256509, 25188, 0, 2, 2, 39334, 1, 0, 0, 0, 'Help Zen\'Taji', 28153);

DELETE FROM `creature_template_model` WHERE `CreatureID`=3113 AND `CreatureDisplayID`=1964;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (3113, 0, 1964, 1, 1, 28153);
DELETE FROM `creature_template_model` WHERE `CreatureID`=3112 AND `CreatureDisplayID`=1964;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (3112, 0, 1964, 1, 1, 28153);


-- Zen'Taji 39324 SAI
SET @ENTRY := 39324;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,25195,0,0,0,33,39334,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zen'Taji 39324 - On Quest '' Finished - Quest Credit 'Durotar Watershed Quest KC 4 39334'");

-- Raggaran 39326 SAI
SET @ENTRY := 39326;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,25192,0,0,0,33,39332,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raggaran 39326 - On Quest '' Finished - Quest Credit 'Durotar Watershed Quest KC 2 39332'");

-- Misha Tor'kren 3193 SAI
SET @ENTRY := 3193;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,25193,0,0,0,33,39331,0,0,0,0,0,7,0,0,0,0,0,0,0,"Misha Tor'kren 3193 - On Quest '' Finished - Quest Credit 'Durotar Watershed Quest KC 1 39331'");

update `creature_template` set `ScriptName` = "npc_water_elemental" where `entry` = 39596;
update `creature_template` set `ScriptName` = "npc_earth_elemental" where `entry` = 39595;