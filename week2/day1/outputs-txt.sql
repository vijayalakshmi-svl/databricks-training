--Assumed employees Table Data

| emp_id | emp_name | department | salary | join_date  |
| ------ | -------- | ---------- | ------ | ---------- |
| 1      | Karthik  | Data       | 75000  | 2019-03-15 |
| 2      | Veena    | HR         | 65000  | 2021-06-20 |
| 3      | Ravi     | Data       | 85000  | 2016-01-10 |
| 4      | Anil     | Finance    | 70000  | 2020-09-01 |
| 5      | Suresh   | HR         | 60000  | 2022-11-25 |

--Assumed orders Table Data

| order_id | customer_name | city    | order_amount | order_date |
| -------- | ------------- | ------- | ------------ | ---------- |
| 101      | Rajesh        | Mumbai  | 12000        | 2025-01-01 |
| 102      | Meena         | Delhi   | 8500         | 2025-01-05 |
| 103      | Arun          | Mumbai  | 15000        | 2025-01-03 |
| 104      | Pooja         | Chennai | 9500         | 2025-01-02 |

--ROW_NUMBER() OUTPUTS
--Q1 Output

| emp_id | emp_name | department | salary | row_num |
| ------ | -------- | ---------- | ------ | ------- |
| 3      | Ravi     | Data       | 85000  | 1       |
| 1      | Karthik  | Data       | 75000  | 2       |
| 4      | Anil     | Finance    | 70000  | 3       |
| 2      | Veena    | HR         | 65000  | 4       |
| 5      | Suresh   | HR         | 60000  | 5       |

--Q2 Output

| emp_id | emp_name | department | salary | row_num |
| ------ | -------- | ---------- | ------ | ------- |
| 3      | Ravi     | Data       | 85000  | 1       |
| 1      | Karthik  | Data       | 75000  | 2       |
| 4      | Anil     | Finance    | 70000  | 1       |
| 2      | Veena    | HR         | 65000  | 1       |
| 5      | Suresh   | HR         | 60000  | 2       |

--Q3 Output

| emp_id | emp_name | join_date  | row_num |
| ------ | -------- | ---------- | ------- |
| 5      | Suresh   | 2022-11-25 | 1       |
| 2      | Veena    | 2021-06-20 | 2       |
| 4      | Anil     | 2020-09-01 | 3       |
| 1      | Karthik  | 2019-03-15 | 4       |
| 3      | Ravi     | 2016-01-10 | 5       |

--Q4 Output

| emp_id | emp_name | department | join_date  | row_num |
| ------ | -------- | ---------- | ---------- | ------- |
| 3      | Ravi     | Data       | 2016-01-10 | 1       |
| 1      | Karthik  | Data       | 2019-03-15 | 2       |
| 4      | Anil     | Finance    | 2020-09-01 | 1       |
| 2      | Veena    | HR         | 2021-06-20 | 1       |
| 5      | Suresh   | HR         | 2022-11-25 | 2       |

--Q5 Output

| order_id | customer_name | city    | order_amount | order_date | row_num |
| -------- | ------------- | ------- | ------------ | ---------- | ------- |
| 101      | Rajesh        | Mumbai  | 12000        | 2025-01-01 | 1       |
| 104      | Pooja         | Chennai | 9500         | 2025-01-02 | 2       |
| 103      | Arun          | Mumbai  | 15000        | 2025-01-03 | 3       |
| 102      | Meena         | Delhi   | 8500         | 2025-01-05 | 4       |


--Q6 Output

| order_id | customer_name | city    | order_amount | row_num |
| -------- | ------------- | ------- | ------------ | ------- |
| 104      | Pooja         | Chennai | 9500         | 1       |
| 102      | Meena         | Delhi   | 8500         | 1       |
| 103      | Arun          | Mumbai  | 15000        | 1       |
| 101      | Rajesh        | Mumbai  | 12000        | 2       |


--Q7 Output

| emp_id | emp_name | salary | row_num |
| ------ | -------- | ------ | ------- |
| 5      | Suresh   | 60000  | 1       |
| 2      | Veena    | 65000  | 2       |
| 4      | Anil     | 70000  | 3       |
| 1      | Karthik  | 75000  | 4       |
| 3      | Ravi     | 85000  | 5       |


--Q8 Output

| emp_id | emp_name | department | row_num |
| ------ | -------- | ---------- | ------- |
| 1      | Karthik  | Data       | 1       |
| 3      | Ravi     | Data       | 2       |
| 4      | Anil     | Finance    | 1       |
| 5      | Suresh   | HR         | 1       |
| 2      | Veena    | HR         | 2       |


--RANK() OUTPUTS
--Q9 Output

| emp_id | emp_name | salary | emp_rank |
| ------ | -------- | ------ | -------- |
| 3      | Ravi     | 85000  | 1        |
| 1      | Karthik  | 75000  | 2        |
| 4      | Anil     | 70000  | 3        |
| 2      | Veena    | 65000  | 4        |
| 5      | Suresh   | 60000  | 5        |


--Q10 Output

| emp_id | emp_name | department | salary | emp_rank |
| ------ | -------- | ---------- | ------ | -------- |
| 3      | Ravi     | Data       | 85000  | 1        |
| 1      | Karthik  | Data       | 75000  | 2        |
| 4      | Anil     | Finance    | 70000  | 1        |
| 2      | Veena    | HR         | 65000  | 1        |
| 5      | Suresh   | HR         | 60000  | 2        |


--Q11 Output

| emp_id | emp_name | join_date  | emp_rank |
| ------ | -------- | ---------- | -------- |
| 5      | Suresh   | 2022-11-25 | 1        |
| 2      | Veena    | 2021-06-20 | 2        |
| 4      | Anil     | 2020-09-01 | 3        |
| 1      | Karthik  | 2019-03-15 | 4        |
| 3      | Ravi     | 2016-01-10 | 5        |


