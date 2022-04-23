USE WideWorldImporters;

/*
    Return customers from the Sales.Orders table that have orders both 
    in May 2013 and June 2015.

    | CustomerID |
    --------------
*/

SELECT CustomerID
FROM Sales.Orders
WHERE 2013=YEAR(OrderDate) AND 5=MONTH(OrderDate)
INTERSECT
SELECT CustomerID
FROM Sales.Orders
WHERE 2015=YEAR(OrderDate) AND 6=MONTH(OrderDate);

/*
    Return customers from the Sales.Orders table that have orders 
    in September 2013 but not in October 2015.

    | CustomerID |
    --------------
*/

SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate LIKE '2013-09%'
EXCEPT
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate LIKE '2015-10%'
order by CustomerID DESC;