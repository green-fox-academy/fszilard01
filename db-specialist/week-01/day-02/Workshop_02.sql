/*
Countries

    Write queries with a WHERE clause with different predicates/expressions 
    to query data from the Application.Countries table. 
    
    Try the operators in the operator precedence list 
    and combine them with AND / OR.
    
    Test how the operator precedence works.


    | CountryID | CountryName |
    ---------------------------
*/

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID > 20;

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID < 20;

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID <= 20;

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID = 15 OR CountryID = 25;

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID > 20 AND CountryName = 'Hungary';

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryName LIKE 'H%';

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID IN (20, 25, 30);

SELECT CountryID, CountryName
FROM Application.Countries
WHERE CountryID IN (20, 25, 30) AND CountryName = 'Benin';

/*

CityPopulation

    City populations in the Application.Cities table are sometimes UNKNOWN.
    
    Write a query that returns the city names where the populations are known.
    Write a query that returns the city names where the populations are UNKNOWN.
    Alias the LatestRecordedPopulation column as [population].

    | CityName | population |
    -------------------------

    Which operators do you need to use?
*/

SELECT CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL;

SELECT CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NULL;

-- A IS NOT NULL és NOT NULL operátorokat kell használni

/*
UnknownComments

    Write a query that returns the first 100 order ids with comments 
    from the Sales.Orders table.
    
    If a comment is UNKNOWN, display the string 'not available' instead.

    Try different methods to solve this problem.

    | OrderID | Comments |
    ----------------------
*/

SELECT TOP 100 OrderID, COALESCE(Comments, 'not available') comments
FROM Sales.Orders;

/*
OrderDateAnalysis

    Write queries for the Sales.Orders table that return orders that were placed
     - on a specific date
     - after a specific date
     - before a specific date
     - between specific dates
     - in one specific year
     - in multiple specific years
     - in a specific year and month
     - on the last day of a specific month
     - in different time intervals combined with AND/OR

    Watch out for the WHERE clause, try to avoid using functions 
    on the left hand side of your logical expressions!

    | OrderID | OrderDate |
    -----------------------
*/

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE OrderDate = '2014-10-08';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE OrderDate > '2014-10-08';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE OrderDate < '2014-10-08';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE OrderDate BETWEEN '2014-10-08' AND '2015-03-13';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE 2014=YEAR(Orderdate);

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE Orderdate >= '2015-01-01' AND Orderdate <= '2016-12-31';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE Orderdate >= '2015-01-01' AND Orderdate <= '2015-01-31';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE Orderdate = '2015-01-31';

SELECT OrderID, OrderDate
FROM Sales.Orders
WHERE Orderdate = '2014-05-12' OR 2015=YEAR(Orderdate);

/*
    Look up T-SQL functions that handle dates like the OrderDate column 
    in Sales.Orders:
     - YEAR
     - MONTH
     - EOMONTH
     - DATENAME
     - DATEPART
     - DATEADD
     - DATEDIFF

    Write queries that return new values based on the OrderDate column values 
    by using these functions in the SELECT list. 
    You can alias the new column(s) as you like (eg: [mydate])

    You can also apply different row filters to your query.

    | OrderID | OrderDate | mydate
    ------------------------------
*/

SELECT OrderID, OrderDate, YEAR(OrderDate) AS my_year
FROM Sales.Orders;

SELECT OrderID, OrderDate, MONTH(OrderDate) AS my_month
FROM Sales.Orders;

SELECT OrderID, OrderDate, EOMONTH(OrderDate) AS my_eomonth
FROM Sales.Orders;
-- EOMONTH: a hónap utolsó napját adja eredményül

SELECT OrderID, OrderDate, DATENAME(q, OrderDate) AS my_datename
FROM Sales.Orders;
-- DATENAME: a dátum egy részletét adja vissza/átalakítja pl:q(quarter)

SELECT OrderID, OrderDate, DATEPART(m, OrderDate) AS my_datepart
FROM Sales.Orders;
-- DATEPART: a dátum egy részletét adja vissza/átalakítja pl:m(month)

SELECT OrderID, OrderDate, DATEADD(day, 1, OrderDate) AS my_dateadd
FROM Sales.Orders;
-- DATEADD: Hozzáadja a megadott idõt a dátumhoz...(datepart , number , date )

SELECT OrderID, OrderDate, DATEDIFF(day, OrderDate, CURRENT_TIMESTAMP) AS my_orderdate
FROM Sales.Orders;
-- DATEDIFF:mennyi idõ (pl.:day)telt el a táblázatban szereplõ és a 
-- kiválasztott dátum között (pl.:current_timestamp - aktuális idõ)...( datepart , startdate , enddate )

/*
StockItemSearch

    Use the Warehouse.StockItems table.

    Write queries that return stockitems with the following characteristics:
    - name starts with 'DBA'
    - name ends with 't'
    - name does not end with 'k'
    - name contains the word 'joke'
    - name starts with the letters 'a' or 'b' or 'c' or 'f'
    - name that does not contain the words 'flash drive'
    - name that contains the word 'ham' and the following character is not 'm'
    - name starts with 'a', next character can be anything between 'l' and 't' 
      and ends with any character between 'l' and 'p'
    - name is exactly 'DBA joke mug - it depends (Black)'

    | StockItemID | StockItemName |
    -------------------------------
*/

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE 'DBA%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%t';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName NOT LIKE '%k';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%joke%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '[abcf]%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName NOT LIKE '%flash drive%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%ham%' and StockItemName NOT LIKE '%hamm%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE 'a[l-t]%[l-p]';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName = 'DBA joke mug - it depends (Black)';

/*

VerboseOrderDates

    Write a CASE expression query for the Sales.Orders table that return 
    order dates for the year 2013, but display a verbose quarter description too
     - if the order date is in the first quarter of 2013 
       write 'First quarter of 2013'
     - if the order date is in the second quarter of 2013 
       write 'Second quarter of 2013'
     - if the order date is in the third quarter of 2013 
       write 'Third quarter of 2013'
     - if the order date is in the fourth quarter of 2013 
       write 'Fourth quarter of 2013'

    | OrderID | OrderDate | quarter |
    ---------------------------------
*/

SELECT OrderID, OrderDate,
CASE
    WHEN DATENAME(qq, OrderDate) = 1 THEN 'First quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 2 THEN 'Second quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 3 THEN 'Third quarter of 2013'
    WHEN DATENAME(qq, OrderDate) = 4 THEN 'Fourth quarter of 2013'
END AS quarter
FROM Sales.Orders
WHERE '2013'=YEAR(OrderDate);
--vagy WHERE OrderDate BETWEEN '2012-12-31' AND '2014-01-01';

/*

ConditionalOrdering
 
    CASE expressions can be used in other clauses too, other than SELECT.

    Write a query that uses conditional ordering.
    Order the people by their full name in the Application.People table
     - in ascending order if they are an employee
     - in descending order if they are a vendor (not an employee)

    | FullName | IsEmployee |
    -------------------------
*/

SELECT FullName, IsEmployee
FROM Application.People
ORDER BY
CASE IsEmployee WHEN 1 THEN FullName END ASC,
CASE IsEmployee WHEN 0 THEN FullName END DESC;

