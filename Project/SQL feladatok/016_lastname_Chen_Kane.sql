-- K�sz�ts olyan SQL lek�rdez�st, ami visszaadja a kor�bban bet�lt�tt AdventureWorks 
-- adatb�zis Person.Person t�bl�j�nak azon rekordjait, ahol a PersonType mez� �rt�ke 
-- 'EM' �s a FirstName mez�ben csak a 'John' nev�ek k�z�l azok legyenek megjelen�tve, 
-- ahol a LastName mez� �rt�ke vagy 'Chen' vagy 'Kane' neveket tartalmazz�k! 

SELECT * 
FROM Person.Person 
WHERE Person.Person.PersonType = 'EM' AND Person.Person.FirstName = 'John' 
AND (Person.Person.LastName = 'Chen' OR Person.Person.LastName = 'Kane')
