-- Sz�mold meg, hogy h�ny 'Ken' keresztn�v� (FirstName) rekord van a kor�bban 
-- bet�lt�tt AdventureWorks adatb�zis Person.Person t�bl�j�ban! 

SELECT COUNT(Person.Person.FirstName) 
FROM Person.Person 
WHERE Person.Person.FirstName = 'Ken'