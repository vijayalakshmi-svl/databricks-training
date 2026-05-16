-- Numeric Functions in MySQL

--1. ABS – Absolute Value
SELECT ABS(-100);

--output
| ABS(-100) |
| --------- |
| 100       |

--2. ROUND – Round to Decimals
SELECT ROUND(base_salary, 0) FROM employee_salary;

--output
| ROUND(base_salary,0) |
| -------------------- |
| 75001                |
| 65000                |
| 85001                |
| 70000                |
| 60001                |

SELECT ROUND(base_salary, 2) FROM employee_salary;

--output
| ROUND(base_salary,2) |
| -------------------- |
| 75000.75             |
| 65000.40             |
| 85000.90             |
| 70000.10             |
| 60000.55             |

--3. CEILING / CEIL – Round Up
SELECT CEIL(base_salary) FROM employee_salary;

--output
| CEIL(base_salary) |
| ----------------- |
| 75001             |
| 65001             |
| 85001             |
| 70001             |
| 60001             |

--4. FLOOR – Round Down
SELECT FLOOR(base_salary) FROM employee_salary;

--output
| FLOOR(base_salary) |
| ------------------ |
| 75000              |
| 65000              |
| 85000              |
| 70000              |
| 60000              |

--5. TRUNCATE – Cut Decimals
SELECT TRUNCATE(base_salary, 1) FROM employee_salary;

--output
| TRUNCATE(base_salary,1) |
| ----------------------- |
| 75000.7                 |
| 65000.4                 |
| 85000.9                 |
| 70000.1                 |
| 60000.5                 |

--6. MOD – Remainder
SELECT MOD(experience_years, 2) FROM employee_salary;

--output
| MOD(experience_years,2) |
| ----------------------- |
| 0                       |
| 0                       |
| 0                       |
| 1                       |
| 1                       |

--7. POWER / POW – Exponent
SELECT POWER(2, 3);

--output
| POWER(2,3) |
| ---------- |
| 8          |

SELECT POW(5, 2);

| POW(5,2) |
| -------- |
| 25       |

--8. SQRT – Square Root
SELECT SQRT(64);

--output
| SQRT(64) |
| -------- |
| 8        |

--9. SIGN – Sign of Number
SELECT SIGN(base_salary) FROM employee_salary;

--output
| SIGN(base_salary) |
| ----------------- |
| 1                 |
| 1                 |
| 1                 |
| 1                 |
| 1                 |

--10. RAND – Random Number
SELECT RAND();

--output
| RAND()    |
| --------- |
| 0.5738291 |

--11. FORMAT – Format Number as String
SELECT FORMAT(base_salary, 2) FROM employee_salary;

--output
| FORMAT(base_salary,2) |
| --------------------- |
| 75,000.75             |
| 65,000.40             |
| 85,000.90             |
| 70,000.10             |
| 60,000.55             |

--12. GREATEST – Maximum Value
SELECT emp_name,
GREATEST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;

--output
| emp_name | GREATEST(base_salary,IFNULL(bonus,0)) |
| -------- | ------------------------------------- |
| Karthik  | 75000.75                              |
| Veena    | 65000.40                              |
| Ravi     | 85000.90                              |
| Anil     | 70000.10                              |
| Suresh   | 60000.55                              |

--13. LEAST – Minimum Value
SELECT emp_name,
LEAST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;

--output
| emp_name | LEAST(base_salary,IFNULL(bonus,0)) |
| -------- | ---------------------------------- |
| Karthik  | 5000.50                            |
| Veena    | 4000.25                            |
| Ravi     | 6000.75                            |
| Anil     | 0                                  |
| Suresh   | 3000.30                            |
