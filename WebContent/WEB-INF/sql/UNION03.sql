USE test;

SELECT * FROM Customers;
SELECT * FROM Suppliers;

SELECT country FROM Customers
UNION
SELECT country FROM Suppliers
ORDER BY Country;