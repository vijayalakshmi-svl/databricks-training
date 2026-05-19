--sql

SELECT
    RIGHT(emp_name, 2) AS last_two_characters,

    DAY(credit_date) AS day_of_month,

    TRUNCATE(salary, 0) AS truncated_salary,

    MOD(TRUNCATE(salary,0), 10) AS salary_mod,

    CASE
        WHEN MOD(TRUNCATE(salary,0),10) = DAY(credit_date)
        THEN 'Pattern Match'

        ELSE 'No Match'
    END AS status
FROM salary_digits;

--output

| last_two_characters | day_of_month | truncated_salary | salary_mod | status   |
| ------------------- | ------------ | ---------------- | ---------- | -------- |
| ik                  | 1            | 75000            | 0          | No Match |
| na                  | 2            | 65000            | 0          | No Match |
| sh                  | 3            | 60000            | 0          | No Match |
