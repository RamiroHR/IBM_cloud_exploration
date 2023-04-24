/*
--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM employees
WHERE job_id IN (SELECT job_ident FROM jobs);
*/


/*
--Retrieve all employees redocrds whose JOB_TITLE is Jr. Designer.
SELECT * FROM employees
WHERE job_id IN (SELECT job_ident FROM jobs
	WHERE job_title = 'Jr. Designer');
*/

/*
--Retrieve JOB information for which employees earn more than $70,000.
SELECT * FROM jobs
WHERE job_ident IN (SELECT job_id FROM employees
					WHERE salary > 70000); 
*/

/*
--Retrieve JOB information for which there are employees with birth year after 1976.
SELECT * FROM jobs
WHERE job_ident IN (SELECT job_id FROM employees
					WHERE  YEAR(b_date) > 1976);
 */

/*
--Retrieve JOB information for female employees whose birth year is after 1976.
SELECT * FROM jobs
WHERE job_ident IN (
					SELECT job_id FROM employees
					WHERE (sex = 'F' AND YEAR(b_date)>1976 )
					);
*/



/*
--implicit cartesian/cross join between EMPLOYEES and JOBS tables.
SELECT * from employees, jobs;
*/

/*
--Retrieve EMPLOYEES and JOBS records that correspond to jobs in the JOBS table.
SELECT * FROM employees
WHERE job_id IN (SELECT job_ident FROM jobs);
*/


/*
--Same but with short aliases and implicit inner join
SELECT * FROM employees E, jobs J
WHERE E.job_id = J.job_ident;
*/


--Redo previous query, but retrieve only the Employee ID, Employee Name and Job Title.
SELECT E.emp_id, E.f_name, E.l_name, J.job_title FROM employees E, jobs J
WHERE E.job_id = J.job_ident;