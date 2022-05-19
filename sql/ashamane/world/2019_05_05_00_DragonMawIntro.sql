set @phase1 = 236;
-- paint it red npcs
update `creature` set `PhaseId` = @phase1 where `id` in (43390, 43386, 43421, 43387, 43483);
update `creature` set `phaseUseFlags` = 0 where `id` in (43390, 43386, 43421, 43387, 43483);
set @phase2 = 237;
-- phase2
update `creature` set `PhaseId` = @phase2 where `id` in (43577, 43579, 43575, 43394, 43578, 43581, 43576, 43580 , 43189, 43678);
update `creature` set `phaseUseFlags` = 0 where `id` in (43577, 43579, 43575, 43394, 43578, 43581, 43576, 43580 , 43189, 43678);
set @phase3 = 238;
-- phase3
update `creature` set `PhaseId` = @phase3 where `id` in (43941, 43943, 44042, 44024, 44026, 44050, 44002, 43389);
update `creature` set `phaseUseFlags` = 0 where `id` in (43941, 43943, 44042, 44024, 44026, 44050, 44002, 43389);
update `creature` set `spawndist` = 0 where `id` in (43941, 44026, 44050);

-- remove 49414
update `creature_addon` set `auras` = "82259" where `guid` in (195070, 195071, 195072, 195073, 195075, 195076, 195078, 195301, 195303, 195304);
set @phase1 = 236;
-- paint it red npcs
update `creature` set `PhaseId` = @phase1 where `id` in (43390, 43386, 43421, 43387, 43483);
update `creature` set `phaseUseFlags` = 0 where `id` in (43390, 43386, 43421, 43387, 43483);
set @phase2 = 237;
-- phase2
update `creature` set `PhaseId` = @phase2 where `id` in (43577, 43579, 43575, 43394, 43578, 43581, 43576, 43580 , 43189, 43678);
update `creature` set `phaseUseFlags` = 0 where `id` in (43577, 43579, 43575, 43394, 43578, 43581, 43576, 43580 , 43189, 43678);
set @phase3 = 238;
-- phase3
update `creature` set `PhaseId` = @phase3 where `id` in (43941, 43943, 44042, 44024, 44026, 44050, 44002, 43389);
update `creature` set `phaseUseFlags` = 0 where `id` in (43941, 43943, 44042, 44024, 44026, 44050, 44002, 43389);
update `creature` set `spawndist` = 0 where `id` in (43941, 44026, 44050);

-- remove 49414
update `creature_addon` set `auras` = "82259" where `guid` in (195070, 195071, 195072, 195073, 195075, 195076, 195078, 195301, 195303, 195304);

DELETE FROM `phase_area` WHERE `AreaId`=5136 AND `PhaseId`=237;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5136, 237, 'DragonMaw Battle Phase');
DELETE FROM `phase_area` WHERE `AreaId`=5136 AND `PhaseId`=236;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5136, 236, 'DragonMaw Phase First');
DELETE FROM `phase_area` WHERE `AreaId`=5136 AND `PhaseId`=238;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5136, 238, 'DragonMaw Final Phase');

