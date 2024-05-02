---
marp: true
theme: gaia
---
<!-- _class: invert -->
![bg right:55%](corona.jpeg)
# **MENTORNESS INTERNSHIP PROJECT**

## **CORONA VIRUS ANALYSIS**
<br>
<br>

#### ADURAGBEMI OYINLOLA

---

### **OVERVIEW:**
<!-- _class: invert -->
![bg left:10%](corona.jpeg)
The **CORONA VIRUS** pandemic has had a significant impact on public health and has created an urgent need for data-driven insights to understand the spread of the virus. 

For this task, I will be analyzing the **CORONA VIRUS** dataset to find answers by writing **SQL** queries, derive meaningful insights and present my findings.

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)
### **DATASET:**
The dataset contains 8 fields:

- Province: Geographic subdivision within a country/region.
- Country/Region: Geographic entity where data is recorded.
- Latitude: North-south position on Earth's surface.
- Longitude: Eat-west position on Earth's surface.
- Date: Recorded date of CORONA VIRUS cases.
- Confirmed: Number of diagnosed CORONA VIRUS cases.
- Deaths: Number of CORONA VIRUS related deaths.
- Recovered: Number of recovered CORONA VIRUS cases.

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q1. Write a code to check NULL values

```
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
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q2. If NULL values are present, update them with zeros for all columns.

```
UPDATE corona_data
SET province = 0,
    countryregion = 0,
    latitude = 0,
    longitude = 0,
    confirmed = 0,
    deaths = 0,
    recovered = 0
WHERE province IS NULL OR
    countryregion IS NULL OR
    latitude IS NULL OR
    longitude IS NULL OR
    confirmed IS NULL OR
    deaths IS NULL OR
    recovered IS NULL;
```
---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q3. check total number of rows

```
SELECT COUNT(*)
FROM coronavirus;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q4. Check what is start_date and end_date

```
SELECT MIN(date) AS start_date, MAX(date) AS end_date
FROM corona_data;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q5. Number of month present in dataset

```
SELECT COUNT(DISTINCT EXTRACT(MONTH FROM date)) AS monthNumber
FROM corona_data;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q6. Find monthly average for confirmed, deaths, recovered

```
SELECT TO_CHAR(date, 'Month') AS "Month", ROUND(AVG(confirmed)) AS "ConfirmedCases/Month",
    ROUND(AVG(deaths)) AS "Deaths/Month", ROUND(AVG(recovered)) AS "Recovery/Month"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q7. Find most frequent value for confirmed, deaths, recovered each month

```
SELECT
    TO_CHAR(date, 'Month') AS "Month",
    MODE() WITHIN GROUP (ORDER BY confirmed) AS "MostFrequentConfirmed",
    MODE() WITHIN GROUP (ORDER BY deaths) AS "MostFrequentDeaths",
    MODE() WITHIN GROUP (ORDER BY recovered) AS "MostFrequentRecovered"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q8. Find minimum values for confirmed, deaths, recovered per year

```
SELECT EXTRACT(YEAR FROM date) AS "Year", MIN(confirmed) AS "MinConfirmedCases/Year",
    MIN(deaths) AS "MinDeaths/Year", MIN(recovered) AS "MinRecovery/Year"
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date);
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q9. Find maximum values of confirmed, deaths, recovered per year

```
SELECT EXTRACT(YEAR FROM date) AS "Year", MAX(confirmed) AS "MaxConfirmedCases/Year",
    MAX(deaths) AS "MaxDeaths/Year", MAX(recovered) AS "MaxRecovery/Year"
FROM corona_data
GROUP BY EXTRACT(YEAR FROM date);
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q10. The total number of case of confirmed, deaths, recovered each month

```
SELECT TO_CHAR(date, 'Month') AS "Month", SUM(confirmed) AS "TotalConfirmedCases/Month",
    SUM(deaths) AS "TotalDeaths/Month", SUM(recovered) AS "TotalRecovery/Month"
FROM corona_data
GROUP BY TO_CHAR(date, 'Month'), EXTRACT(MONTH FROM date)
ORDER BY EXTRACT(MONTH FROM date);
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q11. Check how corona virus spread out with respect to confirmed case (Eg.: total confirmed cases, their average, variance & STDEV)

```
SELECT 
    ROUND(SUM(confirmed), 2) AS "TotalConfirmedCases", 
    ROUND(AVG(confirmed), 2) AS "AvgConfirmedCases",
    ROUND(VARIANCE(confirmed), 2) AS "ConfirmedCasesVar", 
    ROUND(STDDEV(confirmed), 2) AS "ConfirmedCasesSpread"
FROM corona_data;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q12. Check how corona virus spread out with respect to death case per month (Eg.: total confirmed cases, their average, variance & STDEV)

```
SELECT 
    ROUND(SUM(deaths), 2) AS "TotalDeaths", 
    ROUND(AVG(deaths), 2) AS "AvgDeaths",
    ROUND(VARIANCE(deaths), 2) AS "DeathsVar", 
    ROUND(STDDEV(deaths), 2) AS "DeathsSpread"
FROM corona_data;
```
---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q13. Check how corona virus spread out with respect to recovered case (Eg.: total confirmed cases, their average, variance & STDEV)

```
SELECT 
    ROUND(SUM(recovered), 2) AS "TotalRecovery", 
    ROUND(AVG(recovered), 2) AS "AvgRecovery",
    ROUND(VARIANCE(recovered), 2) AS "RecoveryVAR", 
    ROUND(STDDEV(recovered), 2) AS "RecoverySTD"
FROM corona_data;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q14. Find Country having highest number of the Confirmed case

```
SELECT countryregion, MAX(confirmed) AS "MaxConfirmedCases"
FROM corona_data
GROUP BY countryregion, confirmed
ORDER BY confirmed DESC
LIMIT 1;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q15. Find Country having lowest number of the death case

```
SELECT countryregion, MIN(deaths) AS "MaxConfirmedCases"
FROM corona_data
GROUP BY countryregion, deaths
ORDER BY deaths
LIMIT 1;
```

---
<!-- _class: invert -->
![bg left:10%](corona.jpeg)

Q16. Find top 5 countries having highest recovered case

```
SELECT countryregion, recovered
FROM corona_data
ORDER BY recovered DESC
LIMIT 5;
```
