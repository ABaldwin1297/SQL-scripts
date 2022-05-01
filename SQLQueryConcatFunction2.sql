-- Concat Function

Select concat (Lastname, ', ', Firstname) as 'Full Name', SAT, GPA
	from Student
		order by Lastname desc


Select concat (Lastname, ', ', Firstname) as 'Full Name', SAT, GPA, StateCode
	from Student
		where StateCode = 'OH'
			order by Lastname desc