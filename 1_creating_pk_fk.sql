USE telco_churn_proyect; 

-- Turning our master column in the four tables (Customer_ID) into VARCHAR datatype from TEXT datatype.
ALTER TABLE `telco_churn_proyect`.`churn_demographics` 
CHANGE COLUMN `Customer ID` `Customer ID` VARCHAR(50) NULL DEFAULT NULL ;
ALTER TABLE `telco_churn_proyect`.`churn_location` 
CHANGE COLUMN `Customer ID` `Customer ID` VARCHAR(50) NULL DEFAULT NULL ;
ALTER TABLE `telco_churn_proyect`.`churn_services` 
CHANGE COLUMN `Customer ID` `Customer ID` VARCHAR(50) NULL DEFAULT NULL ;
ALTER TABLE `telco_churn_proyect`.`churn_status` 
CHANGE COLUMN `Customer ID` `Customer ID` VARCHAR(50) NULL DEFAULT NULL ;

-- Asigning the PK to Customer ID from churn_demographics.
ALTER TABLE telco_churn_proyect.churn_demographics
ADD PRIMARY KEY (`Customer ID`);

-- After this, we asign the FK for Customer_ID in the rest of the tables.
-- Churn_location_table
ALTER TABLE telco_churn_proyect.churn_location
ADD CONSTRAINT FK_location_demographics_CustomerID
FOREIGN KEY (`Customer ID`)
REFERENCES telco_churn_proyect.churn_demographics (`Customer ID`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Churn_Status_table
ALTER TABLE telco_churn_proyect.churn_status
ADD CONSTRAINT FK_status_demographics_CustomerID
FOREIGN KEY (`Customer ID`)
REFERENCES telco_churn_proyect.churn_demographics (`Customer ID`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Churn_Services_table
ALTER TABLE telco_churn_proyect.churn_services
ADD CONSTRAINT FK_services_demographics_CustomerID
FOREIGN KEY (`Customer ID`)
REFERENCES telco_churn_proyect.churn_demographics (`Customer ID`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;