--sql

SELECT
    CASE
        WHEN MONTH(credit_date)>=4
        THEN CONCAT(YEAR(credit_date),'-',YEAR(credit_date)+1)

        ELSE CONCAT(YEAR(credit_date)-1,'-',YEAR(credit_date))
    END AS fiscal_year,

    MONTHNAME(credit_date) AS month_name,

    FORMAT(salary,2) AS formatted_salary,

    LOWER(emp_name) AS emp_name,

    CASE
        WHEN MONTH(credit_date)=3
        THEN 'Year End Credit'

        WHEN MONTH(credit_date)=4
        THEN 'Year Start Credit'

        ELSE 'Mid Year'
    END AS status
FROM fiscal_salary;

--output

| fiscal_year | month_name | formatted_salary | emp_name | status            |
| ----------- | ---------- | ---------------- | -------- | ----------------- |
| 2024-2025   | March      | 75,000.75        | karthik  | Year End Credit   |
| 2025-2026   | April      | 65,000.40        | veena    | Year Start Credit |
| 2023-2024   | March      | 85,000.90        | ravi     | Year End Credit   |
| 2024-2025   | April      | 70,000.10        | anil     | Year Start Credit |
| 2024-2025   | March      | 60,000.55        | suresh   | Year End Credit   |
