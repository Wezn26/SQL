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
