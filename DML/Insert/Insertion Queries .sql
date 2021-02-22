use ExamSystem

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


Dept_Insert 10,'SD','System Development'
Dept_Insert 20,'EL','E-Learning'
Dept_Insert 30,'MM','Multimedia'
Dept_Insert 40,'NC','Network'
Dept_Insert 50,'EB','E-Business'

------------------------------------------------------------------

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

Inst_Insert 1,'Ramy',2000,10,2
Inst_Insert 2,'Hany',2300,10,NULL
Inst_Insert 3,'Nesreen',2100,50,NULL
Inst_Insert 4,'Enas',1800,50,4
Inst_Insert 5,'Ahmed',1950,40,NULL
Inst_Insert 6,'Nevin',2200,10,2
Inst_Insert 7,'Mohamed',1800,30,NULL

------------------------------------------------------------------

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


Std_Insert 1,'Hana','Mahmoud',NULL,'Cairo',22,10
Std_Insert 2,'Dina','Medhat',NULL,'Giza',23,20
Std_Insert 3,'Asmaa','Khaled',NULL,'Cairo',23,40
Std_Insert 4,'Reham','Salem',NULL,'Mansoura',24,40
Std_Insert 5,'Khaled','Adel',NULL,'Alexandria',21,20
Std_Insert 6,'Mariam','Khattab',NULL,'Cairo',21,30
Std_Insert 7,'Miriam',NULL,NULL,'Giza',25,30
Std_Insert 8,'Mahmoud','Mokhtar',NULL,NULL,250
Std_Insert 9,NULL,'Ahmed',NULL,'Giza',22,50
Std_Insert 10,NULL,'Ali',NULL,'Mansoura',230
Std_Insert 11,'Mohamed',NULL,NULL,'Giza',24,40
Std_Insert 12,NULL,'Mahmoud',NULL,'Giza',25,30

------------------------------------------------------------------

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

Std_Inst_Insert 1,1
Std_Inst_Insert 1,2
Std_Inst_Insert 1,3
Std_Inst_Insert 2,1
Std_Inst_Insert 2,4
Std_Inst_Insert 2,6
Std_Inst_Insert 3,1
Std_Inst_Insert 4,4
Std_Inst_Insert 4,5
Std_Inst_Insert 4,2
Std_Inst_Insert 5,2
Std_Inst_Insert 5,6
Std_Inst_Insert 6,6
Std_Inst_Insert 6,7
Std_Inst_Insert 7,3
Std_Inst_Insert 8,2
Std_Inst_Insert 8,4
Std_Inst_Insert 9,1
Std_Inst_Insert 9,2
Std_Inst_Insert 9,5
Std_Inst_Insert 9,7
Std_Inst_Insert 10,7
Std_Inst_Insert 11,4
Std_Inst_Insert 11,2
Std_Inst_Insert 12,1
Std_Inst_Insert 12,7

------------------------------------------------------------------

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

 Crs_Insert 101,'Javascript',30 
 Crs_Insert 202,'C#',30 
 Crs_Insert 303,'HTML',25 
 Crs_Insert 404,'Database',35 
 Crs_Insert 505,'Soft Skills',15 
 Crs_Insert 606,'Photoshop',10 
 Crs_Insert 110,'CSS',25 
 Crs_Insert 220,'IIS',20 
 Crs_Insert 330,'Marketing',20 
 Crs_Insert 440,'Audit',10 
 Crs_Insert 550,'English',15 
 Crs_Insert 660,'E-Commerce',10

------------------------------------------------------------------

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


Top_Insert 10,'Event',101    
Top_Insert 30,'Ajax/Json',101    
Top_Insert 40,'DOM',101    
Top_Insert 45,'BOM',101  
Top_Insert 50,'Linq',202    
Top_Insert 60,'Collections',202  
Top_Insert 80,'Form',303    
Top_Insert 90,'Table',303  
Top_Insert 100,'SQL QUERIES',404    
Top_Insert 120,'Mapping',404    
Top_Insert 130,'SQL FUNCTION',404  
Top_Insert 140,'Presentation',505    
Top_Insert 160,'Report/Email',505  
Top_Insert 170,'Compostion Image',606    
Top_Insert 150,'Adjusting Lightings',606  
Top_Insert 180,'BoxShadow',110    
Top_Insert 185,'Transition',110    
Top_Insert 85,'Flex',110  
Top_Insert 190,'ports',220    
Top_Insert 195,'FTB',220  
Top_Insert 200,'SWOT Analysis',330    
Top_Insert 210,'PESTLE Analysis',330  
Top_Insert 220,'IT Audit',440    
Top_Insert 230,'IRS',440  
Top_Insert 240,'Vocabulary',550    
Top_Insert 250,'Grammar',550  
Top_Insert 260,'Fundamentals',660    
Top_Insert 20,'B2B E-Commerce',660

