-- Shadowblade Stalker SAI
SET @ENTRY := 122970;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,4000,7000,11,252687,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowblade Stalker - In Combat - Cast '<Spell not found!>'");

-- Dazar'ai Juggernaut SAI
SET @ENTRY := 122971;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7000,21000,25000,11,255824,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dazar'ai Juggernaut - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,9000,13000,20000,35000,11,253239,0,0,0,0,0,5,0,0,0,0,0,0,0,"Dazar'ai Juggernaut - In Combat - Cast '<Spell not found!>'");

-- Dazar'ai Honor Guard SAI
SET @ENTRY := 127799;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,5000,11000,11,256138,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dazar'ai Honor Guard - In Combat - Cast '<Spell not found!>'");

-- Shadowblade Razi SAI
SET @ENTRY := 130912;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,5000,11000,11,258978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowblade Razi - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,8000,11000,9000,15000,11,258979,0,0,0,0,0,5,0,0,0,0,0,0,0,"Shadowblade Razi - In Combat - Cast '<Spell not found!>'");

-- Dazar'ai Confessor SAI
SET @ENTRY := 122973;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,74,0,100,0,0,80,0,0,11,253517,0,0,0,0,0,9,0,0,30,0,0,0,0,"Dazar'ai Confessor - On Friendly Between 0-80% Health - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,3076,9000,15000,15000,20000,11,253544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dazar'ai Confessor - In Combat - Cast '<Spell not found!>' (Heroic Dungeon)");

-- Dazar'ai Augur SAI
SET @ENTRY := 122972;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2000,2000,11,253562,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dazar'ai Augur - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,11000,13000,11,253583,0,0,0,0,0,19,122971,20,0,0,0,0,0,"Dazar'ai Augur - In Combat - Cast '<Spell not found!>'");

-- Dazar'ai Colossus SAI
SET @ENTRY := 122984;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,4000,9000,11,254959,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dazar'ai Colossus - In Combat - Cast '<Spell not found!>'");

-- Gilded Priestess SAI
SET @ENTRY := 132126;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,5000,7000,11,260666,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gilded Priestess - In Combat - Cast '<Spell not found!>'");

-- Toxic Saurid SAI
SET @ENTRY := 128435;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,251187,0,0,0,0,0,2,0,0,0,0,0,0,0,"Toxic Saurid - On Aggro - Cast '<Spell not found!>'");

-- T'lonja SAI
SET @ENTRY := 128455;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,11000,13000,11,255567,0,0,0,0,0,5,0,0,0,0,0,0,0,"T'lonja - In Combat - Cast '<Spell not found!>'");

-- Monzumi SAI
SET @ENTRY := 129552;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,9000,14000,11,256882,0,0,0,0,0,2,0,0,0,0,0,0,0,"Monzumi - In Combat - Cast '<Spell not found!>'");

-- Feasting Skyscreamer SAI
SET @ENTRY := 128434;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,11000,15000,25000,11,255041,0,0,0,0,0,2,0,0,0,0,0,0,0,"Feasting Skyscreamer - In Combat - Cast '<Spell not found!>'");

-- Zanchuli Witch-Doctor SAI
SET @ENTRY := 122969;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1500,3000,3000,11,252923,0,0,0,0,0,2,0,0,0,0,0,0,0,"Zanchuli Witch-Doctor - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,10000,15000,16000,21000,11,279118,0,0,0,0,0,5,0,0,0,0,0,0,0,"Zanchuli Witch-Doctor - In Combat - Cast '<Spell not found!>'");

-- Shieldbearer of Zul SAI
SET @ENTRY := 127879;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,4500,7000,11,273185,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shieldbearer of Zul - In Combat - Cast '<Spell not found!>'");

-- Reanimated Honor Guard SAI
SET @ENTRY := 127757;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,11,255620,3,0,0,0,0,2,0,0,0,0,0,0,0,"Reanimated Honor Guard - On Just Died - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,2000,5000,4000,9000,11,256959,0,0,0,0,0,2,0,0,0,0,0,0,0,"Reanimated Honor Guard - In Combat - Cast '<Spell not found!>'");

update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 130902;

-- Creepy Spider SAI
SET @ENTRY := 130902;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,258890,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Creepy Spider - On Spellhit '<Spell not found!>' - Kill Target");

