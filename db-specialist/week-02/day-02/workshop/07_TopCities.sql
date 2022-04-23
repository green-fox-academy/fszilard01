USE WideWorldImporters;

/*
    Write a query that returns a report for specific Cities.

    Each order has detailed orderlines that show what items were ordered and
    in which quantity.

    This time you'll need to work with more than two tables!
    This is called a multi-join query.

    Return those 5 cities where customers ordered the most aggregated quantities
    on the last days of any month in 2016.
    If the aggregated quantity is:
     - greater than 800 display 'Exceptional'
     - between 700 and 800 display 'Good'
     - below 700 display 'Average'
    Alias the sales classification as [sales].


    | CityName | sum_qty | sales |
    ------------------------------
*/

SELECT TOP 5 CityName, SUM(Quantity) AS sum_qty,
    CASE
        WHEN 800 < SUM(Quantity) THEN 'Exceptional'
        WHEN SUM(Quantity) BETWEEN 700 AND 800 THEN 'Good'
        ELSE 'Average' 
		END AS sales
FROM Application.Cities ac INNER JOIN Sales.Customers sc ON ac.CityID = sc.DeliveryCityID, 
     Sales.Orders so INNER JOIN Sales.OrderLines sol ON so.OrderID = sol.OrderID
WHERE so.CustomerID = sc.CustomerID 
    AND 2016=YEAR(OrderDate)
    AND OrderDate=EOMONTH(OrderDate)
GROUP BY CityName
ORDER BY SUM(Quantity) DESC;
