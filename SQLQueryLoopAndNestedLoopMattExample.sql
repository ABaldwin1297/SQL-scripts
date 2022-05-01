-- loop / nested loop

select * from Student

declare @SAT int = 1200 -- have to declare some value to SAT. If the # in this row is > 1000

	if @SAT > 1000
		begin
			print @SAT
				end
			else
				begin
					print 0
						end

-- nested loop

declare @SAT int = 5

	if @SAT > 0 
		begin
		print @SAT
		end
			
		else
			begin
			if @SAT = 0
			begin
			print 0
			end

				else
					begin
					print -5
					end

			end

