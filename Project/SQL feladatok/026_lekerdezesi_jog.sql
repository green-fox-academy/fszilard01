-- 026 Adj csak lek�rdez�si jogot az interface_svc account sz�m�ra az AdventureWorks2016 
-- adatb�zis HumanResources s�m�ban lev� Employee n�zett�bl�j�ra (VIEW)! 

USE [AdventureWorks2016]
GO
GRANT SELECT ON [HumanResources].[vEmployee] TO [interface_svc]
GO