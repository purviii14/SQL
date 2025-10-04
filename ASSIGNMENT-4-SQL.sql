SELECT 
    MIN(amount) AS Minimum_Amount,
    MAX(amount) AS Maximum_Amount,
    AVG(amount) AS Average_Amount
FROM Orderss;

select*from orderss

SELECT 
    CASE 
        WHEN 100 < 200 THEN '100 is less than 200'
        WHEN 100 > 200 THEN '100 is greater than 200'
        ELSE '100 is equal to 200'
    END AS Result;

SELECT 
    order_id,
    amount,
    CASE 
        WHEN amount < 200 THEN 'Low Amount'
        WHEN amount BETWEEN 200 AND 400 THEN 'Medium Amount'
        ELSE 'High Amount'
    END AS Amount_Status
FROM Orderss;

CREATE FUNCTION GetAmountGreaterThan (@input DECIMAL(10,2))
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM Orderss
    WHERE amount > @input
);

SELECT * 
FROM dbo.GetAmountGreaterThan(400.00);

CREATE FUNCTION MultiplyByTen (@num INT)
RETURNS INT
AS
BEGIN
    RETURN @num * 10;
END;



SELECT dbo.MultiplyByTen(5) 
