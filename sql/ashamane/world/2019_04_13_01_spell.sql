DELETE FROM `spell_script_names` WHERE `spell_id` IN (270061, 1833, 207777);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(270061, 'spell_rog_hidden_blades'),
(1833, 'spell_rog_cheap_shot'),
(207777, 'spell_rog_dismantle');


UPDATE `areatrigger_template` SET `ScriptName` = 'at_rog_poison_bomb' WHERE `Id` = 16552;
