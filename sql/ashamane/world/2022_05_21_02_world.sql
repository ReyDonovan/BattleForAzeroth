UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_tanaan_arena_helper';
DELETE FROM `creature_template_sparring` WHERE `Entry` IN(80804,79135,78996,78554,78430,79675,78569,85145,85146,80803);
INSERT INTO `creature_template_sparring` (`Entry`, `NoNPCDamageBelowHealthPct`) VALUES
(80804, 100),
(79135, 100),
(78996, 100),
(78554, 100),
(78430, 100),
(79675, 100),
(78569, 100),
(85145, 100),
(85146, 100),
(80803, 100);

UPDATE `creature_template` SET `DamageModifier`=3 WHERE `entry` IN (80804,79135,78996,78554,78430,79675,78569,85145,85146,80803);
