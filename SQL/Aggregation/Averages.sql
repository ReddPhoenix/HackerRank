-- Query the average population of all cities in CITY where District is California.

-- Input Format

-- The CITY table is described as follows: 

--      Field       |       Type
--------------------------------------
--        ID        |      NUMBER
--       NAME       |     VARCHAR2(17)
--    COUNTRYCODE   |     VARCHAR2(3)
--      DISTRICT    |     VARCHAR2(20)
--     POPULATION   |      NUMBER


SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = 'California';


-- Your Output (stdout)
-- 113000.667


-- Expected Output

-- 113000.667