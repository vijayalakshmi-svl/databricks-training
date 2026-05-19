--sql

SELECT
    YEAR(credit_date) AS credit_year,

    CEIL(salary) AS ceil_salary,

    DAYOFYEAR(credit_date) AS day_of_year,

    CASE
        WHEN (YEAR(credit_date)%4=0
              AND YEAR(credit_date)%100!=0)
              OR YEAR(credit_date)%400=0
        THEN 'Leap Credit'

        ELSE 'Non-Leap Credit'
    END AS status
FROM leap_salary;

--output

| credit_year | ceil_salary | day_of_year | status          |
| ----------- | ----------- | ----------- | --------------- |
| 2024        | 75001       | 60          | Leap Credit     |
| 2025        | 65001       | 59          | Non-Leap Credit |
| 2020        | 85001       | 60          | Leap Credit     |
| 2023        | 70001       | 59          | Non-Leap Credit |
| 2024        | 60001       | 59          | Leap Credit     |
