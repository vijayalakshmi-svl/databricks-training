--sql

SELECT
    TRUNCATE(salary,0) AS original_salary,

    REVERSE(TRUNCATE(salary,0)) AS reversed_salary,

    DAYNAME(processed_date) AS weekday_name,

    CONCAT(
        UPPER(LEFT(emp_name,1)),
        LOWER(SUBSTRING(emp_name,2))
    ) AS proper_name,

    CASE
        WHEN TRUNCATE(salary,0) =
             REVERSE(TRUNCATE(salary,0))
        THEN 'Symmetric Pay'

        ELSE 'Asymmetric'
    END AS status
FROM salary_symmetry;

--output

| original_salary | reversed_salary | weekday_name | proper_name | status        |
| --------------- | --------------- | ------------ | ----------- | ------------- |
| 75557           | 75557           | Wednesday    | Karthik     | Symmetric Pay |
| 64446           | 64446           | Thursday     | Veena       | Symmetric Pay |
| 85858           | 85858           | Friday       | Ravi        | Symmetric Pay |
| 70007           | 70007           | Saturday     | Anil        | Symmetric Pay |
| 60000           | 00006           | Sunday       | Suresh      | Asymmetric    |
