USE northwind;

SELECT p.productID, 
p.productName, 
p.UnitPrice, 
c.CategoryName
FROM products 
INNER JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, productName;

SELECT p.productID, 
p.productName, 
p.UnitPrice, 
s.CompanyName AS SupplierName
FROM products 
INNER JOIN suppliers
ON products.supplierID = suppliers.supplierID
WHERE UnitPrice > 75
ORDER BY productName;

SELECT p.productID, 
p.productName, 
p.UnitPrice, 
c.CategoryName, 
s.CompanyName
FROM products 
INNER JOIN categories ON products.CategoryID = categories.CategoryID
INNER JOIN suppliers ON products.supplierID = suppliers.supplierID
ORDER BY productName;

SELECT p.productName, 
c.categoryName
FROM products 
INNER JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice)
FROM products);

-- ShipperID = ShipVia
SELECT orderID, ShipName, ShipAddress, CompanyName
FROM orders
INNER JOIN shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = "Germany";

SELECT orders.orderID, orderDate, ShipName, ShipAddress
FROM orders
INNER JOIN `order details`
ON orders.OrderID = `order Details`.OrderID
WHERE ProductID =
(SELECT ProductID
FROM products
WHERE ProductName = "Sasquatch Ale");





