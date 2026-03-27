-- create database
create database SCMS;

-- To use the database
use scms;

-- creating a table
CREATE TABLE students ( 
student_id INT PRIMARY KEY, 
student_name VARCHAR(50) NOT NULL, 
course VARCHAR(40), 
marks INT CHECK (marks BETWEEN 0 AND 100), 
city VARCHAR(30), 
enrollment_date DATE, 
fee_paid DECIMAL(8,2) DEFAULT 0);

-- describing the table
desc students;

-- inserting Rows in the table
INSERT INTO students VALUES 
(1, 'Anil', 'Data Science', 85, 'Hyderabad', '2024-01-10', 45000), 
(2, 'Bhavya', 'AI', 92, 'Bangalore', '2024-02-15', 50000), 
(3, 'Charan', 'Web Development', 78, 'Chennai', '2024-01-20', 30000), 
(4, 'Divya', 'Data Science', 88, 'Hyderabad', '2024-03-05', 45000), 
(5, 'Eshwar', 'AI', 67, 'Pune', '2024-02-01', 48000), 
(6, 'Farah', 'Cyber Security', 74, 'Mumbai', '2024-01-25', 40000), 
(7, 'Gopal', 'Web Development', 81, 'Delhi', '2024-03-10', 32000), 
(8, 'Hema', 'Data Science', 90, 'Bangalore', '2024-02-18', 47000), 
(9, 'Imran', 'AI', 55, 'Hyderabad', '2024-01-30', 46000), 
(10, 'Jyothi', 'Cyber Security', 89, 'Chennai', '2024-03-15', 42000);

-- TO check the changes made in the table or not
select * from students;

-- DDL(Data Definition Language)--->works on table structure (CREATE, DROP, ALTER)
-- Write a SQL query to create the students table.
CREATE TABLE students ( 
student_id INT PRIMARY KEY, 
student_name VARCHAR(50) NOT NULL, 
course VARCHAR(40), 
marks INT CHECK (marks BETWEEN 0 AND 100), 
city VARCHAR(30), 
enrollment_date DATE, 
fee_paid DECIMAL(8,2) DEFAULT 0);

-- Add a new column email to the students table. 
alter table students add column gmail varchar(50) not null;

-- Modify the student_name column size to 100.
alter table students modify student_name varchar(100);

-- Drop the column email.
alter table students drop column gmail;

-- Rename the table students to student_details.
alter table students rename to student_details;

-- Delete the table permanently from the database.
 drop table student_details;
 
 -- We will crete the table again by executing the below queries.
 CREATE TABLE students ( 
student_id INT PRIMARY KEY, 
student_name VARCHAR(50) NOT NULL, 
course VARCHAR(40), 
marks INT CHECK (marks BETWEEN 0 AND 100), 
city VARCHAR(30), 
enrollment_date DATE, 
fee_paid DECIMAL(8,2) DEFAULT 0);

