-- Get a list of customers who sales are less than the average of all customers - 4/27 HW

select avg(sales) from Customers

select * from customers c
	where sales < (select avg(sales) from Customers) --subquery - only way we can have another select statement in the same query

select * from customers c
	where sales < (select avg(sales) from Customers)
		order by sales desc
