-- Do not encode UTF-8 BOM



-- Artillery

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
('UNIT_ARTILLERY');

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_ARTILLERY') );

DELETE FROM Units_XP2 WHERE UnitType IN
('UNIT_ARTILLERY');

DELETE FROM Units_XP2 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_ARTILLERY') );