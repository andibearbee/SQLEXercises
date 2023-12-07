USE northwind;


-- What is the number of suppliers?
SELECT COUNT(*) AS total_suppliers
FROM suppliers;

--  What is the sum of the employees salaries?
SELECT SUM(salary) AS total_salary
FROM employees;

-- What is the price of the cheapeat item Northwind sells?
SELECT MIN(UnitPrice) AS lowest_price
FROM products;

-- What is the average rpice of products sold at northwind?
SELECT AVG(UnitPrice) AS average_price
FROM products;

-- What is the price of the most expensive item Northwind sells?
SELECT MAX(UnitPrice) AS lowest_price
FROM products;

-- What is the supplier id and number of items each supplier supplies 
SELECT SupplierID, COUNT(*) AS number_of_items
FROM products
GROUP BY SupplierID;


-- For suppliers that supply at least 5 items, what is the supplierID and # of items supplied?
SELECT 
    SupplierID, COUNT(*) AS items_supplied
FROM
    products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

-- List productID, productname, and inventory value (unit price * number of units in stock) 
-- Sort in DESC, if not distinct, order by product name
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS inventory_value
FROM products
ORDER BY inventory_value DESC, ProductName; 
