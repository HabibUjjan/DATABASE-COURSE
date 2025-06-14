Create database Human;
use Human;
create table Human(
    Human_ID int primary key,
    Name varchar(100),
    Age int
    
);

create table Heart(
    Heart_ID int primary key,
    Human_ID int,
    Blood_Type varchar(50)
    
);

insert into Human values (1, 'Ali', 30), (2, 'Sara', 28);
insert into Heart values (101, 1, 'A+'), (102, 2, 'O-');

select * from Heart;
select * from Human;
