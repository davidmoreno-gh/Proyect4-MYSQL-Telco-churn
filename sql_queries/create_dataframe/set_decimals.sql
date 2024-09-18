-- Set decimals

ALTER TABLE telco_general_table
MODIFY COLUMN monthly_charge DECIMAL(12, 2),
MODIFY COLUMN total_revenue DECIMAL(12, 2),
MODIFY COLUMN total_charges DECIMAL(12, 2);
