/* 
LastDayOrderActivity

    Modify the below query:
     - to return only the last day orders in general from the Sales.Orders table

    | CustomerID | OrderID | OrderDate |
    ------------------------------------
*/

SELECT CustomerID, OrderID, OrderDate 
FROM Sales.Orders
WHERE OrderDate =(
	SELECT MAX(OrderDate) 
	FROM Sales.Orders);

/*
CustomerLastDayOrder

    Modify the below query:
     - to return the orders that each customer placed on their last order day 
       from the Sales.Orders table

    | CustomerID | OrderID | OrderDate |
    ------------------------------------
*/

SELECT CustomerID, OrderID, OrderDate 
FROM Sales.Orders t1
WHERE OrderDate = (
    SELECT MAX(OrderDate)
    FROM Sales.Orders t2
    WHERE t1.CustomerID = t2.CustomerID)
ORDER BY CustomerID ASC;

/*
CorrelatedQuantity

    Modify the below query per the following:
     - add a new column that shows the maximum quantity for the StockItemID
     - add yet another column that shows the difference between the maximum 
       quantity for the StockItemID and each order quantity

    | OrderID | StockItemID | Quantity | Max_StockItem_Qty | Max_Diff_Qty |
*/

SELECT OrderID, StockItemID, Quantity,
	(SELECT MAX(Quantity) FROM Sales.OrderLines) AS Max_StockItem_Qty,
    ((SELECT MAX(Quantity) FROM Sales.OrderLines)-Quantity) AS Max_Diff_Qty
FROM Sales.OrderLines
WHERE StockItemID = 180;

/*
MissingCustomerOrder

    Modify the below query:
     - to return only those customers whose name starts with 'Anna'
     - AND did not place any orders in January 2014

    | CustomerID | CustomerName |
    -----------------------------
*/

SELECT CustomerID, CustomerName
FROM Sales.Customers t1
WHERE CustomerName LIKE 'Anna%' AND NOT EXISTS (
SELECT CustomerID 
FROM Sales.Orders t2 
WHERE OrderDate BETWEEN '2014-01-01' AND '2014-01-31' AND t1.CustomerID = t2.CustomerID);

/*
PersonIDProblem

    Query1 - returns persons who are referenced in Sales.Orders 
             as PickedByPersonID 
    It returns 19 persons (rows).
*/

SELECT PersonID, FullName
FROM Application.People
WHERE PersonID IN (SELECT o.PickedByPersonID
                   FROM Sales.Orders o);

/* 
    Query2 - should return persons who are NOT referenced in Sales.Orders 
             as PickedByPersonID 
    It returns UNKNOWN. (no results)

    Why is that?
*/

SELECT PersonID, FullName
FROM Application.People
WHERE PersonID NOT IN (SELECT o.PickedByPersonID
                       FROM Sales.Orders o);
-- Az IN nem veszi figyelembe a NULL értéket, ezért a NOT IN üres táblát ad vissza 

    -- Query3 - Resolve the problem so that the NOT IN query does return rows.

SELECT PersonID, FullName
FROM Application.People
WHERE PersonID NOT IN (SELECT o.PickedByPersonID
                   FROM Sales.Orders o
                   WHERE o.PickedByPersonID IS NOT NULL);
-- A subquery most azokat az elemeket vizsgálja, ahol a PickedByPersonID értéke nem NULL, 
-- így a NOT IN azokat a rekordokat adja eredményül, ahol a PickedByPersonID értéke NULL.
-- (hosszú futási idõ)

    -- Query4 - How would you rewrite the NOT IN query with EXISTS?

SELECT PersonID, FullName
FROM Application.People
WHERE EXISTS (SELECT o.PickedByPersonID
                   FROM Sales.Orders o);
-- Az EXIST segítségével jelentõsen csökken a futási idõ.

/*
CityNextID
  
    Write a query that determines the next CityID 
    in the Application.Cities table.
  
    | CityID |  CityName  | nextcityid |
    ------------------------------------
    |   1    | Aaronsburg |      3     |
    |   3    | Abanda     |      4     |
    |   4    | Abbeville  |      5     |
    |   5    | Abbeville  |      6     |
    |  ...   |    ...     |     ...    |
    | 38186  | Zwolle     |     NULL   |
*/

