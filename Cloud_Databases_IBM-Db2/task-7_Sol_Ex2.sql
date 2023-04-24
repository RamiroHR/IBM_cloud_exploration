--Exercice 2: Aggregate Functions

--QA1,QA2,QA3,QA4: Total cost, maximum quantity & average cost of animal rescued:
/*
SELECT 
	SUM(COST) AS SUM_OF_COST,
	MAX(QUANTITY) AS MAX_QUANTIY,
	AVG(COST) AS AVG_COST
FROM PETRESCUE;
*/

--QA5: average cost of rescuing a dog
/*
SELECT AVG(COST/QUANTITY) AS AVG_COST_PER_DOG FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'dog';
*/