-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

-- FIELD        TYPE
-- ID           NUMBER
-- CITY         VARCHAR2(21)
-- STATE        VARCHAR2(2)
-- LAT_N        NUMBER
-- LAT_W        NUMBER


-- where LAT_N is the northern latitude and LONG_W is the western longitude.


SET @N := 0;

SELECT COUNT(*) FROM STATION INTO @TOTAL;

SELECT ROUND(AVG(A.LAT_N), 4) FROM (SELECT @N := @N +1 AS ROW_ID, LAT_N FROM STATION ORDER BY LAT_N) A WHERE CASE WHEN MOD(@TOTAL, 2) = 0 THEN A.ROW_ID IN (@TOTAL/2, (@TOTAL/2+1)) ELSE A.ROW_ID = (@TOTAL+1)/2 END


-- Expected Output

-- 83.8913