DELETE FROM `spell_area` WHERE `spell` = 271002 AND `area` IN (9401, 9693, 9811, 9770, 9785, 9995) AND `quest_start` = 51545 AND `aura_spell` = 0 AND `teamId` = -1 AND `racemask` = 0 AND `gender` = 2; 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
(271002, 9401, 51545, 51545, 8, 99),
(271002, 9693, 51545, 51545, 8, 99),
(271002, 9811, 51545, 51545, 8, 99),
(271002, 9770, 51545, 51545, 8, 99),
(271002, 9785, 51545, 51545, 8, 99),
(271002, 9995, 51545, 51545, 8, 99); 

-- Creating a new SmartAI script for [Creature] ENTRY 137364 (name: Reef Breaker)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 137364;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 137364);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(137364, 0, 0, 0, 8, 0, 100, 0, 271011, 0, 0, 0, 33, 137364, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Reef Breaker - On Spellhit \'271011\' - Quest Credit \'\''),
(137364, 0, 1, 0, 8, 0, 100, 0, 271011, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Reef Breaker - On Spellhit \'271011\' - Despawn Instant');
