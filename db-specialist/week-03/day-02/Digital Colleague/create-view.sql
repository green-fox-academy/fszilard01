USE practice2022;
GO

CREATE OR ALTER VIEW HR.locationsview
AS 
SELECT d.name AS department_name, o.county_name AS county_name, o.city_name AS city_name, COUNT(e.id) AS employees_nr
FROM HR.Departments d 
	INNER JOIN HR.Locations l ON d.id=l.department_ID
	INNER JOIN HR.Offices o ON l.offices_ID=o.place_id 
	LEFT JOIN HR.Employees e ON l.id=e.location_id
GROUP BY d.name, county_name, o.city_name;
