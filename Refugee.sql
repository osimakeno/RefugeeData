-- Analyzing Canada refugee data

-- Viewing all data from the canadarefugee table
SELECT
    *
FROM 
    canadarefugee;

-- Finding the country Canada admitted the highest number of refugees from 2012 to 2022
SELECT 
    DISTINCT country_of_origin,
    SUM(total_count) AS total
FROM 
    canadarefugee
GROUP BY 
    country_of_origin
ORDER BY 
    total DESC;

-- Finding the total number of resettled refugees per year
SELECT 
    DISTINCT year,
    SUM(total_count) AS total
FROM 
    canadarefugee
GROUP BY 
    year;

-- Finding the countries of origin for the majority of asylum claims (top 5)
SELECT
    DISTINCT country_of_origin,
    SUM(Asylum_seekers) AS total_asylum_seekers
FROM
    canadarefugee
WHERE country_of_origin <> 'unknown'
GROUP BY 
    country_of_origin
ORDER BY 
    total_asylum_seekers DESC
LIMIT 5;

-- Finding the total number of asylum claims made each year
SELECT 
    DISTINCT year,
    SUM(Asylum_seekers) AS total_asylum_seekers
FROM 
    canadarefugee
GROUP BY 
    year;
