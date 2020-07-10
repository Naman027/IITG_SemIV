delimiter //
drop procedure if exists tt_violation;
create procedure tt_violation()
begin
declare flag int default 0;
declare roll_no varchar(10) default "";
declare s_name varchar(60) default "";
declare cur varchar(6) default "";
declare cur2 varchar(6) default "";

declare DatabaseCursor cursor for
select a.roll_no, a.sname, a.cid, b.cid 
from cwsl as a join cwsl as b 
where a.roll_no = b.roll_no and a.cid < b.cid;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;

open DatabaseCursor;
loop1 : loop
	fetch DatabaseCursor into roll_no, s_name, cur, cur2;
	IF flag = 1 THEN
	LEAVE loop1; 
	END IF;
	if exists(
		select * from ett as x, ett as y
		where x.cid = cur and y.cid = cur2
		and x.exit_date = y.exit_date and 
		((x.start_time >= y.start_time and x.start_time <= y.exit_time) or (x.exit_time >= y.exit_time and x.exit_time <= y.start_time))
	)
	then 
	select roll_no, s_name, cur, cur2;
	end if;
end loop loop1;
close DatabaseCursor;
end //
delimiter;







