--sql

SELECT
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) AS years_since_hike,

    POWER(growth_rate,
          TIMESTAMPDIFF(YEAR,last_hike,CURDATE())) AS growth_power,

    ROUND(
        base_salary *
        POWER(growth_rate,
        TIMESTAMPDIFF(YEAR,last_hike,CURDATE())),2
    ) AS projected_salary,

    UPPER(emp_name) AS emp_name,

    CASE
        WHEN ROUND(
             base_salary *
             POWER(growth_rate,
             TIMESTAMPDIFF(YEAR,last_hike,CURDATE())),2
             ) > 150000
        THEN 'Explosive Growth'

        WHEN ROUND(
             base_salary *
             POWER(growth_rate,
             TIMESTAMPDIFF(YEAR,last_hike,CURDATE())),2
             ) BETWEEN 90000 AND 150000
        THEN 'Controlled'

        ELSE 'Stagnant'
    END AS status
FROM salary_growth;

--output

| years_since_hike | growth_power | projected_salary | emp_name | status           |
| ---------------- | ------------ | ---------------- | -------- | ---------------- |
| 7                | 1.71         | 128395.09        | KARTHIK  | Controlled       |
| 5                | 1.28         | 82971.64         | VEENA    | Stagnant         |
| 9                | 2.77         | 235717.49        | RAVI     | Explosive Growth |
| 4                | 1.13         | 78784.57         | ANIL     | Stagnant         |
| 6                | 1.42         | 85111.68         | SURESH   | Stagnant         |
