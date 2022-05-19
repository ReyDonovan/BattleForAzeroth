DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16013 AND `ActionType`=1 AND `ActionParam`=250036;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES (16013, 1, 250036, 2);

update `creature_template` set `unit_flags` = 33555200 where entry = 125868;
DELETE FROM `creature_template_addon` WHERE `entry`=125868;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES (125868, 0, 0, 0, 0, 0, 0, 0, 0, '250013');

-- script names
update `creature_template` set `ScriptName` = 'boss_ataldazar_yazma' where `entry` = 122968;
update `creature_template` set `ScriptName` = 'npc_ataldazar_soulspawn' where `entry` = 125828;
update `creature_template` set `ScriptName` = 'npc_ataldazar_echo_of_shadra' where `entry` = 125868;

update `creature_template` set `ScriptName` = 'boss_ataldazar_rezan' where `entry` = 122963;
update `areatrigger_template` set `ScriptName` = 'areatrigger_ancient_bones' where `Id` = 16644;
