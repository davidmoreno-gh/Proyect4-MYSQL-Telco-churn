-- Create a general dataframe using esential tables

CREATE TABLE telco_general_table AS
SELECT demo.`Customer ID`, demo.`Gender`, demo.`Age`, demo.`Under 30`, demo.`Senior Citizen`, demo.`Married`, demo.`Dependents`, demo.`Number of Dependents`,
       loc.`Country`, loc.`State`, loc.`City`, loc.`Zip Code`, loc.`Latitude`, loc.`Longitude`,
       ser.`Quarter`, ser.`Referred a Friend`, ser.`Number of Referrals`, ser.`Tenure in Months`, ser.`Offer`, ser.`Phone Service`,
       ser.`Avg Monthly Long Distance Charges`, ser.`Multiple Lines`, ser.`Internet Service`, ser.`Internet Type`, ser.`Avg Monthly GB Download`,
       ser.`Online Security`, ser.`Online Backup`, ser.`Device Protection Plan`, ser.`Premium Tech Support`, ser.`Streaming TV`, ser.`Streaming Movies`,
       ser.`Streaming Music`, ser.`Unlimited Data`, ser.`Contract`, ser.`Paperless Billing`, ser.`Payment Method`, ser.`Monthly Charge`,
       ser.`Total Charges`, ser.`Total Refunds`, ser.`Total Extra Data Charges`, ser.`Total Long Distance Charges`, ser.`Total Revenue`,
       st.`Customer Status`, st.`Churn Label`, st.`Churn Value`, st.`Churn Category`, st.`Churn Reason`
FROM telco_customer_churn_demographics as demo
LEFT JOIN telco_customer_churn_location as loc ON demo.`Customer ID` = loc.`Customer ID`
LEFT JOIN telco_customer_churn_services as ser ON demo.`Customer ID` = ser.`Customer ID`
LEFT JOIN telco_customer_churn_status as st ON demo.`Customer ID` = st.`Customer ID`

