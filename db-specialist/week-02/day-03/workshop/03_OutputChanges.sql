USE WideWorldImporters;

/*
    Work with your new HR.Employees table.

    Whenever you do an INSERT, UPDATE or DELETE use the OUTPUT clause
    to return what was inserted, or what were the old values that changed.

    You can put the OUTPUT clause results into another table too for logging.

    Practice how to use the OUTPUT clause. 

*/

UPDATE HR.Employees SET LastName = 'Enter' 
OUTPUT deleted.LastName,inserted.LastName
WHERE PersonalIdNumber = '123456AB';


DELETE FROM HR.Employees
OUTPUT deleted.FirstName, deleted.LastName
WHERE EmployeeID = 4;