-- Dinomancer Kish'o SAI
SET @ENTRY := 129553;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,1500,1500,11,256864,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dinomancer Kish'o - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,5000,8000,5000,10000,11,256846,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dinomancer Kish'o - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,2,0,74,0,100,0,0,50,10000,15000,11,256849,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dinomancer Kish'o - On Friendly Between 0-50% Health - Cast '<Spell not found!>'");

update `creature_template_addon` set `auras` = "123167 252661 252703" where `entry` = 122970;
-- needs 254973? wtf why does he have 145363?
update `creature_template_addon` set `auras` = "237007" where `entry` = 122972;

update `creature_template_addon` set `auras` = "237007" where `entry` = 127799;
update `creature_template_addon` set `auras` = "" where `entry` = 122971;
-- 141048 
update `creature_template_addon` set `auras` = "141048" where `entry` = 122984;
update `creature_template_addon` set `auras` = "237007" where `entry` = 122973;

-- Toxic Saurid SAI
SET @ENTRY := 128435;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,5000,10000,11,251188,0,0,0,0,0,5,0,0,0,0,0,0,0,"Toxic Saurid - In Combat - Cast '<Spell not found!>'");

-- Formations not working atm
DELETE FROM `creature_formations` WHERE `memberGUID`=280002363;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES (280002362, 280002363, 5, 225, 515, 0, 0);
DELETE FROM `creature_formations` WHERE `memberGUID`=280002364;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES (280002362, 280002364, 5, 135, 515, 0, 0);


-- phase dupe spawns mid
Delete from `creature` where guid in(280002320, 280002088, 280002391, 280002325, 280002092, 280002395, 280002326, 280002093, 280002396);

-- left wing
Delete from `creature` where guid in(280002283, 280002333, 280002287, 280002077, 280002293, 280002292, 280002326, 280002093, 280002381, 280002294,280002250, 280002251,280002253,280002252);


-- remove https://de.wowhead.com/npc=62821/mystiker-vogelhut
delete from `creature` where `id` = 62821;
delete from `creature` where `id` = 62822;

-- wp kish
DELETE FROM `waypoints` WHERE `entry`=129553 AND `pointid`=0;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129553, 0, -847.197, 2370.09, 677.815, NULL);
DELETE FROM `waypoints` WHERE `entry`=129553 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129553, 1, -847.372, 2340.44, 677.948, NULL);
DELETE FROM `waypoints` WHERE `entry`=129553 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129553, 2, -847.747, 2276.93, 678.255, NULL);
DELETE FROM `waypoints` WHERE `entry`=129553 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129553, 3, -847.531, 2313.44, 678.254, NULL);


-- Dinomancer Kish'o SAI
SET @ENTRY := 129553;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,1500,1500,11,256864,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dinomancer Kish'o - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,5000,8000,5000,10000,11,256846,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dinomancer Kish'o - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,2,0,74,0,100,0,0,50,10000,15000,11,256849,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dinomancer Kish'o - On Friendly Between 0-50% Health - Cast '<Spell not found!>'");

update `creature_template` set `ScriptName` = "npc_ataldazar_echo_of_shadra" where entry = 126734;

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16013 AND `ActionType`=1 AND `ActionParam`=250036;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES (16013, 1, 250036, 2);

update `creature_template` set `unit_flags` = 33555200 where entry = 125868;
DELETE FROM `creature_template_addon` WHERE `entry`=125868;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES (125868, 0, 0, 0, 0, 0, 0, 0, 0, '250013');

-- script names
update `creature_template` set `ScriptName` = 'boss_ataldazar_yazma' where `entry` = 122968;
update `creature_template` set `ScriptName` = 'npc_ataldazar_soulspawn' where `entry` = 125828;
update `creature_template` set `ScriptName` = 'npc_ataldazar_echo_of_shadra' where `entry` = 125868;

update `creature_template` set `ScriptName` = 'boss_ataldazar_rezan' where `entry` = 122963;
update `areatrigger_template` set `ScriptName` = 'areatrigger_ancient_bones' where `Id` = 16644;

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16013 AND `ActionType`=1 AND `ActionParam`=250036;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES (16013, 1, 250036, 2);

DELETE FROM `creature_template_addon` WHERE `entry`=125868;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES (125868, 0, 0, 0, 0, 0, 0, 0, 0, '250013');

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=17298 AND `ActionType`=1 AND `ActionParam`=250036;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES (17298, 1, 250036, 2);
