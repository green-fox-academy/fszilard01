USE practice2022

CREATE TABLE [HR].[Salaries]
(
id INT IDENTITY(1,1),
payment DECIMAL(11,2),
currency_code CHAR(3),
employee_id INT,
isActive BIT,
)