# 📊 Customer Churn & Retention Analysis

An end-to-end **Customer Churn & Retention Analysis** project
demonstrating practical skills in **MySQL SQL, Microsoft Power BI,
Excel/Power Query, and DAX**.

The project analyzes **7,043 customer records** to understand churn
patterns across contracts, tenure, internet services, payment methods,
customer support, and customer characteristics.

> **Portfolio workflow:** Data Cleaning → SQL Analysis → DAX Measures →
> Power BI Dashboard → Business Insights

------------------------------------------------------------------------

## 🔗 Quick Access

  ------------------------------------------------------------------------------------------
  Resource                            Open
  ----------------------------------- ------------------------------------------------------
  📊 Overview Dashboard               [Open PNG](./Customer-Churn-Overview.png)

  👥 Customer Analysis Dashboard      [Open PNG](./Customer-Churn-Analysis.png)

  📄 Complete Dashboard PDF           [Open PDF](./Customer-Churn-Retention-Analysis.pdf)

  🎥 Interactive Dashboard Demo       [Open Demo
                                      Video](./Customer-Churn-Retention-Analysis-Demo.mp4)

  🗄️ SQL Analysis                     [Open SQL Script](./Customer-Churn-Analysis.sql)

  📁 Cleaned Dataset                  [Open CSV](./Telco_Customer_Churn_Cleaned.csv)
  ------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## 🎯 Project Objective

This project focuses on understanding customer churn through an
end-to-end analytics workflow.

### Key objectives

-   Measure overall customer churn
-   Identify customer segments with different churn rates
-   Analyze contract and tenure patterns
-   Compare payment methods and internet services
-   Analyze customer support and security services
-   Build an interactive Power BI dashboard
-   Demonstrate practical SQL and Power BI skills

------------------------------------------------------------------------

## 📌 Dataset

**Dataset:** Telco Customer Churn\
**Records:** 7,043 customers\
**Columns:** 21

### Main fields

`customerID`, `gender`, `SeniorCitizen`, `Partner`, `Dependents`,
`tenure`, `PhoneService`, `MultipleLines`, `InternetService`,
`OnlineSecurity`, `OnlineBackup`, `DeviceProtection`, `TechSupport`,
`StreamingTV`, `StreamingMovies`, `Contract`, `PaperlessBilling`,
`PaymentMethod`, `MonthlyCharges`, `TotalCharges`, `Churn`

------------------------------------------------------------------------

## 🧹 Data Preparation --- Excel & Power Query

Microsoft Excel / Power Query was used for initial data inspection,
cleaning, and transformation.

### Data-cleaning work

-   Checked missing values
-   Checked duplicate customer records
-   Validated `Churn` categories
-   Converted `TotalCharges` into a usable numeric field
-   Investigated missing `TotalCharges`
-   Created analytical grouping fields
-   Prepared the cleaned dataset for SQL and Power BI

There were **9 missing `TotalCharges` values**. These records had **zero
tenure**, so the values were handled as zero rather than removing those
customers.

👉 [View Cleaned Dataset](./Telco_Customer_Churn_Cleaned.csv)

------------------------------------------------------------------------

# 🗄️ SQL Analysis --- MySQL

MySQL was used for structured, business-question-driven analysis.

### SQL skills demonstrated

-   `SELECT`
-   `WHERE`
-   `COUNT`
-   `SUM`
-   `CASE`
-   `GROUP BY`
-   `ORDER BY`
-   `AVG`
-   `ROUND`
-   Conditional aggregation
-   Multi-dimensional grouping
-   Churn-rate calculations
-   Segment analysis

### Analyses performed

1.  Churn by Payment Method
2.  Churn Rate by Payment Method
3.  Month-to-month Contract Churn
4.  Churn by Contract Type
5.  Churn by Tenure Group
6.  Churn by Internet Service
7.  Contract + Internet Service Churn
8.  Average Monthly Charges by Contract
9.  Average Total Charges by Contract
10. Senior Citizen Churn
11. Tech Support Churn
12. Online Security Churn
13. Monthly Charges Segmentation
14. Partner Churn
15. Dependents Churn
16. Contract + Payment Method Churn

👉 [Open SQL Analysis Script](./Customer-Churn-Analysis.sql)

------------------------------------------------------------------------

# 📊 Power BI Dashboard

The Power BI dashboard contains **two analytical pages** with
interactive filters, KPI cards, charts, navigation, cross-filtering,
reset functionality, and key-insight panels.

## 1️⃣ Overview

### KPIs

-   **Total Customers:** 7,043
-   **Churned Customers:** 1,869
-   **Churn Rate:** 26.54%
-   **Average Monthly Charges:** 64.76
-   **Average Tenure:** 32.37 Months

### Visuals

-   Churn Rate by Contract Type
-   Churn Rate by Tenure Group
-   Churn Rate by Internet Service
-   Churn Rate by Payment Method
-   Churn Rate by Monthly Charges Group
-   Customer Distribution by Churn Status
-   Key Insights

👉 [Open Overview Dashboard](./Customer-Churn-Overview.png)

------------------------------------------------------------------------

## 2️⃣ Customer Analysis

### Visuals

-   Churn Rate by Senior Citizen
-   Churn Rate by Partner Status
-   Churn Rate by Dependents Status
-   Churn Rate by Tech Support
-   Churn Rate by Online Security
-   Churn Rate by Contract & Payment Method
-   Key Insights

👉 [Open Customer Analysis Dashboard](./Customer-Churn-Analysis.png)

------------------------------------------------------------------------

