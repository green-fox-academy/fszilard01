SELECT CityID, CityName, LatestRecordedPopulation AS population, SUM(LatestRecordedPopulation) OVER (ORDER BY CityID ASC) AS run_total
FROM Application.Cities
WHERE StateProvinceID = (SELECT StateProvinceID
                         FROM Application.StateProvinces
                         WHERE StateProvinceName = 'Colorado');