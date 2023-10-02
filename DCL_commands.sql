show databases;
use my_database;
show tables;
select * from users;

# DCL - data control language [grant, revoke]
#these commands are used to control users action

# to get the current user of the database
select current_user();

# to get the list of all the user of the datbase
select user();

#1) grant - it gives previlege(permission) to users to perform actions
grant select, update on users to root@localhost;

#2) revoke - it takes back the previlege given to users
revoke select, update on users from root@localhost;

insert into users values(119,'khampa',45987665,'138493');

update users set Uid = 109 where Uid=119;

delete from users where Uid = 109;
