DELETE FROM `gossip_menu_option` WHERE `MenuId`=11209 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (11209, 0, 0, 'Can you tell me your fable, Shin?', 0, 1, 1, 0);

-- Script/Quest: Fix: The Wolf and The Kodo (25205)

SET @NPC_THE_WOLF                   := 39364;
SET @NPC_THE_KODO                   := 39365;
SET @NPC_SHIN_STONEPILLAR           := 39380;
SET @SPELL_SUMMON_THE_WOLF          := 73840;
SET @SPELL_DASH                     := 73851;
SET @SPELL_HUNTING                  := 73841;
SET @SPELL_RUMBLING_HOOVES          := 73868;
SET @SPELL_SEE_INVIS_1              := 73426;
SET @SPELL_RIDE_VEHICLE_HARDCODED   := 86319;
SET @SPELL_PERMANENT_FEIGN_DEATH    := 29266;
SET @QUEST_THE_WOLF_AND_THE_KODO    := 25205;
SET @GOSSIP_SHIN_STONEPILLAR        := 11209;

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=@NPC_THE_KODO;

UPDATE `creature_template` SET `spell1`=@SPELL_DASH, `AIName`='SmartAI', `VehicleId`=690, `ScriptName`='' WHERE `entry`=@NPC_THE_WOLF;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@NPC_THE_KODO;
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP_SHIN_STONEPILLAR, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@NPC_SHIN_STONEPILLAR;

DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_RUMBLING_HOOVES;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@SPELL_RUMBLING_HOOVES, 'spell_rumbling_hooves_73868');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP_SHIN_STONEPILLAR;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_SHIN_STONEPILLAR, 0, 0, 0, 9, 0, @QUEST_THE_WOLF_AND_THE_KODO, 0, 0, 0, 0, 0, '', 'Show gossip only if player has Quest 25205 taken');

DELETE FROM `creature_text` WHERE `CreatureID`=@NPC_THE_WOLF;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_THE_WOLF, 0, 0, 'One day, The Wolf was very hungry, so he ran east to look for some food.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 1, 0, 'The Wolf ran and ran, looking for an easy meal.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 2, 0, 'The Wolf did not care for raptor meat.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 3, 0, "The Wolf was lazy, and didn't want to work for his meal.", 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 4, 0, 'The Wolf had grown tired of eating boar meat.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 5, 0, 'The more he ran, the more his stomach growled.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 6, 0, 'He happened upon a pair of battling kodos. $B Clever as he was, The Wolf decide to wait for one to defeat the other.', 42, 0, 100, 377, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 7, 0, 'When the weaker Kodo died, The Wolf approached and tried to eat it.', 42, 0, 100, 0, 0, 0, 'The Wolf'),
(@NPC_THE_WOLF, 8, 0, "The Remaining Kodo, angry at The Wolf's impetuousness, $B swiftly killed The Wolf before he had a chance to eat.", 42, 0, 100, 0, 0, 0, 'The Wolf');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@NPC_THE_WOLF;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC_THE_WOLF, @SPELL_RIDE_VEHICLE_HARDCODED, 1, 0);

-- Shin Stonepillar <Far Seer> 39380 SAI
SET @ENTRY := 39380;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,11209,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shin Stonepillar 39380 - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,85,73840,0,0,0,0,0,7,0,0,0,0,0,0,0,"Shin Stonepillar 39380 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id73840'");

-- The Wolf

