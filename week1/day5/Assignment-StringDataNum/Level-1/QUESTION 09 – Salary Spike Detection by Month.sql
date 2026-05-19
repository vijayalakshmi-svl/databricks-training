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
