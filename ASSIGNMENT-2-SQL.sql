CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10)
);

INSERT INTO customer (customer_id, first_name, last_name, email, address, city, state, zip) VALUES
(1, 'George', 'Anderson', 'george.anderson@gmail.com', '123 Main St', 'San Jose', 'CA', '95112'),
(2, 'Grace', 'Brown', 'grace.brown@yahoo.com', '456 Elm St', 'New York', 'NY', '10001'),
(3, 'Gina', 'Taylor', 'gina.taylor@gmail.com', '789 Pine St', 'San Jose', 'CA', '95113'),
(4, 'Mark', 'Williams', 'mark.williams@gmail.com', '321 Oak St', 'Chicago', 'IL', '60601'),
(5, 'Sophia', 'Garcia', 'sophia.garcia@hotmail.com', '654 Cedar St', 'San Diego', 'CA', '92101');

SELECT first_name, last_name
FROM customer;

SELECT *
FROM customer
WHERE first_name LIKE 'G%' AND city = 'San Jose';

SELECT *
FROM customer
WHERE email LIKE '%gmail%';

SELECT *
FROM customer
WHERE last_name NOT LIKE '%A';