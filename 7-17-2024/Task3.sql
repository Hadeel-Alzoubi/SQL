create database jaradat_Tech_solution;

create table auther (ID int primary key IDENTITY(1,1), name varchar(20));
create table section (ID int primary key IDENTITY(1,1),  name varchar(20));
create table category (ID int primary key IDENTITY(1,1), name varchar(20));


create table employee (ID int primary key IDENTITY(1,1), name varchar(20) , S_ID_fk int,
foreign key (S_ID_fk) references section(ID)
);
create table users (ID int primary key IDENTITY(1,1), name varchar(20));

create table book (
ID int primary key IDENTITY(1,1), name varchar(20) ,
A_ID_fk int,
U_ID_fk int,
S_ID_fk int,
foreign key (A_ID_fk) references auther(ID),
foreign key (U_ID_fk) references users(ID),
foreign key (S_ID_fk) references section(ID)
);

--drop table book_category;

create table book_category (id_book int,id_category int,
primary key (id_book,id_category),
foreign key (id_book)  references book(ID),
foreign key (id_category) references category(ID)
);

--alter table book_category 
--add id_book int;

--alter table book_category
--add id_category int;

--This is Practic in 1 : M Relation
select auther.name , book.name
from auther
join book on auther.ID = book.A_ID_fk;

select auther.name , book.name
from auther
left join book on auther.ID = book.A_ID_fk;

select  auther.name , book.name
from auther
right join book on auther.ID = book.A_ID_fk;

select auther.name , book.name
from auther
full join book on auther.ID = book.A_ID_fk;

--This is Practic in M : M Relation

select book.ID, book.name, category.name
from book
join book_category on book.ID = book_category.id_book
join category on book_category.id_category = category.ID;

--select category.name , book.name
--from category,book
--join book_category on book_category.id_book = book_category.id_category;

select book.ID, book.name, category.name
from book
left join book_category on book.ID = book_category.id_book
left join category on book_category.id_category = category.ID;

--select auther.name , book.name
--from auther
--left join book on auther.ID = book.A_ID_fk;

select book.ID, book.name, category.name
from book
right join book_category on book.ID = book_category.id_book
right join category on book_category.id_category = category.ID;

select book.ID, book.name, category.name
from book
full join book_category on book.ID = book_category.id_book
full join category on book_category.id_category = category.ID;
