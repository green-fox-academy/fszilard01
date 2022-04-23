USE WideWorldImporters;

/*
    Write a query that returns a report for specific Orders.

    Each order has detailed orderlines that show what items were ordered and 
    in which quantity.

    Use the Sales.Orders and Sales.OrderLines tables. Sales.OrderLines has 
    an OrderID column that you should use.

    Return the 5 highest aggregated order quantity for those orders 
    that were placed between '2013-09-01' and '2013-12-31' and 
    belong to CustomerID = 100.


    | OrderID | sum_qty |
    ---------------------
*/

SELECT TOP 5 S.OrderID, SUM(Quantity) sum_qty
FROM Sales.Orders S INNER JOIN Sales.OrderLines SO
ON S.OrderID = SO.OrderID
WHERE OrderDate BETWEEN '2013-09-01' AND '2013-12-31' AND CustomerID = 100
GROUP BY S.OrderID
ORDER BY sum_qty DESC;