SELECT CityID, CityName, (
SELECT 
	TOP 1 CityID FROM Application.Cities AS t2
	WHERE t1.CityID < t2.CityID) AS nextcityid
FROM Application.Cities AS t1 
ORDER BY CityID ASC;

/*
PopulationRunningTotal

    Write a query that determines the running total (cumulative sum) of
    LatestRecordedPopulation of cities in the state of Colorado
    in the Application.Cities table.
  
    | CityID |  CityName  | population | run_total |
    ------------------------------------------------
    |  110   | Adams City |    NULL    |    NULL   |
    |  184   | Agate      |    NULL    |    NULL   |
    |  214   | Aguilar    |    538     |    538    |
    |  249   | Akron      |    1702    |    2240   |
    |  282   | Alamosa    |    8780    |    11020  |
    |  491   | Allenspark |    528     |    11548  |
    |  ...   | ...        |    ...     |    ...    |

*/

SELECT CityID, CityName, LatestRecordedPopulation AS population, SUM(LatestRecordedPopulation) OVER (ORDER BY CityID ASC) AS run_total
FROM Application.Cities
WHERE StateProvinceID = (SELECT StateProvinceID
                         FROM Application.StateProvinces
                         WHERE StateProvinceName = 'Colorado');

/*
CityPopulationCalc

    Modify the below query to return these columns 
    from the Application.Cities table:
     - cnt_all: count of all rows
     - cnt_pop: count of the LatestRecordedPopulation column values
     - max_pop: maximum value of LatestRecordedPopulation
     - min_pop: minimum value of LatestRecordedPopulation
     - sum_pop: sum aggregate of LatestRecordedPopulation
     - avg_pop: avg of LatestRecordedPopulation
   
    What does each column value show?

    | cnt_all | cnt_pop | max_pop | min_pop | sum_pop | avg_pop |
    -------------------------------------------------------------
*/

SELECT
    COUNT(*) AS cnt_all,
    COUNT(LatestRecordedPopulation) AS cnt_pop,
    MAX(LatestRecordedPopulation) AS max_pop,
    MIN(LatestRecordedPopulation) AS min_pop,
    SUM(LatestRecordedPopulation) AS sum_pop,
    AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities;

/*
    Apply a WHERE filter to either:
     - calculate with only known LatestRecordedPopulation values
     - OR calculate with only unknown LatestRecordedPopulation values

    How does the result change?

    | cnt_all | cnt_pop | max_pop | min_pop | sum_pop | avg_pop |
    -------------------------------------------------------------
*/
SELECT
    COUNT(*) AS cnt_all,
    COUNT(LatestRecordedPopulation) AS cnt_pop,
    MAX(LatestRecordedPopulation) AS max_pop,
    MIN(LatestRecordedPopulation) AS min_pop,
    SUM(LatestRecordedPopulation) AS sum_pop,
    AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL;
-- WHERE LatestRecordedPopulation IS NULL;
-- Csak a cnt_all oszlop változott 

SELECT
    COUNT(*) AS cnt_all,
    COUNT(LatestRecordedPopulation) AS cnt_pop,
    MAX(LatestRecordedPopulation) AS max_pop,
    MIN(LatestRecordedPopulation) AS min_pop,
    SUM(LatestRecordedPopulation) AS sum_pop,
    AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities
-- WHERE LatestRecordedPopulation IS NOT NULL;
WHERE LatestRecordedPopulation IS NULL;
-- Minden oszlop értéke megváltozott

/* 
    Modify this new WHERE filter query and make sure that:
     - the cnt_pop column always show the very same value as cnt_all 
       no matter what the filter is

    | cnt_all | cnt_pop | max_pop | min_pop | sum_pop | avg_pop |
    -------------------------------------------------------------
*/

SELECT 
(SELECT COUNT(*) FROM Application.Cities) cnt_all, 
	COUNT(LatestRecordedPopulation) AS cnt_pop, 
	MAX(LatestRecordedPopulation) AS max_pop,
	MIN(LatestRecordedPopulation) AS min_pop, 
	SUM(LatestRecordedPopulation) AS sum_pop, 
	AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL;
--WHERE LatestRecordedPopulation IS NULL;

