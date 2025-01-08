-- Question: Calculate mean, median and standard deviation of  cholesterol levels by age group.

WITH Age_Groups AS (
    SELECT 
        CASE 
            WHEN Age < 30 THEN 'Under 30'
            WHEN Age BETWEEN 30 AND 39 THEN '30-39'
            WHEN Age BETWEEN 40 AND 49 THEN '40-49'
            WHEN Age BETWEEN 50 AND 59 THEN '50-59'
            WHEN Age BETWEEN 60 AND 69 THEN '60-69'
            WHEN Age BETWEEN 70 AND 79 THEN '70-79'
            WHEN Age BETWEEN 80 AND 89 THEN '80-89'
            ELSE '90 and Above'
        END AS Age_Group,
        Cholesterol_Level
    FROM heart_disease_cleaned
),
Mean_StdDev AS (
    SELECT 
        Age_Group,
        ROUND(AVG(Cholesterol_Level), 2) AS Mean_Cholesterol,
        ROUND(STDDEV(Cholesterol_Level), 2) AS Std_Dev_Cholesterol
    FROM Age_Groups
    GROUP BY Age_Group
),
Ranked_Levels AS (
    SELECT 
        Age_Group,
        Cholesterol_Level,
        ROW_NUMBER() OVER (PARTITION BY Age_Group ORDER BY Cholesterol_Level) AS Row_Num,
        COUNT(*) OVER (PARTITION BY Age_Group) AS Total_Rows
    FROM Age_Groups
),
Median_Levels AS (
    SELECT 
        Age_Group,
        AVG(Cholesterol_Level) AS Median_Cholesterol
    FROM Ranked_Levels
    WHERE Row_Num IN (FLOOR((Total_Rows + 1) / 2), CEIL((Total_Rows + 1) / 2))
    GROUP BY Age_Group
)
SELECT 
    ms.Age_Group,
    ms.Mean_Cholesterol,
    ml.Median_Cholesterol,
    ms.Std_Dev_Cholesterol
FROM Mean_StdDev AS ms
JOIN Median_Levels AS ml
ON ms.Age_Group = ml.Age_Group
ORDER BY 
    CASE 
        WHEN ms.Age_Group = 'Under 30' THEN 0
        WHEN ms.Age_Group = '30-39' THEN 1
        WHEN ms.Age_Group = '40-49' THEN 2
        WHEN ms.Age_Group = '50-59' THEN 3
        WHEN ms.Age_Group = '60-69' THEN 4
        WHEN ms.Age_Group = '70-79' THEN 5
        WHEN ms.Age_Group = '80-89' THEN 6
        ELSE 7
    END;