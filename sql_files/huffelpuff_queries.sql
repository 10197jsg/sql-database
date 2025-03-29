USE hufflepuff;

/* Data Normalization Steps:
	- One table has country as the primary key, ensuring that each country appears only once.
	- Another table has year as the primary key, ensuring that each year appears only once.
		(These tables will serve as reference tables to maintain data integrity and avoid redundancy when linking other datasets that contain country and year information.)
	- Join Country Table with happiness Table.
    - Join Year Table with happiness Table.
    - Join Country Table with global_energy_consumption.
    - Join Year Table with global_energy_consumption.
    
   Data Wrangling:
	- AVG (mean)
    - Round
    - Inner Join
    - Group By
    - Order BY

*/

CREATE VIEW happiness_energy_view AS
SELECT 
    h.country,
    h.year,
    round(h.happiness_score, 2) as happiness_score,
	round(h.gdp, 2) as gdp, 
    round(h.trust_in_government, 2) as trust_in_government,
    gec.total_energy_consumption,
    gec.per_capita_energy_use,
    gec.renewable_energy_share,
    gec.fossil_fuel_dependency,
    gec.industrial_energy_use,
    gec.household_energy_use,
    gec.carbon_emissions,
    gec.energy_price_index
FROM happiness AS h
INNER JOIN country AS c ON h.country = c.country
inner JOIN (
    SELECT 
        gec.country,
        gec.year,
        ROUND(AVG(gec.total_energy_consumption), 2) AS total_energy_consumption,
        ROUND(AVG(gec.per_capita_energy_use), 2) AS per_capita_energy_use,
        ROUND(AVG(gec.renewable_energy_share), 2) AS renewable_energy_share,
        ROUND(AVG(gec.fossil_fuel_dependency), 2) AS fossil_fuel_dependency,
        ROUND(AVG(gec.industrial_energy_use), 2) AS industrial_energy_use,
        ROUND(AVG(gec.household_energy_use), 2) AS household_energy_use,
        ROUND(AVG(gec.carbon_emissions), 2) AS carbon_emissions,
        ROUND(AVG(gec.energy_price_index), 2) AS energy_price_index
    FROM global_energy_consumption AS gec
    INNER JOIN country AS c ON gec.country = c.country
    GROUP BY gec.country, gec.year
) AS gec 
ON h.country = gec.country AND h.year = gec.year;

SELECT * 
FROM happiness_energy_view 
order by country
;






