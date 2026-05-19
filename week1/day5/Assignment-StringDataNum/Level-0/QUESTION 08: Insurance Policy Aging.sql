--sql

SELECT
    TIMESTAMPDIFF(YEAR,policy_start,policy_end)
    AS policy_duration_years,

    DATEDIFF(policy_end,CURDATE())
    AS remaining_days,

    ROUND(premium_amount,0) AS rounded_premium,

    UPPER(holder_name) AS holder_name,

    CASE
        WHEN policy_end > CURDATE()
             AND TIMESTAMPDIFF(YEAR,policy_start,policy_end)>=3
        THEN 'Long Term'

        WHEN policy_end > CURDATE()
        THEN 'Mid Term'

        ELSE 'Expired'
    END AS policy_status
FROM insurance_policies;

--output

| policy_duration_years | remaining_days | rounded_premium | holder_name | policy_status |
| --------------------- | -------------- | --------------- | ----------- | ------------- |
| 3                     | -138           | 12001           | ARJUN       | Expired       |
| 3                     | -338           | 8501            | MEGHA       | Expired       |
| 3                     | -810           | 15001           | VINOD       | Expired       |
