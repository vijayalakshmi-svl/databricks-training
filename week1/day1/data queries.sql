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

-- Q23. Join Employee and Department
SELECT e.name, d.name AS department
FROM Employee e
JOIN Department d 
ON e.department_id = d.department_id;

-- Q24. Left join to include all employees
SELECT e.name, d.name AS department
FROM Employee e
LEFT JOIN Department d 
ON e.department_id = d.department_id;

-- Q25. Right join to include all departments
SELECT e.name, d.name AS department
FROM Employee e
RIGHT JOIN Department d 
ON e.department_id = d.department_id;

-- Q26. Employees working on projects (join all 3 tables)
SELECT e.name, p.name AS project
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
JOIN Project p ON d.department_id = p.department_id;

-- Q27. Count projects per department
SELECT department_id, COUNT(*) AS total_projects
FROM Project
GROUP BY department_id;

-- Q28. Find employees with salary greater than average
SELECT * FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- Q29. Find highest paid employee
SELECT * FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Q30. Find employees in departments with more than 1 employee
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 1
);

-- Q31. Find employees earning between 50000 and 70000
SELECT * FROM Employee
WHERE salary BETWEEN 50000 AND 70000;

-- Q32. Find employees not in HR department
SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name != 'HR';

-- Q33. Retrieve distinct department IDs
SELECT DISTINCT department_id
FROM Employee;

-- Q34. Find employees whose age is between 25 and 40
SELECT * FROM Employee
WHERE age BETWEEN 25 AND 40;

-- Q35. Retrieve employees with NULL department IDs
SELECT * FROM Employee
WHERE department_id IS NULL;

-- Q36. Retrieve employees whose salary is not NULL
SELECT * FROM Employee
WHERE salary IS NOT NULL;

-- Q37. Find total employees hired after 2020
SELECT COUNT(*) AS total
FROM Employee
WHERE hire_date > '2020-01-01';

-- Q38. Retrieve employees ordered by age
SELECT * FROM Employee
ORDER BY age ASC;

-- Q39. Retrieve top 3 highest paid employees
SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 3;

-- Q40. Retrieve top 2 youngest employees
SELECT * FROM Employee
ORDER BY age ASC
LIMIT 2;

-- Q41. Find department with highest average salary
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- Q42. Retrieve employees and department names
SELECT e.name AS employee_name,
       d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- Q43. Retrieve project names with department names
SELECT p.name AS project_name,
       d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Q44. Count employees by age
SELECT age, COUNT(*) AS total
FROM Employee
GROUP BY age;

-- Q45. Find departments having average salary greater than 55000
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q46. Find employees whose names contain 'o'
SELECT * FROM Employee
WHERE name LIKE '%o%';

-- Q47. Retrieve employees hired in 2021
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2021;

-- Q48. Find oldest employee
SELECT * FROM Employee
WHERE age = (SELECT MAX(age) FROM Employee);

-- Q49. Find youngest employee
SELECT * FROM Employee
WHERE age = (SELECT MIN(age) FROM Employee);

-- Q50. Retrieve employees with salaries above 60000
SELECT * FROM Employee
WHERE salary > 60000;

-- Q51. Retrieve all projects
SELECT * FROM Project;

-- Q52. Count total projects
SELECT COUNT(*) AS total_projects
FROM Project;

-- Q53. Find departments without employees
SELECT *
FROM Department
WHERE department_id NOT IN (
    SELECT department_id FROM Employee
);

-- Q54. Find employees working in Finance department
SELECT e.*
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
WHERE d.name = 'Finance';

-- Q55. Find employees whose salary equals 50000
SELECT * FROM Employee
WHERE salary = 50000;

-- Q56. Retrieve employees sorted by hire date
SELECT * FROM Employee
ORDER BY hire_date ASC;

-- Q57. Retrieve latest hired employee
SELECT * FROM Employee
ORDER BY hire_date DESC
LIMIT 1;

-- 58. Retrieve earliest hired employee
SELECT * FROM Employee
ORDER BY hire_date ASC
LIMIT 1;

-- Q59. Find total salary by department
SELECT department_id,
       SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Q60. Find average age of employees
SELECT AVG(age) AS average_age
FROM Employee;

-- Q61. Retrieve employees whose names start with 'A'
SELECT * FROM Employee
WHERE name LIKE 'A%';

-- Q62. Retrieve employees whose names end with 'n'
SELECT * FROM Employee
WHERE name LIKE '%n';

-- Q63. Retrieve employees with age greater than average age
SELECT * FROM Employee
WHERE age > (
    SELECT AVG(age) FROM Employee
);

-- Q64. Find number of employees in each department
SELECT department_id,
       COUNT(*) AS total_employees
FROM Employee
GROUP BY department_id;

-- Q65. Retrieve all departments and their projects
SELECT d.name AS department_name,
       p.name AS project_name
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id;
