SELECT TOP 5 S.OrderID, SUM(Quantity) sum_qty
FROM Sales.Orders S INNER JOIN Sales.OrderLines SO
ON S.OrderID = SO.OrderID
WHERE OrderDate BETWEEN '2013-09-01' AND '2013-12-31' AND CustomerID = 100
GROUP BY S.OrderID
ORDER BY sum_qty DESC;
