-- Q16. Find top 5 countries having highest recovered case
SELECT countryregion, recovered
FROM corona_data
ORDER BY recovered DESC
LIMIT 5;