------------------------------------------------------------------

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

Inst_Crs_Insert 1,404   
Inst_Crs_Insert 1,660   
Inst_Crs_Insert 1,220 
Inst_Crs_Insert 2,202   
Inst_Crs_Insert 2,220 
Inst_Crs_Insert 3,550   
Inst_Crs_Insert 3,505 
Inst_Crs_Insert 4,550 
Inst_Crs_Insert 5,330   
Inst_Crs_Insert 5,660   
Inst_Crs_Insert 5,440 
Inst_Crs_Insert 6,101   
Inst_Crs_Insert 6,303   
Inst_Crs_Insert 6,110 
Inst_Crs_Insert 7,606

------------------------------------------------------------------

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


Std_Crs_Insert 1,101,NULL  
Std_Crs_Insert 1,660,NULL  
Std_Crs_Insert 1,505,NULL  
Std_Crs_Insert 2,101,NULL  
Std_Crs_Insert 2,202,NULL  
Std_Crs_Insert 2,505,NULL  
Std_Crs_Insert 2,220,NULL  
Std_Crs_Insert 2,550,NULL  
Std_Crs_Insert 3,101,NULL  
Std_Crs_Insert 3,202,NULL  
Std_Crs_Insert 3,110,NULL  
Std_Crs_Insert 3,505,NULL  
Std_Crs_Insert 3,440,NULL  
Std_Crs_Insert 4,303,NULL  
Std_Crs_Insert 4,440,NULL  
Std_Crs_Insert 5,404,NULL  
Std_Crs_Insert 5,110,NULL  
Std_Crs_Insert 6,101,NULL  
Std_Crs_Insert 6,303,NULL  
Std_Crs_Insert 6,110,NULL  
Std_Crs_Insert 7,404,NULL  
Std_Crs_Insert 7,505,NULL  
Std_Crs_Insert 7,330,NULL  
Std_Crs_Insert 8,404,NULL  
Std_Crs_Insert 8,505,NULL  
Std_Crs_Insert 8,220,NULL  
Std_Crs_Insert 8,330,NULL  
Std_Crs_Insert 9,404,NULL  
Std_Crs_Insert 9,440,NULL  
Std_Crs_Insert 10,404,NULL 
Std_Crs_Insert 10,330,NULL  
Std_Crs_Insert 10,550,NULL  
Std_Crs_Insert 10,202,NULL  
Std_Crs_Insert 11,606,NULL 
Std_Crs_Insert 11,550,NULL  
Std_Crs_Insert 11,202,NULL  
Std_Crs_Insert 12,606,NULL 
Std_Crs_Insert 12,660,NULL  
Std_Crs_Insert 12,303,NULL  
Std_Crs_Insert 12,550,NULL

-----------------------------------------------------------------------------------------

create proc insertDataExam @id int, @duration int, @start_Time datetime, @courseId int
with encryption
as
	insert into Exam values(@id, @duration, @start_Time, @courseId)

-------------Database Exam-------------
insertDataExam 1, 2, '12:30:00', 101 
insertDataExam 2, 2, '12:30:00', 101 
insertDataExam 3, 2, '12:30:00', 404
insertDataExam 4, 2, '12:30:00', 404
insertDataExam 5, 2, '12:30:00', 404

------------C# Exam---------------------------
insertDataExam 6, 2, '12:30:00', 202
insertDataExam 7, 2, '12:30:00', 202 
insertDataExam 8, 2, '12:30:00', 202 
insertDataExam 9, 2, '12:30:00', 202 
insertDataExam 10, 2, '12:30:00', 202

------------------------------------------------------------------------------------------------------

create proc insertDataQuestion @id int, @grade int, @answer varchar(10), @type varchar(10), @descrbtion varchar(50)
with encryption
as
	insert into Questions values(@id, @grade, @answer, @type, @descrbtion)

---------------------SQLSERVER MCQ Question----------------------------
insertDataQuestion 1, 5, '1988', 'mcq', 'When was the first version of Microsoft SQL Server released?'
insertDataQuestion 2, 5, 'SQL Server Express', 'mcq', '_________ is free database software running free SQL Server technology.'

