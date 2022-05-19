-- remove not handled phasing phaseid50
-- Add correct phasing back once phasing is fixed for Zuldazar
update creature set PhaseId = 0 where guid = 210440913;

-- https://www.wowhead.com/quest=51248/productive-pests#videos:id=143536

update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 137200;
update `creature_template` set `npcflag` = 16777216 where entry = 137200;

-- Mosquito SAI
SET @ENTRY := 137200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,272498,0,0,0,33,137200,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mosquito - On Spellhit '' - Quest Credit ''"),
(@ENTRY,0,1,0,8,0,100,0,272498,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mosquito - On Spellhit '' - Despawn Instant");

-- https://www.wowhead.com/quest=51286/stop-the-evacuation#videos:id=143539

-- Alliance Boat SAI
SET @ENTRY := 137418;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,269982,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Spellhit 'Ping spell' - Run Script");


-- Actionlist SAI
SET @ENTRY := 13741800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,3000,3000,0,0,11,62987,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Script - Cast 'Explosion'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,33,137418,0,0,0,0,0,21,50,0,0,0,0,0,0,"Alliance Boat - On Script - Quest Credit ''"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Script - Despawn Instant");

-- https://www.wowhead.com/quest=51680/in-bwonsamdis-shadow#videos:id=139003

-- Jamil Abul'housin SAI
SET @ENTRY := 132637;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,62,0,100,0,22681,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jamil Abul'housin - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,132637,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jamil Abul'housin - On Gossip Option 0 Selected - Quest Credit ''");

-- Jol the Ancient SAI
SET @ENTRY := 124063;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,62,0,100,0,21283,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jol the Ancient - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,124063,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jol the Ancient - On Gossip Option 0 Selected - Quest Credit ''");

-- https://www.wowhead.com/quest=50235/no-safe-haven#videos:id=139007

update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (132717, 132708, 132706, 132709);
update `creature_template` set `npcflag` = 16777216 where `entry` in (132717, 132708, 132706, 132709);

-- Zeb'ahari Fishermon SAI
SET @ENTRY := 132706;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Despawn In 3000 ms");

-- Zeb'ahari Villager SAI
SET @ENTRY := 132709;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Despawn In 3000 ms");


-- Zeb'ahari Mender SAI
SET @ENTRY := 132708;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Despawn In 3000 ms");

-- Zeb'ahari Beastkeeper SAI
SET @ENTRY := 132717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Despawn In 3000 ms");

-- https://www.wowhead.com/quest=47735/ancient-tortollan-remedies#videos:id=139004
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (132681, 133159);

-- Laelani SAI
SET @ENTRY := 132681;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,56,156824,1,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Add Item '' 1 Time"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Set Orientation Invoker"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,261539,0,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Cast '<Spell not found!>'");

-- Spiny Puffer SAI
SET @ENTRY := 133159;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,261891,0,0,0,56,156809,1,0,0,0,0,7,0,0,0,0,0,0,0,"Spiny Puffer - On Spellhit '<Spell not found!>' - Add Item '' 1 Time");

-- https://www.wowhead.com/quest=48404/the-scamps
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (126034);

-- https://www.wowhead.com/quest=51679/a-strange-port-of-call#videos:id=139013
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (139838);

-- Street Scamp SAI
SET @ENTRY := 126034;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,250261,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Spellhit '<Spell not found!>' - Run Script"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Respawn - Set Run On");

-- Actionlist SAI
SET @ENTRY := 12603400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,33,126034,0,0,0,0,0,7,0,0,0,0,0,0,0,"Street Scamp - On Script - Quest Credit ''"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,28,250265,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Remove Aura '<Spell not found!>'"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Set Npc Flag "),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Start Random Movement"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Say Line 0"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Despawn Instant");

-- after https://www.wowhead.com/quest=47915/rescuing-the-taken add aura 260329

