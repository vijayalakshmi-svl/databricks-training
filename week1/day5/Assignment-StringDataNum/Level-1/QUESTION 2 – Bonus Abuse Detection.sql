--sql

SELECT 
    CONCAT(
        UPPER(LEFT(emp_name,1)),
        LOWER(SUBSTRING(emp_name,2))
    ) AS proper_name,

    ROUND((bonus / base_salary) * 100, 2) AS bonus_percentage,

    DAYNAME(bonus_date) AS bonus_day,

    ABS(base_salary - bonus) AS salary_bonus_difference,

    CASE
        WHEN ((bonus / base_salary) * 100) > 30
             AND DAYNAME(bonus_date) IN ('Saturday','Sunday')
        THEN 'Suspicious'

        WHEN ((bonus / base_salary) * 100) <= 20
        THEN 'Normal'

        ELSE 'Audit'
    END AS status
FROM bonus_monitor;

--output

| proper_name | bonus_percentage | bonus_day | salary_bonus_difference | status |
| ----------- | ---------------- | --------- | ----------------------- | ------ |
| Anil        | 42.86            | Friday    | 40000.10                | Audit  |
| Suresh      | 5.00             | Friday    | 57000.25                | Normal |
| Ravi        | 17.65            | Friday    | 70000.15                | Normal |
