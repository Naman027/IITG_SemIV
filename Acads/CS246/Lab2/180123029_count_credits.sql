delimiter //
drop procedure if exists count_credits;
create procedure count_credits()
begin
declare flag int default 0;
declare cnt varchar(10) default "";
declare total int default 0;
declare s_name varchar(60) default "";
declare DatabaseCursor cursor for

select distinct(roll) from cwsl;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;
open DatabaseCursor;

loop1 : loop
	fetch DatabaseCursor into cnt;
	IF flag = 1 THEN
	LEAVE loop1; 
	END IF;
	set total = 
	(select sum(a.credits)
	from cc as a, cwsl as b
	where b.roll_no = cnt and b.cid = a.cid);

	if total > 40 then 
	set name = (
        select distinct(b.s_name) 
	    from cwsl as b
	    where cnt = b.roll_no);
	select cnt, s_name, total; 
	end if;
end loop loop1;
close DatabaseCursor;
end//
delimiter ;
