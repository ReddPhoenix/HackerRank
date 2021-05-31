-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

-- The CITY table is described as follows:

-- FIELD        TYPE
-- ID           NUMBER
-- NAME         VARCHAR2(17)
-- COUNTRYCODE  VARCHAR2(3)
-- DISTRICT     VARCHAR2(20)
-- POPULATION   NUMBER

SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

Your Output (stdout)
1613 Neyagawa JPN Osaka 257315
1630 Ageo JPN Saitama 209442
1661 Sayama JPN Saitama 162472
1681 Omuta JPN Fukuoka 142889
1739 Tokuyama JPN Yamaguchi 107078


Expected Output
1613 Neyagawa JPN Osaka 257315 
1630 Ageo JPN Saitama 209442 
1661 Sayama JPN Saitama 162472 
1681 Omuta JPN Fukuoka 142889 
1739 Tokuyama JPN Yamaguchi 107078 