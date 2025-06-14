create database University_smiu;
use  University_smiu;
create table University (
    UniversityID int primary key,
    Name varchar(100),
    Location varchar(100)
);

create table Department (
    DeptID int primary key,
    Name varchar(100),
    UniversityID int
);

insert into University values (1, 'SMI University', 'Karachi'), (2, 'MUET University', 'Jamshoro');
insert into Department values (101, 'Software Engineering', 1), (102, 'Computer Science', 2);

select * from Department;
select * from University;
