create database SchoolManagementSystem;

create table Students (id int primary key identity(1,1),name varchar(30),bd date ,address varchar(30)) ;

create table family_info (father_id int primary key identity(1,1) , std_id int unique foreign key references Students(id) );

create table attendance  (id int primary key identity(1,1),date_ date ,laeve varchar(30),absence varchar(30),late varchar(30) ,
std_id int unique foreign key references Students(id) );

create table Courses (id int primary key identity(1,1) , name varchar(20),description varchar(30),Resource varchar(30)
,std_id int foreign key references Students(id));

create table Classes (id int primary key identity(1,1) ,classCode int ,roomNo int ,schedule varchar(20));

create table Course_Class (id_Course int
CONSTRAINT id_Course foreign key references  Courses(id),
  id_Class int
constraint id_Class foreign key references Classes(id)
);

create table Assignments (id int primary key identity(1,1) ,ass_date date);

create table Courses_Assignments(id_fk_Course int
CONSTRAINT id_fk_Course foreign key references  Courses(id),
  id_Assignment int
constraint  id_Assignment foreign key references Assignments(id));
