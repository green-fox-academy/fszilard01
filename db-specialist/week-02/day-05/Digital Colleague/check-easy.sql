USE practice2022;

ALTER TABLE HR.Employees 
ADD CONSTRAINT CK_maxchildren CHECK (children_number<= 13);