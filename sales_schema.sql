-- Drop tables if they exist to avoid conflicts
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salesmen;

-- Create Salesmen Table
CREATE TABLE Salesmen (
    SalesmanID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Commission DECIMAL(10,2) NOT NULL
);

-- Insert sample data into Salesmen
INSERT INTO Salesmen (SalesmanID, Name, City, Commission) VALUES
(101, 'Onsarigo Den', 'Daresalam', 9276.99),
(102, 'Onsarigo Sarigo', 'Mombasa', 19826.96),
(103, 'Sarigo Deis', 'Ogadodou', 9922.95),
(104, 'Sarigo Den', 'Nairobi', 16584.28),
(105, 'Den Onsarigo', 'Accra', 13735.61),
(106, 'Onsarigo Deis', 'Kigali', 11311.16),
(107, 'Deis Onsarigo', 'Mombasa', 13182.25),
(108, 'Den Sarigo', 'Kampala', 12392.83),
(109, 'Deis Onsari', 'Accra', 10604.42),
(110, 'Onsarigo Onsari', 'Kampala', 19494.61),
(111, 'Onsari Sarigo', 'Nairobi', 19163.02),
(112, 'Den Onsari', 'Daresalam', 14041.51),
(113, 'Sarigo Onsari', 'Lagos', 16904.60),
(114, 'Sarigo Onsarigo', 'Ogadodou', 18884.20),
(115, 'Onsari Den', 'Nairobi', 10452.41),
(116, 'Deis Sarigo', 'Kisumu', 17092.35),
(117, 'Onsarigo Dennis', 'Pretoria', 11843.83),
(118, 'Dennis Den', 'Kigali', 14041.53),
(119, 'Onsari Deis', 'Accra', 14357.73),
(120, 'Dennis Onsari', 'Kisumu', 15637.38);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY NOT NULL,
    CustomerName VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Grade INT,
    Salesman_ID INT NOT NULL,
    FOREIGN KEY(Salesman_ID) REFERENCES Salesmen(SalesmanID)
);

-- Insert sample data into Customers
INSERT INTO Customers (CustomerID, CustomerName, City, Grade, Salesman_ID) VALUES
(200, 'Maloba Queen', 'Kigali', 3, 102),
(201, 'Bott Angel', 'Nairobi', 3, 107),
(202, 'Makumi Angel', 'Ogadodou', 1, 107),
(203, 'Eunea Bott', 'Nairobi', 1, 114),
(204, 'Eunice Angel', 'Accra', 4, 118),
(205, 'Angel Queen', 'Kisumu', 3, 116),
(206, 'Maloba Makumi', 'Kampala', 5, 104),
(207, 'Eunea Maloba', 'Kisumu', 1, 111),
(208, 'Eunice Maloba', 'Addis Ababa', 5, 110),
(209, 'Makumi Queen', 'Lagos', 1, 104),
(210, 'Angel Maloba', 'Pretoria', 2, 101),
(211, 'Mukami Makumi', 'Mombasa', 5, 103),
(212, 'Makumi Maloba', 'Accra', 4, 117),
(213, 'Bott Queen', 'Daresalam', 1, 104),
(214, 'Julius Makumi', 'Pretoria', 3, 104),
(215, 'Julius Queen', 'Kigali', 5, 105),
(216, 'Bott Makumi', 'Nairobi', 5, 101),
(217, 'Mukami Maloba', 'Mombasa', 4, 103),
(218, 'Eunea Mukami', 'Daresalam', 5, 102),
(219, 'Eunice Makumi', 'Kampala', 1, 118);

-- Create Orders Table
CREATE TABLE Orders (
    OrderNumber INT PRIMARY KEY NOT NULL,
    PurchaseAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATE NOT NULL,
    CustomerID INT NOT NULL,
    SalesmanID INT NOT NULL,
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(SalesmanID) REFERENCES Salesmen(SalesmanID)
);

-- Insert sample data into Orders
INSERT INTO Orders (OrderNumber, PurchaseAmount, OrderDate, CustomerID, SalesmanID) VALUES
(1121, 57471.60, '2024-03-24', 216, 117),
(1122, 14352.01, '2025-09-08', 204, 114),
(1123, 19280.99, '2024-11-23', 208, 104),
(1124, 46166.75, '2025-04-18', 213, 108),
(1125, 10350.32, '2025-05-19', 203, 117),
(1126, 47716.48, '2025-06-25', 211, 104),
(1127, 28540.06, '2025-03-24', 219, 105),
(1128, 59516.33, '2025-07-25', 210, 106),
(1129, 29019.22, '2024-03-26', 201, 114),
(1130, 29837.79, '2025-01-20', 201, 117),
(1131, 19161.42, '2024-03-25', 217, 109),
(1132, 29519.86, '2025-07-16', 217, 104),
(1133, 40707.02, '2024-05-02', 209, 117),
(1134, 12690.66, '2024-05-24', 202, 107),
(1135, 18274.52, '2025-09-07', 212, 104),
(1136, 17978.96, '2024-06-03', 200, 117),
(1137, 28167.36, '2024-06-05', 204, 109),
(1138, 50669.58, '2024-11-09', 203, 107),
(1139, 44265.55, '2025-02-12', 209, 110),
(1140, 48013.79, '2025-03-12', 208, 115);
SELECT * FROM Salesmen;
SELECT * FROM Customers;
SELECT * FROM Orders;
