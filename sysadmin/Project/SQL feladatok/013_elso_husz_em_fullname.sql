-- Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks adatbázis
-- Person.Person táblájának elsõ 20 elemét, de úgy, hogy ahol a PersonType mezõ értéke 'EM' és csak
-- a PersonType, FirstName, LastName mezõk legyenek a lekérdezés eredményében,
-- de a FirstName és LastName egy oszlopban jelenjen meg egy darab szóköz karakterrel elválasztva! 

SELECT TOP 20 Person.Person.PersonType, Person.Person.FirstName+' '+Person.Person.LastName AS 'FullName' 
FROM Person.Person 
WHERE Person.Person.PersonType = 'EM'