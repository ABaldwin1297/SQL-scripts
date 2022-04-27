Select * from Major
where MinSAT >= 1000 order by MinSAT desc


Select * from Student
where SAT <= 1000 order by SAT desc

Select * from Instructor

Select Firstname, Lastname, YearsExperience from Instructor
order by Lastname

Select s.lastname as 'LastName', m.description as 'Major'
	from Student s
	join Major m
		on m.Id = s.MajorId

Select * from Student s
	Join StudentClass sc 
		On s.Id = sc.StudentId 
	Join Class c 
		On sc.ClassId = c.Id
	where Lastname = 'ant'

Select s.LastName, c.Subject, c.Code From Student s 
	Join StudentClass sc 
		On s.Id = sc.StudentId 
	Join Class c 
		On sc.ClassId = c.Id
	where Lastname = 'ant'


Select * from class c
	join StudentClass sc
		on c.Id = sc.ClassId
	join Student s
		on s.Id = sc.StudentId
	--where c.Code = 'Eng101'

Select s.LastName, c.Code
	from class c
	join StudentClass sc
		on c.Id = sc.ClassId
	join Student s
		on s.Id = sc.StudentId
	where c.Code like 'ENG%'

Select description as 'Major', c.Subject, c.Code from Major m --this is looking at Majors that begin with 'General'
	Join MajorClass mc
		on m.Id = mc.MajorId
	join class c
		on c.Id = mc.ClassId
	where m.Description like 'general%'

Select *
	from Student s
		join Major m
	on m.id = s.MajorId

Select *
	from Student s left join Major m --left join means I want all of the information from the Student table regardless if the info matches
	on m.id = s.MajorId

Select *
	from class c left join Instructor i
	on i.id = c.instructorid

select *
	from Instructor i left join class c
	on i.id = c.InstructorId
	
select *
	from class c right join instructor i
	on i.id = c.InstructorId
	where c.InstructorId is null

Select * from student
where GPA >= (select avg(gpa) from Student)
	order by Lastname

select avg(gpa) from Student -- this calculating the average GPA of all students



