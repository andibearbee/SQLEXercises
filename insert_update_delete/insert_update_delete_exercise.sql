USE northwind;

-- Add new supplier
INSERT INTO suppliers (SupplierID, 
CompanyName, 
ContactName, 
ContactTitle, 
Address, 
City, 
Region, 
PostalCode, 
Country, 
Phone, 
Fax)
VALUES (8785121,
'Pumpkin Patch Press',
'Spencer Reid',
'Publishing Manager',
'7411 Bagend Way ',
'Hobbiton',
'The Shire',
24308,
'Middle Earth',
575-416-8557,
42.587-2761);

-- Add a new product provided by supplier
INSERT INTO products (ProductID, ProductName, SupplierID)
VALUES (DEFAULT, "Little Kid with a Big Green Hand", 8785121);


-- Print all products and suppliers
SELECT 
    p.ProductName, s.CompanyName
FROM
    products p
        INNER JOIN
    suppliers s ON p.SupplierID = s.SupplierID;

-- adding iniial price
UPDATE products 
SET 
    UnitPrice = 15
WHERE
    ProductID = 78;

-- increasing price by 15 percent: 15% more that 15 is 17.25, so 17.25 + 15 = 32.25
UPDATE products 
SET 
    UnitPrice = 32.25
WHERE
    ProductID = 78;

-- Print out all products and prices from supplier
SELECT 
    p.ProductName, p.UnitPrice, s.CompanyName
FROM
    products p
        INNER JOIN
    suppliers s ON p.SupplierID = s.SupplierID
WHERE
    s.SupplierID = 8785121;


-- Delete the new product
DELETE FROM products p
WHERE p.ProductID = 78;


-- Delete the new supplier
DELETE FROM suppliers s
WHERE s.SupplierID = 8785121;


-- Print out all Products
SELECT 
    *
FROM
    products;


-- Print out all suppliers
SELECT 
    *
FROM
    suppliers;


