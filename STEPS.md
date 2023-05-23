# STEP 1
```SELECT CustomerName,City,Country FROM customers;```

# STEP 2
```SELECT DISTINCT Country FROM customers;```

# STEP 3 
```SELECT COUNT(Country) FROM customers;```

# STEP 4
```SELECT COUNT(DISTINCT Country) FROM customers;```

# STEP 5
```SELECT * FROM customers WHERE Country='Rwanda';```

# STEP 6
```SELECT * FROM customers WHERE CustomerID=3;```

# STEP 7
```SELECT * FROM products WHERE price=56;```

# STEP 8
```SELECT * FROM products WHERE price > 30;```

# STEP 9
```SELECT * FROM products WHERE price < 30;```

# STEP 10
```SELECT * FROM products WHERE price >= 30;```

# STEP 11
```SELECT * FROM products WHERE price >= 30;```

# STEP 12
```SELECT * FROM products WHERE price <= 30;```

# STEP 13
```SELECT * FROM products WHERE price <> 30;```

# STEP 14
```SELECT * FROM products WHERE price BETWEEN 50 AND 60;```

# STEP 15
```SELECT * FROM customers WHERE City LIKE 's%';```

# STEP 16
```
SELECT * FROM customers WHERE City IN ('West Alanna', 'North Hershel');
```
# STEP 17 MySQL AND, OR and NOT Operators
```
SELECT * FROM customers 
WHERE Country = 'Fiji' AND City = 'Gusikowskiville';
```

# STEP 18 
```
SELECT * FROM customers 
WHERE City = 'Feestview' OR City = 'Welchview';
```

# STEP 19
```
SELECT * FROM customers 
WHERE Country = 'Rwanda' OR Country = 'Bulgaria';
```

# STEP 20
```SELECT * FROM customers WHERE NOT Country = 'Rwanda';```

# STEP 21
```
SELECT  * FROM customers WHERE Country = 'Bulgaria' 
AND (City ='West Isaiah' OR City = 'Feestview');
```
# STEP 22
```
SELECT * FROM customers WHERE NOT Country = 'Rwanda' 
AND NOT Country ='Bulgaria';
```
# STEP 23 MySQL ORDER BY Keyword
```SELECT * FROM customers ORDER BY Country;```

# STEP 24
```SELECT * FROM customers ORDER BY Country DESC;```
# STEP 25

```SELECT * FROM customers ORDER BY Country, CustomerName;```

