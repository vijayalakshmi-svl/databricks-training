--sql

SELECT
    MONTHNAME(paid_date) AS month_name,

    CEIL(salary) AS ceil_salary,

    LAST_DAY(paid_date) AS last_day_of_month,

    CASE
        WHEN paid_date = LAST_DAY(paid_date)
        THEN 'End Month Spike'

        ELSE 'Regular'
    END AS status
FROM salary_monthly;

--output

| month_name | ceil_salary | last_day_of_month | status          |
| ---------- | ----------- | ----------------- | --------------- |
| January    | 75001       | 2025-01-31        | End Month Spike |
| February   | 65001       | 2025-02-28        | End Month Spike |
| March      | 85001       | 2025-03-31        | End Month Spike |
