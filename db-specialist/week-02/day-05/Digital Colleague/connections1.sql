USE practice2022

CREATE TABLE HR.Locations
(
	id INT NOT NULL PRIMARY KEY,
	department_ID  INT,
	offices_ID INT
);

ALTER TABLE HR.Locations 
    ADD CONSTRAINT FK_DepartmentID FOREIGN KEY(department_ID) REFERENCES HR.Departments(id);

ALTER TABLE HR.Locations 
    ADD CONSTRAINT FK_OfficeID FOREIGN KEY(offices_ID) REFERENCES HR.Offices(place_id);