Create Database Students
use Students
CREATE TABLE STUDENTS (
    StudentID int IDENTITY(1,1) primary key,
    StudentFirstName varchar(20),
	StudentLastName varchar(20),
    DOB DATETIME,
    DOJ DATETIME,
    Gender varchar(10),
	City varchar(35)  
);