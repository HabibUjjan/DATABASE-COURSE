create database Project;
use Project;

create table Project (
    ProjectID int primary key,
    Name varchar(100),
    Deadline date
);

create table  ProjectEmployee (
    ProjectID int,
    EmployeeID int
);

insert into Project values (1, 'ERP System', '2025-12-01'), (2, 'CRM App', '2025-10-15');
insert into ProjectEmployee values (1, 101), (2, 102), (1, 102);


select * from Project;
select * from ProjectEmployee;