--Q12 Output

| order_id | customer_name | city    | order_amount | order_rank |
| -------- | ------------- | ------- | ------------ | ---------- |
| 103      | Arun          | Mumbai  | 15000        | 1          |
| 101      | Rajesh        | Mumbai  | 12000        | 2          |
| 104      | Pooja         | Chennai | 9500         | 3          |
| 102      | Meena         | Delhi   | 8500         | 4          |


--Q13 Output

| order_id | customer_name | city    | order_amount | order_rank |
| -------- | ------------- | ------- | ------------ | ---------- |
| 104      | Pooja         | Chennai | 9500         | 1          |
| 102      | Meena         | Delhi   | 8500         | 1          |
| 103      | Arun          | Mumbai  | 15000        | 1          |
| 101      | Rajesh        | Mumbai  | 12000        | 2          |


--Q14 Output

| emp_id | emp_name | department | salary | emp_rank |
| ------ | -------- | ---------- | ------ | -------- |
| 1      | Karthik  | Data       | 75000  | 1        |
| 3      | Ravi     | Data       | 85000  | 2        |
| 4      | Anil     | Finance    | 70000  | 1        |
| 5      | Suresh   | HR         | 60000  | 1        |
| 2      | Veena    | HR         | 65000  | 2        |


--Q15 Output

| emp_id | emp_name | emp_rank |
| ------ | -------- | -------- |
| 4      | Anil     | 1        |
| 1      | Karthik  | 2        |
| 3      | Ravi     | 3        |
| 5      | Suresh   | 4        |
| 2      | Veena    | 5        |


--Q16 Output

| order_id | customer_name | city    | order_date | order_rank |
| -------- | ------------- | ------- | ---------- | ---------- |
| 104      | Pooja         | Chennai | 2025-01-02 | 1          |
| 102      | Meena         | Delhi   | 2025-01-05 | 1          |
| 101      | Rajesh        | Mumbai  | 2025-01-01 | 1          |
| 103      | Arun          | Mumbai  | 2025-01-03 | 2          |


--DENSE_RANK() OUTPUTS
--Q17 Output

| emp_id | emp_name | salary | dense_rank_num |
| ------ | -------- | ------ | -------------- |
| 3      | Ravi     | 85000  | 1              |
| 1      | Karthik  | 75000  | 2              |
| 4      | Anil     | 70000  | 3              |
| 2      | Veena    | 65000  | 4              |
| 5      | Suresh   | 60000  | 5              |

--Q18 Output

| emp_id | emp_name | department | salary | dense_rank_num |
| ------ | -------- | ---------- | ------ | -------------- |
| 3      | Ravi     | Data       | 85000  | 1              |
| 1      | Karthik  | Data       | 75000  | 2              |
| 4      | Anil     | Finance    | 70000  | 1              |
| 2      | Veena    | HR         | 65000  | 1              |
| 5      | Suresh   | HR         | 60000  | 2              |


--Q19 Output

| emp_id | emp_name | join_date  | dense_rank_num |
| ------ | -------- | ---------- | -------------- |
| 5      | Suresh   | 2022-11-25 | 1              |
| 2      | Veena    | 2021-06-20 | 2              |
| 4      | Anil     | 2020-09-01 | 3              |
| 1      | Karthik  | 2019-03-15 | 4              |
| 3      | Ravi     | 2016-01-10 | 5              |


--Q20 Output

| order_id | customer_name | city    | order_amount | dense_rank_num |
| -------- | ------------- | ------- | ------------ | -------------- |
| 103      | Arun          | Mumbai  | 15000        | 1              |
| 101      | Rajesh        | Mumbai  | 12000        | 2              |
| 104      | Pooja         | Chennai | 9500         | 3              |
| 102      | Meena         | Delhi   | 8500         | 4              |


--Q21 Output

| order_id | customer_name | city    | order_amount | dense_rank_num |
| -------- | ------------- | ------- | ------------ | -------------- |
| 104      | Pooja         | Chennai | 9500         | 1              |
| 102      | Meena         | Delhi   | 8500         | 1              |
| 103      | Arun          | Mumbai  | 15000        | 1              |
| 101      | Rajesh        | Mumbai  | 12000        | 2              |


--Q22 Output

| emp_id | emp_name | salary | dense_rank_num |
| ------ | -------- | ------ | -------------- |
| 5      | Suresh   | 60000  | 1              |
| 2      | Veena    | 65000  | 2              |
| 4      | Anil     | 70000  | 3              |
| 1      | Karthik  | 75000  | 4              |
| 3      | Ravi     | 85000  | 5              |


--Q23 Output

| emp_id | emp_name | department | join_date  | dense_rank_num |
| ------ | -------- | ---------- | ---------- | -------------- |
| 3      | Ravi     | Data       | 2016-01-10 | 1              |
| 1      | Karthik  | Data       | 2019-03-15 | 2              |
| 4      | Anil     | Finance    | 2020-09-01 | 1              |
| 2      | Veena    | HR         | 2021-06-20 | 1              |
| 5      | Suresh   | HR         | 2022-11-25 | 2              |


--Q24 Output

| order_id | customer_name | city    | order_date | dense_rank_num |
| -------- | ------------- | ------- | ---------- | -------------- |
| 101      | Rajesh        | Mumbai  | 2025-01-01 | 1              |
| 104      | Pooja         | Chennai | 2025-01-02 | 2              |
| 103      | Arun          | Mumbai  | 2025-01-03 | 3              |
| 102      | Meena         | Delhi   | 2025-01-05 | 4              |
