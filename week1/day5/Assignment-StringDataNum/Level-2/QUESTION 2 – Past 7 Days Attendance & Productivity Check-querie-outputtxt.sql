--sql

SELECT
    emp_id,

    UPPER(emp_name) AS employee_name,

    CASE
        WHEN login_date >= CURDATE() - INTERVAL 7 DAY
            THEN 'Within Last 7 Days'
        ELSE 'Old Record'
    END AS attendance_status,

    CASE
        WHEN DAYNAME(login_date) IN ('Saturday','Sunday')
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,

    TIMEDIFF(logout_time, login_time) AS working_hours,

    CASE
        WHEN login_date >= CURDATE() - INTERVAL 7 DAY
             AND TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 >= 8
            THEN 'Active & Productive'

        WHEN login_date >= CURDATE() - INTERVAL 7 DAY
             AND TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 < 8
            THEN 'Active but Low Hours'

        ELSE 'Absent from Last 7 Days'
    END AS productivity_status

FROM attendance_log;

--output

| emp_id | employee_name | attendance_status | day_type | working_hours | productivity_status     |
| ------ | ------------- | ----------------- | -------- | ------------- | ----------------------- |
| 1      | KARTHIK       | Old Record        | Weekday  | 09:00:00      | Absent from Last 7 Days |
| 2      | KARTHIK       | Old Record        | Weekday  | 08:15:00      | Absent from Last 7 Days |
| 3      | VEENA         | Old Record        | Weekend  | 05:00:00      | Absent from Last 7 Days |
| 4      | RAVI          | Old Record        | Weekday  | 10:00:00      | Absent from Last 7 Days |
| 5      | ANIL          | Old Record        | Weekday  | 03:00:00      | Absent from Last 7 Days |
