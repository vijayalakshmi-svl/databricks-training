--1. Current Date & Time Functions
SELECT CURDATE()

--output
| CURDATE()  |
| ---------- |
| 2026-05-16 |

SELECT CURRENT_DATE();

--output
| CURRENT_DATE() |
| -------------- |
| 2026-05-16     |

SELECT CURTIME();

--output
| CURTIME() |
| --------- |
| 14:30:25  |

SELECT CURRENT_TIME();

--output
| CURRENT_TIME() |
| -------------- |
| 14:30:25       |

SELECT NOW();

--output
| NOW()               |
| ------------------- |
| 2026-05-16 14:30:25 |

SELECT CURRENT_TIMESTAMP;

--output
| CURRENT_TIMESTAMP   |
| ------------------- |
| 2026-05-16 14:30:25 |

--2. Extracting YEAR, MONTH, DAY
SELECT YEAR(order_date),
       MONTH(order_date),
       DAY(order_date)
FROM orders;

--output
| YEAR(order_date) | MONTH(order_date) | DAY(order_date) |
| ---------------- | ----------------- | --------------- |
| 2024             | 1                 | 15              |
| 2024             | 2                 | 18              |
| 2024             | 3                 | 2               |
| 2024             | 3                 | 9               |
| 2024             | 1                 | 7               |

--3. EXTRACT() Function
SELECT EXTRACT(YEAR FROM order_date),
       EXTRACT(MONTH FROM order_date),
       EXTRACT(DAY FROM order_date)
FROM orders;

--output
| EXTRACT(YEAR) | EXTRACT(MONTH) | EXTRACT(DAY) |
| ------------- | -------------- | ------------ |
| 2024          | 1              | 15           |
| 2024          | 2              | 18           |
| 2024          | 3              | 2            |
| 2024          | 3              | 9            |
| 2024          | 1              | 7            |

--4. MONTHNAME and DAYNAME
SELECT MONTHNAME(order_date),
       DAYNAME(order_date)
FROM orders;

--output
| MONTHNAME(order_date) | DAYNAME(order_date) |
| --------------------- | ------------------- |
| January               | Monday              |
| February              | Sunday              |
| March                 | Saturday            |
| March                 | Saturday            |
| January               | Sunday              |

--5. WEEKDAY and DAYOFWEEK
SELECT WEEKDAY(order_date),
       DAYOFWEEK(order_date)
FROM orders;

--output
| WEEKDAY(order_date) | DAYOFWEEK(order_date) |
| ------------------- | --------------------- |
| 0                   | 2                     |
| 6                   | 1                     |
| 5                   | 7                     |
| 5                   | 7                     |
| 6                   | 1                     |

--6. Identify Weekends using DAYNAME
SELECT order_id, order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday', 'Sunday');

--output
| order_id | order_date |
| -------- | ---------- |
| 2        | 2024-02-18 |
| 3        | 2024-03-02 |
| 4        | 2024-03-09 |
| 5        | 2024-01-07 |

--7. Identify Weekends using DAYOFWEEK
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) IN (1, 7);

--output
| order_id | order_date |
| -------- | ---------- |
| 2        | 2024-02-18 |
| 3        | 2024-03-02 |
| 4        | 2024-03-09 |
| 5        | 2024-01-07 |

--8. Identify Weekdays
SELECT order_id, order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;

--output
| order_id | order_date |
| -------- | ---------- |
| 1        | 2024-01-15 |

--9. DATE_ADD
SELECT order_date,
       DATE_ADD(order_date, INTERVAL 5 DAY)
FROM orders;

--output
| order_date | DATE_ADD(order_date, INTERVAL 5 DAY) |
| ---------- | ------------------------------------ |
| 2024-01-15 | 2024-01-20                           |
| 2024-02-18 | 2024-02-23                           |
| 2024-03-02 | 2024-03-07                           |
| 2024-03-09 | 2024-03-14                           |
| 2024-01-07 | 2024-01-12                           |

--10. DATE_SUB
SELECT order_date,
       DATE_SUB(order_date, INTERVAL 3 DAY)
FROM orders;

--output
| order_date | DATE_SUB(order_date, INTERVAL 3 DAY) |
| ---------- | ------------------------------------ |
| 2024-01-15 | 2024-01-12                           |
| 2024-02-18 | 2024-02-15                           |
| 2024-03-02 | 2024-02-28                           |
| 2024-03-09 | 2024-03-06                           |
| 2024-01-07 | 2024-01-04                           |

--11. Add One Month
SELECT DATE_ADD(order_date, INTERVAL 1 MONTH)
FROM orders;

--output
| DATE_ADD(order_date, INTERVAL 1 MONTH) |
| -------------------------------------- |
| 2024-02-15                             |
| 2024-03-18                             |
| 2024-04-02                             |
| 2024-04-09                             |
| 2024-02-07                             |

--12. Subtract Two Months
SELECT DATE_SUB(order_date, INTERVAL 2 MONTH)
FROM orders;

