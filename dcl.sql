use my_database;
select * from users;

update users set Uname='kodd' where Uid=105;

revoke update on users from root@localhost;
