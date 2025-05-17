create database database_project_table;
use database_project_table;

create table Students (
     student_id INT PRIMARY KEY,
     name VARCHAR(50),
     age INT,
     class VARCHAR(10),
     city VARCHAR(50)
);

create table Teachers (
	  teacher_id INT PRIMARY KEY,
      name VARCHAR(50),
	  subject VARCHAR(30),
      salary INT

);

create table Courses (
	  course_id INT PRIMARY KEY,
      course_name VARCHAR(100),
      fee INT

);


create table Library(
	 book_id INT PRIMARY KEY,
     title VARCHAR(100),
     author VARCHAR(50),
     quantity INT

);

create table Marks(
	mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks_obtained INT,
    exam_date DATE
);