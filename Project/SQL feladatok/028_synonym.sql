-- 028 Az AWdatabase s�m�ban hozz l�tre egy szinon�m�t AW_Employee n�ven, ami az AdventureWorks2016 adatb�zis 
-- HumanResources s�m�ban lev� Employee n�zett�bl�ra mutat!

USE [INTERFACE]
CREATE SYNONYM [AWdatabase].[AW_Employee] 
FOR [AdventureWorks2016].[HumanResources].[vEmployee]