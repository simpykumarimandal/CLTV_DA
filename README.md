# CLTV_DA
Customer Lifetime Value (CLTV) Analysis
------------------
🚀 Project Overview

This project focuses on analyzing Customer Lifetime Value (CLTV) for an insurance dataset to uncover business insights related to customer segmentation, risk profiling, and revenue contribution.

The solution follows a complete data analytics pipeline:

Data Cleaning & Feature Engineering (Python)
Data Storage & Querying (PostgreSQL)
Data Visualization (Power BI)

---------------------------
🎯 Objectives
Identify high-value customers
Analyze risk patterns using claim behavior
Understand revenue contribution across segments
Evaluate policy performance and customer distribution
---------------------
🛠️ Tech Stack
Python → Data cleaning & feature engineering
PostgreSQL → Data storage & advanced SQL analysis
Power BI → Interactive dashboard & visualization
-----------------------------------
📂 Dataset Description

The dataset contains customer-level insurance data with features such as:

Demographics: gender, area, qualification
Financial: income, cltv
Policy Details: type_of_policy, num_policies
Risk Metrics: claim_amount, vintage
-------------------------------------
⚙️ Data Processing (Python)
Key Steps:
Converted categorical income into ordinal + scaled values
Cleaned and standardized num_policies
Created business-driven features:
claim_ratio
claim_percentage
policies_per_year
customer_value
high_value_flag
Segmented customers into:
Low
Medium
High
--------------------
🧠 Feature Engineering
Feature	Description
claim_ratio	Claim amount relative to income
claim_percentage	% of claim vs income
policies_per_year	Engagement level
customer_value	Estimated total customer worth
high_value_flag	Identifies premium customers
----------------------------------
🗄️ Database Design (PostgreSQL)

Structured table with optimized types:

Financial fields → NUMERIC
Large values → BIGINT
Categories → TEXT
-------------------------
📊 Key SQL Analysis
1. Business KPIs
Total customers
Average CLTV
Total revenue
Average risk level
2. Customer Segmentation
Revenue contribution by segment
High vs Low value customers
3. Risk Analysis
Customers with high claim percentage
Risk distribution across segments
4. Advanced SQL (Window Functions)
Top 10% customers using PERCENT_RANK()
Customer ranking by CLTV
5. Product Insights
Policy performance by area
Income vs CLTV relationship

--------------------------------------
📌 How to Run the Project
1. Python
Run data cleaning script to generate cleaned_train.csv
2.Import the saved dataset in PostgreSQL 
3. Power BI
Import data from PostgreSQL
Build dashboard using provided visuals

--------------------------
This project helps:

Identify profitable customer segments
Improve risk management strategies
Optimize policy targeting and pricing
Enable data-driven decision making
