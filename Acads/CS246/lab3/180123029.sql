drop database if exists db;

create database db;
use db;

create table cc(
		course_id varchar(6),
		credits int,
		primary key(course_id)
	);

create table ett(
		lno int,
		course_id varchar(6),
		exam_date varchar(10),
		start_time int,
		end_time int,
		primary key (lno),
		foreign key (course_id) references cc(course_id) on update cascade on delete cascade
	);

create table cwsl(
		course_id varchar(6),
		sno int,
		roll_number varchar(10),
		username varchar(30),
		email varchar(30),
		primary key (course_id, roll_number),
		foreign key (course_id) references cc(course_id) on update cascade on delete cascade
	);

SET GLOBAL local_infile = 1;

load data local infile '/Users/path/database-09nov2019/course-credits.csv'
into table cc
fields terminated by ','
lines terminated by '\n';

set @lineno = 0;

load data local infile '/Users/path/database-09nov2019/exam-time-table.csv'
into table ett
fields terminated by ','
lines terminated by '\n'
(course_id, exdate, start_time, end_time)
set lno = @lineno := @lineno + 1;

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT101';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT202.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT202';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT205';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT208.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT208';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT290.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT290';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT302.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT302';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT305.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT305';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT306';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT308';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT330.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT330';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT401.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT401';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT502';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT504';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT520.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT520';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT601.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT601';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT604.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT604';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT607';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT609.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT609';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT613.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT613';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT616';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT618';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT629.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT629';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT630';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT632.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT632';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT637.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT637';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/bt/BT699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'BT699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE201.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE201';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE205';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE206';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE213.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE213';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE215.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE215';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE220.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE220';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE221';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE222';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE223';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE304';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE307.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE307';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE308';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE309.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE309';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE311.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE311';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE314';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE315';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE400.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE400';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE402.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE402';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE498';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE504';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE505';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE510.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE510';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE514';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE524.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE524';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE525';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE533.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE533';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE534.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE534';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE544';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE550.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE550';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE552.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE552';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE555.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE555';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE556.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE556';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE564.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE564';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE570.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE570';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE583.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE583';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE584.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE584';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE585.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE585';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE594.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE594';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE595.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE595';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE599.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE599';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE606.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE606';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE607';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE608.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE608';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE612.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE612';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE614.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE614';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE615';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE616';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE623';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE628.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE628';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE643';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE646.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE646';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE648.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE648';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE649.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE649';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE652.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE652';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE661.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE661';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE664.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE664';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE691';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE693.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE693';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE695.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE695';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE697.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE697';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ce/CE699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CE699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH212';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH222';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH223';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH232.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH232';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH233.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH233';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH322.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH322';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH323.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH323';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH333.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH333';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH334.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH334';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH411.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH411';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH417.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH417';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH418.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH418';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH419.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH419';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH421';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH425.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH425';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH428.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH428';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH432.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH432';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH433.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH433';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH438.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH438';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH501.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH501';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH600.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH600';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH603.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH603';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH611.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH611';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH615';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH617.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH617';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH621';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH623';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH625';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH630';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH637.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH637';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ch/CH640.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CH640';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL204';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL205.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL205';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL206';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL207.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL207';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL210.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL210';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL211.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL211';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL307.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL307';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL308';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL309.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL309';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL314';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL315';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL401.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL401';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL404.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL404';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL498';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL503';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL504.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL504';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL599.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL599';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL612.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL612';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL614.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL614';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL617.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL617';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL618';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL619.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL619';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL622';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL623';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL625';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL630.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL630';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL634.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL634';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL635.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL635';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL638.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL638';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL639.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL639';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL642';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL698.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL698';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cl/CL699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CL699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS101';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS110';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS203';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS204';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS206M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS206M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS222';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS223';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS242.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS242';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS243.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS243';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS244.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS244';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS344.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS344';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS345.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS345';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS346.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS346';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS347.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS347';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS348.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS348';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS349.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS349';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS350M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS350M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS501.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS501';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS503';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS525';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS526.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS526';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS549.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS549';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS558.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS558';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS561';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS666.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS666';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/cse/CS699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'CS699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD111.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD111';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD112.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD112';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD113.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD113';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD211.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD211';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD212';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD214.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD214';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD215.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD215';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD216.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD216';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD220M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD220M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD306';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD311.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD311';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD312.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD312';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD313.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD313';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD314.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD314';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD315.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD315';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD316.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD316';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD320M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD320M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD411.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD411';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD413.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD413';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD497.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD497';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD505';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD506.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD506';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD507.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD507';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD509.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD509';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD510.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD510';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD512';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD514';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD515.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD515';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD516.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD516';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD521.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD521';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD522.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD522';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD527.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD527';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD531.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD531';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD602.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD602';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD605.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD605';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD704';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD705.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD705';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD707.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD707';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD709.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD709';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/dd/DD710.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'DD710';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE102';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE203';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE204';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE213M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE213M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE221';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE230.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE230';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE270.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE270';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE304';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE322M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE322M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE333.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE333';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE337.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE337';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE340.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE340';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE351.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE351';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE360.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE360';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE371.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE371';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE385.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE385';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE498.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE498';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE503';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE513';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE514';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE525.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE525';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE529.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE529';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE533.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE533';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE534.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE534';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE539.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE539';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE551.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE551';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE561';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE562.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE562';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE580.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE580';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE621';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE625';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE626.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE626';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE631.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE631';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE632.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE632';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE634.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE634';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE636.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE636';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE642';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE643';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE645.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE645';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE646.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE646';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE647.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE647';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE648.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE648';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE652.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE652';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE653.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE653';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE654.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE654';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE657.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE657';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE663.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE663';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE664.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE664';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE667.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE667';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE668.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE668';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE671.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE671';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE673.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE673';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/eee/EE699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'EE699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS203.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS203';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS212.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS212';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS213.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS213';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS220.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS220';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS224';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS226';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS234.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS234';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS237.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS237';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS238.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS238';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS239.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS239';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS242.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS242';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS243.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS243';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS406.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS406';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS409.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS409';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS413.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS413';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS414.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS414';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS415.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS415';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS420.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS420';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS421';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS422.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS422';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS424.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS424';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS425.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS425';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS502';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS503.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS503';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS505';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS512';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS517.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS517';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS604.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS604';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS621.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS621';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS622';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS623.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS623';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS702.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS702';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS704';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS706.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS706';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS707.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS707';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS717.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS717';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS719.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS719';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS720.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS720';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS731.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS731';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS732.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS732';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS755.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS755';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS763.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS763';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS770.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS770';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS771.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS771';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/hs/HS772.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'HS772';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA102';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA212M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA212M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA224';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA226';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA252.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA252';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA253.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA253';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA271.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA271';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA312M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA312M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA321.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA321';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA351.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA351';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA373.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA373';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA374.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA374';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA473.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA473';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA477.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA477';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA502.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA502';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA505.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA505';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA512.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA512';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA513';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA519.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA519';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA542.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA542';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA547.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA547';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA561.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA561';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA571.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA571';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA573.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA573';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA590.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA590';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA591.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA591';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA616';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA622.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA622';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA625.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA625';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA641.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA641';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA642.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA642';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA643.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA643';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA644.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA644';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA662.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA662';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA671.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA671';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA685.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA685';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA691';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA746.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA746';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ma/MA762.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'MA762';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME101.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME101';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME110';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME221.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME221';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME222.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME222';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME223.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME223';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME224.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME224';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME225.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME225';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME226.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME226';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME321.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME321';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME321M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME321M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME322.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME322';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME323.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME323';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME324.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME324';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME325.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME325';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME326.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME326';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME412.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME412';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME421.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME421';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME513.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME513';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME514.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME514';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME522.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME522';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME532.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME532';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME544';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME553.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME553';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME554.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME554';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME605.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME605';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME607.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME607';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME609.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME609';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME613.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME613';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME615.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME615';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME616.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME616';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME618.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME618';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME619.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME619';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME662.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME662';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME665.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME665';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME670.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME670';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME672.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME672';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME680.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME680';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME686.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME686';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME688.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME688';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME690.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME690';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME691.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME691';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME695.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME695';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/me/ME699.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'ME699';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH102.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH102';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH110.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH110';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH202.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH202';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH204.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH204';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH206.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH206';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH210.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH210';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH302.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH302';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH304.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH304';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH306.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH306';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH308.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH308';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH320.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH320';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH382M.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH382M';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH402.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH402';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH404.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH404';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH406.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH406';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH408.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH408';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH410.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH410';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH412.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH412';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH414.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH414';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH443.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH443';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH446.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH446';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH462.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH462';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH499.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH499';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH516.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH516';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH518.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH518';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH521.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH521';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH523.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH523';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH524.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH524';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH527.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH527';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH531.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH531';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH532.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH532';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH543.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH543';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH544.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH544';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH545.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH545';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH702.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH702';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH703.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH703';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH704.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH704';

load data local infile '/Users/path/database-09nov2019/course-wise-students-list/ph/PH706.csv'
into table cwsl fields terminated by ',' lines terminated by '\n' 
(sno, roll_number, username, email) 
set course_id = 'PH706';

