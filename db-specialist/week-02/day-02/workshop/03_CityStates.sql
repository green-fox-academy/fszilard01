USE WideWorldImporters;

/*
    Modify the below query to return cities from the states of Arizona, 
    Washington and Utah and also display the name of their states.

    Order the results by State Name in ascending order.


    | CityID | CityName | State Name |
    ----------------------------------

    Hint: the Application.Cities and the Application.StateProvinces tables 
          both have a StateProvinceID column that you should use.
*/


SELECT CityID, CityName, StateProvinceName AS 'State Name'
FROM Application.Cities ac INNER JOIN Application.StateProvinces ast
ON ac.StateProvinceID=ast.StateProvinceID
WHERE StateProvinceName IN ('Arizona','Utah','Washington')
ORDER BY StateProvinceName ASC;