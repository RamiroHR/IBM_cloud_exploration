----Delete profit column----
ALTER TABLE petsale
DROP COLUMN profit;

----Change the data type to VARCHAR(20) type of the column PET of the table PETSALE----
ALTER TABLE petsale
ALTER COLUMN pet SET DATA TYPE VARCHAR(20);

----Rename the column PET to ANIMAL of the PETSALE table----
ALTER TABLE petsale
RENAME COLUMN pet TO animal;

SELECT * FROM petsale;