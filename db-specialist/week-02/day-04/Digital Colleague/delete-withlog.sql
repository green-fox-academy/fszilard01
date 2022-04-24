USE practice2022;

CREATE TABLE [HR].[Payment_logdelete]
(deleted_id INT)

DELETE FROM HR.Salaries
OUTPUT DELETED.id INTO HR.Payment_logdelete
WHERE employee_id IS NULL;
