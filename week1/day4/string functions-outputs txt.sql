-- Outputs for MySQL String Functions Queries

-- 1. LENGTH / CHAR_LENGTH
SELECT full_name, LENGTH(full_name) FROM employees;

-- output
| full_name       | LENGTH(full_name) |
| --------------- | ----------------- |
| Karthik Kondpak | 16                |
| Veena Reddy     | 11                |
| Ravi kumar      | 10                |
| Anil            | 4                 |
| Suresh          | 8                 |

SELECT full_name, CHAR_LENGTH(full_name) FROM employees;

-- output
| full_name       | LENGTH(full_name) |
| --------------- | ----------------- |
| Karthik Kondpak | 16                |
| Veena Reddy     | 11                |
| Ravi kumar      | 10                |
| Anil            | 4                 |
| Suresh          | 8                 |

-- 2. UPPER / LOWER
SELECT full_name, CHAR_LENGTH(full_name)
FROM employees;

--output
| UPPER(department) | LOWER(city) |
| ----------------- | ----------- |
| DATA ENGINEERING  | hyderabad   |
| ANALYTICS         | bangalore   |
| DATA SCIENCE      | chennai     |
| DEVOPS            | pune        |
| DATA ENGINEERING  | hyderabad   |

--3. TRIM / LTRIM / RTRIM
SELECT TRIM(full_name), LTRIM(full_name), RTRIM(full_name)
FROM employees;

--output
| TRIM            | LTRIM           | RTRIM           |
| --------------- | --------------- | --------------- |
| Karthik Kondpak | Karthik Kondpak | Karthik Kondpak |
| Veena Reddy     | Veena Reddy     | Veena Reddy     |
| Ravi kumar      | Ravi kumar      | Ravi kumar      |
| Anil            | Anil            | Anil            |
| Suresh          | Suresh          | Suresh          |

--4. CONCAT
SELECT CONCAT(full_name, ' - ', department) AS emp_details
FROM employees;

--output
| emp_details                        |
| ---------------------------------- |
| Karthik Kondpak - Data Engineering |
| Veena Reddy - Analytics            |
| Ravi kumar - Data Science          |
| Anil - DEVOPS                      |
| Suresh  - data engineering         |

--5. CONCAT_WS
SELECT CONCAT_WS(' | ', emp_id, full_name, city)
FROM employees;

--output
| Output                          |
| ------------------------------- |
| 1 | Karthik Kondpak | Hyderabad |
| 2 | Veena Reddy | Bangalore     |
| 3 | Ravi kumar | Chennai        |
| 4 | Anil | Pune                 |
| 5 |  Suresh  |  hyderabad       |

--6. SUBSTRING / SUBSTR
SELECT SUBSTRING(email, 1, 7) FROM employees;

--output
| SUBSTRING |
| --------- |
| karthik   |
| veena_r   |
| ravi.ku   |
| anil@ab   |
| suresh@   |

SELECT SUBSTR(email, 1, 5) FROM employees;

--output
| SUBSTR |
| ------ |
| karth  |
| veena  |
| ravi.  |
| anil@  |
| sures  |

--7. LEFT / RIGHT
SELECT LEFT(full_name, 4), RIGHT(city, 3)
FROM employees;

--output
| LEFT(full_name,4) | RIGHT(city,3) |
| ----------------- | ------------- |
| Kart              | bad           |
| Veen              | ore           |
| Ravi              | nai           |
| Anil              | une           |
| Sur               | rd            |

--8. INSTR
SELECT email, INSTR(email, '@') FROM employees;

--output
| email                                             | INSTR |
| ------------------------------------------------- | ----- |
| [karthik.k@gmail.com](mailto:karthik.k@gmail.com) | 10    |
| [veena_r@company.com](mailto:veena_r@company.com) | 8     |
| [ravi.kumar@org.in](mailto:ravi.kumar@org.in)     | 11    |
| [anil@abc.com](mailto:anil@abc.com)               | 5     |
| [suresh@xyz.com](mailto:suresh@xyz.com)           | 7     |

--9. LOCATE
SELECT email, LOCATE('.', email) FROM employees;

--output
| email                                             | LOCATE |
| ------------------------------------------------- | ------ |
| [karthik.k@gmail.com](mailto:karthik.k@gmail.com) | 8      |
| [veena_r@company.com](mailto:veena_r@company.com) | 16     |
| [ravi.kumar@org.in](mailto:ravi.kumar@org.in)     | 5      |
| [anil@abc.com](mailto:anil@abc.com)               | 9      |
| [suresh@xyz.com](mailto:suresh@xyz.com)           | 11     |

--10. REPLACE
SELECT REPLACE(department, 'Data', 'Big Data')
FROM employees;

--output
| Output               |
| -------------------- |
| Big Data Engineering |
| Analytics            |
| Big Data Science     |
| DEVOPS               |
| data engineering     |

--11. REVERSE
SELECT full_name, REVERSE(full_name)
FROM employees;

--output
| full_name       | REVERSE         |
| --------------- | --------------- |
| Karthik Kondpak | kapdnoK kihtraK |
| Veena Reddy     | yddeR aneeV     |
| Ravi kumar      | ramuk ivaR      |
| Anil            | linA            |
| Suresh          | hseruS          |

--12. LPAD / RPAD
SELECT LPAD(emp_id, 5, '0') FROM employees;

--output
| LPAD  |
| ----- |
| 00001 |
| 00002 |
| 00003 |
| 00004 |
| 00005 |

SELECT RPAD(city, 15, '*') FROM employees;

--output
| RPAD            |
| --------------- |
| Hyderabad****** |
| Bangalore****** |
| Chennai******** |
| Pune*********** |
| hyderabad ****  |

--13. TRIM + REPLACE
SELECT TRIM(REPLACE(city, ' ', '')) FROM employees;

--output
| Output    |
| --------- |
| Hyderabad |
| Bangalore |
| Chennai   |
| Pune      |
| hyderabad |

--14. IFNULL
SELECT full_name, IFNULL(remarks, 'No remarks')
FROM employees;

--output
| full_name       | IFNULL                  |
| --------------- | ----------------------- |
| Karthik Kondpak | Top performer           |
| Veena Reddy     | Excellent communication |
| Ravi kumar      | Needs improvement       |
| Anil            | No remarks              |
| Suresh          |                         |

--15. COALESCE
SELECT full_name, COALESCE(remarks, 'N/A')
FROM employees;

--output
| full_name       | COALESCE                |
| --------------- | ----------------------- |
| Karthik Kondpak | Top performer           |
| Veena Reddy     | Excellent communication |
| Ravi kumar      | Needs improvement       |
| Anil            | N/A                     |
| Suresh          |                         |

--16. FIND_IN_SET
SELECT FIND_IN_SET('Analytics', 'Data,Analytics,AI');

--output
| FIND_IN_SET |
| ----------- |
| 2           |
