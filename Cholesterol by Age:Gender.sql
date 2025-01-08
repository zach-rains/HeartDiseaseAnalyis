-- Question: What is the average cholesterol level by age group and gender for patients with heart disease?
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE 'Above 60'
    END AS Age_Group,
    Gender,
    ROUND(AVG(Cholesterol_Level), 1) AS Avg_Cholesterol
FROM heart_disease_cleaned
WHERE Heart_Disease_Status = 'Yes'
GROUP BY Age_Group, Gender
ORDER BY Age_Group, Gender;