INSERT INTO students VALUES 
(1, 'Anil', 'Data Science', 85, 'Hyderabad', '2024-01-10', 45000), 
(2, 'Bhavya', 'AI', 92, 'Bangalore', '2024-02-15', 50000), 
(3, 'Charan', 'Web Development', 78, 'Chennai', '2024-01-20', 30000), 
(4, 'Divya', 'Data Science', 88, 'Hyderabad', '2024-03-05', 45000), 
(5, 'Eshwar', 'AI', 67, 'Pune', '2024-02-01', 48000), 
(6, 'Farah', 'Cyber Security', 74, 'Mumbai', '2024-01-25', 40000), 
(7, 'Gopal', 'Web Development', 81, 'Delhi', '2024-03-10', 32000), 
(8, 'Hema', 'Data Science', 90, 'Bangalore', '2024-02-18', 47000), 
(9, 'Imran', 'AI', 55, 'Hyderabad', '2024-01-30', 46000), 
(10, 'Jyothi', 'Cyber Security', 89, 'Chennai', '2024-03-15', 42000);
 
 --  DML(Data Manipulation Language)-->works on data(INSERT, UPDATE, DELETE)
 -- Insert a new student record of your choice. 
 insert into students values(11, 'kamala', 'AI', 56, 'Hyderabad', '2024-05-23', 50000);
 
 -- Update marks of student with student_id = 5 to 75.
 update students set marks = 75 where student_id = 5;
 
 -- Increase fee_paid by 2000 for students enrolled in AI. 
 update students set fee_paid = fee_paid + 2000 where course = 'AI';
 
 --  Delete the record of student whose name is Imran. 
 delete from students where name = 'Imaran';
 
 --  Update city to Kolkata for students studying Cyber Security. 
 update students set city = 'kolkata' where course = 'Cyber security';
 
 --  Change course name from Web Development to Full Stack. 
 update students set course= 'Full stack' where course = 'Web Development';
 
 --  Set fee_paid to 0 for students with marks less than 60. 
 update students set fee_paid = 0 where marks < 60;
 
--  Delete students enrolled before 2024-01-20. 
 delete from students where enrollment_date < '2024-01-20';
 
-- DQL(Data Query Language)-->DQL is used to retrieve data from a database.(SELECT)
-- Display all student records. 
select * from students;

-- Display only student_name and course columns.
select student_name, course from students;

--  Display students who are from Hyderabad.
select * from students where city = 'Hyderabad';

--  Display students enrolled in Data Science. 
select * from students where course = "Data Science";

-- Display students who scored more than 80 marks. 
select * from students where marks > 80;

--  Display students who paid more than 40,000 as fee.
select * from students where fee_paid > 40000;

-- DISTINCT -->Used to remove duplicate values from the result.
-- WHERE CLAUSE -->Used to filter rows based on condition
-- Display distinct list of cities. 
select distinct(city) from students;

-- Display distinct courses offered.
select distinct(course) from students;

-- Display students from Bangalore who scored above 85.
select * from students where city = 'Bangalore' and marks > 85;

--  Display students not from Hyderabad. 
select * from students where not city = "Hyderabad";

-- Display students whose marks are between 70 and 90.
select * from students where marks between 70 and 90;

-- ORDER BY -->Used to sort the result
-- LIMIT -->Used to restrict number of rows returned
-- Display students ordered by marks in ascending order. 
select * from students order by marks;

-- Display students ordered by fee_paid in descending order. 
select * from students order by fee_paid desc;

-- Display top 3 students based on marks. 
select * from students order by marks desc limit 3;

-- Display lowest 5 fee-paid students. 
select * from students order by fee_paid limit 5;

-- Display latest 4 enrolled students based on enrollment_date.
select * from students order by enrollment_date desc limit 4;

-- IN operator -->Used to match multiple specific values
-- BETWEEN operator -->Used to filter a range (inclusive)
-- LIKE operator -->Used for pattern matching (strings)
-- Display students whose course is either AI or Data Science. 
select * from students where course in ('AI', 'Data Science');

-- Display students from Hyderabad, Chennai, or Delhi. 
select * from students where city in ('Hyderabad', 'Chennai', 'Delhi');

-- Display students whose marks are BETWEEN 60 AND 80. 
select * from students where marks between 60 and 80;

-- Display students enrolled BETWEEN 2024-01-15 AND 2024-02-20.
select * from students where enrollment_date between '2024-01-15' AND '2024-02-20';

-- Display students whose name starts with letter A. 
select * from students where student_name like 'A%';

-- Display students whose name ends with a.
select * from students where student_name like '%A';

-- Display students whose name contains ya.
select * from students where student_name like '%ya%';

-- Display students whose course contains word Data. 
select * from students where course like '%Data%';

-- Display students whose city starts with B. 
select * from students where city like 'B%';

-- Display students whose name has exactly 5 characters.
select * from students where student_name like '_____';





 
 
 


