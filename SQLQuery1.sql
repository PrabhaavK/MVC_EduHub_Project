
 
create database Edu_Hub;
 
use Edu_Hub;
 
create table Users(userId int primary key identity(1,1),

userName varchar(255) not null unique,password varchar(15) not null check (LEN(password) between 8 and 15),

role  varchar(255) not null check(role in('Student','Educator')),email varchar(255) not null,

mobile_no varchar(10) not null,profileImage varchar(255));
 
 
create table Courses(courseId int primary key identity(1,1),

title varchar(255) not null,description varchar(255) not null,

courseStartDate Date, courseEndDate Date,userId int,category varchar(255),level varchar(255) check(level in('beginner', 'intermediate','advanced')));
 
create table Enrollments(enrollmentId int primary key identity(1,1),

userId int , courseId int, enrollmentDate date, status varchar(25)default 'Pending' check(status in ('Accepted', 'Rejected','Pending')));
 
create table Materials(materialId int primary key identity(1,1),

courseId int, title varchar(255), description varchar(255),URL varchar(255),uploadDate date,contentType varchar(255));
 
create table Enquiries(enquiryId int primary key identity(1,1),

userId int,courseId int, subject varchar(255), message varchar(255),enquiryDate date,status varchar(255)default 'Open' check(status in('Open','Closed')),response varchar(255));
 
 
create table Feedbacks(feedbackId int identity(1,1),

userId int,CourseId int,feedback varchar(255),date date);
 
select * from sys.tables;
 
select * from users;

select  * from Courses;

select  * from Materials;

select  * from Enrollments;

select  * from Enquiries;

select  * from Feedbacks;
 
INSERT INTO Courses (title, description, courseStartDate, courseEndDate, userId, category, level)
VALUES 
('Java', 'Comprehensive Java programming course', '2024-01-10', '2024-04-10', 1, 'Programming', 'beginner'),
('Python', 'Introduction to Python programming', '2024-02-15', '2024-05-15', 2, 'Programming', 'beginner'),
('.NET', 'Advanced .NET development', '2024-03-01', '2024-06-01', 3, 'Development', 'advanced'),
('SQL', 'Mastering SQL databases', '2024-04-05', '2024-07-05', 4, 'Database', 'intermediate'),
('JavaScript', 'JavaScript for web development', '2024-05-10', '2024-08-10', 5, 'Web Development', 'beginner'),
('C++', 'C++ programming essentials', '2024-06-15', '2024-09-15', 6, 'Programming', 'intermediate'),
('HTML & CSS', 'Building websites with HTML & CSS', '2024-07-20', '2024-10-20', 7, 'Web Development', 'beginner'),
('Data Science', 'Data Science with Python', '2024-08-25', '2024-11-25', 8, 'Data Science', 'advanced');


INSERT INTO Users (userName, password, role, email, mobile_no, profileImage)
VALUES 
('Aditya', 'Pass@1234', 'Educator', 'aditya@gmail.com', '9876543210', 'profile1.jpg'),
('Yogiraj', 'Pass@12345', 'Educator', 'yogiraj@gmail.com', '9876543211', 'profile2.jpg'),
('Pratik', 'Pass@123456', 'Student', 'pratik@gmail.com', '9876543212', 'profile3.jpg'),
('Sneha', 'Pass@1234567', 'Student', 'sneha@gmail.com', '9876543213', 'profile4.jpg'),
('Sumit', 'Pass@12345678', 'Student', 'sumit@gmail.com', '9876543214', 'profile5.jpg'),
('Anjali', 'Pass@1234567', 'Student', 'anjali@gmail.com', '9876543215', 'profile6.jpg'),
('Rohit', 'Pass@12345678', 'Student', 'rohit@gmail.com', '9876543216', 'profile7.jpg'),
('Pranita', 'Pass@1234567', 'Student', 'pranita@gmail.com', '9876543217', 'profile8.jpg');

