-- 021 Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks 
-- adatbázis Person.Person és Person.EmailAddress tábláinak a következõ mezõit 
-- Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
-- úgy hogy a táblák összekapcsolásához a 
-- BusinessEntityID mezõt használjuk mindkét táblából! Az eredmény elsõ 50 sora jelenjen csak meg!


SELECT TOP 50 Person.Person.FirstName,Person.Person.LastName, Person.EmailAddress.EmailAddress
FROM Person.Person FULL JOIN Person.EmailAddress
ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID
