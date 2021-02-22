--view 1
create view StudentAtSD
with encryption
as
	select S.St_Fname +' '+ S.St_Lname as Fullname, D.Dept_name 
	from Department D
	inner join Student S on D.Dept_id = S.Dept_id
	where D.Dept_name = 'SD'
------------------------------------------------------------
--view 2
create view TopicsAtC#
with encryption
as
	select T.Topic_name as C#_Topic
	from Courses C
	inner join Topics T on C.Crs_Id=T.Crs_Id
	where C.Crs_Id=202
-------------------------------------------------------------
