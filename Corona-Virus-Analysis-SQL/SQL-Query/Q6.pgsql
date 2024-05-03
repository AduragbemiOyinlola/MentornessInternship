-- Q6. Find monthly average for confirmed, deaths, recovered
SELECT 
    EXTRACT(YEAR FROM date) AS "Year", TO_CHAR(date, 'Month') AS "Month", 
    ROUND(AVG(confirmed), 2) AS "ConfirmedCases/Month",
    ROUND(AVG(deaths), 2) AS "Deaths/Month", 
    ROUND(AVG(recovered), 2) AS "Recovery/Month"
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date), TO_CHAR(date, 'Month'), 
    EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(YEAR FROM date), EXTRACT(MONTH FROM date);