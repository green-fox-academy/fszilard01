USE WideWorldImporters;

/*

    Work with the Application.Cities table.

    1.         
        Write a query that counts the cities (all rows) 
        in the state of Colorado.
        This is the total number of cities you work with. 

        | cnt_city_colorado | 
	---------------------
*/

SELECT COUNT(CityName) AS cnt_city_colorado
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado';
/*
    2.
        Write a query to return all cities from the state of Colorado 
        where the population is known.

        | CityID | CityName | population |
        ----------------------------------
*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NOT NULL;
/*

        Write a query to return all cities from the state of Colorado 
        where the population is UNKNOWN.

        | CityID | CityName | population |
        ----------------------------------
*/

SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NULL;

/*
    3.
        Combine (unify) the known and unknown city query results with the 
        appropriate set operator.
        Which set operator should you use?
        In which query do you have to specify the column alias "population"?

        How many rows did you get?
*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NOT NULL
UNION
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NULL;

-- Which set operator should you use? UNION
-- In which query do you have to specify the column alias "population"? az elsõnél
-- How many rows did you get? 588

/*
    4.
        Add ordering to the combined query by population in ascending order.

        Where do you have to add the ordering clause? 
*/

SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NOT NULL
UNION
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation IS NULL
ORDER BY population ASC;

-- az utolsóhoz

/*

    Remove the known and unknown filters from your queries.
    Leave the Colorado state filter in both queries.

    1. 
        Add a WHERE filter to the first query to return cities where the 
        population > 1000.
*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado' AND ac.LatestRecordedPopulation >1000;

/*
    2.
        Add a WHERE filter to the second query to return cities where the 
        population < 5000.
*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation < 5000
ORDER BY population ASC;

/*

    3.
        Use the UNION ALL operator to combine the queries.

    4.
        Add ordering to the combined query by population in ascending order.

    Browse the results.
    What do you notice?

*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado' AND ac.LatestRecordedPopulation >1000
UNION ALL
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation < 5000
ORDER BY population ASC;

-- az 1001 és 4999 közötti eredmények duplikálódnak

/*
    5.
        Use the UNION operator instead and rerun the combined query.

    What changed and why? 

*/
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado' AND ac.LatestRecordedPopulation >1000
UNION 
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation < 5000
ORDER BY population ASC;

-- nincs benne dublikálás

/*

    Modify your combined query so that you only return the rows that appear 
    in BOTH query results.

    Which set operator should you use?

*/

SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado' AND ac.LatestRecordedPopulation >1000
INTERSECT 
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation < 5000
ORDER BY population ASC;

-- INTERSECT, 
-- mert a SELECT eredményébõl azokat a sorokat kapcsolja össze egy értékkészletbe,
-- amelyek mindegyik kimenetben megtalálhatók.

/*
    Modify your combined query so that you only return the rows that appear 
    in the first query results and not in the second.

    Which set operator should you use?
*/

SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado' AND ac.LatestRecordedPopulation >1000
EXCEPT 
SELECT CityID, CityName, ac.LatestRecordedPopulation AS population
FROM Application.Cities ac INNER JOIN Application.StateProvinces asp ON ac.StateProvinceID = asp.StateProvinceID
WHERE asp.StateProvinceName = 'Colorado'AND ac.LatestRecordedPopulation < 5000
ORDER BY population ASC;

-- EXCEPT
