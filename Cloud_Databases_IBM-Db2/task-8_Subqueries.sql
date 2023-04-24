/*
--failing query to find all employees with salary lower than average.
SELECT * FROM employees
WHERE salary < 	AVG(salary);
*/

/*
--Working query to find all employees with salary lower than average.
SELECT * FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees)
*/

/*
--Failing query to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
SELECT emp_id, salary, 
	MAX(salary) AS max_salary 
FROM employees;
*/


/*
--working query to find the information as in the prev query
SELECT emp_id, 
	salary,
	(SELECT MAX(salary) FROM employees) AS max_salary
FROM employees;
*/


--Table Expression for the Employees table that excludes sensitive information:
--like ssn, b_date, sex, address, salary
SELECT * FROM (
	SELECT emp_id, f_name, l_name, job_id, manager_id, dep_id 
	FROM employees
	)