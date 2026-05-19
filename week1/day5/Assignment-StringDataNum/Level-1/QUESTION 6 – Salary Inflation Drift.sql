--sql

SELECT
    CONCAT(
        UPPER(LEFT(emp_name,1)),
        LOWER(SUBSTRING(emp_name,2))
    ) AS proper_name,

    TIMESTAMPDIFF(YEAR, last_hike, CURDATE()) AS years_since_hike,

    POWER(TIMESTAMPDIFF(YEAR, last_hike, CURDATE()), 2) AS power_years,

    ROUND(salary * 1.10, 2) AS salary_impact,

    CASE
        WHEN TIMESTAMPDIFF(YEAR, last_hike, CURDATE()) > 5
        THEN 'High Inflation Risk'

        WHEN TIMESTAMPDIFF(YEAR, last_hike, CURDATE()) BETWEEN 3 AND 5
        THEN 'Moderate'

        ELSE 'Low'
    END AS status
FROM inflation_watch;

--output

| proper_name | years_since_hike | power_years | salary_impact | status              |
| ----------- | ---------------- | ----------- | ------------- | ------------------- |
| Karthik     | 7                | 49          | 82500.83      | High Inflation Risk |
| Veena       | 4                | 16          | 71500.44      | Moderate            |
| Ravi        | 9                | 81          | 93500.99      | High Inflation Risk |
