DELETE FROM `battleground_template` WHERE `ID`=708;
INSERT INTO `battleground_template` (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (708, 8, 10, 110, 120, 4062, 4061, 15, 12, '', 'SilverShard Mines');
DELETE FROM `battleground_template` WHERE `ID`=699;
INSERT INTO `battleground_template` (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (699, 5, 10, 110, 120, 4059, 4060, 20, 8, '', 'Kotmogu\'s temple');

update `battleground_template` set `MaxLvl` = 120 where `MaxLvl` = 110;
