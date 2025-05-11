-- CLAUSES LIKE WHERE , DISTINCT , LIKE , ORDERN BY , LIMIT

-- PRACTICAL EXAMPLES 

SELECT * FROM employees

-- WHERE 
    SELECT * FROM employees 
	WHERE emp_id = 5;

    SELECT * FROM employees 
	WHERE dept = 'HR';

    SELECT * FROM employees 
	WHERE dept = 'HR' OR dept = 'IT';

    SELECT * FROM employees 
	WHERE dept = 'HR'AND salary > 45000;

    
    SELECT * FROM employees
	WHERE dept In ('IT', 'HR', 'Finance');

    SELECT fname , lname FROM employees
    WHERE salary BETWEEN 50000 AND 60000;

-- DISTINCT CLAUSE 

    -- (use for finding the uniqe values)
    SELECT DISTINCT dept FROM employees;

-- ORDER BY 
-- (for sorted data)

SELECT * FROM employees ORDER BY fname;
SELECT * FROM employees ORDER BY dept;
SELECT * FROM employees ORDER BY dept DESC;

--LIMIT
SELECT * FROM employees LIMIT 3;

-- LIKE 
SELECT * FROM employees WHERE fname LIKE 'An%';
SELECT * FROM employees WHERE fname LIKE '%a';
SELECT * FROM employees WHERE fname LIKE '%i%';
SELECT * FROM employees WHERE fname LIKE '_a%';


-- GROUP BY

SELECT dept , SUM(salary) AS total_salary FROM employees GROUP BY dept;
SELECT dept , COUNT(fname) AS totaal_employees FROM employees GROUP BY dept;
