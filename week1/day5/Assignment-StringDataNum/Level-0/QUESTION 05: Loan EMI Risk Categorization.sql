--sql

SELECT
    POWER((1 + interest_rate/100),1/12)-1
    AS monthly_interest,

    TIMESTAMPDIFF(YEAR,loan_start,CURDATE())
    AS years_since_loan,

    ROUND(
        loan_amount *
        (POWER((1 + interest_rate/100),1/12)-1),0
    ) AS emi_amount,

    UPPER(customer_name) AS customer_name,

    CASE
        WHEN interest_rate > 9
        THEN 'High Risk'

        WHEN interest_rate BETWEEN 8 AND 9
        THEN 'Medium Risk'

        ELSE 'Low Risk'
    END AS risk_category
FROM loan_details;

--output

| monthly_interest | years_since_loan | emi_amount | customer_name | risk_category |
| ---------------- | ---------------- | ---------- | ------------- | ------------- |
| 0.00682          | 4                | 3411       | SURESH        | Medium Risk   |
| 0.00736          | 5                | 5520       | MAHESH        | High Risk     |
| 0.00628          | 2                | 1883       | ANITA         | Low Risk      |
