-- Do not encode UTF-8 BOM



-- Infantry, Submarine

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
('UNIT_INFANTRY', 'UNIT_SUBMARINE');

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY', 'UNIT_SUBMARINE') );

DELETE FROM Units_XP2 WHERE UnitType IN
('UNIT_INFANTRY', 'UNIT_SUBMARINE');

DELETE FROM Units_XP2 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY', 'UNIT_SUBMARINE') );