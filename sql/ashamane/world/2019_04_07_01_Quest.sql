update `gameobject` set `spawntimesecs` = 0 where `id` = 300171;
update `creature_template` set `ScriptName`= "npc_nerub_sinkhole" where `entry` in (25402, 25403, 25404, 25405);

-- Seaforium Depth Charge 25401 SAI
SET @ENTRY := 25401;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,1,3000,3000,0,0,11,45502,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seaforium Depth Charge 25401 - Out of Combat - Cast 'Seaforium Depth Charge Explosion 45502' (No Repeat)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seaforium Depth Charge 25401 - Out of Combat - Despawn Instant (No Repeat)");
