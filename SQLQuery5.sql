-- A school gives a $1,250 scholarship to the brightest students but only $5,000 is available. What is the SAT score (1125, 1240, 1375, …) above which all qualified students can receive a scholarship?

select * from Student
	order by SAT desc -- this is to see all students SAT scores in desc order to identify the top 4

select * from Student
	where SAT >= 1495
	order by SAT desc

declare @SAT int;
	set @SAT = 1495;

select * from Student
	where SAT >= @SAT
	order by SAT desc