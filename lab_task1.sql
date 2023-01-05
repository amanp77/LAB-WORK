create database task1;
use task1;
-------------------------------------------------------
create table person(
person_id  int,
last_name varchar(20),
first_name varchar(20),
primary key(person_id)
);

create table address(
address_id int,
person_id int,
city varchar(20),
state varchar(20),
primary key(address_id)
);


insert into person(person_id, last_name, first_name)
values

(1, 'wang', 'allen'),
(2, 'Alice', 'Bob');

insert into address
values
(1, 2, 'New York City', 'New York'),
(2,3, 'Leetcode', 'california');

select p.first_name, p.last_name, a.city, a.state from person p
left join address a
on 
p.person_id = a.person_id;
----------------------------------------------------------
----------------------------------------------------------------
create table person1(
id int,
email varchar(20), 
primary key(id) 
);

create trigger lower_email
before insert on person1
for each row
set new.email = lower(new.email);

insert into person1
values
(1,'A@B.com'),
(2, 'C@D.com'),
(3, 'a@b.com');

select distinct email from person1;
---------------------------------------------------------------
---------------------------------------------------------------
create table Employee(
id int,
name varchar(20),
salary int,
departmentId int,
primary key (id)
);

create table Department(
id int,
name varchar(20),
primary key (id)
);

insert into Employee
values
(1, 'joe', 85000, 1),
(2, 'Henry', 80000,2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1 ),
(5, 'Janet', 69000, 1 ),
(6, 'Randy', 85000, 1 ),
(7, 'Will', 70000, 1);

insert into Department
values
(1, 'IT'),
(2, 'Sales');

alter table Employee
add foreign key (departmentId) references Department(id) ;

desc employee;
desc Department;

select d.name as Department, e.name as Employee, salary
from Department d
join Employee e
on d.id = e.departmentId
group by salary 
order by Department ;
------------------------------------------------------------------