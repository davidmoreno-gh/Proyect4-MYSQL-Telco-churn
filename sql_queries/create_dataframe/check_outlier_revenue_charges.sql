-- Checking outlier: monthly_charger, total_charges, total_revenue

SELECT MIN(total_charges), MAX(total_charges), AVG(total_charges)
FROM telco_general_table; -- OK

-- 

SELECT MIN(total_revenue), MAX(total_revenue), AVG(total_revenue)
FROM telco_general_table; -- OK