show databases;
use my_database;
show tables;
select * from users;
desc users;

# DML - data amnipulation language [insert , update, delete]
-- to manipulate data in database, they can be rolled back

#1) insert - to insert a record or row in a database
# to add single row at a time
insert into users values(105,'Champa',98987665,'838493',30);

# to insert multiple row at a time
insert into users values(106,'Carl',95478321,'433098',32),
(107,'Pie',92232211,'400300',30),
(108,'Jhon',94531102,'403332',35);

#2) delete - to delete some or all record from table, it preserve the table structure
delete from users where Uage = 55;
delete from users where Uage is null;

#3) update - to update records specified values
update users set Uid = 101 where Uid = 105;
update users set Uid = 102 where Uid = 106;


