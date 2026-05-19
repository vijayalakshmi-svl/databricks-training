--sql

SELECT
    ABS(mrp-selling_price) AS discount_amount,

    ROUND(
        ABS((mrp-selling_price)/mrp)*100,2
    ) AS discount_percentage,

    DAYNAME(sale_date) AS sale_day,

    CONCAT(
        UPPER(LEFT(product_name,1)),
        LOWER(SUBSTRING(product_name,2))
    ) AS proper_product_name,

    CASE
        WHEN selling_price < mrp
        THEN 'Valid Discount'

        WHEN selling_price > mrp
        THEN 'Overpriced'

        ELSE 'No Discount'
    END AS product_status
FROM product_sales;

--output

| discount_amount | discount_percentage | sale_day  | proper_product_name | product_status |
| --------------- | ------------------- | --------- | ------------------- | -------------- |
| 7000.25         | 9.33                | Friday    | Laptop              | Valid Discount |
| 2000.15         | 5.71                | Sunday    | Mobile              | Valid Discount |
| 999.85          | 4.00                | Wednesday | Tablet              | Overpriced     |
