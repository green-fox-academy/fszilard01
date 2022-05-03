
USE WideWorldImporters;

/* 
    Create a stored procedure that inserts new colors 
    into the Warehouse.Colors table.

    We want to add a new "Greenfox Green" color to the colors list!
    
    Before creating the stored procedure, analyze the Warehouse.Colors
    table structure to see which columns are mandatory and which ones are
    optional when adding a new order.

    Make sure you use a proper ColorID for any new color you insert!

    Right-click on the table in SSMS and choose "Script Table as..."
    then "Create To" and then choose New Query Window.
    You can then analyze the CREATE TABLE script for columns and constraints.

    Check if there are DEFAULT constraints in the table that you can use!
    
    The stored procedure should adhere to the following rules:
     - accept at least the color name as a parameter
     - provide parameter default values where it is appropriate
     - implement error handling
     - print full error information about any error occurred
     - return with a value of 0 if no error occurred
     - return with a value of 2 if any error occurred
     - return the newly inserted ColorID in an OUTPUT parameter  
*/
--	SELECT * FROM [WideWorldImporters].[Warehouse].[Colors]


GO
DROP PROCEDURE IF EXISTS Warehouse.AddColor;
GO
CREATE PROCEDURE Warehouse.AddColor(@colorname NVARCHAR(20) = NULL, @lasteditedby int = 1)
AS
BEGIN TRY
	INSERT INTO Warehouse.Colors(ColorName, LastEditedBy)
	OUTPUT INSERTED.ColorID
	VALUES (@colorname, @lasteditedby)
END TRY
BEGIN CATCH
    PRINT 'Error occurred!';
    PRINT 'Error number: ' + CAST(ERROR_NUMBER() AS varchar(10));
    PRINT 'Error message: ' + ERROR_MESSAGE();
    PRINT 'Error state: ' + CAST(ERROR_STATE() AS varchar(10));
    PRINT 'Error severity: ' + CAST(ERROR_SEVERITY() AS varchar(10));
    PRINT 'Error line: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT 'Error line: ' + ERROR_PROCEDURE();
	RETURN 2;
END CATCH;
GO

DECLARE @ret int;
EXEC @ret = Warehouse.AddColor 'GF Green';
PRINT 'Returned with ' + CAST(@ret AS varchar);

-- DELETE FROM Warehouse.Colors WHERE ColorName LIKE 'GF Green'

