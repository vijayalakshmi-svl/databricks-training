--sql

SELECT
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE())
    AS years_since_hike,

    CASE
        WHEN rating=5 THEN current_salary*0.20
        WHEN rating=4 THEN current_salary*0.10
        WHEN rating=3 THEN current_salary*0.05
        ELSE 0
    END AS increment_amount,

    ROUND(
        current_salary +
        CASE
            WHEN rating=5 THEN current_salary*0.20
            WHEN rating=4 THEN current_salary*0.10
            WHEN rating=3 THEN current_salary*0.05
            ELSE 0
        END,0
    ) AS new_salary,

    LOWER(emp_name) AS employee_name,

    CASE
        WHEN rating=5
        THEN 'High Increment'

        WHEN rating IN (3,4)
        THEN 'Moderate'

        ELSE 'No Increment'
    END AS increment_status
FROM salary_revision;

--output

| years_since_hike | increment_amount | new_salary | employee_name | increment_status |
| ---------------- | ---------------- | ---------- | ------------- | ---------------- |
| 3                | 15000.15         | 90001      | karthik       | High Increment   |
| 2                | 6500.04          | 71500      | veena         | Moderate         |
| 4                | 4250.05          | 89251      | ravi          | Moderate         |
