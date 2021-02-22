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

