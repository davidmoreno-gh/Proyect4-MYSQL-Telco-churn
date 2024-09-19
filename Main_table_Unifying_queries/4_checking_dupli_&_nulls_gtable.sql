-- Check dup rows

SELECT customer_id, COUNT(*)
FROM telco_general_table
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Check nulls per columns

SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS nulls_customer_id,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS nulls_gender,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS nulls_age,
    SUM(CASE WHEN married IS NULL THEN 1 ELSE 0 END) AS nulls_married,
    SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS nulls_state,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS nulls_city,
    SUM(CASE WHEN latitude IS NULL THEN 1 ELSE 0 END) AS nulls_latitude,
    SUM(CASE WHEN longitude IS NULL THEN 1 ELSE 0 END) AS nulls_longitude,
    SUM(CASE WHEN tenure_in_months IS NULL THEN 1 ELSE 0 END) AS nulls_tenure_in_months,
    SUM(CASE WHEN offer IS NULL THEN 1 ELSE 0 END) AS nulls_offer,
    SUM(CASE WHEN phone_service IS NULL THEN 1 ELSE 0 END) AS nulls_phone_service,
    SUM(CASE WHEN multiple_lines IS NULL THEN 1 ELSE 0 END) AS nulls_multiple_lines,
    SUM(CASE WHEN internet_service IS NULL THEN 1 ELSE 0 END) AS nulls_internet_service,
    SUM(CASE WHEN avg_monthly_gb_download IS NULL THEN 1 ELSE 0 END) AS nulls_avg_monthly_gb_download,
    SUM(CASE WHEN online_security IS NULL THEN 1 ELSE 0 END) AS nulls_online_security,
    SUM(CASE WHEN online_backup IS NULL THEN 1 ELSE 0 END) AS nulls_online_backup,
    SUM(CASE WHEN device_protection_plan IS NULL THEN 1 ELSE 0 END) AS nulls_device_protection_plan,
    SUM(CASE WHEN premium_tech_support IS NULL THEN 1 ELSE 0 END) AS nulls_premium_tech_support,
    SUM(CASE WHEN streaming_tv IS NULL THEN 1 ELSE 0 END) AS nulls_streaming_tv,
    SUM(CASE WHEN streaming_movies IS NULL THEN 1 ELSE 0 END) AS nulls_streaming_movies,
    SUM(CASE WHEN streaming_music IS NULL THEN 1 ELSE 0 END) AS nulls_streaming_music,
    SUM(CASE WHEN unlimited_data IS NULL THEN 1 ELSE 0 END) AS nulls_unlimited_data,
    SUM(CASE WHEN contract IS NULL THEN 1 ELSE 0 END) AS nulls_contract,
    SUM(CASE WHEN monthly_charge IS NULL THEN 1 ELSE 0 END) AS nulls_monthly_charge,
    SUM(CASE WHEN total_charges IS NULL THEN 1 ELSE 0 END) AS nulls_total_charges,
    SUM(CASE WHEN total_long_distance_charges IS NULL THEN 1 ELSE 0 END) AS nulls_total_long_distance_charges,
    SUM(CASE WHEN total_revenue IS NULL THEN 1 ELSE 0 END) AS nulls_total_revenue,
    SUM(CASE WHEN churn_label IS NULL THEN 1 ELSE 0 END) AS nulls_churn_label,
    SUM(CASE WHEN churn_value IS NULL THEN 1 ELSE 0 END) AS nulls_churn_value
FROM telco_general_table;