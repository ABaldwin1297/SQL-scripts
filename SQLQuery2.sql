select c.name, o.id, o.date, o.Description
from orders o
JOIN customers c
on o.CustomerId = c.Id -- this is linking the PK and FK in the customer table and the orders table
order by c.name
-- this is a comment

-- group by
select c.Name as 'Customer', count(*) as 'Orders'
	from Customers c
	join orders o
		on o.CustomerId = c.Id
	group by c.Name
	having count(*) > 1
	order by Orders desc