--output
| DATE_SUB(order_date, INTERVAL 2 MONTH) |
| -------------------------------------- |
| 2023-11-15                             |
| 2023-12-18                             |
| 2024-01-02                             |
| 2024-01-09                             |
| 2023-11-07                             |

--13. Add One Year
SELECT DATE_ADD(order_date, INTERVAL 1 YEAR)
FROM orders;

--output
| DATE_ADD(order_date, INTERVAL 1 YEAR) |
| ------------------------------------- |
| 2025-01-15                            |
| 2025-02-18                            |
| 2025-03-02                            |
| 2025-03-09                            |
| 2025-01-07                            |

--14. DATEDIFF
SELECT order_id,
       DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;

--output
| order_id | delivery_days |
| -------- | ------------- |
| 1        | 5             |
| 2        | 4             |
| 3        | 6             |
| 4        | 6             |
| 5        | 5             |

--15. TIMESTAMPDIFF
SELECT TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_diff,
       TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_diff
FROM orders;

--output
| days_diff | months_diff |
| --------- | ----------- |
| 5         | 0           |
| 4         | 0           |
| 6         | 0           |
| 6         | 0           |
| 5         | 0           |

--16. LAST_DAY
SELECT LAST_DAY(order_date)
FROM orders;

--output
| LAST_DAY(order_date) |
| -------------------- |
| 2024-01-31           |
| 2024-02-29           |
| 2024-03-31           |
| 2024-03-31           |
| 2024-01-31           |

--17. First Day of Month
SELECT DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY)
FROM orders;

--output
| DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) |
| ---------------------------------------------------- |
| 2024-01-01                                           |
| 2024-02-01                                           |
| 2024-03-01                                           |
| 2024-03-01                                           |
| 2024-01-01                                           |

--18. DATE_FORMAT
SELECT DATE_FORMAT(order_date, '%d-%m-%Y')
FROM orders;

--output
| DATE_FORMAT(order_date,'%d-%m-%Y') |
| ---------------------------------- |
| 15-01-2024                         |
| 18-02-2024                         |
| 02-03-2024                         |
| 09-03-2024                         |
| 07-01-2024                         |

SELECT DATE_FORMAT(order_date, '%M %d, %Y')
FROM orders;

--output
| DATE_FORMAT(order_date,'%M %d, %Y') |
| ----------------------------------- |
| January 15, 2024                    |
| February 18, 2024                   |
| March 02, 2024                      |
| March 09, 2024                      |
| January 07, 2024                    |

--19. STR_TO_DATE
SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');

--output
| STR_TO_DATE('15-01-2024','%d-%m-%Y') |
| ------------------------------------ |
| 2024-01-15                           |

--20. TIMESTAMP Formatting
SELECT DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s')
FROM orders;

--output
| DATE_FORMAT(order_timestamp,'%d-%m-%Y %H:%i:%s') |
| ------------------------------------------------ |
| 15-01-2024 10:30:45                              |
| 18-02-2024 18:45:20                              |
| 02-03-2024 09:15:10                              |
| 09-03-2024 14:05:55                              |
| 07-01-2024 23:55:00                              |

--21. Filter by Month
SELECT *
FROM orders
WHERE MONTH(order_date) = 1;

--output
| order_id | customer_name | order_date | order_timestamp     | delivery_date | order_amount |
| -------- | ------------- | ---------- | ------------------- | ------------- | ------------ |
| 1        | Karthik       | 2024-01-15 | 2024-01-15 10:30:45 | 2024-01-20    | 2500.00      |
| 5        | Suresh        | 2024-01-07 | 2024-01-07 23:55:00 | 2024-01-12    | 2900.00      |

SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';

--output
| order_id | customer_name | order_date | order_timestamp     | delivery_date | order_amount |
| -------- | ------------- | ---------- | ------------------- | ------------- | ------------ |
| 2        | Veena         | 2024-02-18 | 2024-02-18 18:45:20 | 2024-02-22    | 3200.50      |

--22. Financial Year Logic
SELECT order_date,
CASE
    WHEN MONTH(order_date) >= 4
    THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
    ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
END AS financial_year
FROM orders;

--output
| order_date | financial_year |
| ---------- | -------------- |
| 2024-01-15 | 2023-2024      |
| 2024-02-18 | 2023-2024      |
| 2024-03-02 | 2023-2024      |
| 2024-03-09 | 2023-2024      |
| 2024-01-07 | 2023-2024      |

--23. Orders in Last 7 Days
SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;

--output
| order_id         | customer_name | order_date | order_timestamp | delivery_date | order_amount |
| ---------------- | ------------- | ---------- | --------------- | ------------- | ------------ |
| No rows returned |               |            |                 |               |              |

--24. Orders Placed Today
SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();

--output
| order_id         | customer_name | order_date | order_timestamp | delivery_date | order_amount |
| ---------------- | ------------- | ---------- | --------------- | ------------- | ------------ |
| No rows returned |               |            |                 |               |              |
