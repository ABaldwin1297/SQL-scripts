select * from Student

select * from Major

begin transaction;

rollback transaction;

update major set description = 'To Be Deleted' where Id = 8;