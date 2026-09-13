E-Commerce Sales Analysis

Project Overview

This project analyzes 34,500 e-commerce sales transactions to evaluate overall business performance, sales trends, product and category performance, customer purchasing behavior, regional performance, delivery operations, returns, and discount performance. 

The analysis was performed using Python, SQL, and Power BI to transform transaction data into business insights and an interactive dashboard. 

Tools & Technologies
. Python
.Pandas
.Matplotlib
.MySQL
.Power BI
.DAX
.GitHub

Business Questions
. How has revenue changed over time? 
. Which categories generate the most revenue? 
. Which regions generate the most revenue? 
. Which categories sell the most units? 
. Which products generate the most revenue? 
. Which customers generate the most revenue? 
. How does purchasing behavior differ by gender? 
. How does purchasing behavior differ by age group? 
. What is the average delivery time? 
. Which regions have the longest delivery times? 
. Which categories have the highest return rates? 
. How does discount level relate to sales performance? 

Power BI Dashboard

Page 1: Executive Overview

The Executive Overview provides a high-level view of business performance, including revenue, orders, customers, average order value, return rate, monthly revenue, category revenue, and regional revenue. 
<img width="790" height="590" alt="Executive Overview" src="https://github.com/user-attachments/assets/ccc915fc-e013-4ad7-8569-4de9ca3e2048" />


Page 2: Products & Sales Performance
This page analyzes product and category performance using units sold, top products by revenue, average profit margin. 
<img width="800" height="558" alt="Products   Sales" src="https://github.com/user-attachments/assets/791310ba-3217-4d03-b92d-4f22d1b637a1" />




Page 3: Customer & Operations

This page analyzes customer purchasing behavior and operational performance, including revenue by age group and gender, top customers, delivery time, return rates, and discount performance.

<img width="811" height="538" alt="Customer   Operations" src="https://github.com/user-attachments/assets/4617fe7f-20b9-4883-85e1-7c8f2fa6ab32" />


Key Insights
. Electronics generated approximately 56.6% of total revenue, making it the largest revenue-generating category. 
. Electronics and Fashion had similar unit sales, but Electronics generated substantially more revenue, indicating differences in product price mix. 
. The 25-34 age group generated the highest total revenue. 
. South had the highest regional revenue.
. The East region had the longest average delivery time at approximate 6 days. 
. Fashion had the highest return rate at approximately 8.3%. 
. Higher discount levels were associated with lower average order values in this dataset. 

Business Recommendations

. Prioritize inventory and sales planning for high-performing categories such as Electronics.
. Investigate the high return rate in Fashion to identify potential issues related to sizing, product descriptions, or customer expectations.
. Investigate longer delivery times in the East region and evaluate fulfillment and shipping processes. 
. Evaluate discount strategies to determine whether large discounts generate enough additional sales volume to compensate for lower order values.

Analysis

Python and Pandas were used for: 
. Data exploration
. Data quality checks
. Data cleaning
. Feature engineering
. Sales analysis
. Product analysis
. Customer analysis
. Delivery analysis
. Return analysis
. Discount and profitability analysis

SQL

MySQL was used to answer business questions and validate the Python analysis. 

The SQL analysis includes: 
. Overall business KPIs
. Sales performance
. Product performance
. Customer analysis
. Delivery and operations analysis
. Return analysis
. Discount and profitability analysis

Power BI

Power BI was used to create an interactive three-page dashboard with: 
. KPI cards
. Date slicer
. Category slicer
. Region slicer
. Payment method slicer
. Revenue trends
. Product performance
. Customer performance
. Operational analysis

Project Structure

E-Commerce-Sales-Analysis/
|
|-data/
|   |-raw/
|       |-ecommerce_sales_34500.csv
|   |-cleaned/
|       |-ecommerce_sales_cleaned.csv
|
|-notebooks/
|    |-analysis.ipynb
|
|-sql/
|   |-analysis.sql
|
|-powerbi/
|   |-analysis.pbix
|
|-images/
|   |-Executive Overview.png
|   |-Product Sales.png
|   |-Customer & Operations.png
|
|-README.md

Conclusion 
This project demonstrates an end-to-end data analysis workflow, from data exploration and cleaning to SQL analysis, business insights, and interactive Power BI visualization.