# STEP 26
```SELECT * FROM customers ORDER BY Country ASC, CustomerName DESC;```
# STEP 27 The MySQL INSERT INTO Statement
```
INSERT INTO customers 
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
('Cardinal','Tom B. Erichsen', 'Skagen 21','Stavanger','4006','Norway');
```
# STEP 28 MySQL NULL Values
```
SELECT CustomerName, ContactName, Address 
FROM customers
WHERE Address IS NULL;
```
# STEP 29
```
SELECT CustomerName, ContactName, Address 
FROM customers
WHERE Address IS NOT NULL;
```
# STEP 30 MySQL UPDATE Statement
```
UPDATE customers
SET ContactName = 'Alfred Schmidt', City = 'Nadi'
WHERE CustomerID = 1;
```
# STEP 31
```
UPDATE customers
SET PostalCode = '0000'
WHERE Country = 'Ukraine';
```
# STEP 32 MySQL DELETE Statement
```DELETE FROM customers WHERE CustomerName = 'Ellie Runte';```
# STEP 33 MySQL LIMIT Clause
```SELECT * FROM customers LIMIT 3;```
# STEP 34
```SELECT * FROM customers WHERE Country = 'Bulgaria' LIMIT 2;```
# STEP 35 MySQL MIN() and MAX() Functions
```SELECT MIN(Price) AS SmallestPrice FROM products;```
# STEP 36
```SELECT MAX(Price) AS LargestPrice FROM products;```
# STEP 37 MySQL COUNT(), AVG() and SUM() Functions
```SELECT COUNT(ProductID) FROM products;```
# STEP 38 
```SELECT AVG(Price) FROM products;```
# STEP 39
```SELECT SUM(Quantity) FROM order_details;```
# STEP 40 MySQL LIKE Operator The following SQL statement selects all customers with a CustomerName starting with "a":
```SELECT * FROM customers WHERE CustomerName LIKE 'a%';```
# STEP 41 The following SQL statement selects all customers with a CustomerName ending with "a":
```SELECT * FROM customers WHERE CustomerName LIKE '%a';```
# STEP 42 The following SQL statement selects all customers with a CustomerName that have "or" in any position:
```SELECT * FROM customers WHERE CustomerName LIKE '%or%';```
# STEP 43 The following SQL statement selects all customers with a CustomerName that have "r" in the second position:
```SELECT * FROM customers WHERE CustomerName LIKE '_r%';```
# STEP 44 The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:
```SELECT * FROM customers WHERE CustomerName LIKE 'a__%';```
# STEP 45 The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "s":
```SELECT * FROM customers WHERE CustomerName LIKE 'a%s';```
# STEP 46 The following SQL statement selects all customers with a CustomerName that does NOT start with "a":
```SELECT * FROM customers WHERE CustomerName NOT LIKE 'a%';```
# STEP 47 MySQL Wildcards 
# The following SQL statement selects all customers with a City starting with "la":
```SELECT * FROM customers WHERE City LIKE 'la%';```
# STEP 48 The following SQL statement selects all customers with a City containing the pattern "es": 
```SELECT * FROM customers WHERE City LIKE '%es%';```
# STEP 49 The following SQL statement selects all customers with a City starting with any character, followed by "_adi":
```SELECT * FROM customers WHERE City LIKE '_adi';```
# STEP 50 The following SQL statement selects all customers with a City starting with "R", followed by any character, followed by "w", followed by any character, followed by "side": Roweside
```SELECT * FROM customers WHERE City LIKE 'R_w_side';```
# STEP 51 MySQL IN Operator
# The following SQL statement selects all customers that are located in "Bulgaria", "Rwanda" or "Moldova":
```
SELECT * FROM customers WHERE Country IN ('Bulgaria', 'Rwanda', 'Moldova');
```
# STEP 52  The following SQL statement selects all customers that are NOT located in "Bulgaria", "Rwanda" or "Moldova":
```
SELECT * FROM customers WHERE Country NOT IN ('Bulgaria', 'Rwanda', 'Moldova');
```
# STEP 53 The following SQL statement selects all customers that are from the same countries as the table suppliers:
```
SELECT * FROM customers WHERE Country IN (SELECT Country FROM suppliers);
```
# STEP 54 MySQL BETWEEN Operator
## The following SQL statement selects all products with a price between 10 and 80:
```
SELECT * FROM products WHERE Price BETWEEN 10 AND 80;
```
# STEP 55 To display the products outside the range of the previous example, use NOT BETWEEN:
```
SELECT * FROM products WHERE Price NOT BETWEEN 10 AND 80;
```
# STEP 56 The following SQL statement selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:
```
SELECT * FROM products WHERE Price BETWEEN 10 AND 80 AND CategoryID NOT IN (1,2,3);
```
# STEP 57 The following SQL statement selects all products with a ProductName between "Libero nesciunt quisquam" and "Voluptas enim libero eos":
```
SELECT * FROM products WHERE ProductName 
BETWEEN 'Libero nesciunt quisquam' AND 'Voluptas enim libero eos'
ORDER BY ProductName;
```
# STEP 58 The following SQL statement selects all products with a ProductName between "Corporis nulla et" and "Quia repellat":
```
SELECT * FROM products WHERE ProductName 
BETWEEN 'Corporis nulla et' AND 'Quia repellat'
ORDER BY ProductName;
```
# STEP 59 The following SQL statement selects all products with a ProductName not between "Nobis dolorem ab deleniti" and "Dolor sunt eos":
```
SELECT * FROM products WHERE ProductName NOT
BETWEEN 'Nobis dolorem ab deleniti' AND 'Dolor sunt eos'
ORDER BY ProductName;
```
# STEP 60 The following SQL statement selects all orders with an OrderDate between '01-July-1996' and '31-July-1996':
```
SELECT * FROM orders WHERE OrderDate BETWEEN '1996-07-01' AND '2011-07-01';
```
# STEP 61 MySQL Aliases
## The following SQL statement creates two aliases, one for the CustomerID column and one for the CustomerName column:
```
SELECT CustomerID AS ID, CustomerName AS Customer FROM customers;
```
# STEP 62 The following SQL statement creates two aliases, one for the CustomerName column and one for the ContactName column. Note: Single or double quotation marks are required if the alias name contains spaces:
```
SELECT CustomerName AS Customer, ContactName AS "Contact Person" FROM customers;
```
# STEP 63 The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):
```
SELECT CustomerName, CONCAT_WS(', ', Address, Postalcode, City, Country) AS Address FROM customers;
```
# STEP 64 The following SQL statement selects all the orders from the customer with CustomerID=4 (Around the Horn). We use the "Customers" and "Orders" tables, and give them the table aliases of "c" and "o" respectively (Here we use aliases to make the SQL shorter):
```
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM customers AS c, orders AS o
WHERE c.CustomerName='Sharon Rice' AND c.CustomerID=o.CustomerID;
```
# STEP 65 The following SQL statement is the same as above, but without aliases:
```
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Sharon Rice' AND Customers.CustomerID=Orders.CustomerID;
```
# STEP 66 MySQL Joins
# Then, we can create the following SQL statement (that contains an INNER JOIN), that selects records that have matching values in both tables:
```
SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
FROM orders
INNER JOIN customers ON orders.CustomerID=customers.CustomerID;
```
# STEP 67 Supported Types of Joins in MySQL
- INNER JOIN: Returns records that have matching values in both tables
- LEFT JOIN: Returns all records from the left table, and the matched records from the right table
- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
- CROSS JOIN: Returns all records from both tables
# STEP 68

