show databases;
use my_database;
show tables;

# creating tables for join operation
# first table
create table Users_ (UId int, Uname varchar(20), Ucontact int, Uaddress varchar(20));
alter table Users_ modify Uaddress varchar(20);
insert into Users_ values(101,'Adam',33984834,'Loa Angles'),
(102,'Harry','84939843','Mountain View'),
(103,'Mario',99483093,'Tokyo'),
(104,'Jhon',49948530,'Mainmi'),
(105,'Roger',93839209,'California');
select * from Users_;

#second table
create table customer (CId int, Cname varchar(20), Cage int);
insert into customer values(101,'Paul',23),
(102,'Codd',21),
(103,'Mario',25),
(104,'Joshep',22);
select * from customer;
drop table customer;

# third table
create table customer_ (UId int, Cname varchar(20), Cage int);
insert into customer_ values(101,'Paul',23),
(102,'Codd',21),
(103,'Mario',25),
(104,'Joshep',22);
select * from customer_;

# SQL joins - joins are used to join two or more tables
#1) Inner join - it joins the table and return the combination of both the table, only the matching row will be present in the new table
select * from Users_ inner join customer on Users_.UId = customer.CId;

#2) Left join - it joins both the table and return a table containg all the rows of left table and respective rows of right table
# if the right column cantain less rowa the remaining are filled with null values
select * from Users_ left join customer on Users_.UId = customer.cid;

#3) Right join - it joins bothe the table abd return a table containing all rows of right table and respective left tables
# if right table have less no of rows than left then only that no. of rows will be added in resulting table
select * from Users_ right join customer on Users_.UId = customer.cid;

#4) Cross join - it gives all the posible combination of records, it dont require any condition
select * from Users_ cross join customer;

#5) Natural join - it will join the table through attribute having same name and datadyte and return table with only one attribut and rest of the columns.
# for this the attribute name must be same in bothe the tables
select * from Users_ natural join customer_;

#6) Self join - it is used to joins a table with itself
# for self join reference is required, here U1 and U2 are the reference to Usres_ table
select * from Users_ U1, Users_ U2 where U1.UId = U2.UId;

#7) Full outer join - it givess the union of right and left join, i.e. entire combination of table
select * from Users_ left join customer on Users_.uid = customer.cid 
union
select * from Users_ right join customer on Users_.uid = customer.cid;
