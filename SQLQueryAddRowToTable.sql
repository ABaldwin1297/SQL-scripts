-- write a procedure to add a row to the major table

create or alter procedure AddMajor
	@code varchar(4) = null,
	@description varchar(50) = null,
	@MinSAT int = 0

as

begin
if @code is null
begin
	print 'code is required'
	return;
end
if @description is null
begin
	print 'description is required'
	return;
end
if @MinSAT = 0
begin
	print 'SAT not taken'
	return;
end
insert Major (code, Description, MinSAT)
values (@code, @description, @MinSAT)
end
go
exec AddMajor @code = 'XXXX', @description = 'Test Major', @minsat = 1

Select * from Major
