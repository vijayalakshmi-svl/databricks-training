--sql

SELECT
    emp_id,

    emp_name,

    HOUR(login_datetime) AS login_hour,

    ROUND(
        TIMESTAMPDIFF(MINUTE, login_datetime, logout_datetime)/60,
        2
    ) AS total_working_hours,

    TRUNCATE(
        TIMESTAMPDIFF(MINUTE, login_datetime, logout_datetime)/60,
        1
    ) AS truncated_hours,

    DAYNAME(login_datetime) AS weekday_name,

    CASE
        WHEN DAYNAME(login_datetime) NOT IN ('Saturday','Sunday')
             AND HOUR(login_datetime) < 9
             AND TIMESTAMPDIFF(MINUTE, login_datetime, logout_datetime)/60 >= 8
            THEN 'Disciplined'

        WHEN DAYNAME(login_datetime) NOT IN ('Saturday','Sunday')
             AND HOUR(login_datetime) > 10
            THEN 'Late Comer'

        ELSE 'Poor Discipline'
    END AS discipline_status

FROM login_discipline;

--output

| emp_id | emp_name | login_hour | total_working_hours | truncated_hours | weekday_name | discipline_status |
| ------ | -------- | ---------- | ------------------- | --------------- | ------------ | ----------------- |
| 1      | Karthik  | 8          | 9.25                | 9.2             | Wednesday    | Disciplined       |
| 2      | Veena    | 10         | 5.25                | 5.2             | Wednesday    | Poor Discipline   |
| 3      | Ravi     | 9          | 11.50               | 11.5            | Wednesday    | Poor Discipline   |
| 4      | Anil     | 11         | 2.50                | 2.5             | Wednesday    | Late Comer        |
