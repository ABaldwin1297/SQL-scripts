Select *
	from Customers
	where (city = 'cincinnati' AND sales > 30000)
		OR (city = 'columbus' and sales > 35000)
		OR (city = 'cleveland' and sales > 10000)

Select *
from customers
where city != 'cleveland'

Select *
from customers
where not (city = 'cleveland') AND not (city = 'columbus')

Select *
from customers
where not (city = 'cleveland' OR city = 'columbus')

Select *
from customers
where city in ('cleveland', 'columbus')

Select *
from customers
order by city, sales desc

