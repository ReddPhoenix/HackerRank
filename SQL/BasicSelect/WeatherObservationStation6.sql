-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:


-- -- FIELD        TYPE
-- -- ID           NUMBER
-- -- CITY         VARCHAR2(21)
-- -- STATE        VARCHAR2(2)
-- -- LAT_N        NUMBER
-- -- LAT_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.


SELECT CITY FROM STATION WHERE CITY LIKE 'a%' 
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%' 
    OR CITY LIKE 'u%'; 


-- Your Output (stdout) / Expected Output
-- Arlington
-- Albany
-- Upperco
-- Aguanga
-- Odin
-- East China
-- Algonac
-- Onaway
-- Irvington
-- Arrowsmith
-- Udall
-- Oakfield
-- Elkton
-- East Irvine
-- Amo
-- Alanson
-- Eleele
-- Auburn
-- Oconee
-- Amazonia
-- Aliso Viejo
-- Andersonville
-- Eros
-- Arkadelphia
-- Eriline
-- Edgewater
-- East Haddam
-- Eastlake
-- Addison
-- Everton
-- Eustis
-- Arispe
-- Union Star
-- Ottertail
-- Ermine
-- Albion
-- Athens
-- Eufaula
-- Osage City
-- Andover
-- Osborne
-- Elm Grove
-- Atlantic Mine
-- Oshtemo
-- Archie
-- Olmitz
-- Allerton
-- Equality
-- Alpine
-- Ojai
-- Orange Park
-- Urbana
-- Ukiah
-- Alba
-- Esmond
-- Eureka Springs
-- Eskridge
-- Ozona
-- Orange City
-- Effingham
-- Alton
-- Agency
-- Anthony
-- Emmett
-- Acme