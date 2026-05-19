--sql

SELECT
    SUBSTRING_INDEX(user_email,'@',-1) AS email_domain,

    TIMESTAMPDIFF(MONTH,start_date,end_date)
    AS subscription_months,

    FORMAT(subscription_fee,2) AS formatted_fee,

    DATEDIFF(end_date,CURDATE()) AS remaining_days,

    CASE
        WHEN end_date > CURDATE()
        THEN 'Active'

        WHEN DATEDIFF(end_date,CURDATE()) BETWEEN 0 AND 30
        THEN 'Expiring Soon'

        ELSE 'Expired'
    END AS subscription_status
FROM subscriptions;

--output

| email_domain | subscription_months | formatted_fee | remaining_days | subscription_status |
| ------------ | ------------------- | ------------- | -------------- | ------------------- |
| gmail.com    | 12                  | 12,000.50     | -503           | Expired             |
| yahoo.com    | 6                   | 8,500.75      | -520           | Expired             |
| hotmail.com  | 12                  | 15,000.90     | -810           | Expired             |
