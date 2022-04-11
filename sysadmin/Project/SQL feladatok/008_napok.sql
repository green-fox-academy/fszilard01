-- Készíts olyan SQL lekérdezést, ami kiszámítja, hogy hány nap telt el 1989. március 15-e óta!
SELECT DATEDIFF(day, '1989-03-15', GETDATE())