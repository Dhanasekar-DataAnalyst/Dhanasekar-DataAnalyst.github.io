Patient Care and Clinical Outcomes: A Data-Driven Dashboard Overview

Introduction
In an era where healthcare systems increasingly rely on data to inform decisions, the ability to effectively analyse and interpret patient information has become crucial for improving clinical outcomes and operational efficiency. This dashboard provides a comprehensive, data-driven overview of patient care, focusing on key metrics such as demographics, diagnostic test results, treatment durations, medication usage, and healthcare expenditures.
By aggregating and visualizing data from over 6,900 patients, this tool highlights patterns in age, gender, blood type, and insurance coverage, while also offering insights into the clinical management of chronic conditions like diabetes, hypertension, and obesity. The integration of expense tracking and medication trends allows for a deeper understanding of healthcare resource allocation.

Objective
The objective of this dashboard is to support healthcare professionals, analysts, and decision-makers in identifying critical areas for intervention, optimizing care strategies, and ultimately enhancing patient outcomes through actionable insights derived from real-world data.

Part – I
Data Preparation in Power BI:
Before visualizing data in Power BI, several essential preprocessing steps are carried out. These include handling missing values by removing null entries, correcting and assigning appropriate data types, and creating new columns with relational variables. These preparatory steps ensure the data is clean, consistent, and structured for effective visualization.

Part – II
SQL Queries:
By utilizing SQL, I developed queries to analyse the given dataset and extract key insights. I employed essential SQL operations such as SELECT, WHERE, GROUP BY, ORDER BY, aggregation functions, common table expressions (CTEs), and subqueries. Although some queries appeared repetitive, they were instrumental in uncovering patterns and constructing a meaningful narrative from the data.


Part – III
Power BI Dashboard:
The Power BI dashboard incorporates a range of visualizations to present key insights in an interactive and user-friendly format. The components used include:
•	Cards: Simple visual elements that display key metrics in text form, such as the total number of patients, average age, average duration of hospital stay, total expenses, and average expenses per patient.
•	Bar Charts: Utilized to compare values across different categories, such as age groups and insurance providers.
•	Stacked Bar Charts: Used to clearly represent the distribution of test results across various medical conditions, enabling easy comparison between normal, abnormal, and inconclusive outcomes.
•	Line Chart: Depicts trends in patient admission rates over a specified time period, providing insight into seasonal or temporal fluctuations.
•	Donut Chart: Illustrates gender classification using contrasting shades of the same colour, ensuring clarity while maintaining visual consistency.
•	Multi-Row Card: Displays the list of prescribed medications along with the percentage of patients administered each drug.
•	Slicers: Interactive filters that allow users to segment the data based on admission type, year, and month. These are integrated into responsive icons (e.g., ellipsis (...)) to maintain a clean and intuitive layout.

Key Insights:
•	Each year, a total of 1,200 patients were admitted across various hospitals listed in the dataset.
•	Female patients were admitted more frequently than males, potentially influencing medication prescriptions such as hematinic drugs due to gender-specific needs.
•	The average expense per admission type is approximately ₹12 million, with an average cost per patient of ₹26,000.
•	Asthma and arthritis were the most common reasons for hospital admission over the observed period, while diabetes cases showed a significant increase over time.
•	Blue Cross primarily covered expenses for cancer patients.
•	Based on age group distribution, the ratio of patients by category is approximately 1:3:6 for young individuals, senior citizens, and adults, respectively.
•	Five different drugs were prescribed in roughly equal proportions.
•	Blood groups A– and B– are advised to maintain 10–20% higher stock levels compared to other groups to prepare for emergencies and treat conditions beyond the listed diagnoses.
•	Insurance coverage varies by medical condition:
o	Asthma – Cigna
o	Arthritis – United Healthcare
o	Cancer & Hypertension – Blue Cross
o	Diabetes & Obesity – Medicare


