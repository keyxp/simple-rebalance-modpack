-- Do not encode UTF-8 BOM



-- Infantry, Mechanized Infantry, Submarine

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_SUBMARINE');

UPDATE Units SET StrategicResource = NULL WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_SUBMARINE') );

DELETE FROM Units_XP2 WHERE UnitType IN
('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_SUBMARINE');

DELETE FROM Units_XP2 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_SUBMARINE') );



-- Helicopter

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType IN
('UNIT_HELICOPTER');

UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_HELICOPTER') );

UPDATE Units_XP2 SET ResourceMaintenanceType = 'RESOURCE_OIL' WHERE UnitType IN
('UNIT_HELICOPTER');

UPDATE Units_XP2 SET ResourceMaintenanceType = 'RESOURCE_OIL' WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_HELICOPTER') );