-- Wardruid Loti SAI
SET @ENTRY := 123335;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,47915,0,0,0,85,260329,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti - On Quest '' Finished - Invoker Cast ''");

-- Druid of Gonk SAI
SET @ENTRY := 132041;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,29,0,0,0,0,0,0,21,0,0,0,0,0,0,0,"Druid of Gonk - On Respawn - Start Follow Closest Player"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of Gonk - On Respawn - Set Npc Flag Questgiver");

DELETE FROM `creature_queststarter` WHERE `id`=132041 AND `quest`=47520;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (132041, 47520);
DELETE FROM `creature_queststarter` WHERE `id`=132041 AND `quest`=47518;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (132041, 47518);

DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=47520;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 47520);
DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=47518;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 47518);

DELETE FROM `creature_summoner_entry` WHERE `CreatureId`=132041;
INSERT INTO `creature_summoner_entry` (`CreatureId`, `SummonerVisibleCreatureId`) VALUES (132041, 123335);

-- https://www.wowhead.com/quest=48400/grand-theft-telemancy visuals no scripted (already implemented 263079?) (263071 server side script triggers teleports) (263072 actual teleport spell)
update `creature_template` set `unit_flags` = 33344 where `entry` = 132189;

-- https://www.wowhead.com/quest=48317/a-nose-for-magic#videos:id=139139


-- https://www.wowhead.com/quest=50178/trouble-in-the-rootway

update `creature_template` set `faction` = 17 where entry = 123135;

-- Feathered Viper Egg SAI
SET @ENTRY := 132413;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feathered Viper Egg - On Respawn - Set Reactstate Passive"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,12,132412,8,3000,1,0,0,1,0,0,0,0,0,0,0,"Feathered Viper Egg - On Just Died - Summon Creature 'Feathered Viper Hatchling'");

-- make already spawned hatchlings appear dead while the new ones are alive and fight
update `creature` set `unit_flags` = 537166592 where guid in (210405955, 210415318, 210415331);
update `creature` set `unit_flags2` = 2049 where guid in (210405955, 210415318, 210415331);
update `creature` set `unit_flags2` = 8193 where guid in (210405955, 210415318, 210415331);
update `creature_addon` set `auras` = 130966 and `bytes1` = 0 where guid in (210405955, 210415318, 210415331);

update `creature_template_addon` set `auras` = 0 where entry = 132412;
update `creature_template_addon` set `bytes1` = 0 where entry = 132412;
update `creature_template` set `unit_flags` = 0 where entry = 132412;
update `creature_template` set `unit_flags2` = 0 where entry = 132412;
update `creature_template` set `unit_flags3` = 0 where entry = 132412;

-- https://www.wowhead.com/quest=49871/against-the-tide needs a core script

-- Warlord Xiar SAI
SET @ENTRY := 130742;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,2000,3500,0,0,11,269234,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - In Combat - Cast '<Spell not found!>' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,11000,14000,11,80576,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Xiar - In Combat - Cast 'Shadowstep'"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - On Aggro - Say Line 2"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - On Aggro - Say Line 3");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=275677 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=140618 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 275677, 0, 0, 31, 0, 5, 140618, 0, 0, 0, 0, '', 'Igniting');

-- Fire Bunny SAI
SET @ENTRY := 140618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,275677,0,0,0,33,140618,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fire Bunny - On Spellhit '<Spell not found!>' - Quest Credit ''");

update `creature_template` set `npcflag` = 2 where `entry` = 130750;

-- https://www.wowhead.com/quest=49785/destroy-the-weapon#videos:id=139104  Add rp scripting when waypoints work
update `creature_template` set `KillCredit1` = 130725 where `entry` = 130725;

-- Gentle Ben'jin SAI
SET @ENTRY := 130921;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,259144,0,0,0,33,131080,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gentle Ben'jin - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,259143,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gentle Ben'jin - On Spellhit - Cast");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=259144 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130921 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 259144, 0, 0, 31, 0, 5, 130921, 0, 0, 0, 0, '', NULL);

