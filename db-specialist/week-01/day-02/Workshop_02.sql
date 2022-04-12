/*

Countries

USE WideWorldImporters;
    
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

USE WideWorldImporters;

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

USE WideWorldImporters;

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

USE WideWorldImporters;

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


