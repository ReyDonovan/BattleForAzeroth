-- DIFF `creature_queststarter` of quest 49439
DELETE FROM `creature_queststarter` WHERE (quest = 49439) AND (id IN (129655));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(129655, 49439);

-- DIFF `creature_questender` of quest 49439
DELETE FROM `creature_questender` WHERE (quest = 49439) AND (id IN (129655));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(129655, 49439);