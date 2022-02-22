-- Számold meg, hogy hány 'Ken' keresztnévû (FirstName) rekord van a korábban 
-- betöltött AdventureWorks adatbázis Person.Person táblájában! 

-- 019 Számold meg, hogy hány azonos nevû (FirstName és LastName) rekord van a korábban 
-- betöltött AdventureWorks adatbázis Person.Person táblájában! Rendezd az 
-- eredményt úgy, hogy a legtöbbet használt névpáros a lista elején szerepeljen és csak a legelsõ 20 eredmény szerepeljen csak! 

SELECT TOP 20 Person.Person.FirstName, COUNT(Person.Person.BusinessEntityID) 
FROM Person.Person 
WHERE Person.Person.FirstName = Person.Person.LastName 
GROUP BY Person.Person.FirstName