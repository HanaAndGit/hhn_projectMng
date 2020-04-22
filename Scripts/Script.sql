select user(), database ();
use hhn_projectMng;

select * from project;
insert into project values(1, "test", "test", now(), now(), "준비");
update project set name= "test3", content="test3", startdate=now(), enddate=now(), pstatus="준비" where pno = 2;