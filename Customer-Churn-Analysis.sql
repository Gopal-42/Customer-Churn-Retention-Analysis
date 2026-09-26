USE customer_churn_analysis;

-- Churn analysis by payment method
SELECT PaymentMethod, 
    COUNT(*) AS total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_Customer
FROM telco
GROUP BY PaymentMethod;


-- Churn rate by payment method
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY PaymentMethod
ORDER BY churn_rate_percentage DESC;


-- Count of month-to-month contract customers
SELECT COUNT(*) AS total_customers
FROM telco
WHERE Contract = 'Month-to-month';


-- Month-to-month contract churn analysis
SELECT 
    COUNT(*) AS customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percent
FROM telco
WHERE Contract = 'Month-to-month';


-- Churn analysis by contract type
SELECT Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY Contract;


-- Churn analysis by tenure group
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY tenure_group;


-- Churn analysis by internet service
SELECT InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY InternetService;


-- Churn analysis by contract and internet service
SELECT InternetService, 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY InternetService, Contract
ORDER BY Contract;


-- Average monthly and total charges by contract type
SELECT Contract,
    COUNT(*) AS Total_Customers,
    ROUND(AVG(MonthlyCharges), 2) AS Av_MC,
    ROUND(AVG(TotalCharges), 2) AS Av_TC
FROM telco
GROUP BY Contract;


-- Churn analysis by senior citizen status
SELECT 
    CASE 
        WHEN SeniorCitizen = '1' THEN 'Yes' 
        ELSE 'No'
    END AS SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY SeniorCitizen
ORDER BY SeniorCitizen DESC;


-- Churn analysis by tech support
SELECT TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY TechSupport
ORDER BY TechSupport DESC;


-- Churn analysis by online security
SELECT OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY OnlineSecurity
ORDER BY OnlineSecurity DESC;


-- Churn analysis by monthly charges group
SELECT
    CASE
        WHEN MonthlyCharges < 30 THEN 'Low'
        WHEN MonthlyCharges <= 70 THEN 'Medium'
        ELSE 'High'
    END AS monthly_charges,

    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY monthly_charges;


-- Churn analysis by partner status
SELECT Partner,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY Partner
ORDER BY Partner DESC;


-- Churn analysis by dependents status
SELECT Dependents,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY Dependents
ORDER BY Dependents DESC;


-- Churn analysis by payment method and contract
SELECT PaymentMethod, 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY PaymentMethod, Contract
ORDER BY Contract;


-- Churn analysis by monthly charge group
SELECT
    CASE
        WHEN MonthlyCharges < 50 THEN 'Low'
        WHEN MonthlyCharges <= 80 THEN 'Medium'
        ELSE 'High'
    END AS monthly_charge_group,

    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*)) * 100,
        2
    ) AS churn_rate_percentage
FROM telco
GROUP BY monthly_charge_group;