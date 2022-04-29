-- Creating a database & tables // tables & columns can be null unless we specify "not null"

use TQL;

create table Employees 
(
	Id int not null primary key identity(1,1), -- first # is the first value for the PK / 2nd # is the increment in which the PK goes up by (1,2) would be 1, 3, 5, 7, etc.
	Name varchar(50) not null,
	Phone varchar(20) not null, -- we wouldn't do int as the type because there's no math involved. Also if we did int we couldn't do 330-412-3179 because of the dashes
	Salary decimal (9,2) not null default 0,
	Active  bit not null default 1, -- bit only allows 1 or 0, 1 being true 0 being false. Employee is either active or not active
	DepartmentId int foreign key references Department(id) -- by not putting 'not null' it defaults to allowing the column to be 'null'
)

create table Department
(
	Id int not null primary key identity (1,1),
	Description varchar(100) not null,
	Location varchar(100) not null


)