/*
    Modify the original (not filtered) query by adding a new column:
     - cnt_unknown_pop: count of only the unknown LatestRecordedPopulation 
       values

 | cnt_all | cnt_pop | cnt_unknown_pop | max_pop | min_pop | sum_pop | avg_pop |
 -------------------------------------------------------------------------------
*/

SELECT COUNT(*) AS cnt_all, COUNT(LatestRecordedPopulation) AS cnt_pop,
(SELECT COUNT(*) FROM Application.Cities WHERE LatestRecordedPopulation IS NULL) AS cnt_unknown_pop,
	MAX(LatestRecordedPopulation) AS max_pop,
	MIN(LatestRecordedPopulation) AS min_pop, 
	SUM(LatestRecordedPopulation) AS sum_pop, 
	AVG(LatestRecordedPopulation) AS avg_pop
FROM Application.Cities;

/*
OrderGroups

    Write a query for the Sales.Orders table that:
     - returns OrderDate year groups
     - calculate the number of OrderIDs for each group
     - order the results by OrderDate year in descending order
  
    | orderyear | cnt_order |
    -------------------------
*/

SELECT YEAR(OrderDate) AS OrederYear, COUNT(YEAR(OrderDate)) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate) DESC;

/* 
    Modify the query:
     - group on OrderDate year AND OrderDate month
     - calculate the number of OrderIDs for each group
     - order the results by OrderDate year in descending order
       and Orderdate month in ascending order

    | orderyear | ordermonth | cnt_order |
    --------------------------------------
*/

SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, COUNT(OrderDate) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY YEAR(OrderDate) DESC, MONTH(OrderDate) ASC;

/* 
    Modify the query:
     - to return only those groups that have more than 2000 OrderIDs

    | orderyear | ordermonth | cnt_order |
    --------------------------------------
*/

SELECT YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth, COUNT(OrderDate) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(OrderDate) > 2000
ORDER BY YEAR(OrderDate) DESC, MONTH(OrderDate) ASC;

/*
OrderLineGroups

    Write a query for the Sales.OrderLines table that:
     - returns StockItemID groups
     - calculate the sum aggregate of quantities for each group
     - order the results by StockItemID in ascending order
  
    | StockItemID | sum_qty |
    -------------------------
*/

SELECT StockItemID, SUM(Quantity) AS [sum_qty]
FROM Sales.OrderLines
GROUP BY StockItemID
ORDER BY StockItemID ASC;

/* 
   Modify the query:
     - group only those order lines where the quantity >= 10
     - count only those order lines where the quantity >= 10

    | StockItemID | sum_qty | cnt_qty |
    -----------------------------------
*/

SELECT StockItemID, SUM(Quantity) AS sum_qty, COUNT(Quantity) AS cnt_qty
FROM Sales.OrderLines
WHERE Quantity >= 10
GROUP BY StockItemID
ORDER BY StockItemID ASC;

/* 
    Modify the latest query:
     - to return only those groups where the sum_qty aggregate > 10000

    | StockItemID | sum_qty | cnt_qty |
    ----------------------------------
*/

SELECT StockItemID, SUM(Quantity) AS sum_qty, COUNT(Quantity) AS cnt_qty
FROM Sales.OrderLines
WHERE Quantity >= 10
GROUP BY StockItemID
HAVING SUM(Quantity) > 10000
ORDER BY StockItemID ASC;

/*
CountGroups

    Write a query on the Sales.OrderLines table that:
     - create groups of stock item IDs and their sum aggregate quantities
     - return only those groups that contain more than 1100 rows

    | StockItemID | sum_qty |
    -------------------------
*/

SELECT StockItemID, SUM(Quantity) AS sum_qty
FROM Sales.OrderLines
GROUP BY StockItemID
HAVING COUNT(StockItemID) > 1100

/*
CountUnique

    Write a query for the Sales.Orders table that:
     - counts the order dates 
     - counts the unique order dates

    | cnt_orderdate | cnt_unique_orderdate |
    ----------------------------------------
*/
SELECT COUNT(OrderDate) AS cnt_orderdate, COUNT(DISTINCT OrderDate) AS cnt_unique_orderdate
FROM Sales.Orders;
