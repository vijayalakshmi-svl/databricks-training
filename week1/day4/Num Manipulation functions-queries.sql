-- 1. ABS – Absolute Value
SELECT ABS(-100);


-- 2. ROUND – Round to Decimals
SELECT ROUND(base_salary, 0)
FROM employee_salary;

SELECT ROUND(base_salary, 2)
FROM employee_salary;


-- 3. CEILING / CEIL – Round Up
SELECT CEIL(base_salary)
FROM employee_salary;


-- 4. FLOOR – Round Down
SELECT FLOOR(base_salary)
FROM employee_salary;


-- 5. TRUNCATE – Cut Decimals (No Rounding)
SELECT TRUNCATE(base_salary, 1)
FROM employee_salary;


-- 6. MOD – Remainder
SELECT MOD(experience_years, 2)
FROM employee_salary;


-- 7. POWER / POW – Exponent
SELECT POWER(2, 3);

SELECT POW(5, 2);


-- 8. SQRT – Square Root
SELECT SQRT(64);


-- 9. SIGN – Sign of Number
SELECT SIGN(base_salary)
FROM employee_salary;


-- 10. RAND – Random Number
SELECT RAND();


-- 11. FORMAT – Format Number as String
SELECT FORMAT(base_salary, 2)
FROM employee_salary;


-- 12. GREATEST – Maximum Value
SELECT emp_name,
       GREATEST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;


-- 13. LEAST – Minimum Value
SELECT emp_name,
       LEAST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;
