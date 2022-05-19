-- Table `gameobject_template`
UPDATE `gameobject_template` SET `Data1` = 49746 WHERE (entry = 280978);

-- Editing the SmartAI script of [Creature] ENTRY 130820 (name: Raging Fire)

-- Table creature_template
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 130820;

-- Table smart_scripts
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 130820);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(130820, 0, 0, 0, 8, 0, 100, 0, 258814, 0, 0, 0, '', 33, 130820, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Raging Fire - On Spellhit \'130820\' - Quest Credit \'\''),
(130820, 0, 1, 0, 8, 0, 100, 0, 258814, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Raging Fire - On Spellhit \'258814\' - Despawn Instant');

UPDATE `creature_addon` SET `auras` = 258785 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 130820);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 1 AND `SourceEntry` = 258814 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 31 AND `ConditionTarget` = 0 AND `ConditionValue1` = 5 AND `ConditionValue2` = 130820 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 258814, 0, 0, 31, 0, 5, 130820, 0, 0, 0, 0, '', 'Can only Douse Raging Flames');

