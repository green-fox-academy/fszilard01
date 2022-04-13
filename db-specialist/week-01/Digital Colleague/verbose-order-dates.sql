SELECT OrderID, OrderDate,
CASE
    WHEN DATENAME(qq, OrderDate) = 1 THEN 'First quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 2 THEN 'Second quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 3 THEN 'Third quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 4 THEN 'Fourth quarter of 2013'
END AS quarter
FROM Sales.Orders
WHERE '2013'=YEAR(OrderDate);
