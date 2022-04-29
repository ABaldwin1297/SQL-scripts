-- Format function

Select Name 'Customer', format(sales, 'C', 'en-US') as 'Sales' 
	from Customers
		order by Sales desc	