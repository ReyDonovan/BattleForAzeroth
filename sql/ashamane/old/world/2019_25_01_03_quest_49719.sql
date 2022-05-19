-- DIFF `creature_queststarter` of quest 49719
DELETE FROM `creature_queststarter` WHERE (quest = 49719) AND (id IN (129655));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(129655, 49719);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceGroup` = 0 AND `SourceEntry` = 49719 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 8 AND `ConditionTarget` = 0 AND `ConditionValue1` = 49439 AND `ConditionValue2` = 0 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) 
VALUES (19, 49719, 8, 49439);
