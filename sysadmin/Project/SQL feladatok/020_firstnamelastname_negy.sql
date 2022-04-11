
-- 020 Számold meg, hogy hány azonos nevû (FirstName és LastName) rekord van a korábban 
-- betöltött AdventureWorks adatbázis Person.Person táblájában! Rendezd az 
-- eredményt úgy, hogy csak a 4 és a 4-nél többször használt névpáros eredménye 
-- szerepeljen csak! 


SELECT Person.Person.FirstName, Person.Person.LastName, COUNT(*) 
FROM Person.Person 
GROUP BY Person.Person.FirstName, Person.Person.LastName 
HAVING COUNT(*) > 3