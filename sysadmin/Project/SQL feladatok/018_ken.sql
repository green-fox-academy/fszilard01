-- Számold meg, hogy hány 'Ken' keresztnévû (FirstName) rekord van a korábban 
-- betöltött AdventureWorks adatbázis Person.Person táblájában! 

SELECT COUNT(Person.Person.FirstName) 
FROM Person.Person 
WHERE Person.Person.FirstName = 'Ken'