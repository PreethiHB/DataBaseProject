CREATE PROCEDURE dbo.DeleteStudentDetails
(@StudentID int
 )
      
AS 
BEGIN 
    Delete dbo.Students
 where StudentID=@StudentID

END 

GO

exec dbo.DeleteStudentDetails 2