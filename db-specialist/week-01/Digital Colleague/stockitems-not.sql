SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%ham%' and StockItemName NOT LIKE '%hamm%';