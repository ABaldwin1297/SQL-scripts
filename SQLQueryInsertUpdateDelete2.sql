select * from Student
	order by Lastname

Delete from Student
	where Lastname = 'Phence Jr.'

Insert Student (Firstname, Lastname, StateCode, GPA)
	values ('Bob', 'Barker', 'CA', '4.0')

Update Student set
	SAT = '1300' where  Lastname = 'Barker'

Update Student set
	MajorId = '3' where Lastname = 'barker' and Firstname = 'bob'