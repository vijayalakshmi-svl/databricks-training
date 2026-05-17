--sql

SELECT
    emp_id,

    LOWER(emp_name) AS employee_name,

    DAYNAME(work_date) AS day_name,

    ROUND(
        TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600,
        2
    ) AS working_hours,

    CEIL(
        TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600
    ) AS ceil_hours,

    CASE
        WHEN DAYNAME(work_date) IN ('Saturday','Sunday')
             AND TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 >= 8
            THEN 'Weekend Overtime'

        WHEN DAYNAME(work_date) IN ('Saturday','Sunday')
             AND TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 < 4
            THEN 'Suspicious Login'

        ELSE 'Normal Working Day'
    END AS work_status

FROM weekend_monitor;

--output

| emp_id | employee_name | day_name | working_hours | ceil_hours | work_status        |
| ------ | ------------- | -------- | ------------- | ---------- | ------------------ |
| 1      | ravi          | Saturday | 12.00         | 12         | Weekend Overtime   |
| 2      | veena         | Sunday   | 3.00          | 3          | Suspicious Login   |
| 3      | karthik       | Friday   | 9.00          | 9          | Normal Working Day |
| 4      | anil          | Thursday | 3.00          | 3          | Normal Working Day |
