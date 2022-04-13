SELECT TOP 100 OrderID, ISNULL(Comments, 'not available') AS Comments
FROM Sales.Orders;
