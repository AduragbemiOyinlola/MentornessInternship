-- Q8. Find minimum values for confirmed, deaths, recovered per year
SELECT EXTRACT(YEAR FROM date) AS "Year", MIN(confirmed),
    MIN(deaths), MIN(recovered)
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date);