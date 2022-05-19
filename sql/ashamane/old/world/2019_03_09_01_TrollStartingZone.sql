-- fix crab model
DELETE FROM `creature_template_model` WHERE `CreatureID`=39004;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (39004, 0, 85664, 1, 1, 28153);

-- remove invisible aura 65017
Update `creature_template_addon` set `auras` = 0 WHERE `entry`=38442;

-- Fix channel spell target
-- fix channel on spellclick target invisible npc instead of zar
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=73294 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=38306 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 73294, 0, 0, 31, 0, 5, 38306, 0, 0, 0, 0, '', 'Energy Beam');

-- Spawned in fight
DELETE FROM `creature` WHERE `guid`=302895 && `id` = 38542;
DELETE FROM `creature` WHERE `guid`=302894 && `id` = 38542;
DELETE FROM `creature` WHERE `guid`=302893 && `id` = 38542;

-- Fire of the Seas 38542 SAI
SET @ENTRY := 38542;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,73294,0,0,0,0,0,11,38306,15,0,0,0,0,0,"Fire of the Seas 38542 - On Respawn - Cast 'Spell Id73294'"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,45,0,99,0,0,0,0,19,38306,50,0,0,0,0,0,"Fire of the Seas 38542 - On Spellclick - Set Data 0 99"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fire of the Seas 38542 - On Spellclick - Kill Target");

