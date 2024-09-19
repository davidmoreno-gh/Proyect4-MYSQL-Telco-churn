-- Null treatment

-- Demo
SELECT *
FROM churn_demographics
WHERE 
	`Customer ID` IS NULL
    OR `Gender` IS NULL 
    OR `Age` IS NULL 
    OR `Under 30` IS NULL
    OR `Senior Citizen` IS NULL
    OR `Married` IS NULL
    OR `Dependents` IS NULL
    OR `Number of Dependents` IS NULL;

-- Services
SELECT *
FROM churn_services
WHERE `Customer ID` IS NULL
   OR `Quarter` IS NULL
   OR `Referred a Friend` IS NULL
   OR `Number of Referrals` IS NULL
   OR `Tenure in Months` IS NULL
   OR `Offer` IS NULL
   OR `Phone Service` IS NULL
   OR `Avg Monthly Long Distance Charges` IS NULL
   OR `Multiple Lines` IS NULL
   OR `Internet Service` IS NULL
   OR `Internet Type` IS NULL
   OR `Avg Monthly GB Download` IS NULL
   OR `Online Security` IS NULL
   OR `Online Backup` IS NULL
   OR `Device Protection Plan` IS NULL
   OR `Premium Tech Support` IS NULL
   OR `Streaming TV` IS NULL
   OR `Streaming Movies` IS NULL
   OR `Streaming Music` IS NULL
   OR `Unlimited Data` IS NULL
   OR `Contract` IS NULL
   OR `Paperless Billing` IS NULL
   OR `Payment Method` IS NULL
   OR `Monthly Charge` IS NULL
   OR `Total Charges` IS NULL
   OR `Total Refunds` IS NULL
   OR `Total Extra Data Charges` IS NULL
   OR `Total Long Distance Charges` IS NULL
   OR `Total Revenue` IS NULL;
   
   -- Location
   SELECT *
FROM churn_location
WHERE `Customer ID` IS NULL
   OR `Country` IS NULL
   OR `State` IS NULL
   OR `City` IS NULL
   OR `Zip Code` IS NULL
   OR `Latitude` IS NULL
   OR `Longitude` IS NULL;

-- Status
SELECT *
FROM churn_status
WHERE `Customer ID` IS NULL
   OR `Quarter` IS NULL
   OR `Customer Status` IS NULL
   OR `Churn Label` IS NULL
   OR `Churn Value` IS NULL
   OR `Churn Category` IS NULL
   OR `Churn Reason` IS NULL;