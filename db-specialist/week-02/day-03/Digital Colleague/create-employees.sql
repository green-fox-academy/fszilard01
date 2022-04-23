USE practice2022

CREATE TABLE [HR].[Employees]
(
id INT IDENTITY(1,1),
name NVARCHAR(100),
birthdate DATE,
entry_time DATETIME2,
termination_date DATE,
location_id INT,
children_number TINYINT,
user_name NVARCHAR(14)
)