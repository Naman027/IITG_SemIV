CREATE DATABASE hss;
USE hss;

CREATE TABLE courses(
    cid VARCHAR(20) NOT NULL PRIMARY KEY,
    cname VARCHAR(255) NOT NULL
);

CREATE TABLE student(
    studname VARCHAR(200),
    roll_no INT(12),
    PRIMARY KEY(roll_no)
);


CREATE TABLE register(
    roll_no INT(12),
    cid VARCHAR(12),
    PRIMARY KEY(roll_no,cid),
    FOREIGN KEY(roll_no) REFERENCES student(roll_no)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(cid) REFERENCES courses(cid)
    ON DELETE CASCADE ON UPDATE CASCADE
);


delimiter $$
CREATE TRIGGER newadd ON student
AFTER INSERT, DELETE
FOR EACH ROW
BEGIN
    DECLARE course_id VARCHAR(12) DEFAULT "NULL";
    DECLARE flag int DEFAULT 0;
    DECLARE DatabaseCursor CURSOR FOR
    SELECT cid from courses;
    DECLARE handler_t HANDLER FOR NOT FOUND SET flag = 1;
    OPEN DatabaseCursor;
    loop_label: lOOP
        fetch DatabaseCursor into course_id;
        IF flag=1 then
            LEAVE loop_label;
        end if;
        insert into register values(NEW.roll_no,@course_id);
        end loop loop_label;
    close DatabaseCursor;
    end;
$$ delimiter;

delimiter $$
create trigger next on register
after insert,delete 
for each row
BEGIN
    declare count int default 0;
    set count = (SELECT COUNT(roll_no) from register where cid='CS245');
    if @count>200 
        delete from register where 
        roll_no = NEW.roll_no and cid='CS245';
    end;
$$ delimiter;

delimiter $$
create trigger t2 on courses
after insert,DELETE
for each ROW
begin 
    declare course_id varchar(12);
    declare stud_roll vatchar (12);
    declare dig int(2) default 0;
    declare flag default 0;
    declare even_sem int default 0;
    declare even_st int default 0;
    declare DatabaseCursor CURSOR FOR;
    select roll_no from student;
    declare handler_t handler for not found set flag=1;
    set course_id = new.cid;
    set dig = cast((select right(new.cid,1)) as unsigned);
    if (new.cid like 'HS%') THEN
        set even_sem=cast((select substring(new.cid,3,1)) as unsigned);
        open DatabaseCursor;
        loop_label: loop
            fetch DatabaseCursor into stud_roll;
            set even_st=cast((select right(stud_roll,1)) as unsigned);
            if flag=1 then 
                leave loop_label;
            end if;
            if ((mod(even_sem,2)=1) and (mod(even_st,2)=1) and (mod(dig,2)=1)) THEN
                insert into register values(stud_roll,new.cid);
            end if;
            end loop loop_label;
            close DatabaseCursor;
        end if;
    end;
$$ delimiter;


delimiter $$
create trigger t3 on courses
after insert,delete
for each ROW
BEGIN
    declare cid varchar(20);
    declare t_roll int(10);
    declare roll_no varchar(12);
    declare flag int default 0;
    declare sname int DEFAULT 0;
    declare e_sem int default 0;
    declare dig int default 0;

    declare DatabaseCursor CURSOR FOR
    select roll_no from student where (mod(roll_no,2)=0);
    declare handler_t handler for not found set flag=1;
    set dig = cast((select right(new.cid,1)) as unsigned);
    set cid = new.cid;
    set e_sem=cast((select substring(new.cid,3,1)) as unsigned);

    if (cid='HS%' and mod(dig,2)=1 and mod(e_sem,2)=0) THEN
        open DatabaseCursor;
        loop_label: loop
            fetch DatabaseCursor into t_roll;
            if flag=1 THEN
                leave loop_label;
            end if;
            insert into register values(t_roll,new.cid);
        end loop loop_label;
        close DatabaseCursor;
    end if;
    end;
$$ delimiter;







