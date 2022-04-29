create or alter procedure AddStudent
	@firstname varchar(30) = null,
	@lastname varchar(30) = null,
	@statecode char(2) = 'OH',
	@sat integer = null,
	@gpa decimal(4,2) = 0,
	@majorcode varchar(4) = null

as
begin
	if @firstname is null
	begin
		print 'Firstname is required'
		return;
	end
	if @lastname is null
	begin
		print 'Lastname is required'
		return;
	end

	declare @majorid int = 0;
	select @majorid = id from Major where code = @majorcode;

	if @majorid = 0
	begin
		print 'No major found';
		return;
	end

	insert Student (Firstname, Lastname, StateCode, GPA, SAT, MajorId)
		values (@firstname, @lastname, @statecode, @gpa, @sat, @majorid);

		if @@rowcount != 1
		begin
			print 'Insert failed';
			return;
		end

		print 'Insert successful'

end
go
exec AddStudent @firstname = 'Noah', @lastname = 'Phence Jr.', @statecode = 'IN', 
				@Sat = 1600, @gpa = 2.0, @majorcode = 'Math';
	go
	Select * from Student order by Id desc