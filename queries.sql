-- =============================================================================
USE Population_Diversity;
-- =============================================================================
-- 1. Life Expectancy
--    Which Countries have the highest life expenctancy?
SELECT 
Country, 
max(LifeExpectancy) AS Expectancy
FROM country
GROUP BY Country
HAVING Expectancy > 70
LIMIT 10; 

--    Which Countries have the lowest life expenctancy?
SELECT 
Country, 
min(LifeExpectancy) AS Expectancy
FROM country
GROUP BY Country
HAVING Expectancy < 45
LIMIT 10; 
-- =============================================================================
 -- 2 Language
 --    Which languages are the most spoken in the world?
  
SELECT 
l.Language, 
COUNT(c.Country) AS Most_spoken
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

-- Countries with high GNP but low life expectancy?

SELECT 
	Country, 
	GNP, 
	LifeExpectancy 
FROM country
WHERE GNP > 0
ORDER BY 
	GNP DESC, 
	LifeExpectancy  ASC
LIMIT 10
;
 --  Do densely populated countries have lower life expectancy?

SELECT Country, round(Population /Surfacearea, 2) AS Density, LifeExpectancy 
FROM country
ORDER BY Density DESC
;

-- How much wealth per unit area?
SELECT 
    Country,
   round(GNP / SurfaceArea, 2) AS GNP_Density
FROM country
WHERE SurfaceArea > 0
ORDER BY GNP_Density DESC
LIMIT 10
;