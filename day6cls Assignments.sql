create database joinlabDb
use joinlabDb

create table customer(custId int ,CustName varchar(25),custCity varchar(30));
alter table customer add primary key(custId)

insert into customer values (1, 'Amit', 'Delhi'),
(2, 'Ravi', 'Mumbai'),
(3, 'Neha', 'Chennai'),
(4, 'Meena', 'Bangalore');
insert into customer values(5,'john','hyderabas');
select * from customer

create table orders( order_id int primary key ,custId int, 
order_amount int, foreign key(custId) references customer(custId));

INSERT INTO orders VALUES
(101, 1, 5000),
(102, 2, 8000),
(103, 3, 6000),
(104, 4, 4000);

select * from orders
__________________________________________________________________________
-- Inner join
 ___________________________________________________________________________
select c.custName , o.order_amount , c.custId
from customer c
INNER JOIN orders o
on c.custId = o.custId;
--------------------------------------------------------------------------------------
-- right join (It takes the entire right table and common from left table )
 ---------------------------------------------------------------------------------------
select c.custName , o.order_amount , c.custId , o.order_id
from customer c
RIGHT JOIN orders o
on c.custId = o.custId;
 -----------------------------------------------------------------------------------------
-- left join It takes the entire left table and common from right table
 ---------------------------------------------------------------------------------------------
select c.custName , o.order_amount , c.custId , o.order_id
from customer c
LEFT JOIN orders o
on c.custId = o.custId;
----------------------------------------------------------------------------------------------
UNION 
 --------------------------------------------------------------------------------------------
select c.custName , o.order_amount , c.custId , o.order_id
from customer c
LEFT JOIN orders o
on c.custId = o.custId;

-------------------------------------------------------------------------------------------
CROSSJOIN
-----------------------------------------------------------------------------------------
select c.custName , o.order_id
from customer c
CROSS JOIN orders o;
________________________________________________________________________________________________________________

CREATE TABLE employees_2023 (
    emp_id INT,
    emp_name VARCHAR(50)
);
INSERT INTO employees_2023 VALUES
(1, 'Arun'),
(2, 'Bala'),
(3, 'Chitra');

CREATE TABLE employees_2024 (
    emp_id INT,
    emp_name VARCHAR(50)
);

INSERT INTO employees_2024 VALUES
(2, 'Bala'),
(3, 'Chitra'),
(4, 'Divya');

select * from employees_2023;
 
select * from employees_2024;
----------------------------------------------------------------------------------------
union -- Combines rows from both queries and removes duplicates.
---------------------------------------------------------------------------------------- 
select emp_id , emp_name from employees_2023
UNION
select emp_id , emp_name from employees_2024;

----------------------------------------------------------------------------------------------
-- UNION ALL (keeps duplicates)
------------------------------------------------------------------------------------------ 
select emp_id , emp_name from employees_2023
UNION ALL
select emp_id , emp_name from employees_2024;
--------------------------------------------------------------------------------------------
-- Intersect Returns only common rows from both queries.
(in mysql we cant directly use intersect)
 ----------------------------------------------------------------------------------------
select e1.emp_id, e1.emp_name
from employees_2023 e1
inner join employees_2024 e2
ON e1.emp_id = e2.emp_id;
 ------------------------------------------------------------------------------------------
-- except - Returns rows from the first table only, excluding common rows.
-- it also cant run directly so that we are using left join and it should not return common values 
------------------------------------------------------------------------------------------ 
select e1.emp_id, e1.emp_name
from employees_2023 e1
left join employees_2024 e2
ON e1.emp_id = e2.emp_id
where e2.emp_id is null;
 ________________________________________________________________________________________________________________________
 
 -- subquery which means , one select query having another select query inside it ..
 CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
 INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);

INSERT INTO employees VALUES
(101, 'Arun', 50000, 1),
(102, 'Bala', 60000, 2),
(103, 'Chitra', 55000, 2),
(104, 'Divya', 45000, 1),
(105, 'Eshan', 70000, 3);
select * from departments;
 
select * from employees;
--------------------------------------------------------------------------------------
-- employee with the highest salary - returning one row  - scalar sub query
---------------------------------------------------------------------------------------
select emp_name , salary
from employees
where salary = (
select MAX(salary)
from employees
);
--------------------------------------------------------------------------------------------
-- Employees Working in IT Department - return multiple rows
 ----------------------------------------------------------------------------------------
select emp_name ,dept_id
from employees
where dept_id  = (
    select dept_id 
    from departments
    where dept_name = 'IT'
 
);
------------------------------------------------------------------------------------
-- Employees in HR or Finance - IN clause
 -------------------------------------------------------------------------------------
select emp_name
from employees
where dept_id  IN (
 
	select dept_id 
    from departments
    where dept_name IN ('HR' , 'Finance')
 
);
--------------------------------------------------------------------------------------------
-- average salary using group by clause  avearge salary per dept
 --------------------------------------------------------------------------------------
