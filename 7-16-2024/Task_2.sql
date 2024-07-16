create database School_System ;

create table Teacher (ID int primary key , TecherName varchar(30));
create table Course (ID int primary key, CourseName varchar(30));
create table Student (ID int primary key, StudentName varchar(30));

create table Techer_Studen (
T_ID int foreign key (T_ID) references Teacher(ID),
S_ID int foreign key (S_ID) references Student (ID)
);

create table Teacher_Cours(
T_ID int foreign key (T_ID) references Teacher(ID),
C_ID int foreign key (C_ID) references Course (ID)
);
create table TeacherDetail (
ID int primary key, phoneNumber int , hireDate int
foreign key (ID) references Teacher (ID)
);
