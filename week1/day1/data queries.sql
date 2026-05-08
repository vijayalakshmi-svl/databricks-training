-- Q1. Retrieve all employees
SELECT * FROM Employee;

-- Q2. Retrieve employee names and salaries
SELECT name, salary FROM Employee;

-- Q3. Retrieve employees older than 30
SELECT * FROM Employee
WHERE age > 30;

-- Q4. Retrieve all department names
SELECT name FROM Department;

-- Q5. Retrieve employees who work in the IT department
SELECT e.*
FROM Employee e
JOIN Department d 
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- Q6. Find employees whose names start with 'J'
SELECT * FROM Employee
WHERE name LIKE 'J%';

-- Q7. Find employees whose names end with 'e'
SELECT * FROM Employee
WHERE name LIKE '%e';

-- Q8. Find employees whose names contain 'a'
SELECT * FROM Employee
WHERE name LIKE '%a%';

-- Q9. Find employees whose names have exactly 9 characters
SELECT * FROM Employee
WHERE LENGTH(name) = 9;

-- Q10. Find employees whose second character is 'o'
SELECT * FROM Employee
WHERE name LIKE '_o%';

-- Q11. Retrieve employees hired after 2020
SELECT * FROM Employee
WHERE hire_date > '2020-01-01';

-- Q12. Retrieve employees hired before 2020
SELECT * FROM Employee
WHERE hire_date < '2020-01-01';

-- Q13. Retrieve employees sorted by salary (ascending)
SELECT * FROM Employee
ORDER BY salary ASC;

-- Q14. Retrieve employees sorted by salary (descending)
SELECT * FROM Employee
ORDER BY salary DESC;

-- Q15. Count total employees
SELECT COUNT(*) AS total_employees FROM Employee;

-- Q16. Find average salary
SELECT AVG(salary) AS avg_salary FROM Employee;

-- Q17. Find maximum salary
SELECT MAX(salary) AS max_salary FROM Employee;

-- Q18. Find minimum salary
SELECT MIN(salary) AS min_salary FROM Employee;

-- Q19. Find total salary paid
SELECT SUM(salary) AS total_salary FROM Employee;

-- Q20. Count employees in each department
SELECT department_id, COUNT(*) AS count
FROM Employee
GROUP BY department_id;

-- Q21. Average salary by department
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;

-- Q22. Departments with more than 1 employee
SELECT department_id, COUNT(*) AS count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1;
