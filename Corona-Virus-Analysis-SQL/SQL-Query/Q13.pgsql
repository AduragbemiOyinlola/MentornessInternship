-- Q13. Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )
SELECT 
    ROUND(SUM(recovered), 2) AS "TotalRecovery", 
    ROUND(AVG(recovered), 2) AS "AvgRecovery",
    ROUND(VARIANCE(recovered), 2) AS "RecoveryVAR", 
    ROUND(STDDEV(recovered), 2) AS "RecoverySTD"
FROM corona_data;