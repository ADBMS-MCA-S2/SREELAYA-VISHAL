create database depat;
use depat;
create table dept(deptno int(50) primary key, dname varchar(50),LOC varchar(50));
alter table dept ADD pincode int(50) NOT NULL;
RENAME TABLE dept TO department;
select * from  department;
ALTER TABLE department CHANGE dname  dept_name varchar(50) ;
ALTER TABLE department MODIFY LOC char(10);  
ALTER TABLE department DROP PRIMARY KEY;
drop table department;

