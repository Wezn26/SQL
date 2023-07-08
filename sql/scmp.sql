-- BEEKEEPER START
SELECT * FROM customers WHERE CustomerID = 1;
SELECT PostalCode FROM customers WHERE Country = 'Bulgaria';
SELECT Country, PostalCode FROM customers;
SELECT * FROM customers WHERE Country = 'Ukraine';
--MySQL NULL Values
SELECT CustomerName, ContactName, Address 
FROM customers
WHERE Address IS NULL;

SELECT CustomerName, ContactName, Address 
FROM customers
WHERE Address IS NOT NULL;

--MySQL UPDATE Statement
UPDATE customers
SET ContactName = 'Alfred Schmidt', City = 'Nadi'
WHERE CustomerID = 1;

UPDATE customers
SET PostalCode = '0000'
WHERE Country = 'Ukraine';

--MySQL DELETE Statement
DELETE FROM customers WHERE CustomerName = 'Ellie Runte';
--MySQL LIMIT Clause
SELECT * FROM customers LIMIT 3;

SELECT * FROM customers WHERE Country = 'Bulgaria' LIMIT 2;

--MySQL MIN() and MAX() Functions
SELECT MIN(Price) AS SmallestPrice FROM products;

SELECT MAX(Price) AS LargestPrice FROM products;

SELECT COUNT(ProductID) FROM products;

SELECT AVG(Price) FROM products;

SELECT SUM(Quantity) FROM order_details;

--MySQL LIKE Operator
SELECT * FROM customers WHERE CustomerName LIKE 'a%';

SELECT * FROM customers WHERE CustomerName LIKE '%a';

SELECT * FROM customers WHERE CustomerName LIKE '%or%';

SELECT * FROM customers WHERE CustomerName LIKE '_r%';

SELECT * FROM customers WHERE CustomerName LIKE 'a__%';

SELECT * FROM customers WHERE CustomerName LIKE 'a%s';

SELECT * FROM customers WHERE CustomerName NOT LIKE 'a%';

SELECT * FROM customers WHERE City LIKE 'la%';

SELECT * FROM customers WHERE City LIKE '%es%';

SELECT * FROM customers WHERE City LIKE '_adi';

SELECT * FROM customers WHERE City LIKE 'R_w_side';

--MySQL IN Operator
SELECT * FROM customers WHERE Country IN ('Bulgaria', 'Rwanda', 'Moldova');

SELECT * FROM customers WHERE Country NOT IN ('Bulgaria', 'Rwanda', 'Moldova');

SELECT * FROM customers WHERE Country IN (SELECT Country FROM suppliers);

--MySQL BETWEEN Operator
SELECT * FROM products WHERE Price BETWEEN 10 AND 80;

SELECT * FROM products WHERE Price NOT BETWEEN 10 AND 80;

SELECT * FROM products WHERE Price BETWEEN 10 AND 80 AND CategoryID NOT IN (1,2,3);

SELECT * FROM products WHERE ProductName 
BETWEEN 'Libero nesciunt quisquam' AND 'Voluptas enim libero eos'
ORDER BY ProductName;

SELECT * FROM products WHERE ProductName 
BETWEEN 'Corporis nulla et' AND 'Quia repellat'
ORDER BY ProductName;

SELECT * FROM products WHERE ProductName NOT
BETWEEN 'Libero nesciunt quisquam' AND 'Quia repellat'
ORDER BY ProductName;

SELECT * FROM orders WHERE OrderDate BETWEEN '1996-07-01' AND '2011-07-01';

--MySQL Aliases
SELECT CustomerID AS ID, CustomerName AS Customer FROM customers;

SELECT CustomerName, CONCAT_WS(', ', Address, Postalcode, City, Country) AS Address FROM customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM customers AS c, orders AS o
WHERE c.CustomerName='Sharon Rice' AND c.CustomerID=o.CustomerID;

SELECT orders.OrderID, orders.OrderDate, customers.CustomerName
FROM customers, orders
WHERE customers.CustomerName='Sharon Rice' AND customers.CustomerID=orders.CustomerID;

--MySQL Joins
SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
FROM orders
INNER JOIN customers ON orders.CustomerID=customers.CustomerID;

SELECT orders.OrderID, customers.CustomerName
FROM orders
INNER JOIN customers ON orders.CustomerID=customers.CustomerID;

SELECT orders.OrderID, customers.CustomerName, shippers.ShipperName
FROM (( orders
       INNER JOIN customers ON orders.CustomerID = customers.CustomerID)
      INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID);
      
      
--MySQL LEFT JOIN Keyword
SELECT customers.CustomerName, orders.OrderID
FROM customers
LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
ORDER BY customers.CustomerName;

--MySQL RIGHT JOIN Keyword
SELECT orders.OrderID, employees.LastName, employees.FirstName
FROM orders
RIGHT JOIN employees ON orders.EmployeeID = employees.EmployeeID
ORDER BY orders.OrderID;

--MySQL CROSS JOIN Keyword
SELECT customers.CustomerName, orders.OrderID
FROM customers
CROSS JOIN orders;

SELECT customers.CustomerName, orders.OrderID
FROM customers
CROSS JOIN orders
WHERE customers.CustomerID = orders.CustomerID;

--MySQL Self Join
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM customers A, customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

--MySQL UNION Operator
SELECT City FROM customers
UNION
SELECT City FROM suppliers
ORDER BY City;

