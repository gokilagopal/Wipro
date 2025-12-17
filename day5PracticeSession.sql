Create database Day5
use Day5

CREATE TABLE student_marks (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30),
    marks INT CHECK (marks >= 0 AND marks <= 100)
);
INSERT INTO student_marks VALUES
(1, 'Alex', 'IT', 85),
(2, 'Priya', 'CSE', 72),
(3, 'Ravi', 'ECE', 40);
INSERT INTO student_marks VALUES
(4, 'Anu', 'EEE', 65),
(5, 'Karthik', 'MECH', 78),
(6, 'Neha', 'IT', 90),
(7, 'Rahul', 'CSE', 55),
(8, 'Meena', 'ECE', 88),
(9, 'Arjun', 'CIVIL', 47),
(10, 'Sita', 'IT', 92);

select * from student_marks order by name
select * from student_marks order by marks Desc
select * from student_marks order by department asc
select *from student_marks where department='IT' order by roll_no desc
INSERT INTO student_marks VALUES
(11, 'Anu', 'EEE', 65),
(12, 'Karthik', 'MECH', 78),
(13, 'Neha', 'IT', 90),
(14, 'Rahul', 'CSE', 55),
(15, 'Meena', 'ECE', 88),
(16, 'Arjun', 'CIVIL', 47),
(17, 'Sita', 'IT', 92);
select *from student_marks
select *from student_marks where marks >80  order by marks desc limit 5

create table staff (
ID int,
SName varchar(255),
Age int,
Allowance varchar(255),
Salary int
 );
select * from Staff;

INSERT INTO Staff (ID, SName, Age, Allowance, Salary)
VALUES (1, 'Rahu', '26', 400, 4000); 
INSERT INTO Staff (ID,  SName, Age, Allowance, Salary)
VALUES (2, 'Kaitan', '46', 900, 9000);
 
INSERT INTO Staff (ID, SName, Age, Allowance, Salary)
VALUES (3, 'Munjal', '36', 400, 4500);
 
INSERT INTO Staff (ID, SName, Age, Allowance, Salary)
VALUES (4, 'Ram', '28', 800, 8000);
 
INSERT INTO Staff (ID, SName, Age, Allowance, Salary)
VALUES (5, 'Manav', '24', 400, 6500);
 
INSERT INTO Staff (ID, SName, Age, Allowance, Salary)
VALUES (6, 'Kaijara', '21', 700, 7800);
 
 select * from staff ;
 
Delete from Staff where ID = 6;
 
commit;

create table Persons (
PersonID int,
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
City varchar(255)
);
 
select * from Persons;
 
INSERT INTO Persons (PersonID, FirstName, LastName, Address, City)
VALUES ('5667', 'Ravi', 'Patil', 'XYZ Dickson road', 'Bangalore');
INSERT INTO Persons (PersonID, FirstName, LastName, Address, City)
VALUES ('6677', 'Ramya', 'Dsouza', 'ABC , Sardar road', 'Mysore');
 INSERT INTO Persons (PersonID, FirstName, LastName, Address, City)
VALUES ('4554', 'John', 'Harry', 'PQR , Andre road', 'Delhi'); 
INSERT INTO Persons (PersonID, FirstName, LastName, Address, City)
VALUES ('7889', 'Kishore', 'Kumar', 'RGG , St marry road', 'Mumbai');
 
SET autocommit = 0; (without setting autocommit , data is already saved and rollback does nothing )
 
delete from Persons
where PersonID='5667';
 
ROLLBACK; **(is used to retrive the data that is recently deleted)** undo process
 
select * FROM Persons;

 CREATE DATABASE bankdb1;
USE bankdb1;
 
CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    acc_name VARCHAR(50),
    balance INT
);
INSERT INTO accounts VALUES
(101, 'Amit', 10000),
(102, 'Ravi', 8000),
(103, 'Neha', 12000);
 
SELECT * FROM accounts;
SET autocommit = 0; ( helps not to save automaticaly so we can rollback or commit) 
START TRANSACTION;
 
UPDATE accounts SET balance = balance - 2000 where acc_id = 101; (deduct money from 101 id )
 
SAVEPOINT sp1;
 
UPDATE accounts SET balance = balance +  4000 where acc_id = 102; (add 4k to 102 id)
 ROLLBACK To sp1;( here the last transcation is 102 id ..so it cancels the last updated )
 
SET autocommit = 1; ( turn on to auto save mode)

select *from accounts
UPDATE accounts
SET balance = balance +  4000
where acc_id = 102;
 select *from accounts
 

CREATE DATABASE collegeDB;
USE collegeDB;
 
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT
)
 
INSERT INTO students VALUES
(1, 'Arjun', 75),
(2, 'Meera', 82),
(3, 'Rohit', 68);
 
set autocommit =0;
start transaction;

