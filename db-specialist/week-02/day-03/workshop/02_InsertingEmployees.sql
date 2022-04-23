USE WideWorldImporters;

/*
    !!! Make sure you save all your scripts so that you can reuse them later !!!

    Once you have your Employees table created,
    insert a few data rows into this table with the INSERT INTO statement.

    Make sure you insert data according to the data types you specified.

    Find an example to insert a data row with two column values below.
	
*/

INSERT INTO HR.Employees (FirstName,LastName,PersonalIdNumber,DateOfBirth,PhoneNumber,Email,StartDate)
VALUES 
('János', 'Kovács','123456AB','1985-01-01','+36201234567','janos.k@fox.com','2017-05-15'),
('Gipsz', 'Jakab','666666BL','1987-04-20','+36309999999', 'jakab.g@fox.com','2018-08-20'),
('Tamás', 'Tompa','666777PR','1975-06-10','+36709876543','tamas.t@fox.com','2021-10-27'),
('Lakat', 'Lajos','979575FI','2001-06-10','+36501256544','lakat.l@fox.com','2020-11-12');
