--sql

SELECT
    UPPER(emp_name) AS emp_name,

    TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS actual_experience,

    declared_experience -
    TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS experience_difference,

    FLOOR(salary) AS floor_salary,

    CASE
        WHEN declared_experience >
             TIMESTAMPDIFF(YEAR, joining_date, CURDATE())
        THEN 'Overstated'

        WHEN declared_experience <
             TIMESTAMPDIFF(YEAR, joining_date, CURDATE())
        THEN 'Understated'

        ELSE 'Matched'
    END AS status
FROM employee_experience;

--output

| emp_name | actual_experience | experience_difference | floor_salary | status      |
| -------- | ----------------- | --------------------- | ------------ | ----------- |
| VEENA    | 7                 | -3                    | 65000        | Understated |
| RAVI     | 12                | 0                     | 85000        | Matched     |
| ANIL     | 5                 | -2                    | 70000        | Understated |
