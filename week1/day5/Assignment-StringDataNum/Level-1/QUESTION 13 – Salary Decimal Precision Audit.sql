--sql

SELECT
    TRUNCATE(salary,2) AS truncated_salary,

    ABS(ROUND(salary,2)-TRUNCATE(salary,2)) AS precision_difference,

    DAYNAME(record_date) AS day_name,

    LENGTH(emp_name) AS name_length,

    CASE
        WHEN ABS(ROUND(salary,2)-TRUNCATE(salary,2)) > 0.01
        THEN 'Precision Loss'

        ELSE 'Safe'
    END AS status
FROM salary_precision;

--output

| truncated_salary | precision_difference | day_name  | name_length | status |
| ---------------- | -------------------- | --------- | ----------- | ------ |
| 75000.75         | 0.01                 | Wednesday | 8           | Safe   |
| 65000.40         | 0.00                 | Thursday  | 5           | Safe   |
| 85000.90         | 0.01                 | Friday    | 4           | Safe   |
| 70000.10         | 0.00                 | Saturday  | 4           | Safe   |
| 60000.55         | 0.01                 | Sunday    | 6           | Safe   |
