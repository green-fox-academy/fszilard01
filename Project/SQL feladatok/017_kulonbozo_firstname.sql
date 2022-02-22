-- Számold meg, hogy hány különbözõ keresztnév (FirstName) van a korábban betöltött 
-- AdventureWorks adatbázis Person.Person táblájában! 

SELECT COUNT(DISTINCT Person.Person.FirstName) 
FROM Person.Person 
