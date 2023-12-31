USE northwind;

-- What is the name of the most expensive products?
SELECT 
    ProductName, UnitPrice
FROM
    products
WHERE
    UnitPrice = (SELECT 
            MAX(UnitPrice)
        FROM
            products);

-- What is the orderID, shippingname, and shipping address of all orders shipped by Federal Shipping?
SELECT 
    OrderID, ShipName, ShipAddress
FROM
    orders
WHERE
    orders.ShipVia IN (SELECT 
            ShipVia
        FROM
            orders
        WHERE
            ShipVia = 3);
            
-- What are the order ids of the orders that ordered Sasquatch Ale?

SELECT ProductID
FROM products
WHERE ProductName = "Sasquatch Ale";

SELECT 
    OrderID
FROM
    `order details`
WHERE
    ProductID IN (SELECT ProductID
FROM products
WHERE ProductName = "Sasquatch Ale");
            
	
-- What is the name of the employee that sold order 10266?
SELECT *
FROM orders
WHERE OrderID = "10266";

SELECT 
    FirstName, LastName
FROM
    employees
WHERE
    EmployeeID = (SELECT EmployeeID
FROM orders
WHERE OrderID = "10266");

            
-- What is the name of the customer who bought 10266?
SELECT CustomerID
FROM orders
WHERE orderID = 10266;

SELECT 
    CompanyName
FROM
    Customers
WHERE
    CustomerID IN (SELECT CustomerID
FROM orders
WHERE orderID = 10266);
