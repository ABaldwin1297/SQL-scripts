-- Insert/Update statements

Insert Student
	(Firstname, Lastname, StateCode, GPA, SAT)
	values ('Andy', 'Baldwin','OH', 3.7, null);

Select * from Student


Insert Student
	(Firstname, Lastname, StateCode, GPA, SAT)
	values ('Andy', 'Baldwin','OH', 3.7, null),
	('Alec', 'Baldwin', 'CA', 3.0, null),
	('Steve', 'Baldwin', 'CA', 3.0, null) -- how to add multiple inserts in one query


Select * from Student
	where Lastname = 'Baldwin'


select * from Major

select * from Student
	where Lastname = 'Baldwin'

update Student set
	MajorId = (select Id from Major where description = 'Education')
	where Lastname = 'Baldwin'

select * from Student
	where Firstname in ('Andy', 'Alec', 'Steve') and Lastname = 'Baldwin'

Select * from Major

Insert Major
	(Code, Description, MinSAT)
	values ('UNBW', 'Underwater Basket Weaving', '100')

-- Find all students who Major is General Studies, change their Majors to Underwater Basket Weaving, and then delete the Gen Studies major

Select * from Student
	where MajorId = (select Id from Major where description = 'General Studies')

Update Student set
	MajorId = MajorId + 1  -- WRONG STUPID
	