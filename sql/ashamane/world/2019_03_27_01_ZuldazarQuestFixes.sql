update `creature_template` set `VehicleId` = 5421 where `entry` = 127417;
update `creature_template` set `VehicleId` = 5846 where `entry` = 134132;

-- Wardruid Loti 134132 SAI
SET @ENTRY := 134132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,263510,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Cast 'Spell Id263510'"),
(@ENTRY,0,1,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Say Line 0"),
(@ENTRY,0,2,0,27,0,100,0,0,0,0,0,53,1,134132,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,3,7,40,0,100,0,46,134132,0,0,28,46598,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 46 Reached - Remove Aura 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,0,4,0,40,0,100,0,48,134132,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 48 Reached - Despawn Instant"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,62,1642,0,0,0,0,0,1,0,0,0,-773.1302,1093.222,321.1463,0,"Wardruid Loti 134132 - On Just Summoned - Teleport"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-768.591,1116.03,321.494,0,"Wardruid Loti 134132 - On Just Summoned - Move To Position"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,129740,0,0,0,0,0,21,5,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 0 Reached - Quest Credit 'Gonk 129740'");

-- King Rastakhan 129491 SAI
SET @ENTRY := 129491;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,0,0,0,0,85,259522,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Rastakhan 129491 - On Quest Taken - Invoker Cast 'Spell Id259522'");

update `gameobject_template` set `Data1` = 49424 where `entry` in (280349, 280350, 280348);

update `creature_template` set `npcflag` = 16777216 where `entry` = 129701;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 129701;

update `creature_template` set `VehicleId` = 5754 where `entry` = 129702;

update `creature_template` set `spell1` = 263083 where `entry` = 129702;
update `creature_template` set `InhabitType` = 4 where `entry` = 129702;

-- Ata the Winglord 129702 SAI
SET @ENTRY := 129702;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,85,46598,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Just Summoned - Invoker Cast 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,0,1,2,27,0,100,512,0,0,0,0,53,1,129702,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Passenger Boarded - Start Waypoint (While Charmed)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Passenger Boarded - Set Fly On (While Charmed)"),
(@ENTRY,0,3,0,40,0,100,0,20,129702,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Waypoint 20 Reached - Despawn Instant");

-- Ata the Winglord 129701 SAI
SET @ENTRY := 129701;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,129701,0,0,0,0,0,7,0,0,0,0,0,0,0,"Ata the Winglord 129701 - On Spellclick - Quest Credit 'Ata the Winglord 129701'");

-- King Rastakhan 131070 SAI
SET @ENTRY := 131070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,21916,0,0,0,85,259090,0,0,0,0,0,7,0,0,0,0,0,0,0,"King Rastakhan 131070 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id259090'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,129491,0,0,0,0,0,7,0,0,0,0,0,0,0,"King Rastakhan 131070 - On Gossip Option 0 Selected - Quest Credit 'King Rastakhan 129491'");

-- King Rastakhan 139633 SAI
SET @ENTRY := 139633;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,22734,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"King Rastakhan 139633 - On Gossip Option 0 Selected - Activate Gameobject"),
(@ENTRY,0,1,0,10,0,100,0,1,5,60000,60000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Rastakhan 139633 - Within 1-5 Range Out of Combat LoS - Say Line 0");

DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=49424;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 49424);
DELETE FROM `creature_questender` WHERE `id`=129561 AND `quest`=49424;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (129561, 49424);

DELETE FROM `quest_poi_points` WHERE `QuestID`=47915 AND `Idx1`=0 AND `Idx2`=0;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (47915, 0, 0, -595, 986, 0);

