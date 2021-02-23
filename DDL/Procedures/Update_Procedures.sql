--proc 1
create proc updateExam @id int, @duration int, @startTime datetime, @crs_id int
with encryption
as
	update Exam
	set
		Ex_duration = @duration,
		Ex_startTime = @startTime,
		Crs_Id = @crs_id
	
	where Exam_Id = @id
----------------------------------------------------------------------------------------
--proc 2
create proc updateQuestion @id int, @grade int, @Answer varchar(10), @type varchar(10), @discrption varchar(50)
with encryption
as
	update Questions
	set
		Q_Grade = @grade,
		Q_Ans = @Answer,
		Q_Type = @type,
		Q_Desc = @discrption
   where Q_Id = @id
-------------------------------------------------------------------------------------------
--proc 3
create proc Update_Salary20perc @instID int
with encryption
as
Update Instructor set Salary = Salary*1.2 where Ins_Id = @instID

----------------------------------------------------------------
--proc 4
create proc Update_StAddr @stID int , @stAdd varchar(50) 
with encryption
as 
Update Student set St_Address=@stAdd where St_Id=@stID 

----------------------------------------------------------------
--proc 5
create proc Update_StDept @stID INT , @DeptId int
with encryption
as
Update Student set Dept_id=@DeptId WHERE St_Id=@stID 

----------------------------------------------------------------
--proc 6
create proc Update_CrsDuration @CrsId int , @CrsDuration int
with encryption
as
Update Courses set Crs_Duration=@CrsDuration where Crs_Id=@CrsId

----------------------------------------------------------------
--proc 7
create proc Update_TopName @topId int , @topname varchar(20)
with encryption
as
Update Topics set Topic_name = @topname where Topic_id = @topId

