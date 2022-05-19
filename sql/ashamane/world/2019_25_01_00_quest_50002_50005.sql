DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceGroup` = 0 AND `SourceEntry` = 50005 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 8 AND `ConditionTarget` = 0 AND `ConditionValue1` = 50002 AND `ConditionValue2` = 0 AND `ConditionValue3` = 0; 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES (19, 50005, 8, 50002); 

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_penny_hardwick' WHERE `entry` = 131684;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_penny_hardwick_escort' WHERE `entry` = 131748;

DELETE FROM `script_waypoint` WHERE `entry` = 131748;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES
(131748, 1, 557.085754, 902.310303, 7.354537, 'Penny "Precious" Hardwick'),
(131748, 2, 556.651245, 906.180725, 7.315855, 'Penny "Precious" Hardwick'),
(131748, 3, 579.040771, 917.341675, 1.040693, 'Penny "Precious" Hardwick'),
(131748, 4, 575.966187, 933.958801, 0.525434, 'Penny "Precious" Hardwick'),
(131748, 5, 584.999268, 970.679932, 0.322164, 'Penny "Precious" Hardwick'),
(131748, 6, 582.425781, 982.584351, 0.412421, 'Penny "Precious" Hardwick'),
(131748, 7, 573.053711, 990.073914, 0.202138, 'Penny "Precious" Hardwick'),
(131748, 8, 560.558105, 992.053223, 0.380609, 'Penny "Precious" Hardwick'),
(131748, 9, 555.402832, 995.645996, 0.337219, 'Penny "Precious" Hardwick'),
(131748, 10, 548.142883, 1003.186096, 0.815342, 'Penny "Precious" Hardwick'),
(131748, 11, 547.742371, 1009.893738, 0.262807, 'Penny "Precious" Hardwick'),
(131748, 12, 554.701660, 1026.545410, 0.015973, 'Penny "Precious" Hardwick'),
(131748, 13, 570.736389, 1028.831177, 0.026675, 'Penny "Precious" Hardwick'),
(131748, 14, 584.881042, 1044.150513, 0.101361, 'Penny "Precious" Hardwick'),
(131748, 15, 585.592102, 1056.728271, 0.125497, 'Penny "Precious" Hardwick'),
(131748, 16, 588.966553, 1078.637085, 0.638870, 'Penny "Precious" Hardwick'),
(131748, 17, 581.289062, 1110.343140, 0.686631, 'Penny "Precious" Hardwick'),
(131748, 18, 570.738586, 1121.019775, 0.643258, 'Penny "Precious" Hardwick'),
(131748, 19, 567.943604, 1137.847778, 0.525244, 'Penny "Precious" Hardwick'),
(131748, 20, 571.817078, 1152.535156, 0.661618, 'Penny "Precious" Hardwick'),
(131748, 21, 597.535034, 1184.371826, 0.651175, 'Penny "Precious" Hardwick'),
(131748, 22, 602.963745, 1187.017090, 1.265296, 'Penny "Precious" Hardwick'),
(131748, 23, 577.267822, 1170.516357, 0.236899, 'Penny "Precious" Hardwick'),
(131748, 24, 554.198547, 1178.150024, 0.590670, 'Penny "Precious" Hardwick'),
(131748, 25, 550.636414, 1182.101196, 0.807841, 'Penny "Precious" Hardwick'),
(131748, 26, 534.210327, 1194.254517, 1.474515, 'Penny "Precious" Hardwick'),
(131748, 27, 510.047394, 1220.673828, 0.664014, 'Penny "Precious" Hardwick'),
(131748, 28, 502.738770, 1251.956421, 0.681288, 'Penny "Precious" Hardwick'),
(131748, 29, 495.066376, 1256.810669, 1.252678, 'Penny "Precious" Hardwick'),
(131748, 30, 477.914459, 1255.158813, 0.786777, 'Penny "Precious" Hardwick'),
(131748, 31, 470.571014, 1256.579956, 0.785722, 'Penny "Precious" Hardwick');
