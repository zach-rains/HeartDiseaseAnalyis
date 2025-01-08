-- Question: Which combinations of high blood pressure, high cholesterol, and diabetes are most prevalent among heart disease patients?

SELECT 
    High_Blood_Pressure,
    High_LDL_Cholesterol,
    Diabetes,
    COUNT(*) AS Patient_Count
FROM heart_disease_cleaned
WHERE Heart_Disease_Status = 'Yes'
GROUP BY High_Blood_Pressure, High_LDL_Cholesterol, Diabetes
ORDER BY Patient_Count DESC;