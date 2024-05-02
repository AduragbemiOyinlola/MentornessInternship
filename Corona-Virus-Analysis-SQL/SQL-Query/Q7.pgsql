SELECT
    TO_CHAR(date, 'Month') AS "Month",
    MODE() WITHIN GROUP (ORDER BY confirmed) AS "MostFrequentConfirmed",
    MODE() WITHIN GROUP (ORDER BY deaths) AS "MostFrequentDeaths",
    MODE() WITHIN GROUP (ORDER BY recovered) AS "MostFrequentRecovered"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);