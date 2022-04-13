SELECT DISTINCT Continent, Subregion
FROM Application.Countries
ORDER BY Continent ASC, Subregion DESC
OFFSET 5 ROWS FETCH NEXT 9 ROWS ONLY;