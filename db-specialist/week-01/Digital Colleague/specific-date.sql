SELECT OrderID, OrderDate 
FROM Sales.Orders
WHERE '2015'=YEAR(OrderDate) AND '05'=MONTH(OrderDate);