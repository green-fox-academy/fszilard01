USE practice2022;

UPDATE HR.Employees SET children_number = 1 
OUTPUT deleted.children_number,inserted.children_number
WHERE name = 'Béla Szingli';