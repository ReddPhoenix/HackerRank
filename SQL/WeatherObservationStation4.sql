-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

-- FIELD        TYPE
-- ID           NUMBER
-- CITY         VARCHAR2(21)
-- STATE        VARCHAR2(2)
-- LAT_N        NUMBER
-- LAT_W        NUMBER


-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because .


SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;


-- Your output
-- 13

-- Expected Output
-- 13