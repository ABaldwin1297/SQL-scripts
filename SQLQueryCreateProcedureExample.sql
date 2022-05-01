-- Procedure

create or alter procedure FindStudent
	@FirstName varchar(30)
		As
		Select * from Student where Firstname = @FirstName
		Go -- this first part creates the procedure

	exec FindStudent @FirstName = 'Eric' -- just highlight this line to run the procedure