-- The Wolf 39364 SAI
SET @ENTRY := 39364;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,512,0,0,0,0,75,73841,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Just Summoned - Add Aura 'Spell Id73841' (While Charmed)"),
(@ENTRY,0,1,0,61,0,100,512,0,0,0,0,75,73426,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Wolf 39364 - On Just Summoned - Add Aura 'Spell Id73426' (While Charmed)"),
(@ENTRY,0,2,0,54,0,100,512,0,0,0,0,18,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Just Summoned - Set Flag Not Attackable (While Charmed)"),
(@ENTRY,0,3,0,54,0,100,513,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Just Summoned - Say Line 0 (No Repeat) (While Charmed)"),
(@ENTRY,0,4,0,23,0,100,513,73851,1,5000,5000,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Has Aura 'Spell Id73851' - Run Script (No Repeat) (While Charmed)"),
(@ENTRY,0,5,0,38,0,100,513,0,1,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Data Set 0 1 - Run Script (No Repeat) (While Charmed)"),
(@ENTRY,0,6,0,75,0,100,512,0,39365,10,0,45,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Distance To Creature - Set Data 0 1 (While Charmed)");

-- Actionlist SAI
SET @ENTRY := 3936400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,512,500,500,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Set Rooted On (While Charmed)"),
(@ENTRY,9,1,0,0,0,100,512,4000,4000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Say Line 6 (While Charmed)"),
(@ENTRY,9,2,0,0,0,100,512,2000,2000,0,0,45,0,2,0,0,0,0,9,39365,0,10,0,0,0,0,"The Wolf 39364 - On Script - Set Data 0 2 (While Charmed)"),
(@ENTRY,9,3,0,0,0,100,512,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Say Line 7 (While Charmed)"),
(@ENTRY,9,4,0,0,0,100,512,500,500,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Set Rooted Off (While Charmed)"),
(@ENTRY,9,5,0,0,0,100,512,500,500,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Set Run Off (While Charmed)"),
(@ENTRY,9,6,0,0,0,100,512,500,500,0,0,69,0,0,0,0,0,0,19,39365,10,1,0,0,0,0,"The Wolf 39364 - On Script - Move To Closest Creature 'The Kodo 39365' (While Charmed)"),
(@ENTRY,9,7,0,0,0,100,512,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Say Line 8 (While Charmed)"),
(@ENTRY,9,8,0,0,0,100,512,500,500,0,0,45,0,3,0,0,0,0,9,39365,0,10,0,0,0,0,"The Wolf 39364 - On Script - Set Data 0 3 (While Charmed)"),
(@ENTRY,9,9,0,0,0,100,512,500,500,0,0,28,73426,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Remove Aura 'Spell Id73426' (While Charmed)"),
(@ENTRY,9,10,0,0,0,100,512,500,500,0,0,75,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Add Aura 'Permanent Feign Death 29266' (While Charmed)"),
(@ENTRY,9,11,0,0,0,100,512,500,500,0,0,33,39365,0,0,0,0,0,23,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Quest Credit 'The Kodo 39365' (While Charmed)"),
(@ENTRY,9,12,0,0,0,100,512,4000,4000,0,0,62,1,0,0,0,0,0,23,0,0,0,1288.2,-4335.85,34.03,3.37,"The Wolf 39364 - On Script - Teleport (While Charmed)"),
(@ENTRY,9,13,0,0,0,100,512,500,500,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Wolf 39364 - On Script - Despawn In 1000 ms (While Charmed)");

-- The Kodos

-- group 1
-- The Kodo SAI
SET @GUID := -303094;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,75,0,100,0,0,39364,10,0,45,0,1,0,0,0,0,19,39364,0,10,0,0,0,0,"The Kodo - On Distance To Creature - Set Data 0 1"),
(@GUID,0,2,0,38,0,100,0,0,2,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 2 - Play Emote 26"),
(@GUID,0,3,4,38,0,100,0,0,3,0,0,11,73868,2,0,0,0,0,9,39364,0,15,0,0,0,0,"The Kodo - On Data Set 0 3 - Cast 'Spell Id73868'"),
(@GUID,0,4,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 0 - Despawn In 3000 ms");

-- The Kodo SAI
SET @GUID := -303093;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,2,38,0,100,0,0,2,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data 0 2 - Die"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,41,14000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - Linked With Previous Event - Force Despawn");

-- group 2
SET @GUID := -303092;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,75,0,100,0,0,39364,10,0,45,0,1,0,0,0,0,19,39364,0,10,0,0,0,0,"The Kodo - On Distance To Creature - Set Data 0 1"),
(@GUID,0,2,0,38,0,100,0,0,2,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 2 - Play Emote 26"),
(@GUID,0,3,4,38,0,100,0,0,3,0,0,11,73868,2,0,0,0,0,9,39364,0,15,0,0,0,0,"The Kodo - On Data Set 0 3 - Cast 'Spell Id73868'"),
(@GUID,0,4,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 0 - Despawn In 3000 ms");

-- The Kodo SAI
SET @GUID := -303091;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,2,38,0,100,0,0,2,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data 0 2 - Die"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,41,14000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - Linked With Previous Event - Force Despawn");
-- group 3
SET @GUID := -303087;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,0,75,0,100,0,0,39364,10,0,45,0,1,0,0,0,0,19,39364,0,10,0,0,0,0,"The Kodo - On Distance To Creature - Set Data 0 1"),
(@GUID,0,2,0,38,0,100,0,0,2,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 2 - Play Emote 26"),
(@GUID,0,3,4,38,0,100,0,0,3,0,0,11,73868,2,0,0,0,0,9,39364,0,15,0,0,0,0,"The Kodo - On Data Set 0 3 - Cast 'Spell Id73868'"),
(@GUID,0,4,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data Set 0 0 - Despawn In 3000 ms");

-- The Kodo SAI
SET @GUID := -303086;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=39365;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,1,2,38,0,100,0,0,2,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - On Data 0 2 - Die"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,41,14000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Kodo - Linked With Previous Event - Force Despawn");

-- Kodos need invis aura
DELETE FROM `creature_template_addon` WHERE `entry`=39365;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (39365, 0, 0, 0, 0, 0, 0, 0, 0, 0, '438');
