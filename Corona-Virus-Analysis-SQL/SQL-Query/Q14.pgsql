-- Q14. Find Country having highest number of the Confirmed case
SELECT countryregion, MAX(TotalConfirmed) AS "MaxConfirmedCases"
FROM (
    SELECT countryregion, SUM(confirmed) AS TotalConfirmed
    FROM corona_data
    GROUP BY countryregion
    ) AS DeathPerCountry
GROUP BY countryregion
ORDER BY "MaxConfirmedCases" DESC
LIMIT 1;