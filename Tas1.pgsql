CREATE DATABASE bank;

-- table 

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept VARCHAR(50),
    salary DECIMAL(10, 2) DEFAULT 30000.00,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);


INSERT INTO employees (fname, lname, email, dept, salary, hire_date) 
VALUES
('Alex', 'Brown', 'alex.brown@abc.com', 'IT', 50000.00, '2020-01-15'),
('Bella', 'Cruz', 'bella.cruz@abc.com', 'HR', 45000.00, '2019-03-22'),
('Chris', 'Dane', 'chris.dane@abc.com', 'IT', 55000.00, '2021-06-01'),
('Dana', 'Evans', 'dana.evans@abc.com', 'Finance', 60000.00, '2018-07-30'),
('Ella', 'Frost', 'ella.frost@abc.com', 'HR', 47000.00, '2020-11-10'),
('Finn', 'Gray', 'finn.gray@abc.com', 'Marketing', 52000.00, '2020-09-25'),
('Gina', 'Hart', 'gina.hart@abc.com', 'IT', 48000.00, '2019-05-18'),
('Hugo', 'Ives', 'hugo.ives@abc.com', 'IT', 53000.00, '2021-02-14'),
('Ivy', 'Jade', 'ivy.jade@abc.com', 'Finance', 61000.00, '2018-12-03'),
('Jake', 'Kane', 'jake.kane@abc.com', 'Marketing', 50000.00, '2020-04-19');



SELECT * FROM employees