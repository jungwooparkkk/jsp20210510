USE test;

SELECT * FROM Products;

-- min
SELECT min(Price) FROM Products;
SELECT max(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price;

-- count
SELECT count(*) FROM Products;

-- avg
SELECT avg(price) FROM Products;

-- sum
SELECT sum(price) FROM Products;


SELECT 
min(Price)
FROM Products;

SELECT 
max(Price)
FROM Products;

SELECT count(*)
FROM Products
where
 Price = 18;

SELECT 
avg(Price)

FROM Products;

SELECT 
sum(Price)
FROM Products;