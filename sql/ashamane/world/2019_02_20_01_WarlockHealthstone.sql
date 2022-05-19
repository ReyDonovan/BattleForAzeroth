DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=34130 AND `spell_effect`=23517 AND `type`=0;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (34130, 23517, 0, 'Create Healthstone');

DELETE FROM `spell_script_names` where `spell_id` = 6262;
-- todo fix the spell_script if the glyph still exists
-- INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (6262, 'spell_warlock_healthstone_heal');
