use ExamSystem

create proc deleteExam @id int
with encryption
as
	delete from Exam where Exam_Id = @id

----------------------------------------------
create proc deleteQuestion @id int
with encryption
as 
	delete from Questions where Q_Id = @id