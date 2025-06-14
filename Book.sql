create database Book;
use Book;

create table Book(
    BookID int primary key,
    Title varchar(200),
    Genre varchar(50)
);

create table Author (
    AuthorID int primary key,
    Name varchar(100)
);

create table BookAuthor (
    BookID int,
    AuthorID int
);

insert into Book values (1, 'Database Design', 'OOP with Java'), (2, 'COAL', 'Software Designing');
insert into Author values (1, 'Sir Rhaim Bux'), (2, 'Sir Abdul Qadeer');
insert into BookAuthor values (1, 1), (2, 1), (2, 2);

select * from Book;
select * from Author;
select * from BookAuthor;
