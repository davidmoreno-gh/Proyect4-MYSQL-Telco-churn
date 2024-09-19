-- Checking duplicates

-- demographics

SELECT `Customer ID`, COUNT(*) as count_dup_demo
FROM telco_customer_churn_demographics
GROUP BY `Customer ID`
HAVING count_dup_demo > 1;

-- location

SELECT `Customer ID`, COUNT(*) as count_dup_location
FROM telco_customer_churn_location
GROUP BY `Customer ID`
HAVING count_dup_location > 1;

-- services

SELECT `Customer ID`, COUNT(*) as count_dup_services
FROM telco_customer_churn_services
GROUP BY `Customer ID`
HAVING count_dup_services > 1;

-- status

SELECT `Customer ID`, COUNT(*) as count_dup_status
FROM telco_customer_churn_location
GROUP BY `Customer ID`
HAVING count_dup_status > 1;

-- population

SELECT `ZIP Code`, COUNT(*) as count_dup_pop
FROM telco_customer_churn_location
GROUP BY `ZIP Code`
HAVING count_dup_pop > 1;
