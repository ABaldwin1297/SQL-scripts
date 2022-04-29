-- Average MinSAT number, keep count of how many rows, divide sum of MinSAT by number of rows

declare aCursor Cursor for
	select * from Major

	declare @sum int = 0, @count int = 0

declare @id int, @code varchar(4), @desc varchar(50), @minsat int;

open aCursor;

FETCH NEXT from aCursor into @id, @code, @desc, @minsat;

while @@FETCH_STATUS = 0
begin
	print 'MinSAT ' + str(@id) + ' | ' + @code + ' | ' + @desc + ' | ' + str(@minsat);

	set @sum = @sum + @minsat
	set @count = @count + 1
	
	FETCH NEXT from aCursor into @id, @code, @desc, @minsat;

end

print 'Done' 

close aCursor
deallocate aCursor

select 'Average of MinSat', @sum / @count