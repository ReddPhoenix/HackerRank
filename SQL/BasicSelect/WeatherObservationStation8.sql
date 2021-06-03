-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- -- -- FIELD        TYPE
-- -- -- ID           NUMBER
-- -- -- CITY         VARCHAR2(21)
-- -- -- STATE        VARCHAR2(2)
-- -- -- LAT_N        NUMBER
-- -- -- LAT_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.


SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE '%a' 
    OR CITY LIKE '%e' 
    OR CITY LIKE '%i' 
    OR CITY LIKE '%o' 
    OR CITY LIKE '%u')
    AND
    (CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%' 
    OR CITY LIKE 'u%'); 


-- Your Output (stdout) / Expected Output
-- Upperco
-- Aguanga
-- East China
-- East Irvine
-- Amo
-- Eleele
-- Oconee
-- Amazonia
-- Aliso Viejo
-- Andersonville
-- Arkadelphia
-- Eriline
-- Eastlake
-- Arispe
-- Ermine
-- Eufaula
-- Osborne
-- Elm Grove
-- Atlantic Mine
-- Oshtemo
-- Archie
-- Alpine
-- Ojai
-- Urbana
-- Alba
-- Eskridge
-- Ozona
-- -- Acme