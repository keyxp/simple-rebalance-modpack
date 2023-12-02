-- Do not encode UTF-8 BOM



-- Ancient Walls, Medieval Walls, Renaissance Walls

UPDATE Buildings SET OuterDefenseHitPoints = OuterDefenseHitPoints / 2 WHERE BuildingType IN
('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

UPDATE Buildings SET OuterDefenseHitPoints = OuterDefenseHitPoints / 2 WHERE BuildingType IN
( SELECT CivUniqueBuildingType FROM BuildingReplaces WHERE ReplacesBuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT') );



-- Steel

UPDATE ModifierArguments SET Value = Value / 2 WHERE Name = 'DefenseValue' AND ModifierId IN
('STEEL_UNLOCK_URBAN_DEFENSES');