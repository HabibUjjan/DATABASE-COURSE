create database Car;
use Car;

create table Car (
    CarID int primary key,
    Model varchar(50),
    Year int
);

create table Engine (
    EngineID int primary key,
    CarID int,
    Type varchar(50)
);

insert into Car values (1, 'Civic', 2020), (2, 'Corolla', 2021);
insert into Engine values (101, 1, 'V4'), (102, 2, 'V6');

select * from Car;
select * from Engine;
