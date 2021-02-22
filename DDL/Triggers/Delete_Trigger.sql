use ExamSystem

create trigger deleteEXamTrigger
on Exam
after delete
as
	select 'Exam was Deleted ^^'
-----------------------------------

create trigger deleteQuestionTrigger
on Questions
after delete
as
	select 'Question was Deleted ^^'
