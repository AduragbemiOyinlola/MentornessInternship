-- Q16. Find top 5 countries having highest recovered case
SELECT countryregion, MAX(recovered) AS highest_recovered
FROM corona_data
GROUP BY countryregion
ORDER BY highest_recovered DESC
LIMIT 5;
