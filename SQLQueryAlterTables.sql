-- last query continued / broken up

Alter table Customers
	Alter column name varchar(50) not null -- updated from varchar(30) to 50

Alter table customers
	Add Updated Datetime default null -- added a column to the table

Create table SalesOrders
(
	Id int not null primary key identity (1,1),
	Description varchar(80) not null,
	Date Datetime not null default getdate(),
	Total decimal (9,2) not null default 0,
	CustomerId int not null foreign key references Customers(Id)
)
go
Insert SalesOrders (Description, Total, CustomerId)
	values('1st Order', 1000, (select id from Customers where Code = 'TQL') -- instead of just adding '1' as the CustId (FK to PK relationship) we do the select so it applies to all customers with 'N' code which is UNIQUE!!
)

alter table salesorders
	drop column customerid;

alter table salesorders
	alter column CustomerId int not null;

select * from SalesOrders

update SalesOrders set CustomerId = 1
