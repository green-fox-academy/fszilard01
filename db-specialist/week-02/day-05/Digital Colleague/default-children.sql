USE practice2022;

ALTER TABLE HR.Employees 
	ADD CONSTRAINT DF_children DEFAULT 0 FOR children_number;