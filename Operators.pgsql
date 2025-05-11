-- ARITHMATIC OPERATORS

SELECT 
  emp_id,
  fname,
  salary,
  salary + 5000 AS salary_plus_5k,
  salary - 3000 AS salary_minus_3k,
  salary * 1.1 AS salary_10_percent_hike,
  salary / 2 AS salary_half,
  MOD(salary, 10000) AS salary_mod_10000
FROM employees;


-- COMPARISION OPERATORS 

SELECT emp_id, fname , salary,
salary > 45000 AS high_salary,
salary = 50000 AS exact_50k,
salary <> 50000 AS not_50k
FROM employees;


-- LOGICAL OPERATORS AND COMBINED LOGICAL OPERATORS
SELECT emp_id, fname, dept , salary,
(dept = 'IT' AND salary > 50000) AS IT_HIGH_PAID,
(dept = 'HR' OR dept = 'Finance') AS HR_OR_FINANCE,
NOT (dept = 'Marketing') AS non_marketing
FROM employees;

--BITWISE OPERATORSSELECT 
  emp_id,
  fname,
  salary::INT AS salary_int,
  salary::INT & 50000 AS bit_and,
  salary::INT | 50000 AS bit_or,
  salary::INT # 50000 AS bit_xor,
  ~salary::INT AS bit_not,
  salary::INT << 1 AS shift_left,
  salary::INT >> 1 AS shift_right
FROM employees;


-- BETWEEN , IN , NOT IN
SELECT 
  emp_id,
  fname,
  hire_date,
  hire_date BETWEEN '2019-01-01' AND '2021-12-31' AS hired_in_range,
  dept IN ('IT', 'HR') AS in_it_hr,
  dept NOT IN ('Marketing') AS not_in_marketing
FROM employees;

-- IS NULL / IS NOT NULL
SELECT 
  emp_id,
  fname,
  dept,
  dept IS NULL AS is_dept_null,
  dept IS NOT NULL AS is_dept_not_null
FROM employees;

--SIMILAR TO operator
SELECT 
  emp_id,
  fname,
  email,
  email SIMILAR TO '%@(example|abc)\.com' AS similar_email_pattern
FROM employees;
