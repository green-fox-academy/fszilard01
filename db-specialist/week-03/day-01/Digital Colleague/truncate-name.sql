USE practice2022;

DECLARE @change AS INT
SET @change = 30
UPDATE HR.Employees SET name=LEFT(name, @change) WHERE LEN(name)>@change;
