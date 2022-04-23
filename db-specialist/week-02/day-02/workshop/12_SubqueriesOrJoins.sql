USE WideWorldImporters;

/*

    Rewrite the following subqueries as join queries.

*/

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE CustomerID IN
  (SELECT CustomerID
   FROM Sales.Customers
   WHERE PostalCityID = 33832);

-- join version:

SELECT OrderId, Orderdate 
FROM Sales.orders so INNER JOIN Sales.Customers sc ON so.CustomerID = sc.CustomerID
WHERE PostalCityID = 33832;



SELECT CustomerID, CustomerName
FROM Sales.Customers c
WHERE CustomerName LIKE 'Anna%'
    AND EXISTS (SELECT * FROM Sales.Orders o
                WHERE c.CustomerID = o.CustomerID
                AND o.OrderDate >= '20140101' AND o.OrderDate < '20140201');

-- join version:

SELECT DISTINCT sc.CustomerID, CustomerName
FROM Sales.Customers sc INNER JOIN Sales.Orders so 
ON sc.CustomerID = so.CustomerID
WHERE CustomerName LIKE 'Anna%' AND so.OrderDate >= '20140101' AND so.OrderDate < '20140201'



SELECT CustomerID, CustomerName
FROM Sales.Customers c
WHERE CustomerName LIKE 'Anna%'
    AND NOT EXISTS (SELECT * FROM Sales.Orders o
                    WHERE c.CustomerID = o.CustomerID
                    AND o.OrderDate >= '20140101' AND o.OrderDate < '20140201');

-- join version:

SELECT sc.CustomerId,sc.CustomerName 
FROM Sales.Customers sc INNER JOIN Sales.Orders so ON sc.CustomerID =so.CustomerID
AND CustomerName LIKE 'Anna%'
EXCEPT 
SELECT sc.CustomerId, sc.CustomerName 
FROM Sales.Customers sc INNER JOIN Sales.Orders so ON sc.CustomerID=so.CustomerID 
AND CustomerName LIKE 'Anna%' AND so.OrderDate >= '20140101' AND so.OrderDate < '20140201';
