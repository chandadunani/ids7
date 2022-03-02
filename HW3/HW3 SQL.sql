SELECT * FROM ids7db.LIFE_EXPECTANCY;
set sql_safe_updates=0;
delete from ids7db.LIFE_EXPECTANCY where
`Year`= 0 OR 
	Life_Expectancy = 0 OR
    Adult_Mortality = 0 OR 
    Total_Expenditure = 0 OR
    GDP = 0 OR
Population=0;
SELECT COUNT(*) FROM  ids7db.LIFE_EXPECTANCY;
SELECT * FROM (
	SELECT country,dataset.Year,dataset.Life_Expectancy,'Min' AS VAL  FROM ids7db.LIFE_EXPECTANCY JOIN 
	(SELECT year,min(Life_Expectancy) AS Life_Expectancy  FROM ids7db.LIFE_EXPECTANCY GROUP BY year) AS tbl 
	ON dataset.year =tbl.year AND tbl.Life_Expectancy=dataset.Life_Expectancy 
UNION ALL
	SELECT country,dataset.Year,dataset.Life_Expectancy,'Max' AS VAL FROM dataset JOIN 
	(SELECT year,Max(Life_Expectancy) AS Life_Expectancy  FROM dataset GROUP BY YEAR) AS tbl 
	ON dataset.year =tbl.year and tbl.Life_Expectancy=dataset.Life_Expectancy) AS tblall ORDER BY Year;
    SELECT * FROM(
	SELECT country,dataset.Year,dataset.Population,'Min' AS VAL  FROM dataset JOIN 
	(SELECT year,min(Population) AS Population  FROM dataset GROUP BY year) AS tbl 
	ON dataset.year =tbl.year AND tbl.Population=dataset.Population 
UNION ALL
	SELECT country,dataset.Year,dataset.Population,'Max' AS VAL FROM dataset JOIN 
	(SELECT year,Max(Population) AS Population  FROM dataset GROUP BY YEAR) AS tbl 
	ON dataset.year =tbl.year and tbl.Population=dataset.Population) AS tblall ORDER BY Year;
    
    

SELECT * FROM(
	SELECT country,dataset.Year,dataset.GDP,'Min' AS VAL  FROM dataset JOIN 
	(SELECT year,min(GDP) AS GDP  FROM dataset GROUP BY year) AS tbl 
	ON dataset.year =tbl.year AND tbl.GDP=dataset.GDP 
UNION ALL
	SELECT country,dataset.Year,dataset.GDP,'Max' AS VAL FROM dataset JOIN 
	(SELECT year,Max(GDP) AS GDP  FROM dataset GROUP BY YEAR) AS tbl 
	ON dataset.year =tbl.year and tbl.GDP=dataset.GDP) AS tblall ORDER BY Year;

#List of countries with the highest and lowest average Schooling  (years 2010-2015)
SELECT * FROM(
	SELECT country,dataset.Year,dataset.Schooling,'Min' AS VAL  FROM dataset JOIN 
	(SELECT year,min(Schooling) AS Schooling  FROM dataset GROUP BY year) AS tbl 
	ON dataset.year =tbl.year AND tbl.Schooling=dataset.Schooling 
UNION ALL
	SELECT country,dataset.Year,dataset.Schooling,'Max' AS VAL FROM dataset JOIN 
	(SELECT year,Max(Schooling) AS Schooling  FROM dataset GROUP BY YEAR) AS tbl 
	ON dataset.year =tbl.year and tbl.Schooling=dataset.Schooling) AS tblall ORDER BY Year;
    
#Which countries have the highest and lowest average Alcohol consumption (years 2010-2015)
SELECT * FROM(
	SELECT country,dataset.Year,dataset.Alcohol,'Min' AS VAL  FROM dataset JOIN 
	(SELECT year,min(Alcohol) AS Alcohol  FROM dataset GROUP BY year) AS tbl 
	ON dataset.year =tbl.year AND tbl.Alcohol=dataset.Alcohol 
UNION ALL
	SELECT country,dataset.Year,dataset.Alcohol,'Max' AS VAL FROM dataset JOIN 
	(SELECT year,Max(Alcohol) AS Alcohol  FROM dataset GROUP BY YEAR) AS tbl 
	ON dataset.year =tbl.year and tbl.Alcohol=dataset.Alcohol) AS tblall ORDER BY Year;
    
#Do densely populated countries tend to have lower life expectancy?
SELECT Country, Population , Life_Expectancy FROM ids7.LIFE_EXPECTANCY GROUP BY Country ORDER BY Population DESC;
#not much relation is seen b/w the two variables.
 
