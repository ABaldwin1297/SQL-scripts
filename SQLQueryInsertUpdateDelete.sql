select * from Customers

Delete from Customers
	where name = 'TQL'

Insert Customers (Name, city, State, sales, Active) -- have to choose all columns that CANNOT be null or ones without a default value
	values ('TQL', 'Cincinnati', 'OH', 700000, 1) -- insert statement requires 'values'

Update Customers set -- Update statement requires 'set' 
	Name = 'Total Quality Logistics' where Id = '38' -- Changed name from TQL to Total Quality Logistics

