--sql

SELECT
    CONCAT(
        UPPER(LEFT(cust_name,1)),
        LOWER(SUBSTRING(cust_name,2))
    ) AS customer_name,

    MONTHNAME(purchase_date) AS purchase_month,

    ROUND(purchase_amount,0) AS rounded_amount,

    ABS(purchase_amount) AS absolute_purchase,

    CASE
        WHEN purchase_amount > 15000
        THEN 'High spender'

        WHEN purchase_amount BETWEEN 8000 AND 15000
        THEN 'Medium'

        ELSE 'Low'
    END AS spending_category
FROM customer_spending;

--output

| customer_name | purchase_month | rounded_amount | absolute_purchase | spending_category |
| ------------- | -------------- | -------------- | ----------------- | ----------------- |
| Amit          | December       | 12001          | 12000.75          | Medium            |
| Neha          | December       | 8500           | 8500.40           | Medium            |
| Rohit         | November       | 15501          | 15500.90          | High spender      |
| Kavya         | October        | 6000           | 6000.10           | Low               |
