SELECT CustomerID,
    SUM(CASE WHEN YEAR(OrderDate) = 2013 THEN Quantity ELSE 0 END) AS '2013',
    SUM(CASE WHEN YEAR(OrderDate) = 2014 THEN Quantity ELSE 0 END) AS '2014',
    SUM(CASE WHEN YEAR(OrderDate) = 2015 THEN Quantity ELSE 0 END) AS '2015',
    SUM(CASE WHEN YEAR(OrderDate) = 2016 THEN Quantity ELSE 0 END) AS '2016'
FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
GROUP BY CustomerID;