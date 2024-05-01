-- Q12. Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )
SELECT 
    ROUND(SUM(deaths), 2) AS "TotalDeaths", 
    ROUND(AVG(deaths), 2) AS "AvgDeaths",
    ROUND(VARIANCE(deaths), 2) AS "DeathsVar", 
    ROUND(STDDEV(deaths), 2) AS "DeathsSpread"
FROM corona_data;