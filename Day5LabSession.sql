---------------------------------------------------------------------------------------------
lab sessions
---------------------------------------------------------------------------------------------
CREATE DATABASE funcDB;
USE funcDB;
 
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    join_date DATE,
    dept VARCHAR(20)
);
 
INSERT INTO employees VALUES
(1, 'Amit', 30000, '2021-05-10', 'HR'),
(2, 'Ravi', 50000, '2020-03-15', 'IT'),
(3, 'Neha', 70000, '2019-07-20', 'Finance'),
(4, 'Meena', 60000, '2022-01-12', 'IT');
 -------------------------------------------------------------------------------------------
SCALAR FUNCTIONS
 --------------------------------------------------------------------------------------------
  Display employee names in uppercase
  select upper(emp_name) as name_upper from employees
  
  Show employee name and length of name
  select emp_name , length(emp_name) as name_length from employees
  
Display current date
select curdate()

Calculate years of experience using join date
select emp_name, year(curdate())-year(join_date) as experience from employees
 ----------------------------------------------------------------------------------------
AGGREGATE FUNCTIONS
 
Count total number of employees
select count(*) from employees

Find average salary
select avg(salary) as avg_salary from employees

Display department-wise total salary
select dept ,sum(salary) as total_department_salary from employees group by dept

Find maximum salary in IT department
 select max(salary) as max_salary_it from employees where dept='IT'
 
EXPRESSIONS & CASE
 
Display salary category (Low, Medium, High) using CASE

select emp_name ,salary,
case
     when salary <40000 then 'LOW'
     when salary between 40000 and 59999 then 'Medium'
     else 'high'
end as salary_category from employees;
     
     Show bonus amount:
salary ≥ 60000 → 10% bonus
salary < 60000 → 5% bonus

select emp_name,salary ,
case
    when salary >= 60000 then salary * 0.10
    else salary * 0.05
    end as bonus_amount from employees
--------------------------------------------------------------------------------------------------
Lab session 2: Write a SELECT query to retrieve all columns from a 'customers' table, 
and modify it to return only the customer name and email address
 for customers in a specific city.
 
 create table customers(
 Cid int not null, cname varchar(25), email varchar(30) not null, age int)
 alter table customers add city varchar(30)
 
 select * From customers
 
 INSERT INTO customers (cid, cname, email, age, city) VALUES
(1, 'Amit Kumar', 'amit.kumar@gmail.com', 28, 'Chennai'),
(2, 'Neha Sharma', 'neha.sharma@gmail.com', 24, 'Bangalore'),
(3, 'Ravi Patel', 'ravi.patel@gmail.com', 32, 'Hyderabad'),
(4, 'Meena Iyer', 'meena.iyer@gmail.com', 26, 'Chennai'),
(5, 'Arjun Singh', 'arjun.singh@gmail.com', 35, 'Delhi');

 select * From customers
 
 select cname,email from customers where city='Hyderabad'
 
 ------------------------------------------------------------------------------------------------
 Lab session 3 : Begin a transaction, perform a series of INSERTs into 'orders', 
 setting a SAVEPOINT after each, rollback to 
 the second SAVEPOINT, and COMMIT the overall transaction.
 
 CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT
);

START TRANSACTION;

INSERT INTO orders VALUES (1, 'Amit', 2500);
SAVEPOINT sp1;

INSERT INTO orders VALUES (2, 'Neha', 4000);
SAVEPOINT sp2;
select *from orders
INSERT INTO orders VALUES (3, 'Ravi', 1500);
SAVEPOINT sp3;
ROLLBACK TO sp2;

COMMIT;
select *from orders
