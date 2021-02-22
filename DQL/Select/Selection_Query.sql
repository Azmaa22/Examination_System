use ExamSystem
--Display All Courses
selectCourseData

--Display All Departments
selectDepartmentData 

--Display All Topics
selectTopicData

--Display All Student
selectStudentData

--Display All Questions
selectQuestionsData

--Display All Instructors
selectInstructorData

--Display All Exams
selectExamData 

--Display All Student at SD Department through view
select * from StudentAtSD

--Display All Student at X Department through Proc
StudentAtDept 'EL'
StudentAtDept 'SD'
StudentAtDept 'MM'
StudentAtDept 'NC'
StudentAtDept 'EB'

--Display All Topic at C# Course through view
select * from TopicsAtC#

--Display All Topic at X Course through Proc
select * from Courses
TopicsAtCourse 'Javascript'
TopicsAtCourse 'CSS'
TopicsAtCourse 'Database'
TopicsAtCourse 'English'
TopicsAtCourse 'HTML'

--Display Student Data by Id
StudentInfo 1
StudentInfo 2

--Display Instructor Data by Id
InstructorInfo 1
InstructorInfo 2

--Display Department Data by Id
DepartmentInfo 10
DepartmentInfo 20

--Display Course Data by Id
CourseInfo 202
CourseInfo 404

--Display Exam Data by Id
ExamInfo 1
ExamInfo 2

--Display Question Data by Id
QuestionInfo 10
QuestionInfo 30

--Display Topic Data by Id
TopicInfo 10
TopicInfo 80
