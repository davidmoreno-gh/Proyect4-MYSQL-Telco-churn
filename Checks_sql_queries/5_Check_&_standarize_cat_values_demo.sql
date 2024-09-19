-- Checking categorical values in Demographics
SELECT DISTINCT `Gender`, `Married`, `Senior Citizen`, `Under 30`, `Dependents`
FROM churn_demographics;

-- Standarize Gender Values
SET SQL_SAFE_UPDATES = 0;
UPDATE churn_demographics
SET `Gender` = 'Male'
WHERE `Gender` = 'M' AND `Customer ID` IS NOT NULL;

-- F to Female
UPDATE churn_demographics
SET `Gender` = 'Female'
WHERE `Gender` = 'F' AND `Customer ID` IS NOT NULL;

-- Check
SELECT DISTINCT `Gender`, `Married`, `Senior Citizen`, `Under 30`, `Dependents`
FROM churn_demographics;