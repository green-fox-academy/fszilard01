SELECT StockItemID, SUM(Quantity) AS sum_qty, COUNT(Quantity) AS cnt_qty
FROM Sales.OrderLines
WHERE Quantity >= 10
GROUP BY StockItemID
HAVING SUM(Quantity) > 10000
ORDER BY StockItemID ASC;