-- Cala Cruzpot SAI
SET @ENTRY := 130905;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,21905,0,0,0,33,133060,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Close Gossip");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=261926 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=131832 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 261926, 0, 0, 31, 0, 5, 131832, 0, 0, 0, 0, '', NULL);

-- Raging Ben'jin SAI
SET @ENTRY := 133152;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,10,0,0,33,131833,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raging Ben'jin - Within 1-10 Range Out of Combat LoS - Quest Credit ''"),
(@ENTRY,0,1,0,26,0,100,0,1,10,0,0,33,131833,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raging Ben'jin - In Combat LoS - Quest Credit ''");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258950 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130922 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258950, 0, 1, 31, 0, 5, 130922, 0, 0, 0, 0, '', 'Igniting');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258950 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130921 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258950, 0, 2, 31, 0, 5, 130921, 0, 0, 0, 0, '', 'Igniting');

DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 0, -460.875, 706.677, 282.8, 1, '-460.875 Y: 706.6771 Z: 282.8003');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 1, -448.547, 656.818, 258.4, 1, 'X: -448.5469 Y: 656.8177 Z: 258.4043 O: 4.954785');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 2, -443.538, 605.217, 254.061, 1, '[0] Points: X: -443.5382 Y: 605.217 Z: 254.0606');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 3, -253.689, 549.368, 189.683, 1, '[1] Points: X: -253.6892 Y: 549.368 Z: 189.6833');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 4, 172.016, 541.812, 129.326, 1, 'X: 172.0156 Y: 541.8125 Z: 129.3259');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 5, 244.892, 624.127, 113.18, 1, '244.8924 Y: 624.1268 Z: 113.1798');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 6, 273.879, 845.462, 114.704, 1, '273.8785 Y: 845.4618 Z: 114.7044');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 7, 240.891, 986.153, 144.453, 1, '240.8906 Y: 986.1528 Z: 144.4529');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 8, 227.042, 1155.24, 167.157, 1, '227.0417 Y: 1155.241 Z: 167.1574');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 9, 177.175, 1384.76, 194.245, 1, '177.1754 Y: 1384.76 Z: 194.2447');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 10, 108.78, 1241.74, 238.563, 1, '108.7795 Y: 1241.745 Z: 238.5629');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 11, 68.2118, 1203.55, 257.019, 1, '68.21181 Y: 1203.545 Z: 257.0192');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 12, -12.8507, 1086.94, 251.028, 1, '-12.85069 Y: 1086.939 Z: 251.0278');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 13, 41.4392, 819.055, 191.632, 1, '41.43924 Y: 819.0555 Z: 191.6324');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 14, 50.1892, 661.427, 157.624, 1, '50.18924 Y: 661.4271 Z: 157.6243');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 15, -94.7483, 654.273, 156.692, 1, '-94.74827 Y: 654.2726 Z: 156.6922');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 16, -227.115, 679.455, 178.999, 1, '-227.1146 Y: 679.4549 Z: 178.9987');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=17;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 17, -294.432, 651.59, 204.662, 1, '-294.4323 Y: 651.5903 Z: 204.6623');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=18;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 18, -384.918, 654.066, 201.629, 1, '-384.9184 Y: 654.066 Z: 201.6293');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=19;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 19, -501.273, 649.484, 217.171, 1, '-501.2726 Y: 649.4844 Z: 217.1709');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=20;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 20, -615.741, 707.684, 259.643, 1, '-615.7413 Y: 707.684 Z: 259.6428');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=21;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 21, -686.014, 715.337, 249.916, 1, '-686.0139 Y: 715.3368 Z: 249.9156');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=22;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 22, -680.467, 661.253, 280.884, 1, '-680.467 Y: 661.2535 Z: 280.8842');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=23;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 23, -686.16, 622.842, 292.098, 1, '-686.1597 Y: 622.842 Z: 292.0975');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=24;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 24, -674.09, 569.333, 279.179, 1, '-674.0903 Y: 569.3333 Z: 279.1787');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=25;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 25, -597.995, 574.318, 231.387, 1, '-597.9948 Y: 574.3177 Z: 231.3867');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=26;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 26, -537.274, 574.615, 232.883, 1, '-537.2743 Y: 574.6146 Z: 232.8826');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=27;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 27, -487.078, 604.75, 256.092, 1, '-487.0781 Y: 604.75 Z: 256.0919');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=28;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 28, -486.4, 726.78, 300, 1, '');

