--QC1: day of the month of cat rescues
SELECT DAY(RESCUEDATE) FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'cat';

--QC2: number of animal rescued on the 5th month
SELECT COUNT(QUANTIY) FROM PETRESCUE
WHERE MONTH(RESCUEDATE) = '05';

--QC3: number of animal rescued on the 14ths day of the month
SELECT COUNT(QUANTITY) FROM PETRESCUE
WHERE DAY(RESCUEDATE) = '14';

--QC4, QC5: date for vet visit (3 days after arrival), time since rescued
SELECT 
	*,
	(RESCUEDATE + 3 DAYS) AS VET_VISIT, 
	(CURRENT_DATE - RESCUEDATE) AS TIME_SINCE_RESCUED
FROM PETRESCUE;