-- K�sz�ts olyan SQL lek�rdez�st, ami visszaadja a kor�bban bet�lt�tt AdventureWorks adatb�zis
-- Person.Person t�bl�j�nak els� 20 elem�t, de �gy, hogy ahol a PersonType mez� �rt�ke
-- 'EM' �s csak a PersonType, FirstName, LastName mez�k legyenek a lek�rdez�s eredm�ny�ben! 
SELECT TOP 20 Person.Person.PersonType, Person.Person.FirstName, Person.Person.LastName 
FROM Person.Person 
WHERE Person.Person.PersonType = 'EM'