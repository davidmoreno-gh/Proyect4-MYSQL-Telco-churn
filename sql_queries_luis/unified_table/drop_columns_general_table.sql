-- Drop not neccesary columns

ALTER TABLE telco_general_table
DROP COLUMN under_30,
DROP COLUMN senior_citizen,
DROP COLUMN dependents,
DROP COLUMN number_of_dependents,
DROP COLUMN country,
DROP COLUMN zip_code,
DROP COLUMN quarter,
DROP COLUMN churn_category,
DROP COLUMN churn_reason,
DROP COLUMN customer_status,
DROP COLUMN referred_a_friend,
DROP COLUMN number_of_referrals,
DROP COLUMN avg_monthly_long_distance_charges,
DROP COLUMN internet_type,
DROP COLUMN paperless_billing,
DROP COLUMN payment_method,
DROP COLUMN total_refunds,
DROP COLUMN total_extra_data_charges;

