-- Creating a new SmartAI script for [Creature] ENTRY 130061 (name: Ruined Robot)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130061;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130061);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130061, 0, 0, 0, 8, 0, 100, 0, 257754, 0, 0, 0, 33, 130061, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ruined Robot - On Spellhit \'257754\' - Quest Credit \'\'');

-- Creating a new SmartAI script for [Creature] ENTRY 128774 (name: Rustfur Wolf)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 128774;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 128774);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(128774, 0, 0, 0, 8, 0, 100, 0, 257754, 0, 0, 0, 33, 130062, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rustfur Wolf - On Spellhit \'257754\' - Quest Credit \'\'');

-- Creating a new SmartAI script for [Creature] ENTRY 126967 (name: Midland Stag)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 126967;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 126967);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(126967, 0, 0, 0, 8, 0, 100, 0, 257754, 0, 0, 0, 33, 130015, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Midland Stag - On Spellhit \'257754\' - Quest Credit \'\'');

-- Creating a new SmartAI script for [Creature] ENTRY 130044 (name: Geyser)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130044;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130044);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130044, 0, 0, 0, 8, 0, 100, 0, 257754, 0, 0, 0, 33, 130044, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Geyser - On Spellhit \'257754\' - Quest Credit \'\'');

-- Table `creature_template` make Waterfall fly
UPDATE `creature_template` SET `InhabitType` = 4 WHERE (entry = 130045);

-- Creating a new SmartAI script for [Creature] ENTRY 130045 (name: Waterfall)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130045;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130045);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130045, 0, 0, 0, 8, 0, 100, 0, 257754, 0, 0, 0, 33, 130045, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waterfall - On Spellhit \'257754\' - Quest Credit \'\'');
