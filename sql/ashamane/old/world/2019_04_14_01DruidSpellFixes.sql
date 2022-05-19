DELETE FROM `spell_script_names` WHERE `spell_id`=102342 AND `ScriptName`='spell_dru_ironbark';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102342, 'spell_dru_ironbark');

-- treant taunt
-- Treant 103822 SAI
SET @ENTRY := 103822;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2000,2000,11,205644,0,0,0,0,0,2,0,0,0,0,0,0,0,"Treant 103822 - In Combat - Cast 'Spell Id205644'");
