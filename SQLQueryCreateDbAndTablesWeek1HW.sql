-- Create a database with at least 3 tables -- 1st weekend HW

create database MusicDb

Create table Artist
(
	Id int not null primary key identity (1,1),
	Name varchar(50) not null,
	Genres varchar(50) not null, -- how to update varchar length without deleting table, chaning and re-creating. Update? 
	Origin varchar(50) not null,
	
)

create table Albums
(
	Id int not null primary key identity (1,1),
	Title varchar(50) not null,
	Year varchar(20) not null,
	ArtistId int not null foreign key references Artist(Id)


)

create table Songs
(
	Id int primary key not null,
	Title varchar (50) not null,
	Year varchar(20) not null,
	Certifications varchar(30) null,
	ArtistId int foreign key references Artist(Id) not null,

)

select * from Albums
	join Artist on ArtistId = albums.Id

Insert Artist (Name, Genres, Origin)
	values ('Greta Van Fleet', 'Hard Rock & Progressive Rock', 'Frankenmuth, Michigan')

Insert Albums (Title, Year, ArtistId)
	values ('From the Fires', 2017, 1) -- since ArtistId is FK in this table, need to make sure to add the correct Id corresponding to PK in artist table

Insert into Songs (Id, Title, Year, Certifications, ArtistId) -- why did I have to add Id and enter song Ids if it's the PK? thought it automatically did
	values (1, 'Safari Song', 2017, 'Gold', 1),
			(2, 'Black Smoke Rising', 2017, 'Gold', 1),
			(3, 'Highway Tune', 2017, 'Platinum', 1)

Select * from Songs
	join Artist on artist.id = ArtistId
	join Albums on artist.Id = albums.Id