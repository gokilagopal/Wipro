CREATE DATABASE Wipro_wilp
CREATE TABLE employee(EmpId int,empName varchar(25),salary float,designation varchar(30));

CREATE TABLE customer(custId int,custname varchar(25),age int,emailId varchar(25));
INSERT INTO customer (custId,custname,age,emailId)
VALUES('1','Gokila','21','gokila@gmail.com');
select *from customer

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL
);
insert into student (student_id,student_name,age,email)
values('1','Abi','22','abi123@gmail.com')

insert into student (student_id,student_name,age,email)
values('1','bavi','22','abi123@gmail.com')

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    order_date DATE,
    FOREIGN KEY (student_id) REFERENCES student (student_id)
);
insert into orders (order_id,student_id, order_date)
values('1','1',curdate())
select * from orders

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
   department VARCHAR(30),
    age INT,
    marks INT 
);
insert into students (student_id ,name,department,age,marks)
values ('1','appu','b.sc','21','92')
select *from students
insert into students (student_id ,name,department,age,marks)
values ('2','Abina','b.sc','20','94')
insert into students (student_id ,name,department,age,marks)
values ('3','christy','cse','22','80')
insert into students (student_id ,name,department,age,marks)
values ('4','Goki','IT','21','92')
insert into students (student_id ,name,department)
values ('5','ritthi','mbbs')
insert into students (student_id ,name,department,age,marks)
values ('6','ramya','IT','23','60')

SELECT * FROM students WHERE marks > 80;

select *from students
select name, department from students
select * from students where department='cse' 
select *from students where marks >70
select* from students where age between 18 and 22
SELECT *FROM students ORDER BY marks DESC;
select count(*) from students
update students set marks= 85 where student_id= 2
update students  set marks=marks+5 
update students set department = 'ECE'where student_id = 2
update students set marks=0 where marks is null
update students set age= 25 where department ='ECE' 

insert into students (student_id ,name,department,age,marks)
values ('7','ramya','MECH','23','60')
insert into students (student_id ,name,department,age,marks)
values ('8','LAV','MECH','23','25')

delete from student where student_id=2
select *from students
delete  from students where marks< 40
select *from students
delete  from students where department ='mech'
select *from students

