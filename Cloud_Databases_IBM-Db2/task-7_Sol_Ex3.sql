--exercice 3

--QB1,QB2,QB3: rounded cost, animal name length, upper_case name
SELECT 
	ROUND(COST) AS ROUND_COST,
	LENGTH(ANIMAL) AS ANIMAL_LEN,
	UCASE(ANIMAL) AS U_ANIMAL
FROM PETRESCUE;

--QB4: unique animal names in upper case
SELECT DISTINCT(UCASE(ANIMAL)) AS UNIQUE_UANIMAL 
FROM PETRESCUE;

--QB5: all cat rescues
SELECT * FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'cat';