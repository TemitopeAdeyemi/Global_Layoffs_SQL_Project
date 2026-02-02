# Global Layoffs Data Cleaning & EDA (SQL)

## Overview
This project focuses on cleaning and exploring a global layoffs dataset using SQL.  
The raw data contained duplicate records, inconsistent text formatting, missing values, and incorrect data types.  
The objective was to transform the raw dataset into a clean, analysis-ready table and perform exploratory data analysis (EDA) to uncover key layoff trends.

---

## Dataset Description
The dataset contains information on company layoffs across different industries and countries, including:
- Company and location
- Industry
- Total and percentage of employees laid off
- Layoff date
- Company stage
- Country
- Funds raised (in millions)

---

## Tools & Skills
- SQL (MySQL)
- Window functions (`ROW_NUMBER`, `DENSE_RANK`)
- Common Table Expressions (CTEs)
- Self-joins
- Data cleaning and preprocessing
- Exploratory Data Analysis (EDA)

---

## Data Cleaning
The data cleaning process is documented in **`layoffs_data_cleaning.sql`** and includes:
1. Creating staging tables to protect the raw dataset
2. Identifying and removing duplicate records using window functions
3. Standardizing text fields (company names, industries, countries)
4. Converting date values from text to the `DATE` data type
5. Handling missing values by replacing empty strings and backfilling industries
6. Removing records with no layoff information
7. Dropping helper columns after cleaning

---

## Exploratory Data Analysis (EDA)
The exploratory analysis is documented in **`layoffs_eda.sql`**, where the cleaned dataset is analyzed to:
- Identify companies with the highest total layoffs
- Analyze layoff trends over time (monthly and yearly)
- Examine layoffs by industry, country, and company stage
- Identify companies with complete workforce layoffs (100%)
- Rank the top companies by layoffs per year using window functions
- Calculate rolling (cumulative) layoffs over time

---

## Project Files
- `layoffs_data_cleaning.sql` — Data cleaning and preprocessing
- `layoffs_eda.sql` — Exploratory data analysis queries
- `README.md` — Project documentation

---

## Final Output
The final dataset:
- Contains no duplicate records
- Has standardized and consistent values
- Uses appropriate data types
- Is fully prepared for analysis and visualization

---

## Recommendations
Based on insights from the exploratory data analysis:
- Companies should adopt **more sustainable hiring strategies**, especially during periods of rapid growth, as large layoff volumes tend to follow aggressive expansion.
- **Industries with consistently high layoffs**, particularly tech-driven sectors, may benefit from stronger risk management and long-term workforce planning.
- **Later-stage startups** should better align headcount growth with revenue and financial performance to minimize large-scale layoffs.
- Regions with high layoff concentrations may require **economic diversification and stronger labor protections**.
- Future analysis could incorporate **financial metrics or macroeconomic indicators** to better understand external drivers of layoffs.

---

## Conclusion
This project demonstrates an end-to-end SQL workflow, from raw data cleaning to exploratory data analysis.  
Through structured staging tables, deduplication, standardization, and proper handling of missing values, the dataset was transformed into a reliable foundation for analysis.

The EDA revealed meaningful patterns in layoffs across time, industries, countries, and company stages, providing insights that support data-driven decision making.  
Overall, this project highlights strong SQL skills, analytical reasoning, and the ability to convert raw data into actionable insights.

---

## Author
**Temitope Adeyemi**

