create database Library;

create table Books
(
BookID int,Title varchar(20)
,AuthorID int,PublishedYear int
,CopiesAvailable varchar(20)
,BookCategory varchar(20)
);

create table Authors
(
AuthorID int,FirstName varchar(20)
,LastName varchar(20)
,BirthYear int
);

insert into Books 
values (3,'Book',3,1985,'no','Since');

insert into Authors 
values (5,'x','x',2000);

--select * from Books,Authors;

select * from Books;

select * from Authors;

select CopiesAvailable from Books
where CopiesAvailable = 'yes';

select avg(PublishedYear)
from Books;

select count(BookID)
from Books;

truncate table Books;

drop table Authors;
