USE WideWorldImporters;

/*

    Write a query that returns all the orders and match them with persons 
    who picked up the order.

    Return only those orders that were placed in March 2014.

    | OrderID | FullName |
    ----------------------

    What do you see in the resultset?  Sok NULL érték van

    How do you display only those rows that don't match? AND FullName is NULL

    How can you make the original query look like an INNER JOIN with a 
    WHERE predicate? AND FullName IS  NOT NULL

*/
SELECT OrderID,Fullname 
FROM Sales.Orders LEFT JOIN Application.People 
ON Sales.Orders.PickedByPersonID=Application.People.PersonID 
WHERE 2014=YEAR(OrderDate) AND 3=MONTH(OrderDate);


/*

    Apply a filter in your original query that filters for full names that 
    start with 'Hudson'.

    What do you notice? kikerülnek a NULL értékek is

*/
SELECT OrderID,Fullname 
FROM Sales.Orders LEFT JOIN Application.People 
ON Sales.Orders.PickedByPersonID=Application.People.PersonID 
WHERE 2014=YEAR(OrderDate) AND 3=MONTH(OrderDate) AND Fullname LIKE 'Hudson%';