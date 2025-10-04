CREATE TABLE Orderss (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    customer_id INT
);

INSERT INTO Orderss (order_id, order_date, amount, customer_id) VALUES
(101, '2025-01-10', 250.00, 1),
(102, '2025-02-15', 450.00, 2),
(103, '2025-03-20', 150.00, 3),
(104, '2025-04-25', 300.00, 4),
(105, '2025-05-30', 500.00, 5);

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date, o.amount
FROM Customer c
INNER JOIN Orderss o
ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.amount
FROM Customer c
LEFT JOIN Orderss o
ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.amount
FROM Customer c
RIGHT JOIN Orderss o
ON c.customer_id = o.customer_id;

UPDATE Orderss
SET amount = 100
WHERE customer_id = 3;

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.amount
FROM Customer c
full outer join Orderss o ON c.customer_id = o.customer_id