DELETE FROM `areatrigger_scripts` WHERE `entry`=5997;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (5997, 'areatrigger_demolisher_orgrimmar');
DELETE FROM `areatrigger_scripts` WHERE `entry`=5996;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (5996, 'areatrigger_demolisher_orgrimmar');
DELETE FROM `areatrigger_scripts` WHERE `entry`=5995;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (5995, 'areatrigger_demolisher_orgrimmar');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=237 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26619 AND `ConditionValue2`=74 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 237, 5136, 0, 0, 47, 0, 26619, 74, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=237 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26622 AND `ConditionValue2`=41 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 237, 5136, 0, 0, 47, 0, 26622, 41, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=238 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26622 AND `ConditionValue2`=66 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 238, 5136, 0, 0, 47, 0, 26622, 66, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=238 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26840 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 238, 5136, 0, 0, 47, 0, 26840, 1, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=236 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26388 AND `ConditionValue2`=106 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 236, 5136, 0, 0, 47, 0, 26388, 106, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=236 AND `SourceEntry`=5136 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26619 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (26, 236, 5136, 0, 0, 47, 0, 26619, 1, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceGroup`=0 AND `SourceEntry`=736 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26388 AND `ConditionValue2`=106 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (25, 0, 736, 0, 0, 47, 0, 26388, 106, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceGroup`=0 AND `SourceEntry`=736 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=26840 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (25, 0, 736, 0, 0, 47, 0, 26840, 1, 0, 0, 0, 0, '', NULL);

update `creature_template` set `faction` = 1074 where `entry` in (42671, 42673);
update `creature_template` set `gossip_menu_id` = 11804 where `entry` = 44160;
update `creature_template` set `scriptname` = "npc_dragonmaw_shaman" where `entry` in (43629, 43628);

DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 0, 0, 'Ready for inspection, $gsir:ma\'am;!', 12, 0, 100, 66, 0, 0, 42555, 0, 'Chief Engineer to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 1, 0, 'See that? Ironclad!', 12, 0, 100, 4, 0, 0, 42558, 0, 'Chief Engineer to Hellscream Demolisher');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 2, 0, 'This baby is all mine! I call her, "The Throttler."', 12, 0, 100, 66, 0, 0, 42556, 0, 'Chief Engineer to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 3, 0, 'That\'s right. Takes a lickin\' but keeps on kickin\' butt!', 12, 0, 100, 4, 0, 0, 42559, 0, 'Chief Engineer to Hellscream Demolisher');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 4, 0, 'Ready for inspection! ...Be gentle.', 12, 0, 100, 66, 0, 0, 42557, 0, 'Chief Engineer to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=5 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 5, 0, 'Uh oh. Um. Oops.', 12, 0, 100, 0, 0, 0, 42561, 0, 'Chief Engineer to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=42671 AND `GroupID`=6 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (42671, 6, 0, 'Look, look, it\'s okay! It\'s just a tiny little glitch. See?', 12, 0, 100, 0, 0, 0, 42562, 0, 'Chief Engineer to Player');

update `gameobject` set `PhaseId` = 236 where `guid` = 163189;
update `gameobject` set `PhaseId` = 238 where `guid` = 163188;
update `gameobject` set `PhaseId` = 238 where `guid` = 205187;

DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=11804 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES (11804, 0, 11805, 0);
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=11805 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES (11805, 0, 11806, 0);
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=11806 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES (11806, 0, 11807, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=80930 AND `ScriptName`='spell_visual_kick';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (80930, 'spell_visual_kick');
DELETE FROM `spell_script_names` WHERE `spell_id`=82611 AND `ScriptName`='spell_sauronak_kill';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (82611, 'spell_sauronak_kill');

DELETE FROM `creature_text` where `CreatureID` = 43238;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43238, 0, 0, 'I am ready, $N. Soon the Dragonmaw will join the Horde!', 12, 0, 100, 0, 0, 0, 0, 'Horde Negotiator to Player'),
(43238, 1, 0, 'I hear a great Dragonmaw medicine man lives here, in the large hut to our right.', 12, 0, 100, 25, 0, 0, 43276, 'Horde Negotiator to Player'),
(43238, 2, 0, 'After these negotiations, I am looking forward to a long and prosperous life.', 12, 0, 100, 1, 0, 0, 43279, 'Horde Negotiator to Player'),
(43238, 3, 0, 'The Dragonmaw Warchief is in the largest building up on the hilltop here. I\'m sure he\'ll be reasonable.', 12, 0, 100, 1, 0, 0, 43280, 'Horde Negotiator to Player'),
(43238, 4, 0, 'This is it! Stay close and let me do the talking. I\'m an expert.', 12, 0, 100, 1, 0, 0, 43281, 'Horde Negotiator to Player'),
(43238, 5, 0, 'Most esteemed Warchief -', 12, 0, 100, 2, 0, 0, 43298, 'Horde Negotiator to Player'),
(43238, 6, 0, 'Warchief, you misunderstand. Garrosh Hellscream will have a beach head on these shores, with or without your help. What we ask -', 12, 0, 100, 1, 0, 0, 43299, 'Horde Negotiator to Player');

update `creature` set `spawndist` = 0 where `id` = 43483;

update `creature_template` set `scriptname` = "npc_horde_negotiator" where `entry` = 43238;

