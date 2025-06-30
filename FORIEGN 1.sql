create database transports
use transports
create table busess(regid int primary key,name varchar(20))
create table employee(empid int primary key, regid int, empname varchar(20),FOREIGN KEY(regid) REFERENCES busess (regid))
create table project(empid int primary key, projectname varchar(20), projectid int,FOREIGN KEY(empid) REFERENCES employee (empid)) 
select * from busess
select * from employee
select * from project
insert into busess (regid, name) values
(8056,"harii"),
(0027,"haran"),
(8055,"sri"),
(3939,"yashwant")
insert into employee(empid, empname, regid) values
(890,"esakki", 8056),
(891,"durai",0027),
(892,"raj",8055),
(893,"kamal",3939)
insert into project(empid, projectname, projectid) values
(891,"shs",7773),
(892,"hss",7774),
(893,"rss",7775)
select a.empid, a.empname, a.regid, b.empid, b.projectname, b.projectid
from employee as a 
inner join project as b on a.empid=b.empid