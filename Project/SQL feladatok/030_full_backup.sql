-- 030 K�sz�ts az INTERFACE adatb�zisr�l egy FULL ment�st, az al�bbiak szerint:
-- backup file neve: S:\SQLdata\INTERFACE.bak - ment�s fel�l�rja az azonos nev� media set-et!

BACKUP DATABASE [INTERFACE] TO DISK = N': S:\SQLdata\INTERFACE.bak' 
WITH NOFORMAT, INIT, NAME = N'INTERFACE-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10
