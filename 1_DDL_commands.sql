-- to create a database
create database my_database;

# to show all the available databases
show databases;

# to use a particular database
use my_database;

# "DDL" - data definition language [create, alter,drop, rename, truncate]
# to define database objects[table, view, sequence, etc]
#1) create - to create a table
create table users(Uid int, Uname varchar(20), Ucontact int, Upincode char(6));
create table employee(empid int, empname varchar(20), department varchar(20), salary int);

# to view the structure of table
desc users;
desc employee;

# to insert values into table
insert into users values(101,"Adam",98765432,'411240'),
(102,'Nick',98876534,'412034'),
(103,'Happy',99974534,'423056'),
(104,'Codd',94445368,'433980');

insert into employee values(1011,"Adam",'Sales',20000),
(1012,"Harry","Human Resource",35000),
(1123,'Jhon','Marketing',25000),
(1234,'Smith',"Technical",28000),
(1344,'Petter','Devepolment','23000');

# to display the table 
select * from users;
select * from employee;

#2) alter - to modify database object (we can add column, drop column and modify column)
# to add new column in table, following both the commands will add a new table in the table
alter table users add column Uage int;
alter table users add Ucountry char(10);
alter table employee add column address varchar(20);
alter table employee add address_ char(10);

# to modify existing column
alter table users modify Ucountry varchar(20);
alter table employee modify address int;
alter table employee modify address_ varchar(20);

# to rename an existing column
alter table users rename column Ucountry to Untry;
alter table employee rename column address to empadd;
alter table employee rename column address_ to add_;

# to delete a column
alter table users drop Untry;
alter table employee drop empadd;
alter table employee drop add_;

#3) drop - to remove database objective from database
# to drop table, it delete the entire table structure along with values, it can't be rolled back
drop table users;
drop table employee;

# to drop database
drop database my_database;
drop database lucky;

#4) rename - to rename database objects
# renaming table in datbase
rename table users1 to users;
rename table employee to emplyee;

#5) truncate - to delete all the rows of the database
# it does not delete the table structure, it can be rolled back
truncate table users;
truncate table emplyee;


