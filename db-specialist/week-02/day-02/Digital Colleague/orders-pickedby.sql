SELECT OrderID,Fullname 
FROM Sales.Orders LEFT JOIN Application.People 
ON Sales.Orders.PickedByPersonID=Application.People.PersonID 
WHERE 2014=YEAR(OrderDate) AND 3=MONTH(OrderDate);