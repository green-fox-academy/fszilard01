SELECT CustomerID, CustomerName
FROM Sales.Customers t1
WHERE CustomerName LIKE 'Anna%' AND NOT EXISTS (
SELECT CustomerID 
FROM Sales.Orders t2 
WHERE OrderDate BETWEEN '2014-01-01' AND '2014-01-31' AND t1.CustomerID = t2.CustomerID);
