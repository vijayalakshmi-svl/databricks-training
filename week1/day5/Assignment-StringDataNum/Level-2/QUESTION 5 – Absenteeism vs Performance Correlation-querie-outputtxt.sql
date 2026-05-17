--sql

SELECT
    emp_id,

    emp_name,

    CASE
        WHEN work_date >= CURDATE() - INTERVAL 7 DAY
            THEN 'Recent Record'
        ELSE 'Old Record'
    END AS record_status,

    CASE
        WHEN DAYNAME(work_date) IN ('Saturday','Sunday')
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,

    ROUND(
        TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600,
        2
    ) AS total_hours,

    FLOOR(
        TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600
    ) AS floor_hours,

    CASE
        WHEN work_date >= CURDATE() - INTERVAL 7 DAY
             AND DAYNAME(work_date) NOT IN ('Saturday','Sunday')
             AND TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 >= 8
            THEN 'Consistent Performer'

        WHEN TIME_TO_SEC(TIMEDIFF(logout_time, login_time))/3600 < 6
            THEN 'Irregular Performer'

        ELSE 'Absent / Old Record'
    END AS performance_status

FROM performance_tracker;

--output

| emp_id | emp_name | record_status | day_type | total_hours | floor_hours | performance_status  |
| ------ | -------- | ------------- | -------- | ----------- | ----------- | ------------------- |
| 1      | Karthik  | Old Record    | Weekday  | 9.00        | 9           | Absent / Old Record |
| 2      | Karthik  | Old Record    | Weekday  | 8.67        | 8           | Absent / Old Record |
| 3      | Veena    | Old Record    | Weekend  | 5.00        | 5           | Irregular Performer |
| 4      | Ravi     | Old Record    | Weekday  | 10.00       | 10          | Absent / Old Record |
| 5      | Anil     | Old Record    | Weekday  | 3.00        | 3           | Irregular Performer |
