DELETE FROM `zone_scripts` WHERE `zoneId` = 45;
INSERT INTO `zone_scripts` VALUES
(45, 'zone_arathi_highlands');

DELETE FROM `terrain_swap_defaults` WHERE `TerrainSwapMap` = 1945;
INSERT INTO `terrain_swap_defaults` VALUES
(0, 1945, 'Arathi Highlands 2');

DELETE FROM `terrain_worldmap` WHERE `TerrainSwapMap` = 1945;
INSERT INTO `terrain_worldmap` VALUES
(1945, 11292, 'Arathi Highlands 2');

DELETE FROM `spell_target_position` WHERE (`ID`=279518 AND `EffectIndex`=0);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(279518, 0, 0, -1652.53, -1881.24, 80.01, 29139); -- Spell: Teleport to Stromgarde Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

DELETE FROM `creature` WHERE `guid` = 280007511;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(280007511, 142721, 1643, 8717, 8718, '0', '0', 0, 0, 0, 1021.981, -448.2413, 8.461424, 5.038664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 29235);

UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=35, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `family` = 7, `npcflag` = 2 WHERE `entry`=142721; -- Ролстон Карн

-- Alliance World Front Arahti
DELETE FROM `phase_area` WHERE `AreaId` IN (324, 9734);
INSERT INTO `phase_area` VALUES
(324, 11292, 'WarFrontArahti_Main_alliance'),
(9734, 11292, 'WarFrontArahti_Main_alliance');

-- Alliance World Front Arahti
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceEntry` IN (1945); 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 26 AND `SourceEntry` IN (324, 9734); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 11292, 324, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'If quest 53194  not rewarded'),
(26, 11292, 324, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'If quest 53194  rewarded'),
(26, 11292, 9734, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'If quest 53194  not rewarded'),
(26, 11292, 9734, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'If quest 53194  rewarded'),
(25, 0, 1945, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'TerrainSwap 53194 only when player has quest 53194 not rewarded'),
(25, 0, 1945, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'TerrainSwap 53194 only when player has quest 53194  rewarded');


UPDATE `creature_template` SET `ScriptName` = 'npc_ralston_karn' WHERE `entry` = 142721;

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 143018;

DELETE FROM `creature_queststarter` WHERE `id` = '143018';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('143018', '53197'),
('143018', '53198');

DELETE FROM `creature_questender` WHERE `id` = '143018';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('143018', '53194'),
('143018', '53197');
