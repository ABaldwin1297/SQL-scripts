-- Transaction example

select * from Customers

delete from Customers where Name = 'Total Quality Logistics'

begin transaction 
	insert Customers (Name, City, State, Sales, Active)
	values ('TQL', 'Cincinnati', 'OH', 100, 1)

	if @@ERROR <> 0
		rollback transaction 
	else
		commit transaction -- basically if there's an error nothing will happen - to protect yourself