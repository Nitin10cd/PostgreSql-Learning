-- PERFORMING THE BASIC CRUD OPERATIONS 

-- CREATE DATABASE THEN TABLE
CREATE DATABASE Person;

-- CREATING TABLE 
CREATE TABLE persondata (
id INT,
name VARCHAR(100),
city VARCHAR(100)
);

-- datatypes written as we use in mySql

-- INSERT DATA INTO THE TABLE
INSERT INTO persondata (id , name , city)
VALUES (101 , 'Nitin', 'Noida');
-- INSERT MANY
INSERT INTO persondata (id , name , city)
VALUES 
(102 , 'Nikhil', 'Noida'),
(103 , 'Rishu', 'Aligarh'),
(104 , 'Rohit', 'Pune');

--READING THE DATA
SELECT * FROM persondata
SELECT name FROM persondata
SELECT name , city FROM persondata

-- UPDATING THE DATA
UPDATE persondata
	SET city = 'Greater Noida'
	WHERE name = 'Nikhil'

-- DELETE THE DATA
DELETE FROM persondata
WHERE id = 104

