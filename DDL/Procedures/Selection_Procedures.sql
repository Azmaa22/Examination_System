--Proc 1
create proc selectCourseData 
with encryption
as
	select * from Courses

--------------------------------------------------
--Proc 2
create proc selectDepartmentData 
with encryption
as
	select * from Department

--------------------------------------------------
--Proc 3
create proc selectExamData 
with encryption
as
	select * from Exam

--------------------------------------------------
--Proc 4
create proc selectInstructorData 
with encryption
as
	select * from Instructor
--------------------------------------------------
--Proc 5
create proc selectQuestionsData 
with encryption
as
	select * from Questions
--------------------------------------------------
--Proc 6
create proc selectStudentData 
with encryption
as
	select * from Student

--------------------------------------------------
--Proc 7
create proc selectTopicData 
with encryption
as
	select * from Topics
----------------------------------------------------
--Proc 8
create proc StudentAtDept @name varchar(20)
with encryption
as
	select S.St_Fname +' '+ S.St_Lname as Fullname, D.Dept_name 
	from Department D
	inner join Student S on D.Dept_id = S.Dept_id
	where D.Dept_name = @name
----------------------------------------------------------
--Proc 9
create proc TopicsAtCourse @coursName varchar(20)
with encryption
as
	select T.Topic_name as Topic
	from Courses C
	inner join Topics T on C.Crs_Id=T.Crs_Id
	where C.Crs_Name = @coursName
----------------------------------------------------------
--Proc 10
create proc StudentInfo @id int
with encryption
as
	select * from Student where Student.St_Id = @id
----------------------------------------------------------
--Proc 11
create proc CourseInfo @id int
with encryption
as
	select * from Courses where Courses.Crs_Id = @id
----------------------------------------------------------
--Proc 12
create proc DepartmentInfo @id int
with encryption
as
	select * from Department where Dept_id = @id
----------------------------------------------------------
--Proc 13
create proc ExamInfo @id int
with encryption
as
	select * from Exam where Exam_Id = @id
---------------------------------------------------------
--Proc 14
create proc QuestionInfo @id int
with encryption
as
	select * from Questions where Q_Id = @id
----------------------------------------------------------
--Proc 15
create proc InstructorInfo @id int
with encryption
as
	select * from Instructor where Ins_Id = @id
----------------------------------------------------------
--Proc 16
create proc TopicInfo @id int
with encryption
as
	select * from Topics where Topic_id = @id

 
