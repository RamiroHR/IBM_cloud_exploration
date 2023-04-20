--uncomment one by one the different tasks

----task 3: Remove all rows from the PET table
TRUNCATE TABLE pet
IMMEDIATE;

SELECT * FROM pet;


----task 4: Delete the PET table and verify if the table still exists or not.
---DROP TABLE pet;

--SELECT * FROM pet; --SELECT statement won't work if a table doesn't exist