-- Q14. Find Country having highest number of the Confirmed case
SELECT countryregion, MAX(confirmed) AS "MaxConfirmedCases"
FROM corona_data
GROUP BY countryregion, confirmed
ORDER BY confirmed DESC
LIMIT 1;