-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- FIELD        TYPE
-- ID           NUMBER
-- CITY         VARCHAR2(21)
-- STATE        VARCHAR2(2)
-- LAT_N        NUMBER
-- LAT_W        NUMBER


-- where LAT_N is the northern latitude and LONG_W is the western longitude.


SELECT DISTINCT CITY FROM STATION WHERE (NOT(CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%')) AND (NOT(CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'));


-- Your Output (stdout) / Expected Output
-- Kissee Mills
-- Loma Mar
-- Sandy Hook
-- Tipton
-- Turner
-- Slidell
-- Negreet
-- Chignik Lagoon
-- Hanna City
-- Monument
-- Manchester
-- Prescott
-- Graettinger
-- Sturgis
-- Highwood
-- Bowdon
-- Tyler
-- Watkins
-- Republic
-- Bowdon Junction
-- Hoskinston
-- Talbert
-- Mccomb
-- Kirk
-- Carlock
-- Seward
-- Roy
-- Pattonsburg
-- Centertown
-- Norvell
-- Beaver Island
-- Jemison
-- West Hills
-- Culdesac
-- Roselawn
-- Forest Lakes
-- San Simeon
-- Little Rock
-- Portland
-- New Century
-- Hampden
-- Pine City
-- Sandborn