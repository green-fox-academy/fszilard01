SELECT CustomerID, OrderID, OrderDate 
FROM Sales.Orders
WHERE OrderDate =
(SELECT MAX(OrderDate) FROM Sales.Orders);
