-- Checking outlier: monthly_charger, total_charger, total_revenue

SELECT MIN(monthly_charge), MAX(monthly_charge), AVG(monthly_charge)
FROM telco_general_table; -- Min is -10, lets check this

-- 

SELECT
	COUNT(customer_id) AS num_of_customers,
    monthly_charge
FROM telco_general_table
WHERE monthly_charge < 0
GROUP BY monthly_charge;

--

SELECT 
	COUNT(*) AS num_negative_charges
FROM telco_general_table 
WHERE monthly_charge < 0; -- 118 rows

--

SELECT
	COUNT(customer_id) AS num_of_customers,
    total_revenue
FROM telco_general_table
WHERE monthly_charge < 0
GROUP BY total_revenue;

-- Check original table

SELECT
	`Tenure in Months`,
    `Monthly Charge`,
    `Total Revenue`
FROM telco_customer_churn_services
WHERE `Monthly Charge` < 0
GROUP BY `Monthly Charge`, `Tenure in Months`, `Total Revenue`; -- This clients have positive months tenure

-- Update with months

UPDATE telco_general_table as tg
JOIN telco_customer_churn_services as ser
	ON tg.customer_id = ser.`Customer ID`
SET tg.monthly_charge = tg.total_revenue / ser.`Tenure in Months`
WHERE tg.monthly_charge < 0 
	AND tg.total_revenue IS NOT NULL
    AND ser.`Tenure in Months` IS NOT NULL;

--

SELECT 
	COUNT(*) AS num_negative_charges
FROM telco_general_table 
WHERE monthly_charge < 0; -- Check, result is 0 now

