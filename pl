CREATE DEFINER=`root`@`localhost` PROCEDURE `inserts`(emp_id int,exp int,salary float)
BEGIN
DECLARE
	salaryy float;
DECLARE
    levels varchar(45);
  
	if (exp > 0 && exp<5)
    then set levels = 'beg';
    set salaryy=salary+1000;
    insert into student(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
    if( exp>=6 && exp <10)
    then set levels = 'int';
      set salaryy=salary+2000;
     insert into student(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
    if (exp >= 10)
    then set levels = 'advan';
      set salaryy=salary+3000;
    insert into student(emp_id,exp,salary,levels) values(emp_id,exp,salaryy,levels);
    end if;
END

use company;
show tables;
drop table dept;
select * from student;
drop table student;
call inserts(101,6,3500);

create table student
(
emp_id int,
exp int,
salary float,
levels varchar(45));
