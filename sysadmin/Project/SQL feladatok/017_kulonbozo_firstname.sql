-- Sz�mold meg, hogy h�ny k�l�nb�z� keresztn�v (FirstName) van a kor�bban bet�lt�tt 
-- AdventureWorks adatb�zis Person.Person t�bl�j�ban! 

SELECT COUNT(DISTINCT Person.Person.FirstName) 
FROM Person.Person 
