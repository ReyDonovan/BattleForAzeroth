DELETE FROM `spell_script_names` WHERE `spell_id` IN (774,102342,155777,18562);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (774, 'spell_dru_rejuvenation');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (102342, 'spell_dru_ironbark');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (155777, 'spell_dru_germination');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (18562, 'spell_dru_swiftmend');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (274281,274282,274283,8936);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274281, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274282, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (274283, 'spell_dru_newmoon');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (8936, 'spell_dru_regrowth');

DELETE FROM `script_waypoint` WHERE `entry`=50047;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (50047, 1, -8810.75, -129.905, 83.0924, 0, NULL);
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (50047, 2, -8813.75, -132.655, 82.3424, 0, NULL);
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (50047, 3, -8817, -135.905, 81.8424, 0, NULL);
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (50047, 4, -8820.75, -139.405, 81.3424, 0, NULL);
