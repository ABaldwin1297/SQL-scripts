-- Practice 4/27

select * from major m
join student s
	on m.id = s.Id

select * from major m --how does this one work if MajorId is not one of the columns in the "Major" table? "Major" is table and "Id" is the PK making it "MajorId"?
join student s
	on m.id = s.MajorId

select * from Class c
	join StudentClass st
		on c.id = st.ClassId
	join student s
		on s.Id = st.ClassId --not understanding how this makes sense / if this is even what slide 90 is asking for

select * from Class c -- slide 91, we can only have 1 select statement in a query (unless it's a sub-query)
	join MajorClass mc -- I was trying to select description from major table after the first join, instead just do another join w/ majorclass 
		on mc.ClassId = c.Id
	join major m
		on m.id = mc.MajorId
	where Description like '%general%'

select * from Class c -- slide 94
	join Instructor i
		on c.InstructorId = i.Id


select * from Student s
	left join major m
		on s.MajorId = m.Id