USE practice2022;

ALTER TABLE HR.Employees
	ADD CONSTRAINT UC_username UNIQUE(user_name);

ALTER TABLE HR.Employees
	ADD CONSTRAINT FK_employeeOffice FOREIGN KEY(location_id) REFERENCES HR.Locations(id);

ALTER TABLE HR.Salaries
	ADD CONSTRAINT FK_salaries FOREIGN KEY(employee_id) REFERENCES HR.Employees(id);

