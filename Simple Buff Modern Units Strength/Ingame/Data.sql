-- Do not encode UTF-8 BOM



-- Infantry, Mechanized Infantry, AT Crew, Modern AT, Spec Ops, Destroyer, Battleship, Aircraft Carrier

UPDATE Units SET Combat = Combat + 5 WHERE UnitType IN
('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_AT_CREW', 'UNIT_MODERN_AT', 'UNIT_SPEC_OPS', 'UNIT_DESTROYER', 'UNIT_BATTLESHIP', 'UNIT_AIRCRAFT_CARRIER');

UPDATE Units SET Combat = Combat + 5 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_INFANTRY', 'UNIT_MECHANIZED_INFANTRY', 'UNIT_AT_CREW', 'UNIT_MODERN_AT', 'UNIT_SPEC_OPS', 'UNIT_DESTROYER', 'UNIT_BATTLESHIP', 'UNIT_AIRCRAFT_CARRIER') );



-- Helicopter

UPDATE Units SET Combat = Combat + 6 WHERE UnitType IN
('UNIT_HELICOPTER');

UPDATE Units SET Combat = Combat + 6 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_HELICOPTER') );



-- Spec Ops, Battleship

UPDATE Units SET RangedCombat = RangedCombat + 5 WHERE UnitType IN
('UNIT_SPEC_OPS', 'UNIT_BATTLESHIP');

UPDATE Units SET RangedCombat = RangedCombat + 5 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_SPEC_OPS', 'UNIT_BATTLESHIP') );



-- Anti-air Gun, Mobile SAM

UPDATE Units SET AntiAirCombat = AntiAirCombat + 10 WHERE UnitType IN
('UNIT_ANTIAIR_GUN', 'UNIT_MOBILE_SAM');

UPDATE Units SET AntiAirCombat = AntiAirCombat + 10 WHERE UnitType IN
( SELECT CivUniqueUnitType FROM UnitReplaces WHERE ReplacesUnitType IN ('UNIT_ANTIAIR_GUN', 'UNIT_MOBILE_SAM') );