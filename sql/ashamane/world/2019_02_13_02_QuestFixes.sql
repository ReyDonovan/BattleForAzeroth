-- 24963

-- Actionlist SAI
SET @ENTRY := 547400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Set Home Position"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Set Faction 35"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Say Line 1"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,17,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Set Emote State 7"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,33,39073,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Quest Credit 'Maul 'Em Credit Bunny 39073'"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,40,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Set Sheath Unarmed"),
(@ENTRY,9,6,0,0,0,100,0,5000,5000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Script - Despawn Instant");

-- Dunemaul Brute 5474 SAI
SET @ENTRY := 5474;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,9,0,100,0,0,5,16000,18000,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - Within 0-5 Range - Cast 'Uppercut 10966'"),
(@ENTRY,0,2,3,8,0,100,0,73068,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Brute 5474 - On Spellhit 'Spell Id73068' - Run Script");

-- Dunemaul Ogre Mage 5473 SAI
SET @ENTRY := 5473;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre Mage 5473 - In Combat - Cast 'Fireball 9053'"),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,18000,19000,11,11436,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre Mage 5473 - In Combat - Cast 'Slow 11436'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre Mage 5473 - Between 0-30% Health - Cast 'Bloodlust 6742' (No Repeat)"),
(@ENTRY,0,3,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre Mage 5473 - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,4,3,8,0,100,0,73068,0,0,0,80,547400,2,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre Mage 5473 - On Spellhit 'Spell Id73068' - Run Script");

-- Dunemaul Ogre 5471 SAI
SET @ENTRY := 5471;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,73068,0,0,0,80,547400,2,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre 5471 - On Spellhit 'Spell Id73068' - Run Script"),
(@ENTRY,0,1,0,2,0,100,1,29,30,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre 5471 - Between 29-30% Health - Say Line 1 (No Repeat)");


-- 25586

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40869 AND `spell_id`=60080;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (40869, 60080, 1, 0);

-- Holdfast Cannon 40869 SAI
SET @ENTRY := 40869;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,60080,0,0,0,33,40869,0,0,0,0,0,7,0,0,0,0,0,0,0,"Holdfast Cannon 40869 - On Spellhit 'Cosmetic - Explosion (Target) 60080' - Quest Credit 'Holdfast Cannon 40869'"),
(@ENTRY,0,1,0,8,0,100,0,60080,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Holdfast Cannon 40869 - On Spellhit 'Cosmetic - Explosion (Target) 60080' - Kill Self");


-- 26047
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=35111 AND `spell_id`=66778;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (35111, 66778, 1, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=35129 AND `spell_id`=66787;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (35129, 66787, 1, 0);

UPDATE `creature_template` SET `npcflag`=0x1000000 WHERE `entry` IN (35111,35129);

DELETE FROM `spell_scripts` WHERE `id`=66778;
INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(66778,1,0,18,0,0,0,0,0,0,0),
(66778,1,0,8,35111,0,0,0,0,0,0);

UPDATE `creature_template` SET `ScriptName` = 'npc_runaway_shredder' WHERE `entry` = 35111;
UPDATE `creature_template` SET `VehicleId`=49, `spell1`=66811,`spell2`=66868,`spell3`=66893,`spell4`=66937,`minlevel`=11,`maxlevel`=11 WHERE `entry`=35129;

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 35111;

-- 25079
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=42235;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=42235;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42235 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42235,0,0,0,8,0,100,0,78838,0,0,0,33,42235,0,0,0,0,0,7,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - kill credit'),
(42235,0,1,0,8,0,100,0,78838,0,0,0,11,78834,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - cast Flaming Arrow (Hit)'),
(42235,0,2,0,8,0,100,0,78838,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Darktail Bonepicker - On SpellHit - die');

DELETE FROM conditions WHERE SourceEntry=78838 AND SourceTypeOrReferenceId=13;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT)VALUES
(13,0,78838,0,18,5,42235,0,0,0,'Enohar''s Explosive Arrow can hit only Darktail Bonepicker.');