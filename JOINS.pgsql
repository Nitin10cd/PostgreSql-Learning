CREATE TABLE customer (
	cus_id SERIAL PRIMARY KEY,
	cus_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
ord_id SERIAL PRIMARY KEY,
ord_date DATE NOT NULL,
price NUMERIC NOT NULL,
cus_id INTEGER NOT NULL,
FOREIGN KEY (cus_id) REFERENCES 
customer (cus_id)
);

INSERT INTO customer (cus_name) VALUES
('Alice Johnson'),
('Bob Smith'),
('Charlie Brown'),
('Diana Prince');

INSERT INTO orders (ord_date, price, cus_id) VALUES
('2025-05-01', 250.00, 1),
('2025-05-02', 180.50, 2),
('2025-05-03', 99.99, 1),
('2025-05-05', 320.75, 3),
('2025-05-07', 450.00, 4),
('2025-05-10', 150.00, 2);


-- View customers
SELECT * FROM customer;

-- JOINS 
-- CROSS JOIN 
SELECT * FROM customer CROSS JOIN orders;

--INNER JOIN
SELECT * FROM customer c
INNER JOIN orders o 
ON c.cus_id = o.cus_id;

--INNER JOIN WITH GROUP BY
SELECT c.cus_name , COUNT(o.ord_id) FROM customer c
INNER JOIN orders o 
ON c.cus_id = o.cus_id
GROUP BY cus_name;

-- lEFT AND RIGHT JOINS
SELECT c.cus_id, c.cus_name, o.ord_id, o.price
FROM customer c
LEFT JOIN orders o ON c.cus_id = o.cus_id;

SELECT c.cus_id, c.cus_name, o.ord_id, o.price
FROM customer c
RIGHT JOIN orders o ON c.cus_id = o.cus_id;


-- View orders with customer names
SELECT o.ord_id, o.ord_date, o.price, c.cus_name
FROM orders o
JOIN customer c ON o.cus_id = c.cus_id;

