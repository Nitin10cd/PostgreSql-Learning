-- Students Table
CREATE TABLE students (
    s_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Courses Table
CREATE TABLE courses (
    c_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fee NUMERIC NOT NULL
);

CREATE TABLE enrollment (
  enrollment_id SERIAL PRIMARY KEY,  -- Auto-incrementing ID
  s_id INT NOT NULL,                 -- Foreign key referencing students
  c_id INT NOT NULL,                 -- Foreign key referencing courses
  enrollment_date DATE NOT NULL,    -- Date of enrollment
  FOREIGN KEY (s_id) REFERENCES students(s_id),
  FOREIGN KEY (c_id) REFERENCES courses(c_id)
);

-- Insert into Students
INSERT INTO students (name) VALUES
('Alice Johnson'),
('Bob Smith'),
('Charlie Brown'),
('Diana Prince'),
('Evan Thompson');

-- Insert into Courses
INSERT INTO courses (name, fee) VALUES
('Database Systems', 500.00),
('Operating Systems', 600.00),
('Data Structures', 550.00),
('Computer Networks', 650.00),
('Software Engineering', 700.00);

-- Insert into Enrollment
INSERT INTO enrollment (s_id, c_id, enrollment_date) VALUES
(1, 1, '2025-05-01'), -- Alice → Database Systems
(1, 3, '2025-05-03'), -- Alice → Data Structures
(2, 2, '2025-05-02'), -- Bob → Operating Systems
(3, 4, '2025-05-04'), -- Charlie → Computer Networks
(4, 5, '2025-05-05'), -- Diana → Software Engineering
(5, 1, '2025-05-06'); -- Evan → Database Systems

-- Optional: View all enrollments with student and course details
SELECT 
    s.name AS student_name,
    c.name AS course_name,
    c.fee,
    e.enrollment_date
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON e.c_id = c.c_id
ORDER BY s.name, e.enrollment_date;

SELECT 
    s.name AS student_name,
    COUNT(e.enrollment_id) AS total_courses
FROM enrollment e
JOIN students s ON e.s_id = s.s_id
GROUP BY s.s_id, s.name
HAVING COUNT(e.enrollment_id) > 1;


