-- Check Customer ID between tables

-- Demo and location
SELECT dem.`Customer ID`
FROM churn_demographics AS dem
LEFT JOIN churn_location AS loc
ON dem.`Customer ID` = loc.`Customer ID`
WHERE loc.`Customer ID` IS NULL;

-- Demo and services
SELECT dem.`Customer ID`
FROM churn_demographics AS dem
LEFT JOIN churn_services AS ser
ON dem.`Customer ID` = ser.`Customer ID`
WHERE ser.`Customer ID` IS NULL;

-- Demo and status
SELECT dem.`Customer ID`
FROM churn_demographics AS dem
LEFT JOIN churn_status AS sta
ON dem.`Customer ID` = sta.`Customer ID`
WHERE sta.`Customer ID` IS NULL;

-- After checking that all Customer IDs match, we check for any strange values
SELECT `Customer ID`
FROM churn_demographics
WHERE `Customer ID` LIKE '% %';