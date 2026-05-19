--sql

SELECT
    LENGTH(emp_name) AS name_length,

    TIMESTAMPDIFF(YEAR, join_date, CURDATE()) AS years_of_service,

    ROUND(salary,0) AS rounded_salary,

    CASE
        WHEN LENGTH(emp_name) >
             TIMESTAMPDIFF(YEAR, join_date, CURDATE())
        THEN 'Name Bias'

        ELSE 'Neutral'
    END AS status
FROM name_salary;

--output

