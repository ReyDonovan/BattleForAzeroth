Delete from `creature` where `guid` in (326904, 326861);

-- Mining Powder 48284 SAI
SET @ENTRY := 48284;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,89769,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mining Powder 48284 - On Aggro - Cast 'Spell Id89769' (No Repeat)"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mining Powder 48284 - On Aggro - Disable Combat Movement (No Repeat)"),
(@ENTRY,0,2,0,4,0,100,5,0,0,0,0,11,89769,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mining Powder 48284 - On Aggro - Cast 'Spell Id89769' (No Repeat) (Heroic Dungeon)"),
(@ENTRY,0,3,0,4,0,100,5,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mining Powder 48284 - On Aggro - Disable Combat Movement (No Repeat) (Heroic Dungeon)"),
(@ENTRY,0,4,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mining Powder 48284 - On Respawn - Set Reactstate Passive");
