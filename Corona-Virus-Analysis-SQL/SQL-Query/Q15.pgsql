-- Q15. Find Country having lowest number of the death case
SELECT countryregion, MIN(deaths) AS "MinDeath"
FROM corona_data
GROUP BY countryregion, deaths
ORDER BY deaths
LIMIT 1;