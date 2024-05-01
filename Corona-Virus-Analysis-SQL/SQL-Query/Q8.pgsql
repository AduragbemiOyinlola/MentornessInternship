-- Q8. Find minimum values for confirmed, deaths, recovered per year
SELECT EXTRACT(YEAR FROM date) AS "Year", MIN(confirmed) AS "MinConfirmedCases/Year",
    MIN(deaths) AS "MinDeaths/Year", MIN(recovered) AS "MinRecovery/Year"
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date);