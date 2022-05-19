-- Creating a new SmartAI script for [Creature] ENTRY 134983 (name: Samuel Williams)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134983;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134983);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134983, 0, 0, 0, 10, 0, 100, 0, 1, 12, 0, 0, 33, 135001, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Samuel Williams - Within 1-12 Range Out of Combat LoS - Quest Credit \'\'');

-- Creating a new SmartAI script for [Creature] ENTRY 134999 (name: Brother Halsey)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134999;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134999);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134999, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 134983, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Brother Halsey - On Just Died - Quest Credit \'\'');
