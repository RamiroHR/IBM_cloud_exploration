----Add a new column----
ALTER TABLE petsale
ADD COLUMN quantity INTEGER;

----Populate the new column----
UPDATE petsale SET quantity = 9 WHERE id = 1;
UPDATE petsale SET quantity = 3 WHERE id = 2;
UPDATE petsale SET quantity = 2 WHERE id = 3;
UPDATE petsale SET quantity = 6 WHERE id = 4;
UPDATE petsale SET quantity = 24 WHERE id = 5;

SELECT * FROM petsale;