<p>
<!-- <image src="public/images/img_innerjoin.gif" alt="Текст с описанием картинки"> -->
<img alt="MySQL INNER JOIN" height="145" src="public/images/img_innerjoin.gif" width="200">
<img alt="MySQL LEFT JOIN" height="145" src="public/images/img_leftjoin.gif" width="200">
<img alt="MySQL RIGHT JOIN" height="145" src="public/images/img_rightjoin.gif" width="200">
<img alt="MySQL CROSS JOIN" height="145" src="public/images/img_crossjoin.png" width="200">
</p>

# STEP 69 MySQL INNER JOIN Keyword
### The INNER JOIN keyword selects records that have matching values in both tables.
<p style="text-align:center;">
<img alt="MySQL INNER JOIN" height="145" src="public/images/img_innerjoin.gif" width="200">
</p>

# STEP 70 The following SQL statement selects all orders with customer information:
#### Note: The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown!
```
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
```
# STEP 71 JOIN Three Tables
### The following SQL statement selects all orders with customer and shipper information:
```
SELECT orders.OrderID, customers.CustomerName, shippers.ShipperName
FROM ((orders 
INNER JOIN customers ON orders.CustomerID = customers.CustomerID)
INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID); 
```
# STEP 72 MySQL LEFT JOIN Keyword
### The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).
<p style="text-align:center;">
<img alt="MySQL LEFT JOIN" height="145" src="public/images/img_leftjoin.gif" width="200">
</p>

# STEP 73 The following SQL statement will select all customers, and any orders they might have:
```
SELECT customers.CustomerName, orders.OrderID
FROM customers
LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
ORDER BY customers.CustomerName;
```
# STEP 74 MySQL RIGHT JOIN Keyword
### The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records (if any) from the left table (table1).
<p style="text-align:center;">
<img alt="MySQL RIGHT JOIN" height="145" src="public/images/img_rightjoin.gif" width="200">
</p>

# STEP 75 The following SQL statement will return all employees, and any orders they might have placed:
### Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).
```
SELECT orders.OrderID, employees.LastName, employees.FirstName
FROM orders
RIGHT JOIN employees ON orders.EmployeeID = employees.EmployeeID
ORDER BY orders.OrderID;
```











