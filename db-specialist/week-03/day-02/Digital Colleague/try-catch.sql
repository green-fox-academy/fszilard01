USE practice2022;

BEGIN TRY
    INSERT INTO HR.Departments (id, name) VALUES (88,'GreenFox')
END TRY
BEGIN CATCH
	THROW 77777, 'primary key constraint was activated',1;
END CATCH;

SELECT 5