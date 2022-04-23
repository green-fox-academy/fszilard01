USE WideWorldImporters;

CREATE SCHEMA HR;

/* 
    !!! Make sure you save all your scripts so that you can reuse them later !!!

    Once the *HR* schema is created, you can create tables within this new
    schema with a qualified name.

    Find an example for creating an Employees table with two columns below:
     - EmployeeId of integer data type
     - FirstName of nvarchar(20) data type

    Only create the columns with the relevant data types for now, nothing else.
    
    The table you create is a persistent table and is stored in the
    WideWorldImporters user database.

    Enhance the below example with your own table design.
*/

CREATE TABLE HR.Employees
(
    EmployeeId INT IDENTITY(1,1),
    FirstName NVARCHAR(20),
	LastName NVARCHAR (30),
    PersonalIdNumber NVARCHAR (15),
	DateOfBirth DATE,
	PhoneNumber VARCHAR(20),
	Email NVARCHAR(25),
	StartDate DATE,
);
