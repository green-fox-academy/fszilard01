-- 030 Készíts az INTERFACE adatbázisról egy FULL mentést, az alábbiak szerint:
-- backup file neve: S:\SQLdata\INTERFACE.bak - mentés felülírja az azonos nevû media set-et!

BACKUP DATABASE [INTERFACE] TO DISK = N': S:\SQLdata\INTERFACE.bak' 
WITH NOFORMAT, INIT, NAME = N'INTERFACE-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, STATS = 10
