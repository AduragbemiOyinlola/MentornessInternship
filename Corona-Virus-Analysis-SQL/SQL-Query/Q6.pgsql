-- Q6. Find monthly average for confirmed, deaths, recovered
SELECT TO_CHAR(date, 'Month') AS "Month", ROUND(AVG(confirmed)) AS "ConfirmedCases/Month",
    ROUND(AVG(deaths)) AS "Deaths/Month", ROUND(AVG(recovered)) AS "Recovery/Month"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);