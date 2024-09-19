-- Checking categorical values in Demographics

SELECT DISTINCT `Gender`, `Married`, `Senior Citizen`, `Under 30`, `Dependents`
FROM telco_customer_churn_demographics;

-- Standarize Gender Values
SET SQL_SAFE_UPDATES = 0;
UPDATE telco_customer_churn_demographics
SET `Gender` = 'Male'
WHERE `Gender` = 'M' AND `Customer ID` IS NOT NULL;

-- F to Female

UPDATE telco_customer_churn_demographics
SET `Gender` = 'Female'
WHERE `Gender` = 'F' AND `Customer ID` IS NOT NULL;

-- Check

SELECT DISTINCT `Gender`, `Married`, `Senior Citizen`, `Under 30`, `Dependents`
FROM telco_customer_churn_demographics;