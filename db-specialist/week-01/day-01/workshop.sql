/*
LogicalQueryProcessing

USE WideWorldImporters;

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

USE WideWorldImporters;

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

USE WideWorldImporters;

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

-- a többit holnap folytatom.