SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	CustomerName = 'odinson',
	Address = 'Asgard'
WHERE CustomerID = 1;

UPDATE Customers
SET City = 'Oslo',
	Country = 'Norway'
WHERE CustomerID = 32;

SELECT Employee ,
LastName ,
FirstName ,
Notes
FROM Employee
WHERE EmployeeID = 1;