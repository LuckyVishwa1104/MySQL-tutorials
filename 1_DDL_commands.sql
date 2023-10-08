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

# to view the structure of table
desc users;

# to insert values into table
insert into users values(101,"Adam",98765432,'411240'),
(102,'Nick',98876534,'412034'),
(103,'Happy',99974534,'423056'),
(104,'Codd',94445368,'433980');

# to display the table 
select * from users;

#2) alter - to modify database object (we can add column, drop column and modify column)
# to add new column in table
alter table users add column Uage int;
alter table users add Ucountry char(10);

# to modify existing column
alter table users modify Ucountry varchar(20);

# to rename an existing column
alter table users rename column Ucountry to Untry;

# to delete a column
alter table users drop Untry;

#3) drop - to remove database objective from database
# to drop table, it delete the entire table structure along with values, it can't be rolled back
drop table users;

# to drop database
drop database my_database;

#4) rename - to rename database objects
# renaming table in datbase
rename table users1 to users;

#5) truncate - to delete all the rows of the database
# it does not delete the table structure, it can be rolled back
truncate table users;


