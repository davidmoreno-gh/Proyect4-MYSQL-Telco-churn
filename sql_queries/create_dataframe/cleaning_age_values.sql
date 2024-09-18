-- Check values

-- Checking data from some columns

SELECT DISTINCT contract FROM telco_general_table; -- OK

SELECT DISTINCT gender FROM telco_general_table; -- OK

SELECT DISTINCT age FROM telco_general_table; -- Some values are outlier (more than 100 years)

SELECT DISTINCT offer FROM telco_general_table; -- OK

SELECT DISTINCT married FROM telco_general_table; -- OK

SELECT DISTINCT phone_service FROM telco_general_table; -- OK

-- Check the values from age

SELECT 
	DISTINCT COUNT(customer_id), 
    age 
FROM telco_general_table 
GROUP BY age 
ORDER BY age DESC; -- There is a gap within the age: from 80 to 100 years

SELECT 
	COUNT(customer_id) AS total_customers_above_99
FROM telco_general_table 
WHERE age > 99; -- Check number of "customer" who are more than 99 years

-- Check original table (demo)

SELECT *
FROM telco_customer_churn_demographics
WHERE age > 99;

SELECT 
	COUNT(`Customer ID`) AS total_customers_above_99
FROM telco_customer_churn_demographics
WHERE age > 99; -- Same rows

SELECT
	tg.customer_id AS cid_general,
    demo.`Customer ID` AS cid_demo
FROM telco_general_table as tg
JOIN telco_customer_churn_demographics as demo
	ON tg.customer_id = demo.`Customer ID`
WHERE tg.age > 99; -- Same ID

-- Since these are anomalous age values ​​
-- and few rows in percentage terms with respect to the total, we eliminated those rows

SET SQL_SAFE_UPDATES = 0;
DELETE FROM telco_general_table
WHERE age > 99;