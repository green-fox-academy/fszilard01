SELECT CityID, CityName, LEAD(CityID) OVER(ORDER BY CityName) AS nextcityid
FROM Application.Cities;