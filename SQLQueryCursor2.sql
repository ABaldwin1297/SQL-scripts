declare aCursor Cursor for
	select * from Major;

declare @id int, @code varchar(4), @desc varchar(50), @minsat int;

open aCursor;

FETCH NEXT from aCursor into @id, @code, @desc, @minsat;

while @@FETCH_STATUS = 0 
begin
	print 'Major: ' + str(@id) + ' | ' + @code + ' | ' + @desc + ' | ' + str(@minsat);

	FETCH NEXT from aCursor into @id, @code, @desc, @minsat;
end

print 'Done';

close aCursor;

deallocate aCursor;