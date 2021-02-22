--Report 1
alter proc StudentsInfoAtDept @id int
with encryption
as
	select S.St_Fname +' '+ S.St_Lname as Fullname, S.St_Address, S.St_Age, S.Total_Grade, D.Dept_name 
	from Department D
	inner join Student S on D.Dept_id = S.Dept_id
	where D.Dept_id = @id

StudentsInfoAtDept 20

-----------------------------------------
--Report 2
create proc Course_Gardes @id int
with encryption
as 
	select Student.St_Fname+' '+Student.St_Lname as FullName,Courses.Crs_Name, Student_Crs.Crs_Grade
	from Student 
	inner join Student_Crs on Student.St_Id = Student_Crs.St_Id
	inner join Courses on Courses.Crs_Id = Student_Crs.Crs_Id
	where Student.St_Id = @id

Course_Gardes 2
--------------------------------------------
--Report 3
--------------------------------------------
--Report 4
create proc Course_Topics @id int
with encryption
as
	select Topic_name
	from Courses
	inner join Topics on Courses.Crs_Id = Topics.Crs_Id
	where Courses.Crs_Id = @id

Course_Topics 101
--------------------------------------------
--Report 5
--------------------------------------------
--Report 6

