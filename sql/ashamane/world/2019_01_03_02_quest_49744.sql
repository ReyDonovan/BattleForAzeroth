DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 4 AND `SourceEntry` = 273176 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 31 AND `ConditionTarget` = 0 AND `ConditionValue1` = 5 AND `ConditionValue2` = 137622 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES 
(13, 4, 273176, 31, 5, 137622); 

-- Creating a new SmartAI script for [Creature] ENTRY 139030 (name: Planted Explosives)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 139030;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 139030);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(139030, 0, 0, 0, 8, 0, 100, 0, 273176, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 19, 137622, 0, 0, 0, 0, 0, 0, 'Planted Explosives - On Spellhit \'273176\' - Kill Target'),
(139030, 0, 1, 0, 8, 0, 100, 0, 273176, 0, 0, 0, 33, 137622, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Planted Explosives - On Spellhit \'273176\' - Quest Credit \'\''),
(139030, 0, 2, 0, 8, 0, 100, 0, 273176, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 9, 139030, 0, 7, 0, 0, 0, 0, 'Planted Explosives - On Spellhit \'273176\' - Kill Self');
