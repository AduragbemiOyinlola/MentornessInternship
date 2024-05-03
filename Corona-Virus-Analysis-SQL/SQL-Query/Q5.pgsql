-- Q5. Number of month present in dataset
SELECT EXTRACT(YEAR FROM date) AS "Year", 
    COUNT(DISTINCT EXTRACT(MONTH FROM date)) AS "monthNumber"
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date);