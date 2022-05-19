DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 1 AND `SourceEntry` = 263220 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 31 AND `ConditionTarget` = 0 AND `ConditionValue1` = 5 AND `ConditionValue2` IN (130078, 137459) AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES 
(13, 1, 263220, 31, 5, 130078),
(13, 1, 263220, 31, 5, 137459); 

UPDATE `gameobject_template` SET `Data5` = 1 WHERE (entry = 278433);

-- Creating a new SmartAI script for [Creature] ENTRY 130078 (name: Captured Farmer)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130078;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130078);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130078, 0, 0, 0, 8, 0, 100, 0, 263220, 0, 0, 0, 33, 130078, 0, 0, 0, 0, 0, 21, 8, 0, 0, 0, 0, 0, 0, 'Captured Farmer - On Spellhit \'263220\' - Quest Credit \'\''),
(130078, 0, 1, 0, 8, 0, 100, 0, 263220, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Farmer - On Spellhit \'263220\' - Despawn Instant');

-- Creating a new SmartAI script for [Creature] ENTRY 137459 (name: Farmer Deal)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 137459;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 137459);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(137459, 0, 0, 0, 8, 0, 100, 0, 263220, 0, 0, 0, 33, 137459, 0, 0, 0, 0, 0, 21, 8, 0, 0, 0, 0, 0, 0, 'Farmer Deal - On Spellhit \'263220\' - Quest Credit \'\''),
(137459, 0, 1, 0, 8, 0, 100, 0, 263220, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Farmer Deal - On Spellhit \'263220\' - Despawn Instant');
