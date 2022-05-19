DELETE FROM `spell_area` WHERE `spell` = 256934 AND `area` = 9375 AND `quest_start` = 49435 AND `aura_spell` = 0 AND `teamId` = -1 AND `racemask` = 0 AND `gender` = 2; 
DELETE FROM `spell_area` WHERE `spell` = 256934 AND `area` = 9338 AND `quest_start` = 49435 AND `aura_spell` = 0 AND `teamId` = -1 AND `racemask` = 0 AND `gender` = 2; 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
(256934, 9375, 49435, 49435, 10, 65); 
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
(256934, 9338, 49435, 49435, 10, 65); 

-- DIFF `creature_questender` of quest 49435
DELETE FROM `creature_questender` WHERE (quest = 49435) AND (id IN (129655));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(129655, 49435);
