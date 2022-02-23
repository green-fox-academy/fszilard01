-- 028 Az AWdatabase sémában hozz létre egy szinonímát AW_Employee néven, ami az AdventureWorks2016 adatbázis 
-- HumanResources sémában levõ Employee nézettáblára mutat!

USE [INTERFACE]
CREATE SYNONYM [AWdatabase].[AW_Employee] 
FOR [AdventureWorks2016].[HumanResources].[vEmployee]