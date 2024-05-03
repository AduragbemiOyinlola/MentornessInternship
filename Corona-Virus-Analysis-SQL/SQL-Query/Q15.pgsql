-- Q15. Find Country having lowest number of the death case
SELECT countryregion, MIN(TotalDeaths) AS "MinDeath"
FROM (
    SELECT countryregion, SUM(deaths) AS TotalDeaths
    FROM corona_data
    GROUP BY countryregion
    ) AS DeathPerCountry
GROUP BY countryregion
ORDER BY "MinDeath"
LIMIT 4;