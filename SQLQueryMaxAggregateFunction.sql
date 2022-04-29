-- Show a student with the highest GPA using an aggregate function

Select * from Student
	order by GPA desc

Declare @GPA int = 4.00

Select * from Student
	where @GPA = GPA -- this is not using an aggregate function (min, max, count, sum, avg) but still gets the same answer as the below query with the aggregate function


Select * from Student
	where gpa = (select max(gpa) from Student) -- max is the aggregate function