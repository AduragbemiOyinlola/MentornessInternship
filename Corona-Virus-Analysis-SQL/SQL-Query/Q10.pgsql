-- Q10. The total number of case of confirmed, deaths, recovered each month
SELECT TO_CHAR(date, 'Month') AS "Month", SUM(confirmed) AS "TotalConfirmedCases/Month",
    SUM(deaths) AS "TotalDeaths/Month", SUM(recovered) AS "TotalRecovery/Month"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);