update `creature_template` set `VehicleId` = 5564 where `entry` = 126808;
update `creature_template` set `ScriptName` = "npc_ata_the_winglord_offensively_defence" where `entry` = 126808;
update `creature_template` set `spell1` = "251899" where `entry` = 126808;


update `creature_template` set `npcflag` = 16777216 where `entry` = 126822;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 126822;

-- Scouting Target 126876 SAI
SET @ENTRY := 126876;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,251899,0,0,0,33,126876,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scouting Target 126876 - On Spellhit 'Spell Id251899' - Quest Credit 'Scouting Target 126876'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scouting Target 126876 - On Spellhit - Despawn Instant"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,75,260601,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scouting Target 126876 - On Respawn - Add Aura 'Spell Id260601'");

-- Hexlord Raal 126564 SAI
SET @ENTRY := 126564;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,21492,0,0,0,33,126564,0,0,0,0,0,7,0,0,0,0,0,0,0,"Hexlord Raal 126564 - On Gossip Option 0 Selected - Quest Credit 'Hexlord Raal 126564'");


DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 0, -451.75, 1014.85, 444.69, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 1, -432.65, 1012.84, 443.61, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 2, -353.34, 929.02, 441.35, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 3, -286.17, 826.12, 404.92, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 4, -375.18, 773.7, 327.75, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 5, -475.51, 778.77, 311.16, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 6, -628.88, 769.75, 311.06, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 7, -718.47, 586.02, 325.19, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 8, -965.33, 213.74, 291.57, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 9, -1117.65, -12.48, 321.93, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 10, -1047.8, 120.035, 302.86, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 11, -1076.06, 56.4, 319.32, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 12, -1188.48, -57.79, 323.56, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 13, -1282.57, -161.28, 402.31, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 14, -1317, -199.7, 420.03, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 15, -1372.77, -216.82, 418.51, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 16, -1389.22, -252.57, 415.53, 1, 'Ata the Winglord Quest 47440 Escort 1');

update `creature_template` set `VehicleId` = 5564 where `entry` = 127414;
update `creature_template` set `ScriptName` = "npc_ata_the_winglord_paku_master_of_winds" where `entry` = 127417;
update `creature_template` set `npcflag` = 16777216 where `entry` = 127414;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 127414;

update `creature_template` set `ScriptName` = "npc_pterrordax_paku_master_of_winds" where `entry` = 144161;
update `creature_template` set `VehicleId` = 6281 where `entry` = 144161;

update `creature_template` set `InhabitType` = 4 where `entry` = 122114;

update `creature_template` set `ScriptName` = "npc_paku" where `entry` = 127377;

DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 0, -1416.78, -345.217, 405.235, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 1, -1426.8, -328.604, 417.691, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 2, -1398.25, -292.62, 416.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 3, -1365.54, -305.797, 442.17, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 4, -1397.02, -335.429, 445.609, 10000, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 5, -1380.04, -324.538, 429.699, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 6, -1329.19, -259.941, 451.584, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 7, -1261.56, 10.6667, 450.163, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 8, -969.198, 583.274, 391.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 9, -919.358, 715.596, 395.38, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 10, -919.099, 795.734, 382.379, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 11, -905.177, 802.983, 374.656, 1, '');
