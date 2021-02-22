use ExamSystem
--Proc 1
alter proc Dept_Insert
(  
   @id int,  
   @name VARCHAR(20),  
   @desc VARCHAR(100)
)  
with encryption
AS  
BEGIN  
insert into Department values( @id, @name, @desc)  
END

-------------------------------------------------------
--Proc 2
alter proc Inst_Insert  
(  
   @id int,  
   @name VARCHAR(20),
   @salary money,
   @deptid int,
   @mgr int
) 
with encryption
AS  
BEGIN  
insert into Instructor values( @id, @name, @salary,@deptid, @mgr)  
END
---------------------------------------------------------------
--Proc 3
alter proc Std_Insert  
(  
   @id int,  
   @fname VARCHAR(20),
   @lname VARCHAR(20),
   @grade int,
   @addr varchar(50),
   @age int,
   @deptid int
) 
with encryption
AS  
BEGIN  
insert into Student values( @id, @fname, @lname, @grade, @addr, @age, @deptid)  
END
--------------------------------------------------------------------
--Proc 4
alter proc Std_Inst_Insert  
(  
   @sid int,  
   @iid int
) 
with encryption
AS  
BEGIN  
insert into Std_Ins values(@sid,@iid)  
END
-------------------------------------------------------------------
--Proc 5
create proc Crs_Insert  
(  
   @id int,  
   @name varchar(20),
   @duration int
) 
with encryption
AS    
BEGIN
insert into Courses values(@id,@name,@duration)  
END
-------------------------------------------------------------------
--Proc 6
create proc Top_Insert  
(  
   @id int,  
   @name varchar(20),
   @cid int
) 
with encryption
AS    
BEGIN
insert into Topics values(@id,@name,@cid)  
END
--------------------------------------------------------------------
--Proc 7
create proc Inst_Crs_Insert  
(  
   @iid int,  
   @cid int
) 
with encryption
AS    
BEGIN
insert into Inst_Crs values(@iid,@cid)  
END
-----------------------------------------------------------------------
--Proc 8
create proc Std_Crs_Insert  
(  
   @sid int,  
   @cid int
) 
with encryption
AS    
BEGIN
insert into Student_Crs values(@sid,@cid)  
END
------------------------------------------------------------------------
--Proc 9
create proc insertDataExam @id int, @duration int, @start_Time datetime, @courseId int
with encryption
as
	insert into Exam values(@id, @duration, @start_Time, @courseId)
-------------------------------------------------------------------------
----Proc 10
create proc insertDataQuestion @id int, @grade int, @answer varchar(10), @type varchar(10), @descrbtion varchar(50)
with encryption
as
	insert into Questions values(@id, @grade, @answer, @type, @descrbtion)


