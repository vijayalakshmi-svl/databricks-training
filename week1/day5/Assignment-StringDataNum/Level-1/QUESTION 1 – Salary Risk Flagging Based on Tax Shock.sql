--sql

SELECT 
    LOWER(emp_name) AS emp_name,
    ROUND(salary - (salary * tax_percent / 100), 2) AS net_salary,
    YEAR(last_revision) AS revision_year,
    TIMESTAMPDIFF(MONTH, last_revision, CURDATE()) AS months_since_revision,
    CASE
        WHEN tax_percent > 20 
             AND TIMESTAMPDIFF(MONTH, last_revision, CURDATE()) > 24
        THEN 'Tax Shock'

        WHEN tax_percent BETWEEN 15 AND 20
        THEN 'Review Needed'

        ELSE 'Stable'
    END AS status
FROM salary_audit;

--output

| emp_name | net_salary | revision_year | months_since_revision | status        |
| -------- | ---------- | ------------- | --------------------- | ------------- |
| karthik  | 67125.67   | 2022          | 52                    | Stable        |
| veena    | 53300.33   | 2023          | 35                    | Review Needed |
| ravi     | 63750.68   | 2020          | 66                    | Tax Shock     |
