-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

-- Input Format

-- The STATION table is described as follows:

-- FIELD        TYPE
-- ID           NUMBER
-- CITY         VARCHAR2(21)
-- STATE        VARCHAR2(2)
-- LAT_N        NUMBER
-- LAT_W        NUMBER


-- where LAT_N is the northern latitude and LONG_W is the western longitude.


SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1;


-- Your Output (stdout) / Expected Outcome
-- 117.2465