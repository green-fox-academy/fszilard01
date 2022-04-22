USE WideWorldImporters;

/*
city-sets

    Work with the Application.Cities table.

    1.         
        Write a query that counts the cities (all rows) 
        in the state of Colorado.
        This is the total number of cities you work with. 

        | cnt_city_colorado |
        ---------------------

    2.
        Write a query to return all cities from the state of Colorado 
        where the population is known.

        | CityID | CityName | population |
        ----------------------------------

        Write a query to return all cities from the state of Colorado 
        where the population is UNKNOWN.

        | CityID | CityName | population |
        ----------------------------------

    3.
        Combine (unify) the known and unknown city query results with the 
        appropriate set operator.
        Which set operator should you use?
        In which query do you have to specify the column alias "population"?

        How many rows did you get?

    4.
        Add ordering to the combined query by population in ascending order.

        Where do you have to add the ordering clause? 

*/

--1

SELECT COUNT(CityName) AS cnt_city_colorado
FROM Application.Cities

--2

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL;

--3

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NULL;

--4

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL
UNION
SELECT CityID, CityName, LatestRecordedPopulation
FROM Application.Cities
WHERE LatestRecordedPopulation IS NULL
ORDER BY population ASC;

/*

    Remove the known and unknown filters from your queries.
    Leave the Colorado state filter in both queries.

    1. 
        Add a WHERE filter to the first query to return cities where the 
        population > 1000.

    2.
        Add a WHERE filter to the second query to return cities where the 
        population < 5000.

    3.
        Use the UNION ALL operator to combine the queries.

    4.
        Add ordering to the combined query by population in ascending order.

    Browse the results.
    What do you notice?

    5.
        Use the UNION operator instead and rerun the combined query.

    What changed and why? 

*/

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation > 1000
UNION ALL
SELECT CityID, CityName, LatestRecordedPopulation
FROM Application.Cities
WHERE LatestRecordedPopulation < 5000
ORDER BY population ASC;

-- Nincsenek NULL értékek az eredményben, a UNION ALL pedig tartalmazza a duplikált rekordokat is.


/*

    Modify your combined query so that you only return the rows that appear 
    in BOTH query results.

    Which set operator should you use?

*/

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation > 1000
INTERSECT
SELECT CityID, CityName, LatestRecordedPopulation
FROM Application.Cities
WHERE LatestRecordedPopulation < 5000
ORDER BY population ASC;

/*
    Modify your combined query so that you only return the rows that appear 
    in the first query results and not in the second.

    Which set operator should you use?
*/

SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation > 1000
EXCEPT
SELECT CityID, CityName, LatestRecordedPopulation
FROM Application.Cities
WHERE LatestRecordedPopulation < 5000
ORDER BY population ASC;