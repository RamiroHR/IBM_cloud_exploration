--EX1:-STRING PATTERNS
--Retrieve all employees whose address is in Elgin,IL.
SELECT * FROM employees
WHERE address LIKE '%Elgin,IL%';


--Retrieve all employees who were born during the 1970's.
SELECT * FROM employees
WHERE B_DATE LIKE '197%';


--Retrieve all employees in department 5 whose salary is between 60k and 70k.
SELECT * FROM employees
WHERE (DEP_ID = 5 AND SALARY BETWEEN 60000 AND 70000);


-----------------------------------------------------------------------
--EX2:-SORTING
--Retrieve a list of employees ordered by department ID.
SELECT * FROM employees
ORDER BY DEP_ID;


--Retrieve a list of employees ordered in descending order by department ID and 
--within each department ordered alphabetically in descending order by last name.
SELECT F_NAME, L_NAME, DEP_ID FROM employees
ORDER BY DEP_ID DESC, L_NAME DESC;


--In SQL problem 2 (Exercise 2 Problem 2), use department name instead of 
--department ID. Retrieve a list of employees ordered by department name, 
--and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;


-----------------------------------------------------------------------
--EX3: GROUPING
--For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(EMP_ID) AS COUNTS FROM EMPLOYEES
GROUP BY DEP_ID;


--For each department retrieve the number of employees in the department, and the average employee salary in the department..
SELECT DEP_ID, COUNT(EMP_ID) AS EMP_NUM, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID;


--Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
--In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary..
SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

-----------------------------------------------------------------------
--In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(EMP_ID) < 4   --remember the execution order, NUM_EMPLOYEES don't exist yet when HAVING executes!
ORDER BY AVG_SALARY;
