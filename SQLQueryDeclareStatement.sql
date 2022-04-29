declare @active bit = 0; --meaning false or inactive

Declare @SAT int = 1200

Select * from Student
	where SAT > @SAT
	order by SAT desc, Lastname asc;