--sql

SELECT
    LEFT(emp_name,1) AS first_character,

    TRUNCATE(salary,0) AS truncated_salary,

    (
        FLOOR(TRUNCATE(salary,0)/10000) +
        FLOOR((TRUNCATE(salary,0)%10000)/1000) +
        FLOOR((TRUNCATE(salary,0)%1000)/100) +
        FLOOR((TRUNCATE(salary,0)%100)/10) +
        MOD(TRUNCATE(salary,0),10)
    ) AS digit_sum,

    DAY(audit_date) AS audit_day,

    CASE
        WHEN (
            FLOOR(TRUNCATE(salary,0)/10000) +
            FLOOR((TRUNCATE(salary,0)%10000)/1000) +
            FLOOR((TRUNCATE(salary,0)%1000)/100) +
            FLOOR((TRUNCATE(salary,0)%100)/10) +
            MOD(TRUNCATE(salary,0),10)
        ) > 20
        THEN 'Digit Alert'

        ELSE 'Normal'
    END AS status
FROM digit_audit;


--output

| first_character | truncated_salary | digit_sum | audit_day | status |
| --------------- | ---------------- | --------- | --------- | ------ |
| A               | 70000            | 7         | 1         | Normal |
| V               | 65000            | 11        | 2         | Normal |
