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
