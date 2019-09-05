use rounak_database;
create table asn1(id int(3), FullName varchar(20), Yearofbirth int(4), Designation varchar(15), Salary int(8));
insert into asn1 values(100, 'Rounak Burad', 1994, 'CEO', 100000), (101, 'Nikhil Patil', 1994, 'CTO', 90000),
(102, 'Ajinkya Rane', 1991, 'Analyst', 90000),(103, 'Sanskruti Jain', 1995, 'Analyst', 90000),
(104, 'Sudhir Rai', 1992, 'Developer', 100000),(105, 'Rohit Dhanwani', 1991, 'Accountant', 80000),
(106, 'Priya Matta', 1992, 'Consultant', 80000),(107, 'Rohit Sawant', 1994, 'Manager', 80000),
(108, 'Kunal Doshi', 1993, 'Manager', 80000),(109, 'Divya Jain', 1994, 'Designer', 85000);

select * from asn1;

select FullName from asn1 where id BETWEEN 100 AND 104;

select id, FullName from asn1 where not Designation = 'Analyst';

select id, FullName from asn1 where Yearofbirth IN (1992, 1993, 1994);

select id, FullName from asn1 where Designation like 'a%';

select * from asn1 where Designation = 'CEO' or Yearofbirth = 1992;

select distinct Designation from asn1;

select * from asn1 where salary = (select max(salary) from asn1);

select * from asn1 where salary = (select min(salary) from asn1);

create table asn2(id int(3), Fullname varchar(20), age int(2));

insert into asn2 values (120, 'Johnny Lever', 54);

insert into asn2 values (121, 'John Abraham', 39);

insert into asn2(id, Fullname) values (122, 'Deepika Padukone');

select * from asn2;

select * from asn2 where age is not null;

delete from asn2 where age is null;

select * from asn2;

drop table asn2;