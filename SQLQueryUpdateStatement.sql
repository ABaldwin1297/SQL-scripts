-- Update statement

update Student Set -- when this was ran, it said 54 rows affected - then ran the query below and all GPAs were bumped down by 0.1
	GPA = GPA - 0.1 -- take what's on the right side of = and evaluate it
	where MajorId = (select Id from Major where description like '%Math%')


select * from Student