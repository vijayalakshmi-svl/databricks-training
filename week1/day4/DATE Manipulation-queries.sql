-- 1. Current Date & Time Functions
SELECT CURDATE();

SELECT CURRENT_DATE();

SELECT CURTIME();

SELECT CURRENT_TIME();

SELECT NOW();

SELECT CURRENT_TIMESTAMP;


-- 2. Extracting YEAR, MONTH, DAY
SELECT
    YEAR(order_date),
    MONTH(order_date),
    DAY(order_date)
FROM orders;


-- 3. EXTRACT() Function
SELECT
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date),
    EXTRACT(DAY FROM order_date)
FROM orders;


-- 4. MONTHNAME and DAYNAME
SELECT
    MONTHNAME(order_date),
    DAYNAME(order_date)
FROM orders;


-- 5. WEEKDAY and DAYOFWEEK
SELECT
    WEEKDAY(order_date),
    DAYOFWEEK(order_date)
FROM orders;


-- 6. Identify Weekends using DAYNAME
SELECT order_id, order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');


-- 7. Identify Weekends using DAYOFWEEK
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) IN (1, 7);


-- 8. Identify Weekdays
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;


-- 9. DATE_ADD
SELECT order_date,
       DATE_ADD(order_date, INTERVAL 5 DAY)
FROM orders;


-- 10. DATE_SUB
SELECT order_date,
       DATE_SUB(order_date, INTERVAL 3 DAY)
FROM orders;


-- 11. Add One Month
SELECT DATE_ADD(order_date, INTERVAL 1 MONTH)
FROM orders;


-- 12. Subtract Two Months
SELECT DATE_SUB(order_date, INTERVAL 2 MONTH)
FROM orders;


-- 13. Add One Year
SELECT DATE_ADD(order_date, INTERVAL 1 YEAR)
FROM orders;


-- 14. DATEDIFF
SELECT
    order_id,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;


-- 15. TIMESTAMPDIFF
SELECT
    TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_diff,
    TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_diff
FROM orders;


-- 16. LAST_DAY
SELECT LAST_DAY(order_date)
FROM orders;


-- 17. First Day of Month
SELECT DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY)
FROM orders;


-- 18. DATE_FORMAT
SELECT DATE_FORMAT(order_date, '%d-%m-%Y')
FROM orders;

SELECT DATE_FORMAT(order_date, '%M %d, %Y')
FROM orders;


-- 19. STR_TO_DATE
SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');


-- 20. TIMESTAMP Formatting
SELECT DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s')
FROM orders;


-- 21. Filter by Month
SELECT *
FROM orders
WHERE MONTH(order_date) = 1;

SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';


-- 22. Financial Year Logic
SELECT order_date,
CASE
    WHEN MONTH(order_date) >= 4
    THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
    ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
END AS financial_year
FROM orders;


-- 23. Orders in Last 7 Days
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;


-- 24. Orders Placed Today
SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();
