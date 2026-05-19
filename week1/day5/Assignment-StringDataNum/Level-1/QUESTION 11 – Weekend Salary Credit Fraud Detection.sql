--sql

SELECT
    LEFT(bank_code,4) AS bank_prefix,

    DAYNAME(credit_date) AS weekday_name,

    ROUND(salary,0) AS rounded_salary,

    MOD(ROUND(salary,0),5) AS salary_mod,

    CASE
        WHEN DAYNAME(credit_date) IN ('Saturday','Sunday')
             AND MOD(ROUND(salary,0),5)=0
        THEN 'Weekend Fraud'

        WHEN LEFT(bank_code,4)='HDFC'
        THEN 'Bank Review'

        ELSE 'Normal'
    END AS status
FROM salary_credit_audit;

--output

| bank_prefix | weekday_name | rounded_salary | salary_mod | status      |
| ----------- | ------------ | -------------- | ---------- | ----------- |
| HDFC        | Saturday     | 75001          | 1          | Bank Review |
| ICIC        | Monday       | 65000          | 0          | Normal      |
| SBIN        | Sunday       | 85001          | 1          | Normal      |
| AXIS        | Tuesday      | 70000          | 0          | Normal      |
| HDFC        | Saturday     | 60001          | 1          | Bank Review |
