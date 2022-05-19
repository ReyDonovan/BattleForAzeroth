-- Creating a new SmartAI script for [Creature] ENTRY 130600 (name: Lucktail)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130600;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130600);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130600, 0, 0, 0, 2, 0, 100, 0, 0, 66, 0, 10000, 33, 130579, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-66% Health - Quest Credit \'\''),
(130600, 0, 1, 0, 2, 0, 100, 0, 0, 66, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-66% Health - Despawn In 2000 ms'),
(130600, 0, 3, 0, 2, 0, 100, 0, 0, 66, 0, 0, 18, 33600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-66% Health - Set Flags Immune To Players & Immune To NPC\'s');

-- Creating a new SmartAI script for [Creature] ENTRY 130601 (name: Lucktail)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130601;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130601);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130601, 0, 0, 0, 2, 0, 100, 0, 0, 33, 0, 10000, 33, 130580, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-33% Health - Quest Credit \'\''),
(130601, 0, 1, 0, 2, 0, 100, 0, 0, 33, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-33% Health - Despawn In 2000 ms'),
(130601, 0, 3, 0, 2, 0, 100, 0, 0, 33, 0, 0, 18, 33600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucktail - Between 0-33% Health - Set Flags Immune To Players & Immune To NPC\'s');
