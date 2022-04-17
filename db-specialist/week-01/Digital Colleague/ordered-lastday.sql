SELECT CustomerID, OrderID, OrderDate 
FROM Sales.Orders AS t1
WHERE OrderDate = (
    SELECT MAX(OrderDate)
    FROM Sales.Orders AS t2
    WHERE t1.CustomerID = t2.CustomerID)
ORDER BY CustomerID DESC;