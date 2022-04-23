USE WideWorldImporters;

/*

    Write a query that returns a report for specific Customers.

    Each order has detailed orderlines that show what items were ordered and 
    in which quantity.

    This time you'll need to work with more than two tables!
    This is called a multi-join query.

    Use the Sales.Customers, Sales.Orders and Sales.OrderLines tables. 
    Sales.OrderLines has an OrderID column that you should use.
    Sales.Orders has a CustomerID column that you should use.

    Return those 5 customers who ordered the most quantities in 2015.


    | CustomerID | CustomerName | sum_qty |
    ---------------------------------------

*/

SELECT TOP 5 so.CustomerID, CustomerName, SUM(Quantity) AS sum_qty
FROM Sales.Customers sc
INNER JOIN Sales.Orders so ON sc.CustomerID = so.CustomerID
INNER JOIN Sales.OrderLines sol ON sol.OrderID = so.OrderID
WHERE 2015=YEAR(OrderDate)
GROUP BY so.CustomerID, CustomerName
ORDER BY sum(Quantity) DESC;
