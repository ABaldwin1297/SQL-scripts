-- let's look at customers that have sales within a range. If the user wants to keep changing the sales numbers let's create a procedure

-- everything between "begin" and "end" is what's executed

create or alter procedure ShowCustomerBySalesRange
	@lowsales int = 0,
	@highsales decimal(9,2) = 999999
as
begin

select * from Customers
	where sales between @lowsales and @highsales
		order by sales desc
end
go
exec ShowCustomerBySalesRange @lowsales = 30000