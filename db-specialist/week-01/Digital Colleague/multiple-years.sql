SELECT OrderID, OrderDate 
FROM Sales.Orders
WHERE '2013'=YEAR(OrderDate) OR '2015'=YEAR(OrderDate) OR '2016'=YEAR(OrderDate);
