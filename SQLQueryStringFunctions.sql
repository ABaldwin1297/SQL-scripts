-- String functions

Select concat (Firstname, ' ', Lastname) as 'Name', m.Description
	from Student s
	left join major m
		on m.id = s.MajorId


Select concat (Firstname, ' ', Lastname) as 'Name', ISNULL(m.Description, 'Undeclared') as Major -- changes anything in column with NULL value to state "Undeclared"
	from Student s
	left join major m
		on m.id = s.MajorId


Select concat (Firstname, ' ', Lastname) as 'Name', UPPER(ISNULL(m.Description, 'Undeclared')) as Major -- UPPER function for majors to be all capitalized
	from Student s
	left join major m
		on m.id = s.MajorId