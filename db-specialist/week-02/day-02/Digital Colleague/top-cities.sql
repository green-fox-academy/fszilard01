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
