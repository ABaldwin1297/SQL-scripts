-- Students first name & last name together as one column, SAT, GPA - this is a Concat function

Select concat(Firstname,' ', Lastname) as Name, SAT, GPA -- ' ' is how to add a space, still separate with a comma
	from student
		order by Lastname desc


Select concat(Lastname,',', ' ', Firstname) as Name, SAT, GPA
	from student
		order by Lastname desc

