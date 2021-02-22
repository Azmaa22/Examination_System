--Create Database using Query

create Database ExamSystem

use ExamSystem
-- Create DB Tables using Queries
------------------------------------------------------------------
create table Department(
Dept_id int Primary key,
Dept_name varchar(20),
Dept_desc varchar(100))

------------------------------------------------------------------
create table Instructor(
Ins_Id int Primary key,
Ins_name varchar(20),
Salary money,
Dept_id int,
Foreign key(Dept_id) references Department(Dept_id),
MGR_id int,
Foreign key(MGR_id) references Instructor(Ins_Id)
)
------------------------------------------------------------------
create table Student(
St_Id int Primary key,
St_Fname varchar(20),
St_Lname varchar(20),
Total_Grade int,
St_Address varchar(50),
St_Age int,
Dept_id int,
Foreign key(Dept_id) references Department(Dept_id)
)
------------------------------------------------------------------
create table Std_Ins(
St_Id int,
Ins_Id int,
Primary key(St_Id,Ins_Id),
Foreign key(St_Id) references Student(St_Id),
Foreign key(Ins_Id) references Instructor(Ins_Id)
)

------------------------------------------------------------------
create table Courses(
Crs_Id int Primary key,
Crs_Name varchar(20),
Crs_Duration int
)
------------------------------------------------------------------
create table Topics(
Topic_id int Primary key,
Topic_name varchar(20),
Crs_Id int,
Foreign key(Crs_Id) references Courses(Crs_Id)
)
------------------------------------------------------------------
create table Student_Crs(
St_Id int,
Crs_Id int,
Crs_Grade int,
Primary key(St_Id,Crs_Id),
Foreign key(St_Id) references Student(St_Id),
Foreign key(Crs_Id) references Courses(Crs_Id)
)
------------------------------------------------------------------
create table Inst_Crs(
Ins_Id int,
Crs_Id int,
Primary key(Ins_Id,Crs_Id),
Foreign key(Ins_Id) references Instructor(Ins_Id),
Foreign key(Crs_Id) references Courses(Crs_Id)
)
------------------------------------------------------------------
create table Exam(
Exam_Id int primary key,
Ex_duration int,
Ex_startTime datetime,
Crs_Id int,
Foreign key(Crs_Id) references Courses(Crs_Id)
)
------------------------------------------------------------------
create table Questions(
Q_Id int primary key,
Q_Grade int,
Q_Ans varchar(10),
Q_Type varchar(10),
Q_Desc varchar(50)
)
------------------------------------------------------------------
create table Q_Choices(
Choice varchar(10),
Q_Id int,
Primary key(Choice, Q_Id),
Foreign key(Q_Id) references Questions(Q_Id)
)
------------------------------------------------------------------
create table St_Answer(
St_Ans varchar(10),
Q_Id int,
St_Id int,
Exam_Id int,
Primary key(St_Ans,Q_Id,St_Id),
Foreign key(Q_Id) references Questions(Q_Id),
Foreign key(St_Id) references Student(St_Id),
Foreign key(Exam_Id) references Exam(Exam_Id)
)