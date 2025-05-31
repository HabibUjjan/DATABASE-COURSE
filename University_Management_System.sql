create database University_Management_System;
use University_Management_System;
create table Students (
    Student_ID int primary key,
    Name varchar(50),
    Age int,
    Department varchar(50),
    Email varchar(100)
);

create table Professors (
    Professor_ID int primary key,
    Name varchar(50),
    Specialization varchar(50),
    Email varchar(100)
);

create table Courses (
    Course_ID int primary key,
    Course_Name varchar(50),
    Department varchar(50),
    Credits int
);

create table Enrollments (
    Enrollment_ID int primary key,
    Student_ID int,
    Course_ID int,
    Semester varchar(10)
);

create table Exams (
    Exam_ID int primary key,
    Course_ID int,
    Exam_Date date
);

create table Results (
    Result_ID int primary key,
    Student_ID int,
    Exam_ID int,
    Marks int
);

create table Library (
    Book_ID int primary key,
    Title varchar(100),
    Author varchar(50),
    Available_Copies int
);

create table Attendance (
    Attendance_ID int primary key,
    Student_ID int,
    Course_ID int,
    Status varchar(10)
);

create table Fees (
    Fee_ID int primary key,
    Student_ID int,
    Amount decimal(10,2),
    Due_Date date,
    Payment_Status varchar(10)
);

create table Hostel (
    Hostel_ID int primary key,
    Student_ID int,
    Room_Number int,
    Hostel_Name varchar(50)
);

-- Students
insert into Students values
(1, 'Ali Khan', 20, 'Computer Science', 'ali.khan@example.com'),
(2, 'Sara Ali', 22, 'Mathematics', 'sara.ali@example.com'),
(3, 'Ahmed Raza', 21, 'Physics', 'ahmed.raza@example.com'),
(4, 'Ayesha Noor', 23, 'Biology', 'ayesha.noor@example.com'),
(5, 'Zain Ahmed', 20, 'Chemistry', 'zain.ahmed@example.com'),
(6, 'Hina Shah', 19, 'Computer Science', 'hina.shah@example.com'),
(7, 'Usman Javed', 24, 'Physics', 'usman.javed@example.com'),
(8, 'Mehwish Bano', 22, 'Mathematics', 'mehwish.bano@example.com'),
(9, 'Bilal Aslam', 23, 'Biology', 'bilal.aslam@example.com'),
(10, 'Nida Tariq', 21, 'Chemistry', 'nida.tariq@example.com');

-- Professors
insert into Professors values
(1, 'Dr. Imran Khan', 'AI', 'imran.khan@uni.com'),
(2, 'Dr. Maria Sohail', 'Algebra', 'maria.sohail@uni.com'),
(3, 'Dr. Zubair Ali', 'Quantum Physics', 'zubair.ali@uni.com'),
(4, 'Dr. Rabia Khan', 'Botany', 'rabia.khan@uni.com'),
(5, 'Dr. Tariq Jameel', 'Organic Chemistry', 'tariq.jameel@uni.com'),
(6, 'Dr. Farah Mehmood', 'Networking', 'farah.mehmood@uni.com'),
(7, 'Dr. Noman Tariq', 'Statistics', 'noman.tariq@uni.com'),
(8, 'Dr. Saba Waheed', 'Zoology', 'saba.waheed@uni.com'),
(9, 'Dr. Usman Ali', 'Database', 'usman.ali@uni.com'),
(10, 'Dr. Sana Fatima', 'Ethics', 'sana.fatima@uni.com');

-- Courses
insert into Courses values
(101, 'AI Basics', 'Computer Science', 3),
(102, 'Linear Algebra', 'Mathematics', 4),
(103, 'Quantum Mechanics', 'Physics', 3),
(104, 'Plant Biology', 'Biology', 2),
(105, 'Organic Chemistry', 'Chemistry', 3),
(106, 'Computer Networks', 'Computer Science', 4),
(107, 'Probability', 'Mathematics', 3),
(108, 'Genetics', 'Biology', 2),
(109, 'Thermodynamics', 'Physics', 3),
(110, 'Inorganic Chemistry', 'Chemistry', 4);

-- Enrollments
insert into Enrollments values
(1, 1, 101, 'Fall'),
(2, 2, 102, 'Spring'),
(3, 3, 103, 'Fall'),
(4, 4, 104, 'Spring'),
(5, 5, 105, 'Fall'),
(6, 6, 106, 'Fall'),
(7, 7, 107, 'Spring'),
(8, 8, 108, 'Fall'),
(9, 9, 109, 'Spring'),
(10, 10, 110, 'Fall');

