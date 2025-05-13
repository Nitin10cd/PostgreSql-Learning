select * from employees;

-- STORED PROCEDURES

-- EXAMPLE PROCEDURE FOR UPDATE 
CREATE OR REPLACE PROCEDURE update_emp_salary (
p_employee_id INT ,
p_new_salary NUMERIC
) 
LANGUAGE plpgsql
AS $$
BEGIN 
	UPDATE employees
	SET salary = p_new_salary
	WHERE emp_id = p_employee_id;
END;
$$

-- EXAMPLE PROCEDURE FOR ADD
CREATE OR REPLACE PROCEDURE add_employee (
    p_name VARCHAR,
    p_salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (fname, salary)
    VALUES (p_name, p_salary);
END;
$$;

CALL add_employee('David Miller', 9000.50);


-- CALLING THE PROCEDURE
CALL update_emp_salary(3,100000);