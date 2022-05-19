-- Table `creature_template`
UPDATE `creature_template` SET `npcflag` = 16777216 WHERE (entry = 136333);

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 136333 AND `spell_id` = 272855; 

-- Creating a new SmartAI script for [Creature] ENTRY 136333 (name: Captured Miner)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 136333;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 136333);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(136333, 0, 0, 0, 8, 0, 100, 0, 272855, 0, 0, 0, 33, 136333, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Captured Miner - On Spellhit \'272855\' - Quest Credit \'\''),
(136333, 0, 1, 0, 8, 0, 100, 0, 272855, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captured Miner - On Spellhit \'272855\' - Despawn Instant');
