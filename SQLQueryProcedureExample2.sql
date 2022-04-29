create or alter procedure Counter
	@max int = 5
as 
begin
	declare @nbr int = 0;
	declare @sum int = 0;
	while @nbr <= @max
	begin
		set @sum = @sum + (@nbr * @nbr);
		print str(@nbr) + ' sum is ' + trim(str(@sum)); -- + sign is concatting multiple things together
		set @nbr = @nbr + 1;
	end
	print 'Done';
end
go -- shortcut saying all statements that have been create up to this point will not get rolled back, they're locked in
exec Counter @max = 10;