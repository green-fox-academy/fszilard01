/*
DerivedTableOrder

    Modify the below query to return the results in order:
     - orderyear in ascending
     - ordermonth in descending

    Where do you have to add the ordering clause? Why?

    | orderyear | ordermonth | cnt_cust |
    -------------------------------------
*/

SELECT D.orderyear, D.ordermonth, COUNT(DISTINCT D.custID) AS cnt_cust
FROM (SELECT YEAR(OrderDate), MONTH(OrderDate), CustomerID
      FROM Sales.Orders) AS D(orderyear, ordermonth, custID)
GROUP BY D.orderyear, D.ordermonth
ORDER BY D.orderyear ASC, D.ordermonth DESC;

-- A GROUP BY után, mert a derived táblát szeretnénk rendezni.

/*
DerivedTableOrSubquery

    Modify the below query to use a derived table


    | CustomerID | OrderID | OrderDate |
    ------------------------------------

    Hint: you may also need to use a JOIN operator
*/

SELECT CustomerID, OrderID, OrderDate
FROM Sales.Orders o1
WHERE OrderID =
  (SELECT MAX(o2.OrderID)
   FROM Sales.Orders o2
   WHERE o2.CustomerID = o1.CustomerID);

SELECT A.custID AS CustomerID, A.ordID AS OrderID,OrderDate
FROM
    (SELECT CustomerID, MAX(OrderID) 
    FROM Sales.Orders GROUP BY CustomerID) AS A(custID, ordID)
INNER JOIN Sales.Orders AS B
ON B.CustomerID = A.custID
WHERE A.ordID = B.OrderID;

/*
PivotReport

    While pivoting is an advanced concept and we don't cover it
    still you can do this with the language elements learned so far.

    Write a query that creates a report that shows the sum aggregated order
    quantities for each CustomerID per each year, 2013, 2014, 2015 and 2016.

    The query should return in the following format:

    | CustomerID | 2013 | 2014 | 2015 | 2016 |
    ------------------------------------------
*/

-- NULL-t nem kezeli ezért a következõ megoldás nem jó:

SELECT T13.CustomerID, T13.t13 AS '2013', T14.t14 AS '2014', T15.t15 AS '2015', T16.t16 AS '2016'
FROM 
    (
	SELECT CustomerID, SUM(Quantity) AS t13
	FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
	WHERE Year(OrderDate) = 2013 
	GROUP BY CustomerID) AS T13,
    (
    SELECT CustomerID, SUM(Quantity) AS t14
    FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
	WHERE Year(OrderDate) = 2014 
	GROUP BY CustomerID) AS T14,
	(
	SELECT CustomerID, SUM(Quantity) AS t15
	FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
	WHERE Year(OrderDate) = 2015
	GROUP BY CustomerID) AS T15,
    (
	SELECT CustomerID, SUM(Quantity) AS t16
	FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
	WHERE Year(OrderDate) = 2016
	GROUP BY CustomerID) AS T16
WHERE T13.CustomerID = T14.CustomerID AND T13.CustomerID = T15.CustomerID AND T13.CustomerID = T16.CustomerID;

-- Ez a jó:

SELECT CustomerID,
    SUM(CASE WHEN YEAR(OrderDate) = 2013 THEN Quantity ELSE 0 END) AS '2013',
    SUM(CASE WHEN YEAR(OrderDate) = 2014 THEN Quantity ELSE 0 END) AS '2014',
    SUM(CASE WHEN YEAR(OrderDate) = 2015 THEN Quantity ELSE 0 END) AS '2015',
    SUM(CASE WHEN YEAR(OrderDate) = 2016 THEN Quantity ELSE 0 END) AS '2016'
FROM Sales.OrderLines JOIN Sales.Orders ON Orders.OrderID = OrderLines.OrderID
GROUP BY CustomerID;

/*
EuropeanCountries

    Use the Application.Countries table.

    Write a query that returns all the European countries, by using a CTE.
*/

WITH Europeancountries AS
(SELECT Continent, CountryName 
FROM Application.Countries
WHERE Continent = 'Europe'
)
SELECT * FROM Europeancountries;

/*
CteOrSubquery

   Modify the below query to use a CTE

    | CustomerID | OrderID | OrderDate |
    ------------------------------------

    Hint: you may also need to use a JOIN operator
*/

SELECT CustomerID, OrderID, OrderDate
FROM Sales.Orders o1
WHERE OrderID =
  (SELECT MAX(o2.OrderID)
   FROM Sales.Orders o2
   WHERE o2.CustomerID = o1.CustomerID);


WITH t1 AS 
	(SELECT CustomerID, OrderID, OrderDate
	FROM Sales.Orders)
SELECT * FROM t1
WHERE t1.OrderID = (SELECT MAX(Orderid) FROM Sales.Orders t2
WHERE t2.CustomerID = t1.CustomerID);