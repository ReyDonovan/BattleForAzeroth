-- Creating a new SmartAI script for [Creature] ENTRY 134443 (name: Writhing Grasp)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134443;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134443);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134443, 0, 0, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 33, 134443, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Quest Credit \'\''),
(134443, 0, 1, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Despawn Instant');

-- Creating a new SmartAI script for [Creature] ENTRY 134873 (name: Writhing Grasp)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134873;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134873);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134873, 0, 0, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 33, 134873, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Quest Credit \'\''),
(134873, 0, 1, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Despawn Instant');

-- Creating a new SmartAI script for [Creature] ENTRY 134875 (name: Writhing Grasp)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134875;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134875);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134875, 0, 0, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 33, 134875, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Quest Credit \'\''),
(134875, 0, 1, 0, 8, 0, 100, 0, 264859, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Writhing Grasp - On Spellhit \'264859\' - Despawn Instant');
