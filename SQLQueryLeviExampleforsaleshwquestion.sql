select distinct c.Name, c.Sales from customers c
left join Orders o on c.Id = o.CustomerId
left join OrderLines ol on o.Id = ol.OrdersId
where sales <= (select avg(c.sales) from customers c
left join Orders o on c.Id = o.CustomerId
left join OrderLines ol on o.Id = ol.OrdersId)
order by c.Sales desc