-- Drop 'Count' column, it is innecessary

-- Demo

ALTER TABLE telco_customer_churn_demographics
DROP COLUMN `Count`;

-- Location

ALTER TABLE telco_customer_churn_location
DROP COLUMN `Count`;

-- Services

ALTER TABLE telco_customer_churn_services
DROP COLUMN `Count`;

-- Status

ALTER TABLE telco_customer_churn_status
DROP COLUMN `Count`;