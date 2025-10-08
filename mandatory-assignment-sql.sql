CREATE TABLE Salesman (
    SalesmanId INT PRIMARY KEY,
    SalesmanName VARCHAR(100) NOT NULL,
    Commission INT,
    City VARCHAR(100) DEFAULT 'Unknown',
    Age INT
);


CREATE TABLE Customer (
    CustomerId INT,
    SalesmanId INT,
    CustomerName VARCHAR(100) NOT NULL,
    PurchaseAmount INT,
    PRIMARY KEY (CustomerId, SalesmanId),
    FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId)
);


CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    SalesmanId INT,
    OrderDate DATE,
    Amount INT,
    FOREIGN KEY (CustomerId, SalesmanId)
        REFERENCES Customer(CustomerId, SalesmanId)
);



INSERT INTO Salesman (SalesmanId, SalesmanName, Commission, City, Age)
VALUES
(101, 'Joe', 50, 'California', 17),
(102, 'Simon', 75, 'Texas', 25),
(103, 'Jessie', 105, 'Florida', 35),
(104, 'Danny', 100, 'Texas', 22),
(105, 'Lia', 65, 'New Jersy', 30);

INSERT INTO Customer (CustomerId, SalesmanId, CustomerName, PurchaseAmount)
VALUES
(2345, 101, 'Andrew', 550),
(1575, 103, 'Lucky', 4500),
(2346, 104, 'Andrew', 4000),
(3747, 101, 'Remona', 2700),
(4004, 103, 'Julia', 4545);

INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount)
VALUES
(5001, 2345, 101, '2021-07-04', 550),
(5003, 2346, 104, '2022-02-15', 1500);

INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount)
VALUES (5004, 4004, 103, '2023-04-12', 1200);

SELECT *
FROM Customer
WHERE CustomerName LIKE '%n'
  AND PurchaseAmount > 500;

SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Customer;

SELECT SalesmanId FROM Salesman
INTERSECT
SELECT SalesmanId FROM Customer;

SELECT 
    o.OrderId,
    s.SalesmanName,
    c.CustomerName,
    s.Commission,
    s.City
FROM Orders o
JOIN Salesman s ON o.SalesmanId = s.SalesmanId
JOIN Customer c ON o.CustomerId = c.CustomerId AND o.SalesmanId = c.SalesmanId
WHERE c.PurchaseAmount BETWEEN 500 AND 1500;

 SELECT 
    s.SalesmanId,
    s.SalesmanName,
    o.OrderId,
    o.Amount,
    o.OrderDate
FROM Salesman s
RIGHT JOIN Orders o
ON s.SalesmanId = o.SalesmanId;