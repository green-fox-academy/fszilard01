-- Sz�mold meg, hogy h�ny 'Ken' keresztn�v� (FirstName) rekord van a kor�bban 
-- bet�lt�tt AdventureWorks adatb�zis Person.Person t�bl�j�ban! 

-- 019 Sz�mold meg, hogy h�ny azonos nev� (FirstName �s LastName) rekord van a kor�bban 
-- bet�lt�tt AdventureWorks adatb�zis Person.Person t�bl�j�ban! Rendezd az 
-- eredm�nyt �gy, hogy a legt�bbet haszn�lt n�vp�ros a lista elej�n szerepeljen �s csak a legels� 20 eredm�ny szerepeljen csak! 

SELECT TOP 20 Person.Person.FirstName, COUNT(Person.Person.BusinessEntityID) 
FROM Person.Person 
WHERE Person.Person.FirstName = Person.Person.LastName 
GROUP BY Person.Person.FirstName