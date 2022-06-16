-- DDL BASICS COMMAND 


CREATE DATABASE Students1
USE Students1;
CREATE TABLE StudentsInfo
(
StudentId int,
FirstName varchar(8000),
Lastname nvarchar(60),
PhoneNumber bigint,
AddressofStudent nvarchar(80),
Country varchar(8000)
)
ALTER TABLE StudentsInfo
ADD
	BloodGroup nvarchar(8)

SELECT * FROM StudentsInfo

INSERT INTO StudentsInfo
VALUES ( 1 ,'CHIRAG SAHU','FATHER NAME',8839993951,'CG','INDIA','O+VE')


INSERT INTO StudentsInfo
VALUES ( 2 ,'Mukesh yadav','FATHER NAME',883991,'CG','INDIA','A+VE')


INSERT INTO StudentsInfo
VALUES ( 3 ,'Yash mishra','FATHER NAME',88399951,'MP','INDIA','O+VE')

SELECT s.StudentName, p.parentname FROM StudentsInfo s INNER JOIN parentname p ON p.parentId = s.StudentID




UPDATE StudentsInfo 
SET StudentID = 2, FirstName=  'MUKESH YADAV',Lastname='Last NAME',PhoneNumber=65465,AddressofStudent='CG',Country='INDIA'



-- Delete the id from delete command
DELETE FROM StudentsInfo WHERE StudentID = 2




--Drop command 
DROP TABLE StudentsInfo;

-- Drop Database 
--DROP DATABASE Students;

-- Alter command
ALTER TABLE StudentsInfo 
ADD 
	Rollnumber varchar(8000);

ALTER TABLE StudentsInfo DROP COLUMN Rollnumber;

ALTER TABLE StudentsInfo ADD DOB DATE;
--  Update type of DOB object
ALTER TABLE StudentsInfo ALTER COLUMN DOB datetime;

-- rename the table file name from StudentsInfo to InfoStudent 
sp_rename 'StudentsInfo','InfoStudent'

SELECT * from StudentsInfo

inner join Addresses on AddressofStudent.StudentID = StudentsInfo.StudentsID





