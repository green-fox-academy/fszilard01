--  K�sz�ts olyan SQL lek�rdez�st, ami visszaadja a kor�bban bet�lt�tt AdventureWorks 
-- adatb�zis Person.Person �s Person.EmailAddress t�bl�inak a k�vetkez� mez�it 
-- Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
-- �gy hogy a t�bl�k �sszekapcsol�s�hoz a 
-- BusinessEntityID mez�t haszn�ljuk mindk�t t�bl�b�l! Az eredm�ny els� 50 sora jelenjen csak meg!

-- 022 Az el�z� lek�rdez�sb�l k�sz�ts olyan megold�st is, ahol az e-mail c�mb�l 
-- (EmailAddress) csak a n�v r�sz (@ el�tti r�sz l�that�)! 


SELECT TOP 50 Person.Person.FirstName,Person.Person.LastName, LEFT(EmailAddress, CHARINDEX('@', EmailAddress) -1 )
FROM Person.Person INNER JOIN Person.EmailAddress
ON Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID