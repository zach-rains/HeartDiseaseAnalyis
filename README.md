
# Heart Disease Analysis

## Tools and Technologies
- **SQL**: Querying and transforming raw data.
- **Excel**: Summarizing and visualizing results.

## Key Skills Demonstrated
- Data querying and aggregation with SQL.
- Data cleaning and preparation for analysis.
- Deriving actionable insights from raw data.
- Presentation of results in a clear, concise format.

## Repository Structure
- **SQL Files**: Located in the root directory and named descriptively.
- **Results Files**: Corresponding `.csv` files containing query outputs.
- **Cleaned Dataset**: Processed file ready for analysis.

## Analysis Reasoning
- It's widely accepted that heart disease is one of the largest threats to the U.S. healthcare system.
- This analysis looks at the most popular comorbidities and analyzes their correlations with heart disease.
- My focus was exercise and cholesterol levels in relation to heart disease, but all factors in the dataset are addressed.


## Project

### 1. **Heart Disease Dataset Cleaning**
- **Cleaned Dataset**: [`heart_disease_cleaned.csv`](./heart_disease_cleaned.csv)
- **Description**: This dataset has been cleaned and prepared for further analysis, ensuring consistency, accuracy, and usability.
- **Source: https://www.kaggle.com/datasets/oktayrdeki/heart-disease
- **Process: Data was cleaned through deletion of duplicates, removal of cells with null or absent data, and removal of impactful outliers.

### 2. **Cholesterol Levels by Age and Gender**
- **SQL Query**: [`Cholesterol by Age:Gender.sql`](./Cholesterol%20by%20Age%3AGender.sql)
- **Results**: [`CholesterolByAge&GenderResults.csv`](./CholesterolByAge%26GenderResults.csv)
- **Visualization**: ![Visualization](./Cholesterol_Age_Gender.png)
- **Description**: This project explores cholesterol trends by age group and gender, providing insights into population health metrics.

### 3. **Impact of Exercise on Health Metrics**
- **SQL Query**: [`ExerciseImpact.sql`](./ExerciseImpact.sql)
- **Results**: [`ExerciseImpactResult.csv`](./ExerciseImpactResult.csv)
- **Visualization**: ![Visualization](./Exercise_Impact.png)
- **Description**: Analyzes the correlation between exercise frequency and key health indicators such as blood pressure, cholesterol, and BMI.

### 4. **Comorbidities Correlation Analysis**
- **SQL Query**: [`Comorbidities_Correlation.sql`](./Comorbidities_Correlation.sql)
- **Results**: [`Comorbidities_Correlation_Results.csv`](./Comorbidities_Correlation_Results.csv)
- **Visualization**: ![Vizualization](./Comorbidities_Correlation.png)
- - **Description**: This project investigates correlations between various comorbidities (e.g., hypertension, diabetes, and cholesterol) and their collective impact on health outcomes. It provides insights into how these conditions coexist and influence each other, helping to identify critical areas for public health intervention.
 



## Final Thoughts and Recommendations
- After finishing the SQL work and diving into the results, a couple things become clear. The factors with the largest positive correlation to heart disease are BMI, Stress Level and Sugar Consumption. This makes sense and is in line with current public health recommendations and reinforces an accurate analysis. However, a couple things are potentially counter-intuitive. The most interesting of which is the very weak link between increased physical activity levels and heart disease. The results are indicating either a lack of strong linear relationships or data quality/sampling issues.
