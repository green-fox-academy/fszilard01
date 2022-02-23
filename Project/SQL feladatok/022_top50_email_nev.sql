--  Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks 
-- adatbázis Person.Person és Person.EmailAddress tábláinak a következõ mezõit 
-- Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
-- úgy hogy a táblák összekapcsolásához a 
-- BusinessEntityID mezõt használjuk mindkét táblából! Az eredmény elsõ 50 sora jelenjen csak meg!

-- 022 Az elõzõ lekérdezésbõl készíts olyan megoldást is, ahol az e-mail címbõl 
-- (EmailAddress) csak a név rész (@ elõtti rész látható)! 


SELECT TOP 50 Person.Person.FirstName,Person.Person.LastName, LEFT(EmailAddress, CHARINDEX('@', EmailAddress) -1 )
FROM Person.Person INNER JOIN Person.EmailAddress
ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID