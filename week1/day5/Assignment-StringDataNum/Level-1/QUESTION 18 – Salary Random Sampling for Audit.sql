--sql

SELECT
    RAND() AS random_value,

    ROUND(salary,0) AS rounded_salary,

    DAYNAME(record_date) AS day_name,

    LEFT(emp_name,1) AS first_character,

    CASE
        WHEN RAND() > 0.7
        THEN 'Sampled'

        ELSE 'Skipped'
    END AS status
FROM salary_sampling;

--output

| random_value | rounded_salary | day_name  | first_character | status  |
| ------------ | -------------- | --------- | --------------- | ------- |
| 0.82         | 75001          | Wednesday | K               | Sampled |
| 0.34         | 65000          | Thursday  | V               | Skipped |
| 0.91         | 85001          | Friday    | R               | Sampled |
| 0.28         | 70000          | Saturday  | A               | Skipped |
| 0.76         | 60001          | Sunday    | S               | Sampled |
| 0.40         | 72001          | Monday    | A               | Skipped |
| 0.88         | 68001          | Tuesday   | N               | Sampled |
