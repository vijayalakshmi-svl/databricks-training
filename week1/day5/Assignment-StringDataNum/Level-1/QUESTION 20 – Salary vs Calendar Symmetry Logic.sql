--sql

SELECT
    DAY(credit_date) AS day_value,

    MONTH(credit_date) AS month_value,

    RIGHT(TRUNCATE(salary,0),2) AS salary_last_two_digits,

    UPPER(emp_name) AS emp_name,

    ABS(DAY(credit_date)-MONTH(credit_date))
    AS day_month_difference,

    CASE
        WHEN DAY(credit_date)=MONTH(credit_date)
             OR RIGHT(TRUNCATE(salary,0),2)=MONTH(credit_date)
        THEN 'Calendar Match'

        ELSE 'Calendar Drift'
    END AS status
FROM salary_calendar;

--output

| day_value | month_value | salary_last_two_digits | emp_name | day_month_difference | status         |
| --------- | ----------- | ---------------------- | -------- | -------------------- | -------------- |
| 15        | 1           | 01                     | KARTHIK  | 14                   | Calendar Drift |
| 14        | 2           | 00                     | VEENA    | 12                   | Calendar Drift |
| 31        | 3           | 01                     | RAVI     | 28                   | Calendar Drift |
| 4         | 4           | 00                     | ANIL     | 0                    | Calendar Match |
| 5         | 5           | 01                     | SURESH   | 0                    | Calendar Match |