select dept_id, AVG(salary) as avgsalary
from employees
group by dept_id;

-----------------------------------------------------------------------------------------
 select emp_name, salary , dept_id
from employees e 
where salary = (
 
		select max(salary)
		from employees
         where dept_id = e.dept_id
);
 ----------------------------------------------------------------------------------------
 -- Employees Earning More Than Their Department Average
 ----------------------------------------------------------------------------------------
 select emp_id,emp_name,dept_id,salary 
 from employees e 
 where salary >(select avg(salary) from employees where dept_id= e.dept_id); 
 -------------------------------------------------------------------------------------------------
 
CREATE TABLE employees1 (

    emp_id INT,

    emp_name VARCHAR(50),

    salary INT,

    dept VARCHAR(30)

);
 
 
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:\wiprotestdata.csv'

INTO TABLE employees

FIELDS TERMINATED BY ',' 

LINES TERMINATED BY '\n' 

IGNORE 1 ROWS;
 
select * from employees1;
 _________________________________________________________________________________________________________________
 
 CREATE TABLE employeeswipro (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    dept VARCHAR(30)
);
 
INSERT INTO employeeswipro VALUES
(101, 'Arun', 50000, 'HR'),
(102, 'Bala', 60000, 'IT'),
(103, 'Chitra', 55000, 'IT'),
(104, 'Divya', 45000, 'HR'),
(105, 'Eshan', 70000, 'Finance'),
(106, 'Farah', 65000, 'Finance');
 
select * from employeeswipro;
 ----------------------------------------------------------------------------------------------------------
 -- departments with avaerage dsalary > 550000
 --------------------------------------------------------------------------------------------------------------
select dept, avg(salary) AS avg_salary
from  employeeswipro
group by dept
having AVG(salary) > 55000;
 -----------------------------------------------------------------------------------------------------------------
 -- depatrtment with more than 1 employee
 -----------------------------------------------------------------------------------------------------------------
select dept, COUNT(*) as emp_count
from  employeeswipro
group by dept
having count(*) > 1;
------------------------------------------------------------------------------------------------------------------
 -- using both where and having clause
 -------------------------------------------------------------------------------------------------------------------
select dept, AVG(salary) as avg_salary
from employeeswipro
where salary > 50000
group by dept
having AVG(salary) > 60000;
 _______________________________________________________________________________________________________________________________________________________________________________
CREATING AND DROPPING INDEXES 
-----------------------------
 
 create database CDindex 
 use CDindex
CREATE TABLE dbwiprodec (
                    emp_id INT PRIMARY KEY,
					emp_name VARCHAR(50),
				    email VARCHAR(100),
					salary INT,
                     dept VARCHAR(30)

);
 
INSERT INTO dbwiprodec VALUES
(101, 'Arun', 'arun@gmail.com', 50000, 'HR'),
(102, 'Bala', 'bala@gmail.com', 60000, 'IT'),
(103, 'Chitra', 'chitra@gmail.com', 55000, 'IT'),
(104, 'Divya', 'divya@gmail.com', 45000, 'HR'),
(105, 'Eshan', 'eshan@gmail.com', 70000, 'Finance');
 
 
create index idx_dept

on dbwiprodec(dept);
 
-- applhy the index 

select * from dbwiprodec where dept='IT';
 
show index from dbwiprodec;
 
drop index idx_dept on dbwiprodec;

 ___________________________________________________________________________________________________________________________

use bankdb1;
 
CREATE TABLE employees (

    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(30),
    salary INT
);
 
INSERT INTO employees VALUES
(1, 'Arun', 'IT', 60000),
(2, 'Bala', 'IT', 55000),
(3, 'Chitra', 'HR', 45000),
(4, 'Divya', 'HR', 48000),
(5, 'Eshan', 'Finance', 70000);
 
select * from employees;
 -----------------------------------------------------------
-- rank the employees by salary (dept - wise)

-- Rank() and partition
 ---------------------------------------------------------------
select emp_name, dept, salary,
RANK() over (PARTITION by dept order by salary desc ) as dept_rank
from employees;
 -----------------------------------------------------------------
-- dept wise average salary ()
-- OVer()
-- row number
 ------------------------------------------------------------------------
select emp_name, salary,
ROW_NUMBER() over (order by salary desc ) as row_num
from employees;
 -------------------------------------------------------------------------
-- dense_rank - rank the rows based on the order by, where
 ----------------------------------------------------------------------------
select emp_name, salary,
DENSE_RANK() over (order by salary desc ) as denserank
from employees;
-------------------------------------------------------------------- 
-- Nlite(n) divide into groups
 --------------------------------------------------------------------
select emp_name, salary,
NTILE(4) over (order by salary desc ) as salary_group
from employees;
 
 
  