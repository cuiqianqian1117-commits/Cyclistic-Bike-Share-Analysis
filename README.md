Cyclistic Bike-Share: Strategic Analysis for Membership Growth
📌 Project Overview
This project is a comprehensive data analysis for "Cyclistic," a fictional bike-share company in Chicago. The goal is to design marketing strategies aimed at converting casual riders into annual members by analyzing how they use the service differently.
Key Deliverables:
•	Data Preprocessing: Handled 5.5 million+ rows of raw data using Python.
•	Deep Dive Analysis: Conducted complex aggregations via BigQuery SQL.
•	Business Intelligence: Identified key behavioral patterns to support GTM (Go-to-Market) strategies.
________________________________________
🛠 Tech Stack
•	Data Processing: Python (Pandas, Glob)
•	Cloud Data Warehouse: Google BigQuery (SQL)
•	Programming Environment: Kaggle Notebooks / Jupyter
•	Business Framework: Google Data Analytics Professional Certificate Methodology
________________________________________
📂 Project Workflow
1. Data Cleaning & Transformation (Python)
I utilized Python to consolidate 12 monthly CSV files into a unified dataset of over 5.5 million records.
•	Processing: Calculated ride_length by subtracting started_at from ended_at.
•	Feature Engineering: Extracted day_of_week to analyze weekly usage patterns.
•	Integrity Check: Standardized data types (strings to floats/datetime) for accurate downstream calculation.
2. Strategic Analysis (BigQuery SQL)
Once the data was cleaned, I migrated it to BigQuery to perform heavy-lifting analysis on user behavior:
•	Usage Patterns: Analyzed average ride duration and ride counts by user type (Member vs. Casual) across the week.
•	Geospatial Insights: Identified high-traffic stations for casual riders to pinpoint the best locations for physical marketing campaigns.
•	Data Modeling: Used CTEs (Common Table Expressions) and Inner Joins to compare "Member vs. Casual" favorite starting points.
________________________________________
📈 Key SQL Insights
SQL
-- Analyzing ride frequency and duration by user type
SELECT 
  member_casual,
  day_of_week,
  ROUND(AVG(ride_length)/60,0) AS avg_length_min,
  COUNT(ride_id) AS cnt_ride
FROM `turing-runner-482109-q2.Cyclistic.cyclistic_data` 
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week ASC;
(Full SQL scripts available in the /scripts folder)
________________________________________
💡 Business Recommendations (Engineering Management Perspective)
Based on the analysis, I propose the following GTM strategies:
1.	Segmented Marketing: Focus digital ads on the top 10 stations most frequented by casual riders.
2.	Weekend Membership Tier: Casual riders exhibit high engagement during weekends with longer ride durations. A "Weekend-Only" pass could bridge the gap to full annual membership.
3.	Incentive Alignment: Use seasonal promotions during high-volume months (identified during Python preprocessing) to drive conversion.
________________________________________
🙋‍♂️ About the Author
•	Academic Background: Master of Engineering Management (MEM) from Peking University.
•	Professional Background: 10+ years in Corporate Governance and Sales Strategy at Volkswagen Group.
•	LinkedIn: April Cui
 


 
