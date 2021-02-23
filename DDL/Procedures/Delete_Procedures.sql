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

------------------------------------------------
create proc DeleteInst_byID @instID int
with encryption
as
delete from Instructor where Ins_Id = @instID

--------------------------------------------------------------

create proc DeleteSt_byID @StID int
with encryption
as
delete from Student where St_Id = @StID

--------------------------------------------------------------

create proc DeleteCrs_byID @crsID int
with encryption
as
delete Courses where Crs_Id = @crsID

--------------------------------------------------------------

create proc DeleteTop_byID @ID int
with encryption
as
delete Topics where Topic_id = @ID
