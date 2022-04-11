-- Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks adatbázis
-- Person.Person táblájának elsõ 20 elemét (minden mezõjét), de úgy, hogy ahol a PersonType mezõ értéke 'EM'!

SELECT TOP 20 * FROM Person.Person 
WHERE Person.Person.PersonType = 'EM'