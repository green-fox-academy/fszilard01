SELECT CustomerID
FROM Sales.Orders 
WHERE OrderDate LIKE '2013-05%'
INTERSECT
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate LIKE '2015-06%';