-- 026 Adj csak lekérdezési jogot az interface_svc account számára az AdventureWorks2016 
-- adatbázis HumanResources sémában levő Employee nézettáblájára (VIEW)! 

USE [AdventureWorks2016]
GO
GRANT SELECT ON [HumanResources].[vEmployee] TO [interface_svc]
GO