DELETE FROM `phase_area` WHERE `AreaId`=5136 AND `PhaseId`=237;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5136, 237, 'DragonMaw Battle Phase');
DELETE FROM `phase_area` WHERE `AreaId`=5136 AND `PhaseId`=238;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES (5136, 238, 'DragonMaw Final Phase');

update `creature_addon` set `auras` = "82259" where `guid` in (195070, 195071, 195072, 195073, 195075, 195076, 195078, 195301, 195303, 195304);
delete from `creature` where `id` = 44120;

DELETE FROM `creature_text` where `CreatureID` = 44120;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(44120, 0, 0, 'Silence, idiot.', 12, 0, 100, 0, 0, 0, 44459, 'Sauranok the Mystic to Player'),
(44120, 1, 0, 'Hear anything interesting, $N? Your little revelation about me is about to cost you your life.', 12, 0, 100, 1, 0, 6675, 0, 'Sauranok the Mystic to Player'),
(44120, 2, 0, 'The Twilight\'s Hammer has agents everywhere! Kill me and a dozen take my place!', 12, 0, 100, 0, 0, 0, 44409, 'Sauranok the Mystic'),
(44120, 3, 0, 'My powers of sight... I beheld the future... I have seen what is to come...', 12, 0, 100, 0, 0, 0, 44410, 'Sauranok the Mystic'),
(44120, 4, 0, 'This world unravels. If you could see the horrors I have seen... ', 12, 0, 100, 0, 0, 0, 44411, 'Sauranok the Mystic'),
(44120, 5, 0, 'To serve is madness, but defiance ... impossible!', 12, 0, 100, 0, 0, 0, 44412, 'Sauranok the Mystic');

DELETE FROM `waypoint_data` WHERE `id`=4412000 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4412000, 1, 1738.02, -4281.55, 101.605, 0, 0, 1, 0, 100, 0);

DELETE FROM `waypoint_data` WHERE `id`=4412000 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4412000, 2, 1739.02, -4280.55, 101.605, 0, 0, 1, 0, 100, 0);

update `creature_template` set `ScriptName` = "npc_billgewater_foreman" where `entry` = 42777;
update `creature_template` set `ScriptName` = "npc_awol_grunt" where `entry` = 42646;update `creature_template` set `scriptname` = "npc_dragonmaw_revolutionary" where `entry` in (43578, 43577);update `creature_template` set `scriptname` = "npc_dragonmaw_felblade" where `entry` in (43678);
update `creature_template` set `scriptname` = "npc_warchief_moghor" where `entry` in (43189);update `creature_template` set `scriptname` = "npc_dragonmaw_warrior" where `entry` in (43626, 43627);update `creature_template` set `scriptname` = "npc_artesh" where `entry` in (44024);
update `creature_template` set `scriptname` = "npc_orgrimmar_portal_bunny" where `entry` in (44050);update `creature_template` set `scriptname` = "npc_suspicious_peon" where `entry` in (44160);
update `creature_template` set `scriptname` = "npc_sauranok" where `entry` in (44120);update `creature_template` set `scriptname` = "npc_zaela_final" where `entry` in (43939);

-- Chief Engineer 42671 SAI
SET @ENTRY := 42671;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,73,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chief Engineer 42671 - On Spellclick - Despawn In 2000 ms"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,42675,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chief Engineer 42671 - On Spellclick - Quest Credit 'Chief Engineer Quest Tracker 42675'");

-- Smoot 42644 SAI
SET @ENTRY := 42644;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Smoot 42644 - On Respawn - Remove Flag Not Selectable"),
(@ENTRY,0,1,0,73,0,100,0,0,0,0,0,50,204091,15000,0,0,0,0,1,0,0,0,0,0,0,0,"Smoot 42644 - On Spellclick - Summon Gameobject 'Induction Samophlange'");

