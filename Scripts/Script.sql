create database hhn_projectMng;
use hhn_projectMng;
select user(), database ();

create table project(
	pno int primary key auto_increment,
	name varchar(200) not null,
	content text null,
	startdate timestamp not null default now(),
	enddate timestamp not null default now(),
	pstatus varchar(10)
);


select * from project;
insert into project values(1, "test", "test", now(), now(), "준비");
update project set name= "test3", content="test3", startdate=now(), enddate=now(), pstatus="준비" where pno = 2;
