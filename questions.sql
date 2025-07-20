-- Q1: Match customers and salesmen by city (case-insensitive)
SELECT 
    C.CustomerName, 
    S.Name AS SalesmanName, 
    LOWER(C.City) AS SharedCity
FROM 
    Customers C
JOIN 
    Salesmen S ON LOWER(C.City) = LOWER(S.City);

-- Q2: Create table linking customers to their assigned salesmen
DROP TABLE IF EXISTS CustomerSalesmanLink;
CREATE TABLE CustomerSalesmanLink AS
SELECT 
    C.CustomerName, 
    S.Name AS SalesmanName, 
    S.City
FROM 
    Customers C
JOIN 
    Salesmen S ON C.Salesman_ID = S.SalesmanID;

-- Q3: View contents of customer-salesman link table
SELECT * FROM CustomerSalesmanLink;

-- Q4: Create table for orders with mismatched cities
DROP TABLE IF EXISTS MismatchedOrders;
CREATE TABLE MismatchedOrders AS
SELECT 
    O.OrderNumber,
    C.CustomerName,
    S.Name AS SalesmanName,
    C.City AS CustomerCity,
    S.City AS SalesmanCity,
    O.PurchaseAmount,
    O.OrderDate
FROM 
    Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Salesmen S ON O.SalesmanID = S.SalesmanID
WHERE LOWER(C.City) <> LOWER(S.City);

-- Q5: View orders with mismatched cities
SELECT * FROM MismatchedOrders;

-- Q6: Create table combining orders with customer information
DROP TABLE IF EXISTS OrderCustomerInfo;
CREATE TABLE OrderCustomerInfo AS
SELECT 
    O.OrderNumber,
    O.PurchaseAmount,
    O.OrderDate,
    C.CustomerName
FROM 
    Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID;

-- Q7: View combined order and customer data
SELECT * FROM OrderCustomerInfo;