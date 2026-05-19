--sql

SELECT
    ROUND((present_days/total_days)*100,0)
    AS attendance_percentage,

    MONTHNAME(record_date) AS month_name,

    total_days - present_days AS absent_days,

    LOWER(emp_name) AS employee_name,

    CASE
        WHEN ((present_days/total_days)*100) >= 90
        THEN 'Excellent'

        WHEN ((present_days/total_days)*100) BETWEEN 75 AND 89
        THEN 'Average'

        ELSE 'Poor'
    END AS attendance_status
FROM attendance;

--output

| attendance_percentage | month_name | absent_days | employee_name | attendance_status |
| --------------------- | ---------- | ----------- | ------------- | ----------------- |
| 93                    | January    | 2           | karthik       | Excellent         |
| 73                    | January    | 8           | veena         | Poor              |
| 60                    | January    | 12          | ravi          | Poor              |
