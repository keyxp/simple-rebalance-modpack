-- Do not encode UTF-8 BOM



-- Infantry

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
('UNIT_INFANTRY');

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY') );

DELETE FROM Units_XP2 WHERE UnitType IN
('UNIT_INFANTRY');

DELETE FROM Units_XP2 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY') );