update `npc_spellclick_spells` set `spell_id` = 79545 where `npc_entry` = 42673;update `creature_template` set `npcflag` = 16777216 where `entry` = 42646;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42646 AND `spell_id`=80017;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (42646, 80017, 1, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=42671 AND `spell_id`=79568;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (42671, 79568, 1, 0);
-- 79545 - Inspection
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_quest_inspection';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(79545, 'spell_quest_inspection');
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_quest_summon_morghor';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(80842, 'spell_quest_summon_morghor');DELETE FROM `spell_script_names` WHERE `spell_id`=80959 AND `ScriptName`='spell_knocked_out';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (80959, 'spell_knocked_out');
DELETE FROM `spell_script_names` WHERE `spell_id`=80017 AND `ScriptName`='spell_quest_chewing_out';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (80017, 'spell_quest_chewing_out');


-- Ornak 43187 SAI
SET @ENTRY := 43187;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26549,0,0,0,85,80786,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ornak 43187 - On Quest '' Taken - Invoker Cast 'Spell Id80786'");

DELETE FROM `terrain_swap_defaults` where `TerrainSwapMap` = 736;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES (0, 736, 'Twilight Highlands Dragonmaw Phase');

Delete FROM `creature_text` where `CreatureID` in (43190, 43191);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43190, 0, 0, 'Gregor, you coward! Orcs of pure blood are dying off our shores. If you doom them, you doom us all.', 12, 0, 100, 5, 0, 0, 43239, 'Zaela to Player'),
(43190, 1, 0, 'Hurry, Gorthul. Undo $ghis:her; bonds.', 12, 0, 100, 0, 0, 0, 43463, 'Zaela to Player'),
(43190, 2, 0, '$N, I\'ve rescued your equipment for you. I think you\'ve seen all you need to see.', 12, 0, 100, 1, 0, 0, 0, 'Zaela to Player'),
(43190, 3, 0, 'Remember, $N. Not all Dragonmaw are your enemies!', 12, 0, 100, 1, 0, 0, 0, 'Zaela to Player'),
(43191, 0, 0, 'I ... I can\'t give you any of our supplies! Our Warchief... He would...', 12, 0, 100, 274, 0, 0, 43238, 'Gregor to Player'),
(43191, 1, 0, 'Very well, Zaela. I trust you to do the right thing. $C, I can help your fallen warriors...', 12, 0, 100, 2, 0, 0, 43237, 'Gregor to Player');

DELETE FROM `creature_text` where `CreatureID` = 43189;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43189, 0, 0, 'This pathetic revolution ends here!', 12, 0, 100, 0, 0, 0, 43761, 'Warchief Mor\'ghor to Dragonmaw Shaman'),
(43189, 1, 0, 'Pathetic worms. Prepare to face the Mor\'ghor Slam!', 14, 0, 100, 25, 0, 21599, 44062, 'Warchief Mor\'ghor'),
(43189, 2, 0, 'Zaela ... traitorous fool ... have you sold your soul to the Horde? Are you and I so different? Cast your lot with Hellscream, then. See where he takes you.', 12, 0, 100, 0, 0, 21130, 44287, 'Warchief Mor\'ghor to Dragonmaw Warrior');

DELETE FROM `creature_text` WHERE `CreatureID` = 43260;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43260, 0, 0, 'Quit wasting words, worm. If you want the aid of the Dragonmaw, you should\'ve come on bent knee and with offerings of gold.', 12, 0, 100, 25, 0, 0, 43306, 'Warchief Mor\'ghor to Player'),
(43260, 1, 0, 'Was that a THREAT? I knew Hellscream in Outland. A whimpering whelp. He is no Warchief.', 12, 0, 100, 11, 0, 0, 43307, 'Warchief Mor\'ghor to Player'),
(43260, 2, 0, 'Bring him on!', 12, 0, 100, 5, 0, 0, 43308, 'Warchief Mor\'ghor to Player'),
(43260, 3, 0, 'This is...', 12, 0, 100, 0, 0, 0, 43309, 'Warchief Mor\'ghor to Player'),
(43260, 4, 0, 'DRAGONMAW!!', 14, 0, 100, 0, 0, 0, 0, 'Warchief Mor\'ghor to Player'), -- BroadcastTextID: 43310 - 43715
(43260, 5, 0, 'Keep the $c alive. $gHe:She; will be our bargaining chip.', 12, 0, 100, 1, 0, 0, 43311, 'Warchief Mor\'ghor to Player'),
(43260, 6, 0, 'Call for the others. We will crush Hellscream\'s Horde and hurl their bodies to the sea...', 12, 0, 100, 273, 0, 0, 43312, 'Warchief Mor\'ghor to Player');

