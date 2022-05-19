DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 15 AND `SourceEntry` = 273297 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 31 AND `ConditionTarget` = 0 AND `ConditionValue1` = 5 AND `ConditionValue2` = 0 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES 
(13, 15, 273297, 31, 5); 

-- Prevent player from beeing affected
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 15 AND `SourceEntry` = 273297 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 31 AND `ConditionTarget` = 0 AND `ConditionValue1` = 6 AND `ConditionValue2` = 0 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`) VALUES 
(13, 15, 273297, 31, 6, 1); 

-- Creating a new SmartAI script for [Creature] ENTRY 139174 (name: Lumber Bunny)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 139174;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 139174);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(139174, 0, 0, 0, 8, 0, 100, 0, 273297, 0, 0, 0, 33, 139174, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lumber Bunny - On Spellhit \'273297\' - Quest Credit \'\''),
(139174, 0, 1, 0, 8, 0, 100, 0, 273297, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lumber Bunny - On Spellhit \'273297\' - Despawn Instant');

-- Creating a new SmartAI script for [Creature] ENTRY 139174 (name: Lumber Bunny)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 137927;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 137927);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(137927, 0, 0, 0, 8, 0, 100, 0, 273297, 0, 0, 0, 33, 137927, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lumber Bunny - On Spellhit \'273297\' - Quest Credit \'\''),
(137927, 0, 1, 0, 8, 0, 100, 0, 273297, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lumber Bunny - On Spellhit \'273297\' - Despawn Instant');
