USE practice2022;

INSERT INTO HR.Locations (id, department_ID, offices_ID) 
VALUES
(71000,88,(SELECT ho.place_id FROM HR.Offices ho WHERE ho.city_name='Sopron')),
(71001,88,(SELECT ho.place_id FROM HR.Offices ho WHERE ho.city_name='Karmelita')),
(50777,(SELECT hd.id FROM HR.Departments hd WHERE hd.name='IT'), 101),
(50778,(SELECT hd.id FROM HR.Departments hd WHERE hd.name='management'),101);