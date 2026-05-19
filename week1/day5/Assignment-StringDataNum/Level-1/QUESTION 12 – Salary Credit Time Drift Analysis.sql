--sql

SELECT
    HOUR(credit_ts) AS credit_hour,

    LOWER(emp_name) AS emp_name,

    FLOOR(salary) AS floor_salary,

    ABS(FLOOR(salary)-HOUR(credit_ts)) AS salary_hour_difference,

    CASE
        WHEN HOUR(credit_ts) BETWEEN 0 AND 3
        THEN 'Midnight Drift'

        WHEN HOUR(credit_ts) > 18
        THEN 'After Hours'

        ELSE 'Business Hours'
    END AS status
FROM salary_time_drift;

--output

| credit_hour | emp_name | floor_salary | salary_hour_difference | status         |
| ----------- | -------- | ------------ | ---------------------- | -------------- |
| 23          | karthik  | 75000        | 74977                  | After Hours    |
| 9           | veena    | 65000        | 64991                  | Business Hours |
| 0           | ravi     | 85000        | 85000                  | Midnight Drift |
| 18          | anil     | 70000        | 69982                  | Business Hours |
| 2           | suresh   | 60000        | 59998                  | Midnight Drift |
