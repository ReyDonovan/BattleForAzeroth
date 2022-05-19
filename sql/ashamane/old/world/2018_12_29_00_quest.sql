UPDATE `creature_template` SET `AIName` = '' , `ScriptName` = 'npc_riding_macaw_patrol' WHERE `entry` = 143096; 

DELETE FROM `spell_area` WHERE `spell` = 279049 AND `area` IN (9011, 9078, 9362) AND `quest_start` = 49403 AND `aura_spell` = 0 AND `teamId` = -1 AND `racemask` = 0 AND `gender` = 2; 

INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(279049, 9011, 49403, 49403, 2, 11, 64),
(279049, 9078, 49403, 49403, 2, 11, 64),
(279049, 9362, 49403, 49403, 2, 11, 64);
