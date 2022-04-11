--  Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks 
-- adatbázis Person.Person és Person.EmailAddress tábláinak a következõ mezõit 
-- Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
-- úgy hogy a táblák összekapcsolásához a 
-- BusinessEntityID mezõt használjuk mindkét táblából! Az eredmény elsõ 50 sora jelenjen csak meg!

-- 023 Illetve egy olyan lekérdezést is, ahol csak a domain rész (@ utáni rész) látható!

SELECT TOP 50 Person.Person.FirstName,Person.Person.LastName,RIGHT(EmailAddress, LEN(EmailAddress) -  CHARINDEX('@', EmailAddress)) 
FROM Person.Person INNER JOIN Person.EmailAddress
ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID
