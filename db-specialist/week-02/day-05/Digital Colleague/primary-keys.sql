USE practice2022

ALTER TABLE HR.Departments ALTER COLUMN id INT NOT NULL
GO
ALTER TABLE HR.Offices ALTER COLUMN place_id INT NOT NULL
GO
ALTER TABLE HR.Employees ALTER COLUMN id INT NOT NULL
GO
ALTER TABLE HR.Salaries ALTER COLUMN id INT NOT NULL
GO
ALTER TABLE HR.Departments ADD CONSTRAINT PK_Departments PRIMARY KEY(id)
GO
ALTER TABLE HR.Offices ADD CONSTRAINT PK_Offices PRIMARY KEY(place_id)
GO
ALTER TABLE HR.Employees ADD CONSTRAINT PK_Employees PRIMARY KEY(id)
GO
ALTER TABLE HR.Salaries ADD CONSTRAINT PK_Salaries PRIMARY KEY(id)
GO
