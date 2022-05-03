
USE WideWorldImporters;

/* 
    Create a stored procedure that returns all the orders for a given
    Stock Item ID based on the Sales.OrderLines and Sales.Orders tables.
    
    The stored procedure should adhere to the following rules:
     - accept a parameter for the Stock Item ID
     - accept a parameter for limiting the number of rows returned
     - should return the OrderLineID, OrderID and OrderDate
     - order the results by OrderDate in descending order
*/
GO
CREATE PROCEDURE Sales.customer_orders (@stockid int, @top int)
 AS 
   SELECT TOP(@top) OrderLineID,sor.OrderID,OrderDate
   FROM Sales.OrderLines sor INNER JOIN Sales.Orders so ON sor.OrderID = so.OrderID
   WHERE StockItemID = @stockid 
   ORDER BY OrderDate DESC;
GO	 

EXEC Sales.customer_orders 18, 11;

EXEC Sales.customer_orders @top=18, @stockid=11;

/* 
    Modify the stored procedure that you created.
    
    Add a default NULL value to the Stock Item ID parameter.

    If the parameter value is NULL then return all the orders and orderlines.

    If the parameter value is not NULL, then return only the orders for the
    given Stock Item ID just as in the first version of your stored
    procedure.  
*/

GO
CREATE OR ALTER PROCEDURE Sales.customer_orders (@stockid INT = NULL, @top INT)
 AS 
 IF @stockid IS NOT NULL
 BEGIN
   SELECT TOP(@top) OrderLineID,sor.OrderID,OrderDate
   FROM Sales.OrderLines sor INNER JOIN Sales.Orders so ON sor.OrderID = so.OrderID
   WHERE StockItemID = @stockid 
   ORDER BY OrderDate DESC
END
ELSE
BEGIN
	SELECT OrderLineID ,sor.OrderID ,OrderDate
	FROM Sales.OrderLines sor INNER JOIN Sales.Orders so ON sor.OrderID = so.OrderID
END;
GO	

EXEC Sales.customer_orders 18, 11;

EXEC Sales.customer_orders @top=18, @stockid=NULL;

EXEC Sales.customer_orders @top=18, @stockid=DEFAULT;