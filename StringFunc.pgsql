-- concat 
SELECT CONCAT(fname , lname) FROM employees;
SELECT CONCAT (fname, ' ', lname) AS FUllname , dept FROM employees;
SELECT CONCAT_WS('-',fname, lname) AS FUllname , dept FROM employees;

-- SUBSTRING
SELECT SUBSTR(fname, 6,2) FROM employees;

-- REPLACE 
SELECT REPLACE('ABCXYZ', 'ABC', 'PQR');
SELECT REPLACE(dept, 'IT', 'TECH') FROM employees;

-- UPPER AND LOWER
SELECT UPPER (fname) FROM employees;
SELECT LOWER (fname) FROM employees;

-- LEFT AND RIGHT AND TRIM AND POSITION
SELECT LEFT ('NITIN SAXENA' ,6);
SELECT RIGHT ('RISHU SAXENA', 7);
SELECT TRIM(' Alright!    ');
SELECT POSITION('NI' in 'NITIN');




