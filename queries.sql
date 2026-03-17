-- =============================================================================
USE Population_Diversity;
-- =============================================================================
-- 1. Life Expectancy
--    Which Countries have the highest life expenctancy?
SELECT Country, max(LifeExpectancy) AS Expectancy
FROM country
GROUP BY Country
HAVING Expectancy > 70
LIMIT 10; 

--    Which Countries have the lowest life expenctancy?
SELECT Country, min(LifeExpectancy) AS Expectancy
FROM country
GROUP BY Country
HAVING Expectancy < 45
LIMIT 10; 
-- =============================================================================
 -- 2 Language
 --    Which languages are the most spoken in the world?
  
SELECT l.Language, COUNT(c.Country) AS Most_spoken
FROM country AS c
LEFT JOIN country_language AS l
ON c.CountryCode = l.CountryCode
GROUP BY l.language
ORDER BY Most_spoken DESC
LIMIT 10
;
-- =============================================================================
 -- 3 Population 
 --    Which are the most populated cities in the world?
  
SELECT City,Max(Population) AS Most_Populated
FROM city AS c
GROUP BY City
ORDER BY Most_Populated DESC
LIMIT 10
;

-- -- =============================================================================
 -- 4 Density
 --    Which are the most populated countries in the world?
SELECT 
    country,
    SUM(population) / SUM(surfacearea) AS density
FROM country
GROUP BY country
ORDER BY density DESC
LIMIT 10;
  --    Which are the least populated countries in the world?
  SELECT 
    country,
    SUM(population) / SUM(surfacearea) AS density
FROM country
GROUP BY country
ORDER BY density ASC
LIMIT 10;


