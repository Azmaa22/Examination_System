use ExamSystem

alter trigger updateExamTrigger
on Exam
after update
as
	select 'Exam Updates were Done ^^'
------------------------------------------------
alter trigger updateQuestionTrigger
on Questions
after update
as
	select 'Question Updates were Done ^^'
-----------------------------------------------
