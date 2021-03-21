use ExamSystem

create trigger updateExamTrigger
on Exam
after update
as
	select 'Exam Updates were Done ^^'
------------------------------------------------
create trigger updateQuestionTrigger
on Questions
after update
as
	select 'Question Updates were Done ^^'
-----------------------------------------------
