CREATE PROCEDURE dbo.UpdateStudentDetails
(@StudentID int,
    @StudentFirstName varchar(20),
	@StudentLastName varchar(20),
    @DOB DATETIME,
    @DOJ DATETIME,
    @Gender varchar(10),
	@City varchar(35)  )
      
AS 
BEGIN 
    update dbo.Students
       set     
            StudentFirstName = @StudentFirstName,
            StudentLastName= @StudentLastName ,
            DOB =@DOB,
            DOJ =@DOJ,
			Gender=@Gender,
			City=@City
        
    where StudentID=@StudentID

END 

GO

exec dbo.UpdateStudentDetails  2,'Vinay', 'kadam', '1996-03-01', '2022-05-06','male', 'Maharastra'

--exec dbo.InsertStudentDetails  'Preethi', 'H B', '1-01-2000', '02-02-2022','Female', 'Hassan'

--select * from STUDENTS