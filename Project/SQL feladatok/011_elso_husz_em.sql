-- K�sz�ts olyan SQL lek�rdez�st, ami visszaadja a kor�bban bet�lt�tt AdventureWorks adatb�zis
-- Person.Person t�bl�j�nak els� 20 elem�t (minden mez�j�t), de �gy, hogy ahol a PersonType mez� �rt�ke 'EM'!

SELECT TOP 20 * FROM Person.Person 
WHERE Person.Person.PersonType = 'EM'