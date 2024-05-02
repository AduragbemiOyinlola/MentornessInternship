-- To avoid any errors, check missing value / null value 
-- Q1. Write a code to check NULL values
SELECT *
FROM corona_data
WHERE province IS NULL
    OR countryregion IS NULL
    OR latitude IS NULL
    OR longitude IS NULL
    OR date IS NULL
    OR confirmed IS NULL
    OR deaths IS NULL
    OR recovered IS NULL;