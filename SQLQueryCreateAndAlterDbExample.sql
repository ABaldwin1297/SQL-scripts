-- Create a new database named BcDb in the master DB. Go statements below are basically a script to run it back if we needed to restart

use master;
go
drop database if exists BcDb;
go
create database BcDb;
go
use BcDb;
go

create table Customers -- this just creates the table (no data just columns)
(
	Id int not null primary key identity (1,1),
	Code varchar(10) not null unique,
	Name varchar(30) not null,
	Sales decimal (9,2) not null default 0 check (Sales >= 0),
	Active bit not null default 1,
	Created datetime not null default getdate() -- defaults to current date/time when inserting new rows (unless we specifically put a different date/time)
)

select * from Customers

Insert Customers (code, name, sales) -- row into table
	Values ('TQL', 'Total Quality Logistics', 5000)

Alter table Customers
	Add Unit varchar(10) not null default 'each'
