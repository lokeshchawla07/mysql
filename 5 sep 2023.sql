show databases;
 use sakila;
SELECT 
    *
FROM
    language;
 show columns from language;
 -- how to add rows in data 
 insert into language values(11,'deepakswamy',now());
SELECT 
    *
FROM
    language;
 insert into language values(12,'russian','2020-09-06 10:35:00');
 -- inserting date manually 
SELECT 
    *
FROM
    language;
  insert into language values(12,'russian','2020-09-06 10:35:00');
  -- when we use ignore if i have entry already it will not insert data if i dont have entry already then it will add the value
  insert  ignore into language values(12,'russian','2020-09-06 10:35:00');
SELECT 
    *
FROM
    language;
  insert  ignore into language values(13,'russian','2020-09-06 10:35:00');
SELECT 
    *
FROM
    language;
--   cannot execute because we have only 3 columns but we entered the value of 4 columns 
  insert  ignore into language values(13,'russian','2020-09-06 10:35:00',warhammer);
  
  insert into language (language_id,name,last_update) values(14,'america','2023-09-06 10:35:00');
SELECT 
    *
FROM
    language;
insert into language (last_update,language_id,name) values('2023-09-06 10:35:00',15,'jamaca');
SELECT 
    *
FROM
    language;
insert into language (last_update,name) values('2023-09-06 10:35:00','andman nicobar');
SELECT 
    *
FROM
    language;
-- multiple values inserting

insert into language (last_update,name) values('2023-09-06 10:35:00','andman nicobar'),('2023-09-06 10:35:00','andman nicobar1'),('2023-09-06 10:35:00','andman nicobar2');
SELECT 
    *
FROM
    language;

-- set is aslo used to insert values .

insert into language set name='bahamas';
SELECT 
    *
FROM
    language;
insert into language set language_id=22,name='bahamas';

SELECT 
    *
FROM
    language;

-- creating a database 

create database test ;
-- once runed if we run it again it will us error so we write it like it 

create database if not exists test; 
-- if now here we have database it will not make or if we not have it will make not will give error 

use test;
show tables;
-- ddl statement used to create index,table and view

CREATE TABLE employee (
    employee_id INT,
    employee_name CHAR(20),
    age INT
);
show tables;
show columns from employee;
insert into employee values(1,'deepak',26);
SELECT 
    *
FROM
    employee;
insert into employee values(1,'deepak',26),(2,'anshu',25),(3,'uday',26);
SELECT 
    *
FROM
    employee;
desc employee;
-- because i have no primary key duplicate values can be go again
insert into employee values(4,'deepak',26);
insert into employee values(5,'dinesh',null);
SELECT 
    *
FROM
    employee;
insert into employee (employee_id,age,employee_name)values( 6,null,'dinesh');
SELECT 
    *
FROM
    employee;
insert into employee (employee_id,employee_name)values( 6,'dinesh');
SELECT 
    *
FROM
    employee;
insert into employee (employee_name)values('dinesh');
SELECT 
    *
FROM
    employee;
-- how to give dEFAULT VALUE WHEN MAKING TABLES.

CREATE TABLE employee2 (
    employee_id INT DEFAULT 0,
    employee_name CHAR(20),
    age INT
);
insert into employee2 (employee_id,age,employee_name)values( 1,null,'dinesh');
insert into employee2 (age,employee_name)values(34,'deenu');
SELECT 
    *
FROM
    employee2;
insert into employee2 (employee_id,age,employee_name)values( null,23,'ratan');
SELECT 
    *
FROM
    employee2;

CREATE TABLE company (
    employee_name CHAR(25) DEFAULT 'ABC',
    employee_id INT,
    salary INT,
    last_update TIMESTAMP DEFAULT NOW ()
); 
desc company;
insert into company(employee_name,employee_id,salary,last_update) values('Anshuman',112323,2300000,now());
SELECT 
    *
FROM
    company;

insert into company(employee_id,salary, employee_name) values(11232,3400000,'deepak');
SELECT 
    *
FROM
    company;
insert into company(employee_id,salary) values(11232,3400000);
insert into company(employee_id,salary) values(11000,4540000);
insert into company(employee_id,salary) values(13434,5650000);
SELECT 
    *
FROM
    company;
-- adding a new column in table
alter table  company add experience int;
SELECT 
    *
FROM
    company;
DELETE FROM company 
WHERE
    employee_name = 'deepak';