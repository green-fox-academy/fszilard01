SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate LIKE '2013-09%'
EXCEPT
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate LIKE '2015-10%';