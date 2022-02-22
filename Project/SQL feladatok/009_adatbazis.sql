-- Töltsd vissza a C:\install\MSSQL\AdventureWorks2016.bak adatbázist a szerver 
-- EXAMDB instance-ába úgy, hogy az adatbázis állományok az S:\SQLDATA\DB, míg a 
-- log állományok az S:\SQLDATA\LOG könyvtárba kerüljenek.
USE [master]
RESTORE DATABASE [AdventureWorks] 
FROM  DISK = N'C:\install\MSSQL\AdventureWorks2016.bak' WITH  FILE = 1,  
MOVE N'AdventureWorks2016_Data' TO N'S:\SQLDATA\DB\AdventureWorks2016_Data.mdf',  
MOVE N'AdventureWorks2016_Log' TO N'S:\SQLDATA\LOG\AdventureWorks2016_Log.ldf',  NOUNLOAD, STATS = 5