## 🎛️ Interactive Features

The dashboard includes:

-   Contract slicer
-   Internet Service slicer
-   Payment Method slicer
-   Gender slicer
-   Senior Citizen slicer
-   Reset Filters
-   Overview ↔ Customer Analysis navigation
-   Cross-filtering
-   KPI cards
-   Interactive charts
-   Key Insights sections

🎥 [Watch the Interactive Dashboard
Demo](./Customer-Churn-Retention-Analysis-Demo.mp4)

------------------------------------------------------------------------

# 📈 Key Findings

The following are **observed patterns in this dataset**:

-   **7,043** total customers were analyzed.
-   **1,869** customers were classified as churned.
-   Overall churn rate was **26.54%**.
-   Month-to-month customers had a **42.71%** churn rate.
-   Customers with 0--1 year tenure had a **47.44%** churn rate.
-   Fiber optic customers had a **41.89%** churn rate.
-   Electronic check users had a **45.29%** churn rate.
-   Senior citizens had a **41.68%** churn rate.
-   Customers without partners had a **32.96%** churn rate.
-   Customers without dependents had a **31.28%** churn rate.
-   Customers without tech support had a **41.64%** churn rate.

> **Interpretation:** These figures describe associations observed in
> the dataset. They do not establish that any characteristic causes
> churn.

------------------------------------------------------------------------

# 🧮 Power BI / DAX Skills

The project uses DAX for KPI calculations and analytical fields.

### Measures

-   Total Customers
-   Churned Customers
-   Churn Rate %
-   Average Monthly Charges
-   Average Tenure

### Calculated / analytical fields

-   Senior Citizen Label
-   Monthly Charges Group
-   Monthly Charges Sort
-   Tenure grouping and ordering logic

This demonstrates how **SQL analysis and Power BI/DAX** can be combined
in one end-to-end analytics project.

------------------------------------------------------------------------

# 🛠️ Tools & Technologies

  Tool                  Usage
  --------------------- -------------------------------------------
  **Microsoft Excel**   Data inspection and preparation
  **Power Query**       Data cleaning and transformation
  **MySQL**             Structured data analysis
  **SQL**               Churn and customer segmentation analysis
  **Power BI**          Interactive dashboard and visualization
  **DAX**               Measures and calculated analytical fields

### Core skills demonstrated

**SQL • MySQL • Power BI • DAX • Excel • Power Query • Data Cleaning •
Data Transformation • Data Visualization • Business Analysis**

------------------------------------------------------------------------

# 📂 Project Files

  --------------------------------------------------------------------------------------------------------------------------------
  File                                                                                         Purpose
  -------------------------------------------------------------------------------------------- -----------------------------------
  [Customer-Churn-Overview.png](./Customer-Churn-Overview.png)                                 Overview dashboard

  [Customer-Churn-Analysis.png](./Customer-Churn-Analysis.png)                                 Customer Analysis dashboard

  [Customer-Churn-Retention-Analysis.pdf](./Customer-Churn-Retention-Analysis.pdf)             Complete dashboard PDF

  [Customer-Churn-Retention-Analysis-Demo.mp4](./Customer-Churn-Retention-Analysis-Demo.mp4)   Interactive dashboard demo

  [Customer-Churn-Analysis.sql](./Customer-Churn-Analysis.sql)                                 MySQL analysis queries

  [Telco_Customer_Churn_Cleaned.csv](./Telco_Customer_Churn_Cleaned.csv)                       Cleaned dataset
  --------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

# 🧠 End-to-End Workflow

``` text
Raw Dataset
     ↓
Excel / Power Query
     ↓
Data Cleaning & Validation
     ↓
MySQL
     ↓
SQL Analysis
     ↓
Power BI + DAX
     ↓
Interactive Dashboard
     ↓
Business Insights
```

The project emphasizes both **technical analysis** and
**business-oriented visualization**, rather than dashboard design alone.

------------------------------------------------------------------------

# ⚠️ Limitations

-   The dataset represents a specific customer population and time
    period.
-   The analysis is descriptive and does not establish causation.
-   The dataset does not contain every possible factor that could
    influence churn.
-   Findings should therefore be interpreted within the context of this
    dataset.

------------------------------------------------------------------------

# 📜 Copyright & Attribution

**© 2026 Gopal Krishna. All rights reserved for the original project
work, SQL analysis, dashboard design, DAX measures, documentation, and
visual presentation created by the author.**

The underlying customer churn dataset is third-party material used for
**educational and portfolio-analysis purposes**. Ownership and licensing
rights for third-party dataset content remain with the respective
original owner/source.

This repository does **not** claim ownership of third-party dataset
content. Anyone redistributing the dataset should verify and comply with
the original dataset's applicable license and usage terms.

------------------------------------------------------------------------

# 👨‍💻 Author

**Gopal Krishna**\
B.Tech Computer Science & Engineering

### Areas of Interest

-   Data Analytics
-   Business Intelligence
-   SQL
-   Power BI
-   Data Visualization
-   Business-focused Data Analysis

🔗 [LinkedIn --- Gopal
Krishna](https://www.linkedin.com/in/gopal-krishna-217b80176)

------------------------------------------------------------------------

## ⭐ Project Summary

**Customer Churn & Retention Analysis** demonstrates an end-to-end
analytics workflow using **Excel/Power Query, MySQL SQL, Power BI, and
DAX** to transform customer data into structured analysis and
interactive business insights.

If you find the project useful, explore the SQL script, dashboard
images, PDF, cleaned dataset, and interactive demo included in this
repository.
