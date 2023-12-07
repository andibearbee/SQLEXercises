-- What is the name of the table that holds the items NorthWinds sells?
-- Products

-- Write a query to list the product id, product name, and unit price of every product

SELECT ProductID, ProductName, UnitPrice
FROM Products;
 
 -- List product id, product name, and unit price in order by price 
 SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice;
 
 -- What are the products that we carry where the unit price is $7.50 or less?
 SELECT ProductName -- use UnitPrice to dsiplay price and check your work
FROM Products
WHERE UnitPrice <= 7.50;

-- 5. What are the products that we carry where we have at least 100 units on hand? 
-- Order them in descending order by price

SELECT ProductName
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

-- 6. What are the products that we carry where we have at least 100 units on hand? 
-- Order them in descending order by price
-- If two or more have the same price, list those in ascending order by product name 
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName;

-- What products do we carry when we have no units on hand, 1 or more units is on backorder?
-- Order by product name
SELECT ProductName
FROM Products
WHERE UnitsOnOrder >= 1
ORDER BY ProductName;

-- What is the name of the table that holds the types (categories) of the items that NorthWind sells?
-- categories

-- Write a query that lists all of the columns and all of the rows of the categories table.
-- What is the category ID of seafood? 8
SELECT *
FROM Categories;

-- Examine Products table, how does it ID the Category of each product sold?
-- Write a query to list all seafood items
SELECT ProductID, ProductName, CategoryID
FROM Products
WHERE CategoryID = 8;

-- What are all the first and last names of Northwind Employees?
SELECT FirstName, LastName
FROM Employees;

-- What employees have manager in their title?
SELECT FirstName, LastName, Title
FROM Employees
WHERE Title LIKE '%manager%';

-- List the distinct job titles in employees
SELECT DISTINCT Title
FROM Employees;


-- What employees have salaries between 2000 and 2500?
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;

-- List all information about Northwind's suppliers
SELECT *
FROM Suppliers;

-- Examine Products table, list all products supplied by 'Tokyo Traders'
SELECT SupplierID, ProductName
FROM Products
WHERE SupplierID = 4;




 