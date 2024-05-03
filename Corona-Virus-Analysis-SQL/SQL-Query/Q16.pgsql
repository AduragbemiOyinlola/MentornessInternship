-- Q16. Find top 5 countries having highest recovered case
SELECT countryregion, MAX(TotalRecovered) AS "MaxRecovered"
FROM (
    SELECT countryregion, SUM(recovered) AS TotalRecovered
    FROM corona_data
    GROUP BY countryregion
    ) AS DeathPerCountry
GROUP BY countryregion
ORDER BY "MaxRecovered" DESC
LIMIT 5;