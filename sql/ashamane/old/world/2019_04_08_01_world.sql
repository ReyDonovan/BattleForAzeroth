DELETE FROM `areatrigger_template` WHERE `Id` IN (100107);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(100107, 0, 4, 10, 10, 0, 0, 0, 0, 'at_into_the_fray', 0);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5839);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5839, 100107, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM spell_proc WHERE SpellId IN (275334);
INSERT INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES 
(275334, 0, 4, 0, 512, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0);
