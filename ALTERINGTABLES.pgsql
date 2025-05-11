-- Add a new column with default value
ALTER TABLE employee
ADD COLUMN age INT DEFAULT 18;

-- Add multiple columns at once
ALTER TABLE employee
ADD COLUMN email VARCHAR(100),
ADD COLUMN hire_date DATE;

-- Drop a column
ALTER TABLE employee
DROP COLUMN age;

-- Rename a column
ALTER TABLE employee
RENAME COLUMN fname TO first_name;

-- Change data type of a column
ALTER TABLE employee
ALTER COLUMN first_name 
SET DATA TYPE VARCHAR(150);

-- Set a default value for a column
ALTER TABLE employee
ALTER COLUMN first_name 
SET DEFAULT 'UNKNOWN';

-- Drop default value
ALTER TABLE employee
ALTER COLUMN first_name 
DROP DEFAULT;

-- Set NOT NULL constraint
ALTER TABLE employee
ALTER COLUMN first_name 
SET NOT NULL;

-- Drop NOT NULL constraint
ALTER TABLE employee
ALTER COLUMN first_name 
DROP NOT NULL;

-- Rename the table
ALTER TABLE employee
RENAME TO employees;

-- Add a primary key constraint
ALTER TABLE employees
ADD CONSTRAINT emp_pk PRIMARY KEY (emp_id);

-- Drop the primary key constraint
ALTER TABLE employees
DROP CONSTRAINT emp_pk;
