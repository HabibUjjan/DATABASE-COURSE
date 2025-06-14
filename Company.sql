create database Company;
use Company;

create table Company(
	CompanyID int primary key,
    Name varchar(100)

);


create table Employee (
    EmployeeID int primary key,
    Name varchar(50),
    Position varchar(50),
    CompanyID int
);

insert into Company values (1, 'Nisum'), (2, 'Systems Limited');
insert into Employee values (101, 'Adeel', 'Developer', 1), (102, 'Komal', 'Manager', 2);

select * from Company;
select * from Employee;