SELECT City FROM customers
UNION ALL
SELECT City FROM suppliers
ORDER BY City;

--SQL UNION With WHERE
SELECT City, Country FROM customers
WHERE Country = 'Bulgaria'
UNION ALL
SELECT City, Country FROM suppliers
WHERE Country = 'Bulgaria'
ORDER BY City;

--Another UNION Example
SELECT 'Customer' AS Type, ContactName, City, Country
FROM customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM suppliers;

--MySQL GROUP BY Statement
SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

--GROUP BY With JOIN Example
SELECT shippers.ShipperName, COUNT(orders.OrderID) as NumbersOfOrders FROM orders
LEFT JOIN shippers ON orders.ShipperID = shippers.ShipperID
GROUP BY ShipperName;

--MySQL HAVING Clause
SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country
HAVING COUNT(CustomerID) > 1;

SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country
HAVING COUNT(CustomerID)
ORDER BY COUNT(CustomerID) DESC;

SELECT employees.LastName, COUNT(orders.OrderID) AS NumberOfOrders
FROM (orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(orders.OrderID) > 10;

SELECT employees.LastName, COUNT(orders.OrderID) AS NumberOfOrders
FROM orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID
WHERE LastName = 'Dach' OR LastName = 'Tillman'
GROUP BY LastName
HAVING COUNT(orders.OrderID) > 25;
-- BEEKEEPER END

-- DBEAVER START
SHOW DATABASES;
USE testDB;
USE `sql`;
SHOW TABLES;


CREATE TABLE Persons(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	LastName VARCHAR(255),
	FirstName VARCHAR(255),
	Address VARCHAR(255),
	City VARCHAR(255)
);

-- Create Table Using Another Table
CREATE TABLE TestTable AS
SELECT CustomerName, ContactName
FROM customers;

SELECT * FROM TestTable;
DESCRIBE TestTable;

-- ALTER TABLE - ADD Column
ALTER TABLE Persons
ADD Email VARCHAR(255);

SELECT * FROM Persons;

-- ALTER TABLE - DROP COLUMN
ALTER TABLE Persons
DROP COLUMN Email;

INSERT INTO Persons
(LastName, FirstName, Address, City)
VALUES
('Hansen', 'Ola', 'Timoteivn-10', 'Sandnes');

INSERT INTO Persons
(LastName, FirstName, Address, City)
VALUES
('Svendson', 'Tove', 'Borgvn 23', 'Sandnes');

INSERT INTO Persons
(LastName, FirstName, Address, City)
VALUES
('Peterson', 'Kari', 'Storgt 20', 'Stavanger');

DESCRIBE Persons;
SELECT * FROM Persons;

-- ALTER TABLE
ALTER TABLE Persons
ADD DateOfBirth DATE;

-- ADD COLUMN AFTER
ALTER TABLE Persons
ADD DateOfBirth DATE
AFTER FirstName;

-- MODIFY COLUMN
ALTER TABLE Persons
MODIFY COLUMN DateOfBirth YEAR;

-- DROP COLUMN
ALTER TABLE Persons
DROP COLUMN DateOfBirth;

INSERT INTO Persons
(LastName, FirstName, DateOfBirth, Address, City)
VALUES
('Hemenez', 'Maria','1988-06-12', 'Storgt 20', 'Andalusia');

-- MySQL Constraints
CREATE TABLE Personal (
	ID SERIAL,
	LastName VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255),
	Age INT,
	CONSTRAINT UC_Person UNIQUE (ID, LastName)
);

SELECT * FROM Personal;
DROP TABLE Personal;
DESCRIBE Personal;
SHOW CREATE TABLE Personal;

CREATE TABLE Personal  (
  PersonID INT PRIMARY KEY AUTO_INCREMENT,
  LastName VARCHAR(255),
  FirstName VARCHAR(255),
  Age INT
);

ALTER TABLE Personal 
DROP INDEX UC_Person;

SELECT COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME, REFERENCED_TABLE_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Personal';

SHOW TABLE STATUS FROM testDB;

INSERT INTO Personal 
(LastName, FirstName, Age)
VALUES
('Hansen', 'Ola', '30');

INSERT INTO Personal 
(LastName, FirstName, Age)
VALUES
('Svendson', 'Tove', '23');

INSERT INTO Personal 
(LastName, FirstName, Age)
VALUES
('Peterson', 'Kari', '20');

INSERT INTO Personal 
(LastName, FirstName, Age)
VALUES
('Huan', 'Garon', '40');

CREATE TABLE Orders (
    OrderID INT NOT NULL AUTO_INCREMENT,
    OrderNumber INT NOT NULL,
    PersonID INT,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Personal(PersonID)
);

SELECT * FROM Orders;
DROP TABLE Orders;
DESCRIBE Orders;
SHOW CREATE TABLE Orders;

SELECT COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME, REFERENCED_TABLE_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Orders';

INSERT INTO Orders
(OrderNumber, PersonID) 
VALUES 
(77895, 3);

INSERT INTO Orders
(OrderNumber, PersonID) 
VALUES 
(44678, 3);

INSERT INTO Orders
(OrderNumber, PersonID) 
VALUES 
(22456, 2);

INSERT INTO Orders
(OrderNumber, PersonID) 
VALUES 
(24562, 1);

-- CREATE INDEX
CREATE INDEX idx_lastname
ON Personal (LastName);

ALTER TABLE Personal 
DROP INDEX idx_lastname;


-- DBEAVER END