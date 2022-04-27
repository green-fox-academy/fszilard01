USE practice2022

ALTER TABLE HR.Salaries 
	ADD CONSTRAINT CK_minimumWage CHECK((payment>=200000 AND currency_code='HUF') 
	OR (payment>0 AND currency_code!='HUF'));
