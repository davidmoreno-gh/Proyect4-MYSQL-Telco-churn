-- Drop 'Count' column, it is innecessary
ALTER TABLE churn_demographics
DROP COLUMN `Count`;

-- Location
ALTER TABLE churn_location
DROP COLUMN `Count`;

-- Services
ALTER TABLE churn_services
DROP COLUMN `Count`;

-- Status
ALTER TABLE churn_status
DROP COLUMN `Count`;