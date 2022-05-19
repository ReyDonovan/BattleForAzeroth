-- Creating a new SmartAI script for [Creature] ENTRY 141603 (name: Darion Hood)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 141603;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 141603);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(141603, 0, 0, 0, 62, 0, 100, 0, 23016, 0, 0, 0, 33, 141603, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darion Hood - On Gossip Option 0 Selected - Quest Credit \'\'');


-- Creating a new SmartAI script for [Creature] ENTRY 141604 (name: Darion Hood)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 141604;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 141604);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(141604, 0, 0, 0, 62, 0, 100, 0, 23009, 0, 0, 0, 33, 141604, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darion Hood - On Gossip Option 0 Selected - Quest Credit \'\'');

-- Editing the SmartAI script of [Creature] ENTRY 141622 (name: Lorraine Hood)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 141622;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 141622);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(141622, 0, 0, 0, 62, 0, 100, 0, 23011, 0, 0, 0, 33, 141622, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lorraine Hood - On Gossip Option 0 Selected - Quest Credit \'\'');
