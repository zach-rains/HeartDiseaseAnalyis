-- Question: How does exercise habit correlate with heart disease prevalence?
SELECT 
    Exercise_Habits,
    COUNT(CASE WHEN Heart_Disease_Status = 'Yes' THEN 1 END) AS Heart_Disease_Count,
    COUNT(*) AS Total_Count,
    ROUND(COUNT(CASE WHEN Heart_Disease_Status = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Heart_Disease_Percentage
FROM heart_disease_cleaned
GROUP BY Exercise_Habits
ORDER BY Heart_Disease_Percentage DESC;