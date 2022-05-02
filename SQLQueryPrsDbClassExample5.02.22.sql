-- Create PRS Database from Slides 220 ish on

use master;
go
drop database if exists PRSDb;
go
create database PRSDb;
go
use PRSDb;
go

Create table Users
(
	Id int not null primary key identity (1,1),
	Username varchar(30) not null unique,
	Password varchar (30) not null,
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Phone varchar(12) null,
	Email varchar(255) null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0
)

Create table Vendors
(
	Id int not null primary key identity (1,1),
	Code varchar(30) not null unique,
	Name varchar(30) not null,
	Address varchar(30) not null,
	City varchar(30) not null,
	State varchar(2) not null,
	Zip varchar(5) not null,
	Phone varchar(12) null,
	Email varchar(255) null,
)

Create table Products
(
	Id int not null primary key identity (1,1),
	PartNbr varchar(30) not null unique,
	Name varchar(30) not null,
	Price decimal (9,2) not null default 0,
	Unit varchar(30) not null default 'each',
	PhotoPath varchar(255) null,
	VendorId int not null foreign key references Vendors(Id)
)

Create table Requests
(
	Id int not null primary key identity (1,1),
	Description varchar(80) not null,
	Justification varchar(80) not null,
	RejectionReason varchar(80) null,
	DeliveryMode varchar(20) not null,
	Status varchar(10) not null default 'NEW',
	Total decimal (11,2) not null default 0,
	UserId int not null foreign key references Users(Id)
)

Create table RequestLines
(
	Id int not null primary key identity (1,1),
	RequestId int not null foreign key references Requests(Id),
	ProductId int not null foreign key references Products(Id),
	Quantity int not null default 1
)

select * from Users

Insert into Users (Username, Password, Firstname, Lastname, IsReviewer, IsAdmin)
	values ('ABaldwin', 'Password', 'Andy', 'Baldwin', 1, 0),
		   ('EMercurio', 'Password1', 'Evan', 'Mercurio', 1, 0),
		   ('CKlevins', 'Password2', 'Collin', 'Klevins', 1, 0),
		   ('GDoud', 'PasswordAdmin', 'Greg', 'Doud', 0, 1)

Insert into Vendors (Code, name, Address, City, State, Zip)
	values ('TQL', 'Total Quality Logistics', '4289 Ivy Pointe Blvd', 'Cincinnati', 'OH', '45245'),
		   ('WM', 'Walmart', '123 Walmart St.', 'Searcy', 'AR', '12345'),
		   ('TAR', 'Target', '234 Target Rd.', 'Atlanta', 'GA', '23456'),
		   ('KRO', 'Kroger', '456 Kroger Ln.', 'Columbus', 'OH', '34567')

Insert into Products (PartNbr, name, Price, VendorId)
	values ('10', 'Banana', 2.50, (select id from Vendors where Code = 'KRO')),
		   ('20', 'Television', 499.99, (select id from Vendors where Code = 'WM')),
		   ('30', 'Dyson Vacuum', 299.99, (select id from Vendors where Code = 'TAR')) -- doing this last part as to not hard code the VendorId which is a PK in the Vendors table