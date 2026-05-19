--sql

SELECT
    UPPER(emp_name) AS emp_name,

    YEAR(record_date) AS record_year,

    SIGN(salary) AS salary_sign,

    ABS(salary) AS absolute_salary,

    CASE
        WHEN SIGN(salary) = -1
        THEN 'Negative Error'

        WHEN SIGN(salary) = 0
        THEN 'Zero Salary'

        ELSE 'Valid'
    END AS status
FROM salary_integrity;

--output

| emp_name | record_year | salary_sign | absolute_salary | status         |
| -------- | ----------- | ----------- | --------------- | -------------- |
| ANIL     | 2025        | -1          | 70000.10        | Negative Error |
| VEENA    | 2025        | 1           | 65000.40        | Valid          |
| RAVI     | 2025        | 0           | 0.00            | Zero Salary    |
