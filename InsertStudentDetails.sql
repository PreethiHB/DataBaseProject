CREATE PROCEDURE dbo.InsertStudentDetails
(
    @StudentFirstName varchar(20),
	@StudentLastName varchar(20),
    @DOB DATETIME,
    @DOJ DATETIME,
    @Gender varchar(10),
	@City varchar(25)  )
      
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO dbo.Students
          (      
            StudentFirstName ,
            StudentLastName ,
            DOB ,
            DOJ ,
			Gender,
			City
          ) 
     VALUES 
          ( 		 
            @StudentFirstName,
            @StudentLastName,
            @DOB,
            @DOJ,
			@Gender,
			@City
          ) 

END 

GO

exec dbo.InsertStudentDetails  'Preethi', 'H B', '1-01-2000', '02-02-2022','Female', 'Hassan'

--select * from STUDENTS