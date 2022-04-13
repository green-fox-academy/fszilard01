SELECT TOP 10 CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
ORDER BY population DESC;