USE WideWorldImporters;

/*

    Write a query that returns all the customer IDs from orders and match the 
    orders with persons who picked up the order.

    Return only those orders that were placed in March 2014.
    Make customer groups and count how many persons there are in each group.

    | CustomerID | cnt_persons |
    ----------------------------

    Watch out for using the COUNT function!
    How should you use the COUNT function? Why? 
	A Distinct használatával, 
	mert egy személy több megrendelést vehet fel.


*/
SELECT CustomerID,  COUNT(DISTINCT PickedByPersonID) AS cnt_person
FROM Sales.Orders
WHERE 2014 = YEAR(OrderDate) AND 3 = MONTH(OrderDate)
GROUP BY CustomerID;