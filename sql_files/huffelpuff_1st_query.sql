USE hufflepuff;
drop table global_energy_consumption;
SELECT * FROM global_energy_consumption;
CREATE TABLE country (
  country varchar(50) PRIMARY KEY
);
-- DROP TABLE country;

CREATE TABLE year (
  year int PRIMARY KEY
);

SELECT COUNT(*) FROM country;
INSERT INTO country (country)
VALUES	
        ("Brazil"),
		("UK"),
		("India"),
		("Australia"),
		("China"),
		("USA"),
		("Japan");
        
SELECT * FROM year;
INSERT INTO year (year)
VALUES	
        (2015),
		(2016),
		(2017),
		(2018),
		(2019);		
        

SELECT 
    h.country, 
    h.year, 
    h.happiness_score
FROM happiness h
	JOIN global_energy_consumption g 
    ON g.country = h.country
GROUP BY (SELECT * c.country FROM country c)
ORDER BY h.year DESC;

SELECT
    h.country,
    h.year,
    h.happiness_score
FROM happiness h
JOIN global_energy_consumption g
    ON g.country = h.country AND g.year = h.year
WHERE h.country IN (SELECT c.country FROM country c)  -- Ensure the country exists
ORDER BY h.year DESC;



