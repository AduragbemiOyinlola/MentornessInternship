-- Q5. Number of month present in dataset
SELECT COUNT(DISTINCT EXTRACT(MONTH FROM date)) AS monthNumber
FROM corona_data;