# IBM-Db2 for Cloud Databases

Within the "IBM Cloud > Catalog" we can find the "Db2 Service" that allows to create, manage and explore a Database stored in the IBM Cloud.  
\
\
.  
## 1- Create an instance of IBM Db2

1. Login to IBM Cloud.  
2. Go to the DB2 Services page on IBM Catalog.  
3.  Select a location for a service to hosted. Choose a location that has a Free Lite plan (e.g. London).  
4. Select the Lite plan. If needed change the deafult parameters and Create.  

5. To access your database instance, go to your IBM Cloud Resource List, expand the Databases heading and locate and click on the new instance of Db2 to access.  

    **A) Manage > Go to UI** to open SQL console to:  
    * create tables
    * load data
    * explore data
    * issues SQL queries.  
    \
    .

    **B) Service Credentials** (Optional) to access the created database instance from another application we will need the a creentials. Multiples credential for different application can be created here.

    Credentials can be seen as a JSON file. It contains the necessary info to stablish a connection to the database, including the following:
    * Database name "db".
    * Port number.
    * Hostname: name of the server on the cloud where the database instance resides.
    * Username ID needed to connect to the database. It is the same as the *_schema name_* on which tables will be created by default.
    * Password for connection.

\
\
.  
## 2- CREATE, ALTER, TRUNCATE & DROP a Table manually
The objetives are to:
* Create a new table in a database.
* Add, delete, or modify columns in an existing table.
* Remove all rows from an existing table without deleting the table itself.
* Delete an existing table in a database.

A separate SQL script for each task is created.  
\
.  
### **Task-1:** 

Create a table **_petsale_** with the following data:  
<img src="./Task-1_Create_Petsale%20table.png" width="400">

and a table **_pet_** table with the following data:  
<img src="./Task-1_Create_Pet%20table.png" width="300">

<div style="text-align: right"> <b>Solution</b>: Task-1_solution.sql</div>


### **Task-2:**
Add a new QUANTITY column to the PETSALE table containing the folllowing information:

<center>

|ID|QUANTITY|
|:--:|:--------:|
| 1 | 9 |
| 2 | 3 |
| 3 | 2 |
| 4 | 6 |
| 5 | 24 |
</center>

<div style="text-align: right"> <b>Solution</b>: Task-2_solution.sql</div>


### **Task-3:**
Delete the PROFIT column from petsale.  
Change the data type of the column PET in petsale table to accept a string woth variable lenght of up to 20 characters.  
Rename the column PET to ANIMAL on the petsale table.

<div style="text-align: right"> <b>Solution</b>: Task-3_solution.sql</div>


### **Task-4:**
First remove all rows from the PET table and show the empty table.
Then, delete the PET table and verify if the table exists or not.

<div style="text-align: right"> <b>Solution</b>: Task-4_solution.sql</div>  

\
\
.  
## 3- CREATE, ALTER, TRUNCATE & DROP a Table manually

### **Task-5:**
Load the SQL script **_HR_Dsatabase_Create_Tables_Script.sql** into the SQL terminal to create four empty tables named:
* employees
* job_history
* jobs
* departements
* locations

Then use the five csv files to load data into the respective tables. The csv files have no header row. Set the date format to be read as MM/DD/YYYY

Verify that the loading process was sucessfull for each table:
<img src="./Load Jobs datafile - Completed.png" width="700">

\
\
.  
## 4- String Patterns, Sorting and Grouping
Work done on the HR_database consisting of 5 tables called *employees*, *job_history*, *jobs*, *departments* and *locations*. 

Task-6 intructions and my solution queries in script Task-6_instructions_and_solutions.sql

Milestones:
* Simplify SELECT statements by using string patterns, ranges, or sets of values.
* Sort the result set and identify which column to use for the sorting order.
* Eliminate duplicates from a result set and further restrict a result set.


\
\
.  
## 5- Working with Aggregate, Scalar, String, Date & Time Functions
Work done in the PETRESCUE table that can be created with the Task-7_petrescue_create.sql script.  

The objetive of these exercices is to get insights from the table using different types of built-in functions:  

* **Agregation:** SUM(), MIN(), MAX(), AVG(), etc
* **Scalar & String:** ROUND(), LENGHT(), UCASE(), LCASE(), etc
* **Date & Time:** YEAR(), MONTH(), DAY(), DAYOFMONTH(), DAYOFWEEK(), DAYOFYEAR(), WEEK(), HOUR(), MINUTE(), SECOND(), DAYS, CURRENT_DAY, CURRENT_TIME, etc

Task-7 intructions and my solution queries can be found in files:  
* task-7_Sol_Ex2.sql
* task-7_Sol_Ex3.sql
* task-7_Sol_Ex4.sql



\
\
.  
## 6- Subqueries & Nested SELECT statements
Work done on the HR_database consisting of 5 tables called *employees*, *job_history*, *jobs*, *departments* and *locations*.  

Milestones:  
* Write SQL queries that demonstrate the necessity of using sub-queries.
* Compose sub-queries in the where clause.
* Build Column Expressions (i.e. sub-query in place of a column).
* Write Table Expressions (i.e. sub-query in place of a table).

Task-8 intructions and solution queries can be found in file task-8_Subqueries.sql  



\
\
.  
## 7- Working with multiple tables
Also working on the HR_database.

Milestones:  
* Write SQL queries that access more than one table.
* Compose queries that access multiple tables using a nested statement in the WHERE clause.
* Build queries with multiple tables in the FROM clause.
* Write Implicit Join queries with join criteria specified in the WHERE clause.
* Specify aliases for table names and qualify column names with table aliases.


Task-9 instructions and solutions can be found in file 