update students SET marks =marks + 10 WHERE student_name = 'Meera';
select * from students
commit


UPDATE students SET marks = marks - 15 WHERE student_name = 'Rohit';
 select * from students
 rollback
 
 START TRANSACTION;

UPDATE students SET marks = marks + 5 WHERE student_name = 'Arjun';

 select * from students
SAVEPOINT sp1;
 
 UPDATE students SET marks = marks + 5 WHERE student_name = 'Meera';
ROLLBACK TO sp1;

COMMIT;
SET autocommit = 1;

SELECT * FROM students;

granting permissions o the users
CREATE DATABASE companydb;
USE companydb;
 
 
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Amit', 50000),
(2, 'Ravi', 45000),
(3, 'Neha', 60000)

CREATE USER 'Wiprotestuser'@'localhost' IDENTIFIED BY 'test123';
 
SELECT user, host FROM mysql.user;
GRANT SELECT
ON companydb.employees
TO 'Wiprotestuser'@'localhost';
 
GRANT INSERT, UPDATE
ON companydb.employees
TO 'Wiprotestuser'@'localhost';
 
GRANT ALL PRIVILEGES
ON companydb.*
TO 'Wiprotestuser'@'localhost';
 
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'Wiprotestuser'@'localhost';
 
 
REVOKE UPDATE ON companydb.employees FROM 'Wiprotestuser'@'localhost';
 
REVOKE ALL PRIVILEGES ON companydb.* FROM 'Wiprotestuser'@'localhost';
 
FLUSH PRIVILEGES;
 
DROP USER 'Wiprotestuser'@'localhost';
 
 ----------------------------------------------------------------
 FUNCTIONS:
 ----------------------------------------------------------------
 select abs(-10)
 select round(12.293,2)
 select ceil(6.2) (roundoff to next number)
 select floor(5.7) (round of to prev number)
 select power(3,3)
 select mod(10,3)
 
 -------------------------------------------------------------------------
 STRINGFUNCTIONS:
 -------------------------------------------------------------------------
 select upper('Wipro')
  select lower( 'SQL')
   select length('Hello')
   select substring('SUBSTRING',4,9)
  select concat('hello','world')
   select trim('  Hi  ')
 select replace('sql guide','guide','book')
 select replace('sql guide','sql','travel')
 
 -------------------------------------------------------------------------------
 DateandTime Functions:
 --------------------------------------------------------------------------------
 select now()
 select curdate()
 select datediff('2025-12-17','2004-11-30')
 select month('2025-06-29')
 select year('2000-01-01')
 
 ----------------------------------------------------------------------------------
 AGGREGATEFunction
 ----------------------------------------------------------------------------------
 
 CREATE DATABASE companyDB2;
USE companyDB2;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(20),
    salary INT
);
 
select * from employees;
 
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 30000),
(2, 'Ravi', 'IT', 50000),
(3, 'Neha', 'IT', 70000),
(4, 'Meena', 'HR', 40000),
(5, 'Arjun', 'Finance', 60000);
 
 select * from employees;
select COUNT(*) as total_employees
from employees;
 
select COUNT(*) as IT_COUNT from employees where dept = 'IT';
 
select SUM(salary) as total_salary from employees;
 
select dept, SUM(salary) as dept_salary from employees GROUP BY dept;
 
select AVG(salary) as dept_salary from employees;

select dept, AVG(salary) as avg_salary from employees GROUP BY dept;

select MIN(salary) as lowest_salary from employees;
 
select MAX(salary) as lowest_salary from employees;
 
select dept, MAX(salary) as max_salary from employees GROUP BY dept;
------------------------------------------------------------------------------

---------------------------------------------------------------------------------

CREATE DATABASE logicDB;
USE logicDB;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    bonus INT,
    dept VARCHAR(20)
);
 
INSERT INTO employees VALUES
(1, 'Amit', 25000, NULL, 'HR'),
(2, 'Ravi', 40000, 5000, 'IT'),
(3, 'Neha', 60000, NULL, 'Finance'),
(4, 'Meena', 80000, 10000, 'IT');
 
SELECT * FROM employees;
 
 
select emp_name, salary,
case
	when salary < 30000 then 'low'
    when salary between 30000 and 60000 then 'Medium'
    else 'high'
END as salary_level from employees;
 
select * from employees where
case 
	when dept = 'IT' then salary > 50000
    else salary > 30000
END;
 
update employees set bonus =
case
	when salary >= 60000 then 10000
    else 5000
END;
 
SELECT * FROM employees;
 
select emp_name,
if(salary >= 50000, 'Eligible' , 'Not eligible')  as status from employees;
 
select emp_name,
IF (bonus is null, salary * 0.05 , bonus) as final_bonus
from employees;
 
select emp_name,
ifnull(bonus, 0 ) as  bonus_amount
from employees;


 
