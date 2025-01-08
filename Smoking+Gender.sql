-- Question: Summarize heart disease counts by gender and smoking status.

SELECT 
    Gender,
    Smoking,
    COUNT(CASE WHEN Heart_Disease_Status = 'Yes' THEN 1 END) AS Heart_Disease_Count,
    COUNT(*) AS Total_Patients
FROM heart_disease_cleaned
GROUP BY Gender, Smoking;