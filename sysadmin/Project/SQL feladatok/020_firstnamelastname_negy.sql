
-- 020 Sz�mold meg, hogy h�ny azonos nev� (FirstName �s LastName) rekord van a kor�bban 
-- bet�lt�tt AdventureWorks adatb�zis Person.Person t�bl�j�ban! Rendezd az 
-- eredm�nyt �gy, hogy csak a 4 �s a 4-n�l t�bbsz�r haszn�lt n�vp�ros eredm�nye 
-- szerepeljen csak! 


SELECT Person.Person.FirstName, Person.Person.LastName, COUNT(*) 
FROM Person.Person 
GROUP BY Person.Person.FirstName, Person.Person.LastName 
HAVING COUNT(*) > 3