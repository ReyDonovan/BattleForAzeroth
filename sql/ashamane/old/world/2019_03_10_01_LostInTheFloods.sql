-- Dranosh'ar Archer 40890 SAI
SET @ENTRY := 40890;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dranosh'ar Archer 40890 - On Respawn - Set Sheath Ranged"),
(@ENTRY,0,1,0,1,0,100,0,0,0,10000,10000,11,76320,0,0,0,0,0,1,0,0,0,1175.724,-4321.074,21.30206,0,"Dranosh'ar Archer 40890 - Out of Combat - Cast 'Spell Id76320'");

update `creature_template` set `InhabitType` = 4 where `entry` in (39320, 39346, 39345, 39347);
update `creature_template` set `speed_run` = 8 where `entry` in (39320, 39346, 39345, 39347);

-- hackfix spellfocus
DELETE FROM `gameobject_template` WHERE `entry`=900101;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (900101, 8, 0, 'Hackfix Spyglass Spellfocus', '', '', '', 3, 1657, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 27602);

DELETE FROM `gameobject` WHERE `guid`=280007851;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (280007851, 900101, 1, 0, 0, '0', 0, 0, 0, -1, 392.514, -4581.29, 76.5927, 0.722567, -0, -0, -0.353475, -0.935444, 300, 255, 1, 0, '', 0);

DELETE FROM `waypoints` WHERE `entry`=39346 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39346, 5, 721.934, -4260.48, 23.069, NULL);
DELETE FROM `waypoints` WHERE `entry`=39346 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39346, 4, 721.934, -4260.48, 23.069, NULL);
DELETE FROM `waypoints` WHERE `entry`=39346 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39346, 3, 440.613, -4538.23, 72.097, NULL);
DELETE FROM `waypoints` WHERE `entry`=39346 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39346, 2, 385.281, -4565.53, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39346 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39346, 1, 385.965, -4566.26, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39345 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39345, 5, 555.582, -4146.9, 28.3467, NULL);
DELETE FROM `waypoints` WHERE `entry`=39345 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39345, 4, 555.582, -4146.9, 28.3467, NULL);
DELETE FROM `waypoints` WHERE `entry`=39345 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39345, 3, 412.066, -4528.23, 78.0417, NULL);
DELETE FROM `waypoints` WHERE `entry`=39345 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39345, 2, 385.281, -4565.53, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39345 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39345, 1, 385.965, -4566.26, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39320 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39320, 5, 60.7847, -4232.33, 38.4023, NULL);
DELETE FROM `waypoints` WHERE `entry`=39320 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39320, 4, 60.7847, -4232.33, 38.4023, NULL);
DELETE FROM `waypoints` WHERE `entry`=39320 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39320, 3, 350.911, -4547.55, 78.0417, NULL);
DELETE FROM `waypoints` WHERE `entry`=39320 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39320, 2, 385.281, -4565.53, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39320 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39320, 1, 385.965, -4566.26, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39347 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39347, 1, 385.965, -4566.26, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39347 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39347, 2, 385.281, -4565.53, 76.6682, NULL);
DELETE FROM `waypoints` WHERE `entry`=39347 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39347, 3, 385.194, -4497.49, 75.3749, NULL);
DELETE FROM `waypoints` WHERE `entry`=39347 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (39347, 4, 349.146, -3869.01, 25.069, NULL);


-- Durotar Watershed Telescope 01 (Raggaran) 39320 SAI
SET @ENTRY := 39320;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,39320,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 01 (Raggaran) 39320 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,58,0,100,0,0,0,0,0,67,1,5000,5000,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 01 (Raggaran) 39320 - On Waypoint Finished - Create Timed Event"),
(@ENTRY,0,2,4,59,0,100,0,1,0,0,0,62,1,0,0,0,0,0,23,0,0,0,390.955,-4580.50,76.6,0,"Durotar Watershed Telescope 01 (Raggaran) 39320 - On Timed Event 1 Triggered - Teleport"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 01 (Raggaran) 39320 - On Timed Event 0 Triggered - Despawn Instant"),
(@ENTRY,0,4,3,61,0,100,0,0,0,0,0,33,39357,0,0,0,0,0,23,0,0,0,0,0,0,0,"Durotar Watershed Telescope 01 (Raggaran) 39320 - On Timed Event 0 Triggered - Quest Credit 'Durotar Telescope Quest KC 1 39357'");

-- Durotar Watershed Telescope 02 (Tekla) 39345 SAI
SET @ENTRY := 39345;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,39345,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 02 (Tekla) 39345 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,58,0,100,0,0,0,0,0,67,1,5000,5000,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 02 (Tekla) 39345 - On Waypoint Finished - Create Timed Event"),
(@ENTRY,0,2,4,59,0,100,0,1,0,0,0,62,1,0,0,0,0,0,23,0,0,0,390.955,-4580.5,76.6,0,"Durotar Watershed Telescope 02 (Tekla) 39345 - On Timed Event 1 Triggered - Teleport"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 02 (Tekla) 39345 - On Timed Event 0 Triggered - Despawn Instant"),
(@ENTRY,0,4,3,61,0,100,0,0,0,0,0,33,39358,0,0,0,0,0,23,0,0,0,0,0,0,0,"Durotar Watershed Telescope 02 (Tekla) 39345 - On Timed Event 0 Triggered - Quest Credit 'Durotar Telescope Quest KC 2 39358'");

-- Durotar Watershed Telescope 03 (Misha) 39346 SAI
SET @ENTRY := 39346;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,39346,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 03 (Misha) 39346 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,58,0,100,0,0,0,0,0,67,1,5000,5000,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 03 (Misha) 39346 - On Waypoint Finished - Create Timed Event"),
(@ENTRY,0,2,4,59,0,100,0,1,0,0,0,62,1,0,0,0,0,0,23,0,0,0,390.955,-4580.5,76.6,0,"Durotar Watershed Telescope 03 (Misha) 39346 - On Timed Event 1 Triggered - Teleport"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 03 (Misha) 39346 - On Timed Event 0 Triggered - Despawn Instant"),
(@ENTRY,0,4,3,61,0,100,0,0,0,0,0,33,39359,0,0,0,0,0,23,0,0,0,0,0,0,0,"Durotar Watershed Telescope 03 (Misha) 39346 - On Timed Event 0 Triggered - Quest Credit 'Durotar Telescope Quest KC 3 39359'");

-- Durotar Watershed Telescope 04 (Zen'Taji) 39347 SAI
SET @ENTRY := 39347;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,39347,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 04 (Zen'Taji) 39347 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,58,0,100,0,0,0,0,0,67,1,5000,5000,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 04 (Zen'Taji) 39347 - On Waypoint Finished - Create Timed Event"),
(@ENTRY,0,2,4,59,0,100,0,1,0,0,0,62,1,0,0,0,0,0,23,0,0,0,390.955,-4580.5,76.6,0,"Durotar Watershed Telescope 04 (Zen'Taji) 39347 - On Timed Event 1 Triggered - Teleport"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Durotar Watershed Telescope 04 (Zen'Taji) 39347 - On Timed Event 0 Triggered - Despawn Instant"),
(@ENTRY,0,4,3,61,0,100,0,0,0,0,0,33,39360,0,0,0,0,0,23,0,0,0,0,0,0,0,"Durotar Watershed Telescope 04 (Zen'Taji) 39347 - On Timed Event 0 Triggered - Quest Credit 'Durotar Telescope Quest KC 4 39360'");

DELETE FROM `spell_script_names` WHERE `spell_id`=73817 AND `ScriptName`='spell_thonk_spyglass';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (73817, 'spell_thonk_spyglass');
