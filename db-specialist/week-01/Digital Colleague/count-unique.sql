SELECT COUNT(OrderDate) AS cnt_orderdate, COUNT(DISTINCT OrderDate) AS cnt_unique_orderdate
FROM Sales.Orders;
