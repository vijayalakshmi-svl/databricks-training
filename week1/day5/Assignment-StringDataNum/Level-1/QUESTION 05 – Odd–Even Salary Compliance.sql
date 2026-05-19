--sql

SELECT
    LOWER(emp_name) AS emp_name,

    DAYNAME(payment_date) AS weekday_name,

    ROUND(salary,0) AS rounded_salary,

    MOD(ROUND(salary,0),2) AS salary_mod,

    CASE
        WHEN MOD(ROUND(salary,0),2) = 0
             AND MOD(DAY(payment_date),2) = 1
        THEN 'Violation'

        ELSE 'Compliant'
    END AS status
FROM payroll_control;

--output

| emp_name | weekday_name | rounded_salary | salary_mod | status    |
| -------- | ------------ | -------------- | ---------- | --------- |
| ravi     | Wednesday    | 85001          | 1          | Compliant |
| anil     | Thursday     | 70000          | 0          | Compliant |
| veena    | Friday       | 65000          | 0          | Violation |
