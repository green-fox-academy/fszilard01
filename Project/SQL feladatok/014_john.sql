-- Készíts olyan SQL lekérdezést, ami visszaadja a korábban betöltött AdventureWorks adatbázis
-- Person.Person táblájának azon rekordjait, ahol a PersonType mezõ értéke 'EM' és a FirstName mezõben
-- csak a 'John' nevûek közül azok legyenek megjelenítve!

SELECT * 
FROM Person.Person 
WHERE Person.Person.PersonType = 'EM' AND Person.Person.FirstName = 'John'
