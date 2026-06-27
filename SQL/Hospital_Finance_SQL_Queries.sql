USE healthcare_finance;

SELECT DATABASE();



SELECT * 
FROM hospital_finance
LIMIT 10;

ALTER TABLE hospital_finance
RENAME COLUMN `ï»¿Encounter_ID` TO Encounter_ID;
DESCRIBE hospital_finance;

SELECT
    Department,
    SUM(Charges) AS Total_Charges
FROM hospital_finance
GROUP BY Department
ORDER BY Total_Charges DESC;

SELECT
    Insurance_Payer,
    SUM(Paid_Amount) AS Total_Paid
FROM hospital_finance
GROUP BY Insurance_Payer
ORDER BY Total_Paid DESC;

SELECT
    Department,
    ROUND(AVG(Charges),2) AS Avg_Charge
FROM hospital_finance
GROUP BY Department
ORDER BY Avg_Charge DESC;

SELECT
    Encounter_ID,
    Department,
    Charges,
    Paid_Amount
FROM hospital_finance
ORDER BY Charges DESC
LIMIT 10;

SELECT
    Encounter_ID,
    Charges,
    Paid_Amount,
    Charges - Paid_Amount AS Outstanding_Balance
FROM hospital_finance
ORDER BY Outstanding_Balance DESC;

SELECT
    Department,
    SUM(Charges) AS Charges,
    SUM(Paid_Amount) AS Revenue,
    ROUND(
        SUM(Paid_Amount)/SUM(Charges)*100,
        2
    ) AS Collection_Rate
FROM hospital_finance
GROUP BY Department
ORDER BY Collection_Rate DESC;

SELECT
    Insurance_Payer,
    SUM(Charges) AS Total_Charges,
    SUM(Paid_Amount) AS Total_Paid,
    ROUND(
        SUM(Paid_Amount) / SUM(Charges) * 100,
        2
    ) AS Collection_Rate
FROM hospital_finance
GROUP BY Insurance_Payer
ORDER BY Collection_Rate DESC;

SELECT
    Insurance_Payer,
    COUNT(*) AS Total_Claims,
    SUM(CASE WHEN Claim_Status = 'Denied' THEN 1 ELSE 0 END) AS Denied_Claims,
    ROUND(
        SUM(CASE WHEN Claim_Status = 'Denied' THEN 1 ELSE 0 END)
        *100.0 / COUNT(*),
        2
    ) AS Denial_Rate
FROM hospital_finance
GROUP BY Insurance_Payer
ORDER BY Denial_Rate DESC;

SELECT
CASE
    WHEN Days_in_AR <= 30 THEN '0-30'
    WHEN Days_in_AR <= 60 THEN '31-60'
    WHEN Days_in_AR <= 90 THEN '61-90'
    ELSE '90+'
END AS AR_Bucket,
SUM(AR_Balance) AS Outstanding_AR
FROM hospital_finance
GROUP BY AR_Bucket;

SELECT
    DATE_FORMAT(Encounter_Date,'%Y-%m') AS Month,
    ROUND(SUM(Paid_Amount),2) AS Revenue
FROM hospital_finance
GROUP BY Month
ORDER BY Month;
