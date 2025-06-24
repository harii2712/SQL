create database newbatchsql
use newbatchsql
create table student(regid int,sname varchar(20),age int,dob date)
select * from student
alter table student change regid studentid int
alter table student add column place varchar(20)
alter table student drop column age 
insert into student (studentid,sname,dob,place) values
(104,"harii","2002-12-27","coimbatore"),
(105,"durai","2003-04-14","chennai"),
(106,"rishwan","2002-03-07",null)