-- Exams
insert into Exams values
(1, 101, '2025-06-01'),
(2, 102, '2025-06-02'),
(3, 103, '2025-06-03'),
(4, 104, '2025-06-04'),
(5, 105, '2025-06-05'),
(6, 106, '2025-06-06'),
(7, 107, '2025-06-07'),
(8, 108, '2025-06-08'),
(9, 109, '2025-06-09'),
(10, 110, '2025-06-10');

-- Results
insert into Results values
(1, 1, 1, 85),
(2, 2, 2, 78),
(3, 3, 3, 92),
(4, 4, 4, 88),
(5, 5, 5, 65),
(6, 6, 6, 74),
(7, 7, 7, 89),
(8, 8, 8, 91),
(9, 9, 9, 77),
(10, 10, 10, 83);

-- Library
insert into Library values
(1, 'Intro to AI', 'Andrew Ng', 3),
(2, 'Math World', 'John Smith', 5),
(3, 'Physics For All', 'Isaac Newton', 2),
(4, 'Botany Basics', 'Lara Croft', 4),
(5, 'Chemistry Fun', 'Marie Curie', 1),
(6, 'Network Design', 'Tanenbaum', 6),
(7, 'Stats Magic', 'Ronald Fisher', 3),
(8, 'Zoology 101', 'David Attenborough', 2),
(9, 'SQL & You', 'Joe Celko', 5),
(10, 'Ethics in Tech', 'Elon Musk', 1);

-- Attendance
insert into Attendance values
(1, 1, 101, 'Present'),
(2, 2, 102, 'Absent'),
(3, 3, 103, 'Present'),
(4, 4, 104, 'Present'),
(5, 5, 105, 'Absent'),
(6, 6, 106, 'Present'),
(7, 7, 107, 'Present'),
(8, 8, 108, 'Absent'),
(9, 9, 109, 'Present'),
(10, 10, 110, 'Absent');

-- Fees
insert into Fees values
(1, 1, 20000.00, '2025-06-30', 'Paid'),
(2, 2, 18000.00, '2025-06-30', 'Unpaid'),
(3, 3, 19000.00, '2025-06-30', 'Paid'),
(4, 4, 17500.00, '2025-06-30', 'Unpaid'),
(5, 5, 21000.00, '2025-06-30', 'Paid'),
(6, 6, 22000.00, '2025-06-30', 'Paid'),
(7, 7, 20000.00, '2025-06-30', 'Unpaid'),
(8, 8, 23000.00, '2025-06-30', 'Paid'),
(9, 9, 18500.00, '2025-06-30', 'Unpaid'),
(10, 10, 19500.00, '2025-06-30', 'Paid');

-- Hostel
insert into Hostel values
(1, 1, 101, 'Alpha'),
(2, 2, 102, 'Beta'),
(3, 3, 103, 'Gamma'),
(4, 4, 104, 'Alpha'),
(5, 5, 105, 'Beta'),
(6, 6, 106, 'Gamma'),
(7, 7, 107, 'Alpha'),
(8, 8, 108, 'Beta'),
(9, 9, 109, 'Gamma'),
(10, 10, 110, 'Alpha');


-- ata show krna ka liy/run ka liy --
select * from Students;
select * from Professors;
select * from Courses;
select * from Enrollments;
select * from Exams;
select * from Results;
select * from Library;
select * from Attendance;
select * from Fees;
select * from Hostel;


-- update ki Queries 10 --
update Students set Age = 25 where Student_ID = 1;
update Students set Email = 'sara.updated@example.com' where Student_ID = 2;
update Professors set Email = 'new.email@uni.com' where Professor_ID = 3;
update Courses set Credits = 5 where Course_ID = 102;
update Enrollments set Semester = 'Winter' where Enrollment_ID = 4;
update Exams set Exam_Date = '2025-06-15' where Exam_ID = 5;
update Results set Marks = 95 where Result_ID = 6;
update Library set Available_Copies = 10 where Book_ID = 7;
update Fees set Payment_Status = 'Paid' where Fee_ID = 2;
update Hostel set Hostel_Name = 'Omega' where Hostel_ID = 10;


-- like ki 5 queries
select * from Students where Name like 'A%';
select * from Professors where Name like '%Ali';
select * from Library where Title like '%AI%';
select * from Courses where Course_Name like '%Chemistry%';
select * from Hostel where Hostel_Name like 'A%';


-- alter ki 5 quries
alter table Students add column Gender varchar(10);
alter table Professors add column  Phone varchar(15);
alter table Courses modify column Course_Name varchar(100);
alter table Library add column Published_Year int;
alter table Hostel drop column Room_Number;
