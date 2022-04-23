USE WideWorldImporters;

/*

    Modify the below query to do a CROSS JOIN.

    Moreover, this is a special type of join too, a self-join.
    The query joins the Application.Countries table to itself.


    | left_id | left_name | right_id | right_name |
    -----------------------------------------------

    How many rows do you get? Why? 36100
	A parancs hatására a megadott két tábla Descartes szorzata jön létre
	190*190= 36100
*/

SELECT t1.CountryID AS left_id, t1.CountryName AS left_name, 
		t2.CountryID AS right_id, t2.CountryName AS right_name
FROM Application.Countries t1 CROSS JOIN Application.Countries t2;

