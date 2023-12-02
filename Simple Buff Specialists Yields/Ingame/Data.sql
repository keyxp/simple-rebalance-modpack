-- Do not encode UTF-8 BOM



-- Scientist

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_SCIENCE' AND DistrictType IN
('DISTRICT_CAMPUS');

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_SCIENCE' AND DistrictType IN
( SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_CAMPUS') );



-- Priest

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_FAITH' AND DistrictType IN
('DISTRICT_HOLY_SITE');

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_FAITH' AND DistrictType IN
( SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_HOLY_SITE') );



-- Artist

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_CULTURE' AND DistrictType IN
('DISTRICT_THEATER');

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_CULTURE' AND DistrictType IN
( SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_THEATER') );



-- Commander, Engineer

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_PRODUCTION' AND DistrictType IN
('DISTRICT_ENCAMPMENT', 'DISTRICT_INDUSTRIAL_ZONE');

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 1 WHERE YieldType = 'YIELD_PRODUCTION' AND DistrictType IN
( SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_ENCAMPMENT', 'DISTRICT_INDUSTRIAL_ZONE') );



-- Captain, Merchant

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 2 WHERE YieldType = 'YIELD_GOLD' AND DistrictType IN
('DISTRICT_HARBOR', 'DISTRICT_COMMERCIAL_HUB');

UPDATE District_CitizenYieldChanges SET YieldChange = YieldChange + 2 WHERE YieldType = 'YIELD_GOLD' AND DistrictType IN
( SELECT CivUniqueDistrictType FROM DistrictReplaces WHERE ReplacesDistrictType IN ('DISTRICT_HARBOR', 'DISTRICT_COMMERCIAL_HUB') );