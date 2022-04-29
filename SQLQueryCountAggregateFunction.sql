-- Select StateCode, Count (*) from student group by StateCode

Select count(*) from Student
	group by StateCode


Select statecode 'State', count(*) 'Students' -- this is an alias for the column that has the # of students by state
	from Student
		group by StateCode
			order by count(*) desc


Select statecode 'State', count(*) 'Students' -- this is an alias for the column that has the # of students by state
	from Student
		group by StateCode
			having count(*) >= 10
			order by count(*) desc