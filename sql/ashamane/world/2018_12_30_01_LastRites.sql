DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 71898;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
('13', '2', '71898', '31', '5', '38438', 'Mulgore - Funeral Offering'); 

-- Mulgore Offering Credit Bunny SAI
SET @ENTRY := 38438;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,71898,0,0,0,33,38438,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit 'Funeral Offering' - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,2981,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,3059,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,37737,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,37724,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,3062,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,3060,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,3061,50,0,0,0,0,0,"Mulgore Offering Credit Bunny - On Spellhit - Set Data 0 1");

-- Harutt Thunderhorn SAI
SET @ENTRY := 3059;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harutt Thunderhorn - On Data Set 0 1 - Run Script");

-- Sunwalker Helaku SAI
SET @ENTRY := 37737;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,305900,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sunwalker Helaku - On Data Set 0 1 - Run Script");

-- Seer Ravenfeather SAI
SET @ENTRY := 37724;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,305900,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seer Ravenfeather - On Data Set 0 1 - Run Script");

-- Meela Dawnstrider SAI
SET @ENTRY := 3062;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,305900,0,0,0,0,0,1,0,0,0,0,0,0,0,"Meela Dawnstrider - On Data Set 0 1 - Run Script");

-- Gart Mistrunner SAI
SET @ENTRY := 3060;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,305900,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gart Mistrunner - On Data Set 0 1 - Run Script");

-- Lanka Farshot SAI
SET @ENTRY := 3061;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,305900,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lanka Farshot - On Data Set 0 1 - Run Script");

-- Actionlist SAI
SET @ENTRY := 305900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,17,550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harutt Thunderhorn - On Script - Set Emote State 550"),
(@ENTRY,9,1,0,0,0,100,0,15000,15000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harutt Thunderhorn - On Script - Set Emote State 0");


-- Supervisor Fizsprocket SAI uses wrong spell which makes a level 18 elite spawn
SET @ENTRY := 3051;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,79733,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Commanding Shout on Aggro"),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,21000,25000,11,81767,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Lantern Blaze"),
(@ENTRY,0,2,0,0,0,100,0,8000,9000,15000,22000,11,81754,1,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Motivate"),
(@ENTRY,0,3,0,0,0,100,0,4000,15000,12000,33000,11,81764,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Throw Lantern");
