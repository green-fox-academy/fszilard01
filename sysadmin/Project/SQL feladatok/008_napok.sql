-- K�sz�ts olyan SQL lek�rdez�st, ami kisz�m�tja, hogy h�ny nap telt el 1989. m�rcius 15-e �ta!
SELECT DATEDIFF(day, '1989-03-15', GETDATE())