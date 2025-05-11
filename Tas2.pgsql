-- EXCERCISE 1

-- TASK 1 concat with sep FORMATE = 101:NITIN:SAXENA:TECH
SELECT CONCAT_WS(':', emp_id, fname,lname,dept) FROM employees;
-- TASK 2 concat with sep FORMATE = 101:NITIN SAXENA:TECH:50000
SELECT CONCAT_WS(':', emp_id, CONCAT_WS(' ',fname,lname),dept, salary) FROM employees;
--TASK 3 
SELECT CONCAT(LEFT(dept,1),emp_id), fname FROM employees;
-- FIND DIFF TYPES OF DEPT IN DATABSE
SELECT DISTINCT dept FROM employees;
-- DISPLAY HIGH AND LOW SALARY AS THEIR NAMES
SELECT MIN(salary) AS low_salary FROM employees;
SELECT MAX(salary) AS high_salary FROM employees;
-- TOP 3 RECORDS
SELECT * FROM employees LIMIT 3;
-- SHOW THE RECORDS WHERE FIRST NAME SATRT WITH A
SELECT * FROM employees WHERE fname LIKE 'A%';


-- EXCERCISE 2
-- Total no of employees in databse
SELECT COUNT(fname) AS total_employees FROM employees;
-- FIND THE NOS OF EMPLOYEES IN EACH DEPRARTMENT 
SELECT dept, COUNT(fname) 
FROM employees 
GROUP BY dept 
ORDER BY dept;
-- FIND TOTAL SALARY PAYING IN THE IT DEPARTMENT 
SELECT SUM(salary) FROM employees WHERE dept = 'IT';






