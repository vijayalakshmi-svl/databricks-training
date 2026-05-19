--sql

SELECT
    ASCII(LEFT(emp_name,1)) AS ascii_value,

    TIMESTAMPDIFF(YEAR,join_date,CURDATE()) AS years_since_joining,

    FLOOR(salary) AS floor_salary,

    CASE
        WHEN ASCII(LEFT(emp_name,1)) >
             TIMESTAMPDIFF(YEAR,join_date,CURDATE())
        THEN 'Name Dominates'

        ELSE 'Experience Dominates'
    END AS status
FROM salary_ascii;

--output

| ascii_value | years_since_joining | floor_salary | status         |
| ----------- | ------------------- | ------------ | -------------- |
| 75          | 7                   | 75000        | Name Dominates |
| 86          | 5                   | 65000        | Name Dominates |
| 82          | 10                  | 85000        | Name Dominates |
| 65          | 5                   | 70000        | Name Dominates |
| 83          | 3                   | 60000        | Name Dominates |
