SELECT CustomerName, OrderLineID, OrderDate
FROM Sales.Customers a
    INNER JOIN Sales.Orders b ON a.CustomerID = b.CustomerID
    INNER JOIN Sales.OrderLines c ON b.OrderID = c.OrderID
	INNER JOIN Application.Cities ac ON a.DeliveryCityID=ac.CityID
	INNER JOIN Application.StateProvinces aps ON ac.StateProvinceID=aps.StateProvinceID
WHERE aps.StateProvinceName='Washington' AND '2016-03-01'<b.OrderDate;