-- Vanira 38437 SAI
SET @ENTRY := 38437;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,512,0,1,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 0 1 - Set Run Off (While Charmed)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,69,5,0,0,0,0,0,8,0,0,0,-717.664,-5598.82,25.501,1.077,"Vanira 38437 - On Data Set 0 0 - Move To Position (While Charmed)"),
(@ENTRY,0,2,0,38,0,100,0,8,8,0,0,11,45776,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 8 8 - Cast 'Ice Block 45776'"),
(@ENTRY,0,3,0,8,0,100,0,45776,0,0,0,11,9454,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Spellhit 'Ice Block 45776' - Cast 'Freeze 9454'"),
(@ENTRY,0,4,0,38,0,100,0,11,11,0,0,11,73254,0,0,0,0,0,11,38306,30,0,0,0,0,0,"Vanira 38437 - On Data Set 11 11 - Cast 'Spell Id73254'"),
(@ENTRY,0,5,0,38,0,100,0,1,19,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 1 19 - Say Line 0"),
(@ENTRY,0,6,0,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Respawn - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,7,0,38,0,100,0,0,25,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 0 25 - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,8,9,34,0,100,0,8,5,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Reached Point 5 - Set Home Position"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,69,10,0,0,0,0,0,19,38306,20,0,0,0,0,0,"Vanira 38437 - On Reached Point 0 - Move To Closest Creature 'Zar'jira 38306'"),
(@ENTRY,0,10,0,4,0,100,0,0,0,0,0,11,71984,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Aggro - Cast 'Spell Id71984'"),
(@ENTRY,0,11,0,4,0,100,0,0,0,0,0,11,73393,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Aggro - Cast 'Spell Id73393'"),
(@ENTRY,0,12,0,62,0,100,0,11107,0,0,0,85,73334,0,0,0,0,0,7,0,0,0,0,0,0,0,"Vanira 38437 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id73334'"),
(@ENTRY,0,13,0,11,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Respawn - Remove Npc Flag Gossip"),
(@ENTRY,0,14,15,38,0,100,0,0,30,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 0 30 - Add Npc Flag Gossip"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 0 0 - Run Script"),
(@ENTRY,0,16,0,38,0,100,0,0,77,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Data Set 0 77 - Say Line 4");

-- Actionlist SAI
SET @ENTRY := 3843701;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,19,38423,30,1,0,0,0,0,"Vanira 38437 - On Script - Move To Closest Creature 'Zuni 38423'"),
(@ENTRY,9,1,0,0,0,100,0,20000,20000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Script - Say Line 1"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Script - Say Line 2"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Script - Say Line 3"),
(@ENTRY,9,4,0,0,0,100,0,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vanira 38437 - On Script - Despawn Instant");

-- Zar'jira 38306 SAI
SET @ENTRY := 38306;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,3,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - On Data Set 1 3 - Say Line 0"),
(@ENTRY,0,1,0,38,0,100,0,1,6,0,0,19,33602,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - On Data Set 1 6 - Remove Flags Not Attackable & Immune To Players & Immune To NPC's"),
(@ENTRY,0,2,6,38,0,100,0,1,7,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - On Data Set 1 7 - Disable Combat Movement"),
(@ENTRY,0,3,0,0,0,100,0,2000,3000,7000,7000,11,71996,2,6000,0,0,0,17,0,25,0,0,0,0,0,"Zar'jira 38306 - In Combat - Cast 'Spell Id71996'"),
(@ENTRY,0,4,0,0,0,100,0,0,0,3000,3000,11,46987,0,0,0,0,0,11,38225,30,0,0,0,0,0,"Zar'jira 38306 - In Combat - Cast 'Frostbolt 46987'"),
(@ENTRY,0,5,0,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - On Respawn - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,38225,30,0,0,0,0,0,"Zar'jira 38306 - On Data Set 0 0 - Start Attacking"),
(@ENTRY,0,7,0,6,0,100,0,0,0,0,0,45,0,30,0,0,0,0,19,38437,50,0,0,0,0,0,"Zar'jira 38306 - On Just Died - Set Data 0 30"),
(@ENTRY,0,8,0,6,0,100,0,0,0,0,0,33,38306,0,0,0,0,0,18,50,0,0,0,0,0,0,"Zar'jira 38306 - On Just Died - Quest Credit 'Zar'jira 38306'"),
(@ENTRY,0,9,10,2,0,100,1,0,45,0,0,11,72044,1,0,0,0,0,19,38452,50,0,0,0,0,0,"Zar'jira 38306 - Between 0-45% Health - Cast 'Spell Id72044' (No Repeat)"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,45,0,30,0,0,0,0,19,38225,50,0,0,0,0,0,"Zar'jira 38306 - Between 0-0% Health - Set Data 0 30 (No Repeat)"),
(@ENTRY,0,11,21,61,0,100,0,0,0,0,0,75,40733,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - Between 0-0% Health - Add Aura 'Divine Shield 40733' (No Repeat)"),
(@ENTRY,0,18,19,23,0,100,0,73294,0,0,0,28,40733,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zar'jira 38306 - On Has Aura 'Spell Id73294' - Remove Aura 'Divine Shield 40733'"),
(@ENTRY,0,19,20,61,0,100,0,0,0,0,0,28,72044,0,0,0,0,0,19,38452,20,0,0,0,0,0,"Zar'jira 38306 - On Aura Not Present - Remove Aura 'Spell Id72044'"),
(@ENTRY,0,20,0,61,0,100,0,0,0,0,0,28,72045,0,0,0,0,0,19,38452,20,0,0,0,0,0,"Zar'jira 38306 - On Aura Not Present - Remove Aura 'Spell Id72045'"),
(@ENTRY,0,21,22,61,0,100,0,0,0,0,0,12,38542,8,500,0,0,0,8,0,0,0,-700.205,-5579.72,26.0177,0,"Zar'jira 38306 - Between 0-0% Health - Summon Creature 'Fire of the Seas 38542' (No Repeat)"),
(@ENTRY,0,22,23,61,0,100,0,0,0,0,0,12,38542,8,500,0,0,0,8,0,0,0,-706.938,-5578.52,26.0191,0,"Zar'jira 38306 - Between 0-0% Health - Summon Creature 'Fire of the Seas 38542' (No Repeat)"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,12,38542,8,500,0,0,0,8,0,0,0,-711.141,-5574.35,26.053,0,"Zar'jira 38306 - Between 0-0% Health - Summon Creature 'Fire of the Seas 38542' (No Repeat)"),
(@ENTRY,0,24,0,2,0,100,1,0,15,0,0,45,0,66,0,0,0,0,19,38423,30,0,0,0,0,0,"Zar'jira 38306 - Between 0-15% Health - Set Data 0 66 (No Repeat)"),
(@ENTRY,0,25,0,6,0,100,0,0,0,0,0,45,0,29,0,0,0,0,19,38225,30,0,0,0,0,0,"Zar'jira 38306 - On Just Died - Set Data 0 29");

-- Vol'jin 38225 SAI
SET @ENTRY := 38225;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,11020,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Gossip Option 0 Selected - Set Run Off"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,69,5,0,0,0,0,0,8,0,0,0,-719.185,-5595.53,25.6,0.9404,"Vol'jin 38225 - On Gossip Option 0 Selected - Move To Position"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,19,33024,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Gossip Option 0 Selected - Remove Flag Immune To Players"),
(@ENTRY,0,3,10,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,11,38437,50,0,0,0,0,0,"Vol'jin 38225 - On Gossip Option 0 Selected - Set Data 0 1"),
(@ENTRY,0,4,0,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Respawn - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,5,0,34,0,100,0,8,5,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Reached Point 5 - Run Script"),
(@ENTRY,0,6,0,0,0,100,0,2000,2000,5000,5000,11,20463,0,0,0,0,0,11,38306,25,0,0,0,0,0,"Vol'jin 38225 - In Combat - Cast 'Shoot 20463'"),
(@ENTRY,0,7,0,0,0,100,0,200,5000,7000,7000,11,73087,0,0,0,0,0,11,38306,25,0,0,0,0,0,"Vol'jin 38225 - In Combat - Cast 'Spell Id73087'"),
(@ENTRY,0,8,0,38,0,100,0,0,30,0,0,11,72045,0,0,0,0,0,19,38452,50,0,0,0,0,0,"Vol'jin 38225 - On Data Set 0 30 - Cast 'Spell Id72045'"),
(@ENTRY,0,9,0,38,0,100,0,0,29,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Data Set 0 29 - Run Script"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Gossip Option 0 Selected - Remove Npc Flag Gossip");

-- Actionlist SAI
SET @ENTRY := 3822500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,45,1,4,0,0,0,0,11,38423,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 1 4"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Home Position"),
(@ENTRY,9,3,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Say Line 0"),
(@ENTRY,9,4,0,0,0,100,0,6000,6000,0,0,45,1,3,0,0,0,0,11,38306,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 1 3"),
(@ENTRY,9,5,0,0,0,100,0,4000,4000,0,0,45,1,19,0,0,0,0,11,38437,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 1 19"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,45,1,6,0,0,0,0,11,38306,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 1 6"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Disable Combat Movement"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,45,1,7,0,0,0,0,11,38306,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 1 7"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,45,0,25,0,0,0,0,11,38423,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 0 25"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,45,0,25,0,0,0,0,11,38437,80,0,0,0,0,0,"Vol'jin 38225 - On Script - Set Data 0 25"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,12,0,0,0,100,0,2000,2000,0,0,11,73087,0,0,0,0,0,11,38306,25,0,0,0,0,0,"Vol'jin 38225 - On Script - Cast 'Spell Id73087'");

-- Actionlist SAI
SET @ENTRY := 3822501;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Say Line 2"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Say Line 3"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Say Line 4"),
(@ENTRY,9,3,0,0,0,100,0,2000,2000,0,0,53,1,38225,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Start Waypoint"),
(@ENTRY,9,4,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jin 38225 - On Script - Despawn Instant");

-- Zuni 38423 SAI
SET @ENTRY := 38423;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,1,4,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Data Set 1 4 - Set Run Off"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,69,2,0,0,0,0,0,8,0,0,0,-724.957,-5590.3,25.6,0.4974,"Zuni 38423 - On Data Set 0 0 - Move To Position"),
(@ENTRY,0,2,0,38,0,100,0,0,25,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Data Set 0 25 - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,3,0,11,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Respawn - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,4,0,34,0,100,0,8,2,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Reached Point 2 - Set Home Position"),
(@ENTRY,0,5,0,38,0,100,0,0,66,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Data Set 0 66 - Run Script"),
(@ENTRY,0,6,7,59,0,100,0,5,0,0,0,11,69252,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Timed Event 5 Triggered - Cast 'Spell Id69252'"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Timed Event 0 Triggered - Cast 'Permanent Feign Death 29266'"),
(@ENTRY,0,8,10,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Timed Event 0 Triggered - Kill Target"),
(@ENTRY,0,9,0,34,0,100,0,8,9,0,0,67,5,2000,2000,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Reached Point 9 - Create Timed Event"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,19,38306,50,0,0,0,0,0,"Zuni 38423 - On Timed Event 0 Triggered - Kill Target");

-- Actionlist SAI
SET @ENTRY := 3842300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,69,9,0,0,0,0,0,8,0,0,0,-713.331,-5578.86,25.6244,0,"Zuni 38423 - On Script - Move To Position"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Script - Set Reactstate Passive"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,19,524288,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuni 38423 - On Script - Remove Flag In Combat");

DELETE FROM `creature_text` WHERE `CreatureID`=38225 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38225, 0, 0, 'Ya were foolish to come \'ere, Sea Witch. Ya escaped our vengeance once, but the Darkspear Tribe will not abide ya trespassin\' again.', 14, 0, 100, 1, 0, 0, 0, 0, 'Vol\'jin to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=38225 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38225, 1, 0, 'She\'s drawing power from the fires! Stamp out the braziers, quickly!', 41, 0, 100, 0, 0, 0, 0, 0, 'Vol\'jin to Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38225 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38225, 2, 0, 'It be done. Our ancient enemy is defeated.', 12, 0, 100, 1, 0, 0, 0, 0, 'Vol\'jin to Vol\'jin');
DELETE FROM `creature_text` WHERE `CreatureID`=38225 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38225, 3, 0, 'I been waitin\' a long time for a chance to avenge my father. A great weight has been lifted from my shoulders.', 12, 0, 100, 1, 0, 0, 0, 0, 'Vol\'jin to Vol\'jin');
DELETE FROM `creature_text` WHERE `CreatureID`=38225 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38225, 4, 0, 'I must be returnin\' ta Darkspear Hold. Please meet me there once Vanira is done with her healin\' of the boy.', 12, 0, 100, 1, 0, 0, 0, 0, 'Vol\'jin to Vol\'jin');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 0, 0, 'I have returned to finish what I started, Darkspear. These islands shall run with your blood.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 1, 0, 'Your father was a weakling, Vol\'jin. I shall enjoy sucking the life from you as I did him.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 2, 0, 'Ah, another Darkspear Warrior sacrificed on my altar. One by one, you shall all perish.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 3, 0, 'Thrall is not here to save you this time, Darkspear. Slink away to the shadows, for I shall hunt every last one of you down.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 4, 0, 'The tides shall wash away the entire Darkspear Tribe.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=5 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 5, 0, 'Troll weaklings, there is no hope. Your death has been foretold by the tides.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=6 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 6, 0, 'You are weak Vol\'jin, like your father was weak. Today I will finish what I started long ago - the Darkspear shall be wiped from existence!', 14, 0, 100, 1, 0, 0, 0, 0, 'Zar\'jira to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=7 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 7, 0, 'No! I will make your death slow and painful, little trolls.', 14, 0, 100, 0, 0, 0, 0, 0, 'Zar\'jira to Echo Isles Quest Bunny');
DELETE FROM `creature_text` WHERE `CreatureID`=38306 AND `GroupID`=8 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38306, 8, 0, 'Not so fast, little troll!', 14, 0, 100, 1, 0, 0, 0, 0, 'Zar\'jira to Zuni');
DELETE FROM `creature_text` WHERE `CreatureID`=38423 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38423, 0, 0, 'I\'ll get the fires dis time!', 12, 0, 100, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38437 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38437, 0, 0, 'Take care of her spirits! We be handlin\' Zar\'jira.', 0, 0, 100, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38437 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38437, 1, 0, 'I\'m afraid there\'s nothin\' I can do for our brother... her power tore away at his soul.', 12, 0, 100, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38437 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38437, 2, 0, 'I\'ll send some watchers ta get his body so we can offer a proper farewell... I wish I could do more.', 12, 0, 100, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38437 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38437, 3, 0, 'Vol\'jin rushed off in eagerness, but I can take us back to safety. Just give me the word when ya ready, mon.', 12, 0, 100, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38437 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38437, 4, 0, 'ZUNI! NOOOO!', 12, 0, 100, 0, 0, 0, 0, 0, '');

-- Manifestation of the Sea Witch 38302 SAI
SET @ENTRY := 38302;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-723.67,-5574.92,26,1.838,"Manifestation of the Sea Witch 38302 - Out of Combat - Move To Position"),
(@ENTRY,0,1,0,6,0,100,0,1000,4000,5000,10000,75,73432,0,0,0,0,0,19,38306,30,0,0,0,0,0,"Manifestation of the Sea Witch 38302 - On Just Died - Add Aura 'Spell Id73432'"),
(@ENTRY,0,2,0,60,0,100,0,60000,60000,60000,60000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Manifestation of the Sea Witch 38302 - On Update - Despawn Instant");
