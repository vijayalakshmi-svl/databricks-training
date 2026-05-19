--sql

SELECT
    CONCAT(
        UPPER(LEFT(emp_name,1)),
        LOWER(SUBSTRING(emp_name,2))
    ) AS proper_name,

    ROUND(base_salary + IFNULL(bonus,0),0) AS total_income,

    YEAR(joining_date) AS joining_year,

    TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS experience_years,

    CASE
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7
        THEN 'Senior'

        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7
        THEN 'Mid'

        ELSE 'Junior'
    END AS employee_level
FROM employee_payments;

--output

| proper_name | total_income | joining_year | experience_years | employee_level |
| ----------- | ------------ | ------------ | ---------------- | -------------- |
| Karthik     | 80001        | 2019         | 7                | Mid            |
| Veena       | 69001        | 2021         | 4                | Mid            |
| Ravi        | 91002        | 2016         | 10               | Senior         |
| Anil        | 70000        | 2020         | 5                | Mid            |
| Suresh      | 63001        | 2022         | 3                | Junior         |
