-- Checking duplicates

-- demographics
SELECT `Customer ID`, COUNT(*) as count_dup_demo
FROM churn_demographics
GROUP BY `Customer ID`
HAVING count_dup_demo > 1;

-- location
SELECT `Customer ID`, COUNT(*) as count_dup_location
FROM churn_location
GROUP BY `Customer ID`
HAVING count_dup_location > 1;

-- services
SELECT `Customer ID`, COUNT(*) as count_dup_services
FROM churn_services
GROUP BY `Customer ID`
HAVING count_dup_services > 1;

-- status
SELECT `Customer ID`, COUNT(*) as count_dup_status
FROM churn_location
GROUP BY `Customer ID`
HAVING count_dup_status > 1;