-- Admiral Stonefist 42978 SAI
SET @ENTRY := 42978;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,5,0,0,33,42977,0,0,0,0,0,7,0,0,0,0,0,0,0,"Admiral Stonefist 42978 - Within 1-5 Range Out of Combat LoS - Quest Credit 'Twilight Skies Quest Tracker 42977'");

DELETE FROM `waypoint_data` WHERE `id`=4339800 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339800, 1, -4039.13, -6342.38, 38.4743, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339800 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339800, 2, -4042.38, -6337.13, 38.2243, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339800 AND `point`=3;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339800, 3, -4044.13, -6331.13, 38.2243, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339800 AND `point`=4;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339800, 4, -4044.38, -6325.88, 38.2243, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 1, -4045.74, -6327.6, 38.4861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 2, -4045.49, -6330.85, 38.4861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=3;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 3, -4044.24, -6333.6, 38.4861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=4;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 4, -4038.74, -6344.1, 38.4861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=5;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 5, -4035.49, -6350.85, 38.7361, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=6;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 6, -4032.49, -6354.6, 37.9861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=7;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 7, -4029.49, -6355.1, 37.9861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=8;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 8, -4024.24, -6350.6, 38.2361, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=9;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 9, -4018.24, -6341.35, 38.4861, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4339801 AND `point`=10;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4339801, 10, -4016.99, -6332.1, 39.7361, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319000 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319000, 1, -4044.2, -6338.12, 38.4646, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319000 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319000, 2, -4046.2, -6334.62, 38.2146, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319000 AND `point`=3;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319000, 3, -4047.95, -6330.38, 38.2146, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 1, -4046.15, -6332.51, 38.2691, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 2, -4044.15, -6338.01, 38.2691, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=3;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 3, -4039.15, -6346.26, 38.2691, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=4;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 4, -4033.65, -6354.26, 38.0191, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=5;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 5, -4031.4, -6360.76, 37.7691, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4319001 AND `point`=6;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4319001, 6, -4024.15, -6366.01, 38.0191, 0, 0, 1, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4393900 AND `point`=1;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4393900, 1, -4099.25, -6394.29, 38.7233, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4393900 AND `point`=2;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4393900, 2, -4102.8, -6393.62, 38.9361, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4393900 AND `point`=3;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4393900, 3, -4105.55, -6395.12, 38.9361, 0, 0, 0, 0, 100, 0);
DELETE FROM `waypoint_data` WHERE `id`=4393900 AND `point`=4;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (4393900, 4, -4106.8, -6397.87, 38.9361, 0, 0, 0, 0, 100, 0);

DELETE FROM `spell_target_position` WHERE `ID`=82274 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (82274, 0, 0, -4093.33, -6398.67, 38.649, 0);
DELETE FROM `spell_target_position` WHERE `ID`=82273 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (82273, 0, 0, -4113.21, -6416.2, 37.7048, 0);
DELETE FROM `spell_target_position` WHERE `ID`=81182 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (81182, 0, 0, -4038.13, -6344.92, 38.1929, 0);
DELETE FROM `spell_target_position` WHERE `ID`=81180 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (81180, 0, 0, -4045.37, -6338.04, 38.1735, 0);
DELETE FROM `spell_target_position` WHERE `ID`=81153 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (81153, 0, 0, -4048.88, -6322.41, 38.1725, 0);
DELETE FROM `spell_target_position` WHERE `ID`=80859 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (80859, 0, 0, -4114.06, -6411.84, 37.6912, 0);
DELETE FROM `spell_target_position` WHERE `ID`=80858 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (80858, 0, 0, -4111.01, -6420.38, 37.7048, 0);
DELETE FROM `spell_target_position` WHERE `ID`=80842 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (80842, 0, 0, -4113.63, -6416.39, 37.7048, 0);

DELETE FROM `creature_text` where `CreatureID` = 43939;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(43939, 0, 0, 'Mor\'ghor! You should\'ve stayed in Outland with the rest of your half-demon scum. There\'s no place for you here.', 12, 0, 100, 5, 0, 21599, 44281, 'Zaela');
