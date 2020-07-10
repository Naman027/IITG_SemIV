drop database if exists 180123029_19may2020;

create database 180123029_19may2020;
use 180123029_19may2020;

create table cc(
		cid varchar(6),
		credits int,
		primary key(cid)
);

create table ett(
		lno int,
		cid varchar(6),
		exit_date varchar(10),
		start_time int,
		end_time int,
		primary key (lno),
		foreign key (cid) 
        references cc(cid) on update cascade on delete cascade
);

create table cwsl(
		cid varchar(6),
		serial_no int,
		roll_no varchar(10),
		s_name varchar(60),
		email_id varchar(60),
		primary key (cid, roll_no),
		foreign key (cid) 
        references cc(cid) on update cascade on delete cascade
	);

SET GLOBAL variable = 1;

load data local locat_file '/Users/path/database-09nov2019/course-credits.csv'
into table cc
fields terminated by ','
lines terminated by '\n';

set @flag = 0;

load data local locat_file '/Users/path/database-09nov2019/exam-time-table.csv'
into table ett fields terminated by ',' lines terminated by '\n'
(cid, exit_date, start_time, end_time)
set lno = @flag := @flag + 1;

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT101';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT202.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT202';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT205';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT208.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT208';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT290.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT290';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT302.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT302';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT305.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT305';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT306';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT308';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT330.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT330';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT401.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT401';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT502';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT504';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT520.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT520';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT601.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT601';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT604.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT604';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT607';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT609.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT609';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT613.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT613';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT616';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT618';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT629.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT629';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT630';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT632.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT632';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT637.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT637';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/bt/BT699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'BT699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE201.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE201';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE205';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE206';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE213.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE213';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE215.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE215';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE220.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE220';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE221';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE222';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE223';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE304';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE307.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE307';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE308';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE309.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE309';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE311.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE311';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE314';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE315';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE400.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE400';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE402.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE402';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE498';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE504';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE505';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE510.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE510';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE514';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE524.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE524';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE525';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE533.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE533';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE534.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE534';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE544';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE550.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE550';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE552.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE552';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE555.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE555';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE556.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE556';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE564.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE564';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE570.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE570';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE583.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE583';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE584.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE584';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE585.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE585';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE594.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE594';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE595.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE595';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE599.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE599';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE606.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE606';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE607';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE608.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE608';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE612.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE612';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE614.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE614';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE615';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE616';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE623';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE628.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE628';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE643';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE646.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE646';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE648.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE648';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE649.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE649';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE652.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE652';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE661.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE661';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE664.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE664';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE691';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE693.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE693';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE695.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE695';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE697.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE697';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ce/CE699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CE699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH212';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH222';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH223';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH232.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH232';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH233.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH233';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH322.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH322';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH323.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH323';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH333.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH333';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH334.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH334';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH411.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH411';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH417.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH417';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH418.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH418';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH419.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH419';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH421';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH425.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH425';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH428.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH428';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH432.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH432';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH433.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH433';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH438.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH438';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH501.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH501';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH600.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH600';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH603.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH603';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH611.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH611';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH615';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH617.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH617';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH621';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH623';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH625';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH630';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH637.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH637';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ch/CH640.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CH640';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL204';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL205';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL206';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL207.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL207';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL210.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL210';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL211.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL211';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL307.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL307';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL308';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL309.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL309';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL314';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL315';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL401.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL401';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL404.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL404';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL498';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL503';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL504';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL599.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL599';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL612.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL612';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL614.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL614';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL617.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL617';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL618';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL619.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL619';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL622';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL623';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL625';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL630';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL634.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL634';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL635.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL635';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL638.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL638';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL639.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL639';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL642';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL698.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL698';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cl/CL699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CL699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS101';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS110';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS203';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS204';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS206M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS206M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS222';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS223';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS242.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS242';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS243.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS243';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS244.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS244';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS344.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS344';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS345.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS345';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS346.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS346';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS347.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS347';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS348.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS348';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS349.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS349';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS350M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS350M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS501.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS501';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS503';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS525';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS526.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS526';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS549.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS549';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS558.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS558';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS561';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS666.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS666';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/cse/CS699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'CS699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD111.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD111';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD112.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD112';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD113.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD113';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD211.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD211';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD212';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD214.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD214';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD215.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD215';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD216.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD216';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD220M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD220M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD306';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD311.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD311';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD312.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD312';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD313.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD313';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD314';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD315';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD316.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD316';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD320M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD320M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD411.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD411';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD413.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD413';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD497.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD497';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD505';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD506.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD506';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD507.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD507';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD509.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD509';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD510.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD510';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD512';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD514';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD515.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD515';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD516.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD516';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD521.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD521';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD522.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD522';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD527.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD527';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD531.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD531';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD602.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD602';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD605.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD605';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD704';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD705.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD705';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD707.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD707';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD709.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD709';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/dd/DD710.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'DD710';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE102';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE203';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE204';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE213M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE213M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE221';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE230.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE230';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE270.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE270';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE304';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE322M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE322M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE333.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE333';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE337.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE337';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE340.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE340';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE351.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE351';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE360.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE360';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE371.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE371';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE385.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE385';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE498';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE503';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE513';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE514';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE525';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE529.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE529';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE533.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE533';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE534.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE534';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE539.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE539';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE551.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE551';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE561';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE562.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE562';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE580.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE580';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE621';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE625';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE626.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE626';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE631.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE631';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE632.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE632';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE634.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE634';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE636.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE636';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE642';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE643';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE645.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE645';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE646.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE646';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE647.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE647';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE648.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE648';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE652.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE652';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE653.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE653';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE654.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE654';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE657.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE657';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE663.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE663';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE664.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE664';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE667.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE667';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE668.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE668';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE671.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE671';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE673.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE673';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/eee/EE699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'EE699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS203';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS212';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS213.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS213';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS220.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS220';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS224';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS226';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS234.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS234';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS237.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS237';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS238.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS238';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS239.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS239';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS242.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS242';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS243.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS243';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS406.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS406';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS409.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS409';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS413.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS413';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS414.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS414';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS415.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS415';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS420.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS420';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS421';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS422.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS422';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS424.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS424';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS425.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS425';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS502';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS503';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS505';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS512';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS517.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS517';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS604.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS604';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS621';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS622';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS623';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS702.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS702';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS704';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS706.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS706';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS707.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS707';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS717.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS717';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS719.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS719';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS720.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS720';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS731.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS731';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS732.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS732';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS755.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS755';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS763.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS763';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS770.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS770';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS771.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS771';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/hs/HS772.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'HS772';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA102';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA212M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA212M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA224';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA226';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA252.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA252';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA253.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA253';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA271.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA271';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA312M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA312M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA321.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA321';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA351.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA351';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA373.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA373';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA374.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA374';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA473.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA473';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA477.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA477';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA502';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA505';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA512';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA513';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA519.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA519';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA542.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA542';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA547.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA547';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA561';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA571.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA571';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA573.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA573';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA590.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA590';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA591.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA591';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA616';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA622';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA625';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA641.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA641';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA642';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA643';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA644.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA644';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA662.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA662';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA671.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA671';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA685.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA685';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA691';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA746.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA746';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ma/MA762.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'MA762';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME101';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME110';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME221';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME222';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME223';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME224';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME225.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME225';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME226';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME321.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME321';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME321M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME321M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME322.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME322';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME323.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME323';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME324.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME324';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME325.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME325';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME326.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME326';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME412.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME412';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME421';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME513';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME514';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME522.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME522';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME532.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME532';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME544';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME553.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME553';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME554.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME554';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME605.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME605';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME607';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME609.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME609';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME613.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME613';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME615';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME616';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME618';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME619.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME619';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME662.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME662';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME665.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME665';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME670.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME670';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME672.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME672';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME680.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME680';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME686.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME686';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME688.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME688';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME690.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME690';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME691';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME695.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME695';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/me/ME699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'ME699';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH102';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH110';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH202.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH202';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH204';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH206';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH210.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH210';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH302.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH302';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH304';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH306';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH308';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH320.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH320';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH382M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH382M';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH402.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH402';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH404.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH404';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH406.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH406';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH408.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH408';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH410.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH410';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH412.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH412';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH414.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH414';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH443.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH443';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH446.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH446';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH462.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH462';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH499';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH516.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH516';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH518.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH518';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH521.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH521';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH523.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH523';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH524.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH524';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH527.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH527';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH531.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH531';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH532.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH532';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH543.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH543';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH544';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH545.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH545';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH702.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH702';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH703.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH703';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH704';

load data local locat_file '/Users/path/database-09nov2019/course-wise-students-list/ph/PH706.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(serial_no, roll_no, s_name, email_id) 
set cid = 'PH706';

