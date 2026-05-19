--sql

SELECT
    UPPER(customer_name) AS customer_name,

    DATEDIFF(IFNULL(delivery_date,CURDATE()),order_date)
    AS delivery_days,

    IFNULL(delivery_date,CURDATE()) AS final_delivery_date,

    TRUNCATE(order_amount,1) AS truncated_amount,

    CASE
        WHEN delivery_date IS NULL
        THEN 'Pending'

        WHEN DATEDIFF(delivery_date,order_date)=0
        THEN 'Same-day'

        WHEN DATEDIFF(delivery_date,order_date)>3
        THEN 'Delayed'

        ELSE 'Normal'
    END AS delivery_status
FROM orders_delivery;

--output

| customer_name | delivery_days | final_delivery_date | truncated_amount | delivery_status |
| ------------- | ------------- | ------------------- | ---------------- | --------------- |
| RAJESH        | 4             | 2025-01-05          | 12500.7          | Delayed         |
| MEENA         | 0             | 2025-01-10          | 8400.4           | Same-day        |
| ARUN          | 5             | 2025-01-20          | 15600.9          | Delayed         |
| POOJA         | 486           | 2026-05-19          | 9200.1           | Pending         |