DELETE FROM `quest_poi` WHERE `QuestID`=47915 AND `BlobIndex`=0 AND `Idx1`=0;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (47915, 0, 0, 0, 291131, 156923, 1642, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_area` WHERE `spell`=260328 AND `area`=8732 AND `quest_start`=49424 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES (260328, 8732, 49424, 49965, 0, -1, 0, 2, 3, 43, 64);

DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 1, -460.875, 706.677, 282.8, 0, '-460.875 Y: 706.6771 Z: 282.8003');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 2, -448.547, 656.818, 258.4, 0, 'X: -448.5469 Y: 656.8177 Z: 258.4043 O: 4.954785');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 3, -443.538, 605.217, 254.061, 0, '[0] Points: X: -443.5382 Y: 605.217 Z: 254.0606');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 4, -253.689, 549.368, 189.683, 0, '[1] Points: X: -253.6892 Y: 549.368 Z: 189.6833');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 5, 172.016, 541.812, 129.326, 0, 'X: 172.0156 Y: 541.8125 Z: 129.3259');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 6, 244.892, 624.127, 113.18, 0, '244.8924 Y: 624.1268 Z: 113.1798');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 7, 273.879, 845.462, 114.704, 0, '273.8785 Y: 845.4618 Z: 114.7044');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 8, 240.891, 986.153, 144.453, 0, '240.8906 Y: 986.1528 Z: 144.4529');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 9, 227.042, 1155.24, 167.157, 0, '227.0417 Y: 1155.241 Z: 167.1574');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 10, 177.175, 1384.76, 194.245, 0, '177.1754 Y: 1384.76 Z: 194.2447');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 11, 108.78, 1241.74, 238.563, 0, '108.7795 Y: 1241.745 Z: 238.5629');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 12, 68.2118, 1203.55, 257.019, 0, '68.21181 Y: 1203.545 Z: 257.0192');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 13, -12.8507, 1086.94, 251.028, 0, '-12.85069 Y: 1086.939 Z: 251.0278');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 14, 41.4392, 819.055, 191.632, 0, '41.43924 Y: 819.0555 Z: 191.6324');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 15, 50.1892, 661.427, 157.624, 0, '50.18924 Y: 661.4271 Z: 157.6243');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 16, -94.7483, 654.273, 156.692, 0, '-94.74827 Y: 654.2726 Z: 156.6922');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=17;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 17, -227.115, 679.455, 178.999, 0, '-227.1146 Y: 679.4549 Z: 178.9987');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=18;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 18, -294.432, 651.59, 204.662, 0, '-294.4323 Y: 651.5903 Z: 204.6623');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=19;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 19, -384.918, 654.066, 201.629, 0, '-384.9184 Y: 654.066 Z: 201.6293');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=20;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 20, -501.273, 649.484, 217.171, 0, '-501.2726 Y: 649.4844 Z: 217.1709');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=21;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 21, -615.741, 707.684, 259.643, 0, '-615.7413 Y: 707.684 Z: 259.6428');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=22;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 22, -686.014, 715.337, 249.916, 0, '-686.0139 Y: 715.3368 Z: 249.9156');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=23;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 23, -680.467, 661.253, 280.884, 0, '-680.467 Y: 661.2535 Z: 280.8842');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=24;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 24, -686.16, 622.842, 292.098, 0, '-686.1597 Y: 622.842 Z: 292.0975');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=25;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 25, -674.09, 569.333, 279.179, 0, '-674.0903 Y: 569.3333 Z: 279.1787');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=26;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 26, -597.995, 574.318, 231.387, 0, '-597.9948 Y: 574.3177 Z: 231.3867');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=27;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 27, -537.274, 574.615, 232.883, 0, '-537.2743 Y: 574.6146 Z: 232.8826');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=28;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 28, -487.078, 604.75, 256.092, 0, '-487.0781 Y: 604.75 Z: 256.0919');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=29;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 29, -485.414, 718.029, 309.124, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 0, -1389.22, -252.576, 415.536, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 1, -1372.77, -216.823, 418.518, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 2, -1317, -199.705, 420.038, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 3, -1282.57, -161.286, 402.313, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 4, -1188.48, -57.7917, 323.56, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 5, -1076.06, 56.4097, 319.328, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 6, -1047.8, 120.035, 302.861, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 7, -1117.65, -12.4896, 321.935, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 8, -965.332, 213.743, 291.572, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 9, -718.479, 586.028, 325.199, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 10, -628.882, 769.759, 311.06, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 11, -475.514, 778.773, 311.169, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 12, -375.189, 773.707, 327.754, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 13, -286.177, 826.127, 404.923, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 14, -353.34, 929.023, 441.357, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 15, -432.655, 1012.84, 443.619, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 16, -451.75, 1014.85, 444.693, 0, NULL);

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

DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 1, -768.591, 1116.03, 321.494, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 2, -788.812, 1134.63, 321.591, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 3, -799.719, 1144.71, 321.584, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 4, -811.984, 1157.53, 321.241, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 5, -829.406, 1173.63, 321.216, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 6, -855.678, 1199.98, 321.501, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 7, -866.049, 1210.18, 321.552, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 8, -875.071, 1219.28, 321.594, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 9, -887.712, 1230.31, 321.03, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 10, -900.971, 1244.15, 320.547, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 11, -916.232, 1251.45, 319.867, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 12, -940.845, 1251.91, 319.953, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 13, -950.394, 1252.21, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 14, -973.159, 1252.49, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 15, -994.402, 1252.57, 319.994, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 16, -1003.48, 1252.94, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 17, -1015.72, 1253.56, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 18, -1041.43, 1253.59, 319.198, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 19, -1052.28, 1253.58, 318.585, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 20, -1075.86, 1259.78, 315.938, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=21;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 21, -1087.57, 1273.16, 313.213, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=22;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 22, -1093.36, 1291.3, 311.375, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=23;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 23, -1094.5, 1310.86, 312.533, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=24;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 24, -1094.12, 1324.58, 315.138, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=25;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 25, -1093.62, 1335.97, 317.294, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=26;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 26, -1105.2, 1363.91, 324.176, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=27;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 27, -1111.54, 1374.61, 327, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=28;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 28, -1119.85, 1382.18, 330.767, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=29;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 29, -1130.45, 1392.75, 334.679, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=30;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 30, -1143.11, 1402.36, 338.554, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=31;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 31, -1168.9, 1407.92, 345.322, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=32;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 32, -1179.26, 1409.43, 348.606, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=33;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 33, -1197.94, 1409.51, 354.943, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=34;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 34, -1211.71, 1411.81, 358.48, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=35;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 35, -1231.85, 1423.18, 363.891, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=36;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 36, -1237.61, 1433.15, 366.275, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=37;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 37, -1227.69, 1454.27, 372.186, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=38;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 38, -1214.02, 1460.74, 375.683, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=39;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 39, -1198.59, 1467.82, 379.363, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=40;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 40, -1189.83, 1475.13, 381.877, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=41;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 41, -1181.03, 1487.66, 387.566, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=42;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 42, -1177.23, 1513.58, 398.634, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=43;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 43, -1174.56, 1526.25, 404.055, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=44;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 44, -1165.9, 1538.43, 408.762, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=45;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 45, -1157.84, 1545.44, 411.193, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=46;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 46, -1148.01, 1547.01, 413.642, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=47;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 47, -1129.48, 1536.4, 417.356, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=48;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 48, -1124.18, 1534.72, 418.567, NULL);

DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 1, -774.113, 1507.56, 427.278, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 2, -809.752, 1513.88, 447.15, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 3, -856.958, 1570.18, 476.936, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 4, -865.608, 1620.07, 491.882, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 5, -844.88, 1628.24, 499.545, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 6, -790.667, 1619.97, 517.786, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 7, -721.738, 1585.74, 530.781, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 8, -660.55, 1653.17, 569.443, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 9, -643.378, 1721.67, 592.41, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 10, -563.707, 1769.78, 623.359, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 11, -569.753, 1840.17, 664.232, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 12, -624.793, 1846.99, 684.158, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 13, -669.035, 1841.12, 689.815, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 14, -709.323, 1796.5, 675.91, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 15, -711.564, 1845.49, 695.102, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 16, -738.689, 1870.91, 707.07, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 17, -767.505, 1923.79, 714.371, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 18, -789.759, 1946.76, 724.44, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 19, -820.82, 1987.5, 738.339, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 20, -825.771, 2005.66, 725.214, NULL);
