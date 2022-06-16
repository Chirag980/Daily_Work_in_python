CREATE DATABASE employee
DROP DATABASE employee

USE employee

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE
(
emp_id NVARCHAR(800) not null primary key,
emp_name varchar(8000),
salary bigint,
dept_id NVARCHAR(800),
manager_id NVARCHAR(800)
)


SELECT * FROM EMPLOYEE

-- DELETE THE TABLE EMPLOYEE
DROP TABLE EMPLOYEE

-- INSERTING VALUES INTO EMPLOYEE TABLE
INSERT INTO EMPLOYEE
VALUES( 'E1' ,'CHIRAG SAHU',12000,'D1','M1'),( 'E2' ,'MUKESH YADAV',12000,'D1','M1'),( 'E3' ,'YASH MSIHRA',12000,'D2','M2'),( 'E4' ,'PARAG GUNJAL',12000,'D2','M2'),( 'E5' ,'SUMIT SHUKLA',12000,'D3','M3'),( 'E6' ,'NEW INTERN',12000,'D3','M3')


SELECT * FROM EMPLOYEE

--ALTERING TABLE EMPLOYEE USING ADD / DROP
ALTER TABLE EMPLOYEE
ADD emp_address VARCHAR(255)


-- UPDATE TABLE OF EMPLOYEE
UPDATE EMPLOYEE SET emp_address  = 'India'


SELECT * FROM EMPLOYEE

-- WHERE Clause:-
--The WHERE clause is used to filter records.
SELECT * FROM EMPLOYEE WHERE manager_id = 'M1'
SELECT emp_name ,dept_id FROM EMPLOYEE WHERE dept_id= 'D1'


SELECT * FROM EMPLOYEE

-- SELECTING SPECIFIC COLUMNS 
SELECT emp_name,emp_id FROM EMPLOYEE

-- CREATE A DEPARTMENT TABLE:
CREATE TABLE DEPARTMENT
(
dept_id NVARCHAR(800),
dept_name varchar(8000),
)

SELECT *,'chirag' FROM DEPARTMENT

-- DELETE THE TABLE DEPARTMENT
DROP TABLE DEPARTMENT;

-- INSERT DATA IN DEPARMENT TABLE
INSERT INTO DEPARTMENT
VALUES ( 'D1' ,'IT'),( 'D2' ,'OPERATION'),( 'D3' ,'DEVELOPER'),( 'D4' ,'SDE')

-- SELECT QUERY OF EMPLOYEE AND DEPARTMENT:
SELECT * FROM EMPLOYEE

SELECT * FROM DEPARTMENT


-- What are Joins?
--JOINS in SQL are commands which are used to combine rows from two or more tables, based on a related column between those tables.

-- USING JOIN CLAUSE ---> INNER JOIN , RIGHT JOIN, LEFT JOIN

-- FETCH THE EMPLOYEE NAME AND THE DEPARTMENT NAME THEY BELONG TO ....

-- INNER JOIN / JOIN
SELECT e.emp_id,e.emp_name, e.salary,e.dept_id,e.manager_id,e.emp_address,d.dept_id,d.dept_name
FROM EMPLOYEE e     
INNER JOIN DEPARTMENT d on e.dept_id = d.dept_id

SELECT * FROM EMPLOYEE

SELECT * FROM DEPARTMENT


-- FETCH ALL THE EMPLOYEE NAME AND THEIR DEPARTMENT NAME THEY BELONG TO ....

-- LEFT JOIN

SELECT * FROM EMPLOYEE
SELECT * FROM DEPARTMENT
SELECT *
FROM EMPLOYEE e
LEFT JOIN DEPARTMENT d on e.dept_id = d.dept_id

-- FORMULA OF LEFT JOIN : INNER JOIN + ANY ADDITIONAL RECORDS IN THE LEFT TABLE.


-- FETCH ALL THE EMPLOYEE NAME AND THEIR DEPARTMENT NAME THEY BELONG TO ....

-- RIGHT JOIN
SELECT *
FROM EMPLOYEE e
RIGHT JOIN DEPARTMENT d on e.dept_id = d.dept_id

-- FORMULA OF RIGHT JOIN : INNER JOIN + ANY ADDITIONAL RECORDS IN THE RIGHT TABLE.


-- CREATING VIEW:-
-- Views in SQL are kind of virtual tables. A view also has rows and columns as they are in a real table in the database. We can create a view by selecting fields from one or more tables present in the database. A View can either have all the rows of a table or specific rows based on certain condition.
-- VIEW OF EMPLOYEE TABLE:
SELECT * FROM EMPLOYEE
CREATE VIEW 
VIEW_EMP AS
SELECT emp_id,emp_name,dept_id,manager_id,emp_address 
FROM EMPLOYEE

SELECT * FROM VIEW_EMP

-- VIEW OF DEPARTMENT TABLE
CREATE VIEW 
TEST_VIEW AS
SELECT dept_id,dept_name 
FROM DEPARTMENT

SELECT * FROM TEST_VIEW

-- CREATING PROCEDURES
-- What is a Stored Procedure?
--A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

--So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

CREATE PROCEDURE TESTINGPR
AS
SELECT * FROM EMPLOYEE
GO

EXEC TESTINGPR

SELECT * FROM EMPLOYEE
DROP TABLE EMPLOYEE
SELECT * FROM DEPARTMENT
DROP TABLE DEPARTMENT

