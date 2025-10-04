SELECT * 
FROM Orderss
ORDER BY amount DESC;

CREATE TABLE Employee_details1 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Emp_salary DECIMAL(10,2)
);

CREATE TABLE Employee_details2 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Emp_salary DECIMAL(10,2)
);


INSERT INTO Employee_details1 VALUES (101, 'Amit', 35000);
INSERT INTO Employee_details1 VALUES (102, 'Priya', 42000);
INSERT INTO Employee_details1 VALUES (103, 'Ravi', 39000);

INSERT INTO Employee_details2 VALUES (102, 'Priya', 42000);
INSERT INTO Employee_details2 VALUES (104, 'Kiran', 41000);
INSERT INTO Employee_details2 VALUES (105, 'Sneha', 38000);


SELECT * FROM Employee_details1
UNION
SELECT * FROM Employee_details2;

SELECT * FROM Employee_details1
INTERSECT
SELECT * FROM Employee_details2;

SELECT * FROM Employee_details1
EXCEPT
SELECT * FROM Employee_details2;
