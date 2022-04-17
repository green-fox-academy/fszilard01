/*
LogicalQueryProcessing

    Modify this query so that the GROUP BY and the HAVING clauses also use the [Order ID] column alias.
    What happens? Why?
*/

SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;


SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY [Order ID]
HAVING [Order ID] IN (46, 47, 48)
ORDER BY [Order ID] ASC;

-- A módosítás nem fut le, mivel még nem találja a megadott Order ID oszlopot (Érvénytelen oszlopnév)

/*

AllAtOnceExpressions

    Modify this query so that you add a third column in the SELECT list: (Sum_Qty - 10) AS Reduced_Qty
    What happens? Why?

    How would you resolve the problem and add the Reduced_Qty column so that the query works?

    | Order ID | Sum_Qty | Reduced_Qty |
    ------------------------------------   
*/

SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;

SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty, (Sum_Qty - 10) AS Reduced_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;

-- A megadott módon nem fut le, mert nem létezik az oszlop, Az eredeti szummázott oszlopra kell hivatkozni ( SUM(Quantity) ), 
-- és ebbõl kivonni 10-et, akkor lenne jó.

/*

TableAliasing

    Modify this query so that you alias the Sales.OrderLines table.
    Then qualify the column names in the SELECT list with the table alias.
*/

SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;

SELECT Alias.OrderID AS [Order ID], SUM(Alias.Quantity) AS Sum_Qty
FROM Sales.OrderLines AS Alias
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;

-- Sorrendben a SELECT késõbb van, mint a FROM, ezért a tábla lefut.

/*

Top10Percent

    Remove the TOP 10 filter and see how many rows are returned.
    Apply a TOP ten percent filter instead and see how many rows are returned.
    Try different filter and percent values.
*/

SELECT TOP 10 OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;

SELECT TOP 10 percent OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;

SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;

-- A TOP 10 kihagyásával 71ezer sornyi találat van, a TOP 10 percent megadásával 7141.

/*
TopWithTies

    Run the following query and see the results. What do you see?
    Modify the query to use the TOP filter WITH TIES. What happens?
    Modify the query to remove duplicates and then return the TOP 10 UnitPrice. What happens?
*/

SELECT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;

SELECT TOP 10 WITH TIES UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;

SELECT DISTINCT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;

/* A lekérdezés futtatásakor az elsõ 10 értéke egyforma, mindegyik 1899,00, a WITH TIES további 1051 sor jelenik meg,
mert azokat is kiadja, amelyek egyenlõek a TOP 10 értékével, a DISTINCT kiveszi az egyforma sorokat, így a legnagyobb 10, különözõ értékéket kapjuk. */

/*
TopCities

    Find the table that contains data about cities.
    Write a query that returns the 10 cities with the highest population.
    Alias the city population column as [population].

    | CityID | CityName | population |
    ----------------------------------
*/

SELECT TOP 10 CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities;

/*

DistinctOrderDates

    Find the table where there are order dates.
    Write a query that returns the distinct order dates in descending order.
    Alias the returned column as [Order Date].  

    | Order Date |
    --------------

    Try using a different ordering, not on order date. What happens?
*/

SELECT DISTINCT OrderDate AS 'Order Date' 
FROM Sales.Orders
ORDER BY OrderDate DESC;

SELECT DISTINCT OrderDate AS 'Order Date'
FROM Sales.Orders
ORDER BY ExpectedDeliveryDate DESC;

/*

OffsetCities

    Find the table that contains data about cities.
    Write a query that returns the 10 cities with the highest population, but use the paging method.
    Alias the city population column as [population].


    | CityID | CityName | population |
    ----------------------------------
*/

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
ORDER BY LatestRecordedPopulation DESC OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;

/*

OffsetStockItems

    Write a query for the Sales.OrderLines table that returns:
    - unique stock items and their descriptions
    - ordered by stock item ID in ascending order
    - skip the first 29 rows then return only the next 50 rows

    | StockItemID | Description |
    -----------------------------
*/

SELECT DISTINCT StockItemID, Description
FROM Sales.OrderLines
ORDER BY StockItemID ASC
OFFSET 29 ROWS FETCH NEXT 50 ROWS ONLY;
