DELETE FROM spell_proc WHERE SpellId IN (262231, 262304);
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES 
(262231, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(262304, 1, 4, 570425344, 16384, 0, 2048, 16, 1, 2, 0, 0, 0, 100, 0, 0);

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_warr_sudden_death';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (29725, 268243, 845, 32215, 1680, 262161);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(29725, 'spell_warr_sudden_death'),
(268243, 'spell_warr_collateral_damage'),
(845, 'spell_warr_cleave'),
(32215, 'spell_warr_victorious_state'),
(1680, 'spell_warr_wirlwind_dmg'),
(262161, 'spell_warr_warbreaker');
