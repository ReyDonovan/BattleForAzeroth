UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 137717 AND `spell_id` = 207281; 

-- Creating a new SmartAI script for [Creature] ENTRY 137717 (name: Seaweed offering)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 137717;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 137717);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(137717, 0, 0, 0, 8, 0, 100, 0, 207281, 0, 0, 0, 33, 137717, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Seaweed offering - On Spellhit \'207281\' - Quest Credit \'\'');