insertDataQuestion 3, 5, 'PowerShell', 'mcq', 'Which of the following is not a database object?'
go
insertDataQuestion 4, 5, 'Database Diagrams', 'mcq', '______________ is schematic drawing used for representing relationships in database.'
go
insertDataQuestion 5, 5, 'msdb', 'mcq', 'The _________ database is used by SQL Server Agent for scheduling alerts and jobs, and recording operators.'
go
insertDataQuestion 6, 5, 'image', 'mcq', 'Which of the following is a large object data type?'
go
insertDataQuestion 7, 5, '6', 'mcq', 'Data types in SQL Server are organized into how many categories?'
go
insertDataQuestion 8, 5, 'GETDATE', 'mcq', '______________ function returns current date and time.'
go
insertDataQuestion 9, 5, 'MAX', 'mcq', 'Which SQL keyword is used to retrieve a maximum value?'
go
insertDataQuestion 10, 5, 'UPDATE', 'mcq', 'Which of the following is not a DDL command?'

---------------------SQLSERVER T/F Question----------------------------
insertDataQuestion 11, 3, 'False', 't/f', 'The condition in a WHERE clause can refer to only one value.'
go
insertDataQuestion 12, 3, 'False', 't/f', 'The ADD command is used to enter one row of data or to add multiple rows as a result of a query.'
go
insertDataQuestion 13, 3, 'False', 't/f', 'A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.'
go
insertDataQuestion 14, 3, 'False', 't/f', 'SQL is a programming language.'
go
insertDataQuestion 15, 3, 'False', 't/f', 'SELECT DISTINCT is used if a user wishes to see duplicate columns in a query.'
go
insertDataQuestion 16, 3, 'True', 't/f', 'Indexes can usually be created for both primary and secondary keys.'
go
insertDataQuestion 17, 3, 'True', 't/f', 'The HAVING clause acts like a WHERE clause, but it identifies groups that meet a criterion, rather than rows.'
go
insertDataQuestion 18, 3, 'True', 't/f', 'SQL is a data sublanguage.'
go
insertDataQuestion 19, 3, 'True', 't/f', 'ORDER BY can be combined with the SELECT statements.'
go
insertDataQuestion 20, 3, 'False', 't/f', 'Data manipulation language (DML) commands are used to define a database, including creating, altering, and dropping tables and establishing constraints.'

---------------------C# MCQ Question----------------------------
insertDataQuestion 21, 5, 'Trim()', 'mcq', 'The Method use to remove white space from a string?'
go
insertDataQuestion 22, 5, 'ArrayList', 'mcq', 'Among the given collections which one is I/O index based?'
go
insertDataQuestion 23, 5, 'SortedList', 'mcq', 'In which of the following collections is the I/O based on a key?'
go
insertDataQuestion 24, 5, 'static', 'mcq', 'Which of these is used to access members of class before the object of that class is created?'
go
insertDataQuestion 25, 5, '8', 'mcq', 'How many Bytes are stored by ‘Long’ Data type in C# .net?'
go
insertDataQuestion 26, 5, 'Int', 'mcq', 'Default Type of number without decimal is?'
go
insertDataQuestion 27, 5, 'c += 1', 'mcq', 'The correct way of incrementing the operators are:'
go
insertDataQuestion 28, 5, '<>=', 'mcq', 'Which of the following is/are not Relational operators in C#.NET?'
go
insertDataQuestion 29, 5, 'Encapsulation', 'mcq', 'What is the process by which we can control parts of a program that can access the members of a class?'
go
insertDataQuestion 30, 5, '+', 'mcq', 'Which of these operators can be used to concatenate two or more String objects?'

---------------------C# T/F Question----------------------------
insertDataQuestion 31, 3, 'False', 't/f', 'A function can return more than one value.'
go
insertDataQuestion 32, 3, 'True', 't/f', 'If a function returns no value, the return type must be declared as void'
go
insertDataQuestion 33, 3, 'True', 't/f', 'A local variable declared in a function is not usable out side that function.'
go
insertDataQuestion 34, 3, 'True', 't/f', 'Arithmetic operators are called binary operators when you use two arguments with each operator.'
go
insertDataQuestion 35, 3, 'False', 't/f', 'The data components of a class often are called its iteration'
go
insertDataQuestion 36, 3, 'True', 't/f', 'The public modifier allows unlimited access to a method.'
go
insertDataQuestion 37, 3, 'False', 't/f', 'You declare a Boolean variable by using type integer.'
go
insertDataQuestion 38, 3, 'True', 't/f', 'A parent class is a synonym for base class.'
go
insertDataQuestion 39, 3, 'True', 't/f', 'The new operator is used to create objects.'
go
insertDataQuestion 40, 3, 'True', 't/f', 'The conditional AND operator is written as &&'

select * from Questions
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------