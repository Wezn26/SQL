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
# STEP 59 The following SQL statement selects all products with a ProductName not between "Carnarvon Tigers" and "Mozzarella di Giovanni":
```
SELECT * FROM products WHERE ProductName NOT
BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
```
# STEP 60 The following SQL statement selects all orders with an OrderDate between '01-July-1996' and '31-July-1996':
```
SELECT * FROM orders WHERE OrderDate BETWEEN '1996-07-01' AND '2011-07-01';
```
# STEP 61 MySQL Aliases







