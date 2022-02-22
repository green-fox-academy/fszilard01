-- T�ltsd vissza a C:\install\MSSQL\AdventureWorks2016.bak adatb�zist a szerver 
-- EXAMDB instance-�ba �gy, hogy az adatb�zis �llom�nyok az S:\SQLDATA\DB, m�g a 
-- log �llom�nyok az S:\SQLDATA\LOG k�nyvt�rba ker�ljenek.
USE [master]
RESTORE DATABASE [AdventureWorks] 
FROM  DISK = N'C:\install\MSSQL\AdventureWorks2016.bak' WITH  FILE = 1,  
MOVE N'AdventureWorks2016_Data' TO N'S:\SQLDATA\DB\AdventureWorks2016_Data.mdf',  
MOVE N'AdventureWorks2016_Log' TO N'S:\SQLDATA\LOG\AdventureWorks2016_Log.ldf',  NOUNLOAD, STATS = 5
