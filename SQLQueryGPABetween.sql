-- list of students who's GPA >= 2.0 but <= 3.5

select * from Student
	where GPA between 2.0 and 3.5 -- this only works b/c we're comparing against the same column
		order by gpa

select * from Student -- just a different way to write the query above
	where gpa >= 2.0 AND gpa <=3.5
		order by gpa

declare @lowgpa decimal(7,2) = 2.0;
	declare @highgpa decimal(7,2) = 3.5; 

select * from Student
	where GPA between @lowgpa and @highgpa;