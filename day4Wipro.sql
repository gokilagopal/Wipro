use Wipro_wilp
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    membership_date DATE NOT NULL
);
create table subscriptions( subscription_id int auto_increment primary key, title varchar(50) not null,
author varchar(50) not null,price float check(price >0),availableCopies int check(availableCopies >=0));

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(6,2) CHECK (amount > 0),
    payment_mode VARCHAR(20) NOT NULL,   
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);
2. Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier.
 Use ALTER statements to modify the table structures and DROP statements to remove a redundant table
 
CREATE DATABASE PrimeDB;
use PrimeDB

create table userInfo(user_id int primary key,name varchar(50)not null,emailId varchar(50)Not null unique)

create table Subscriptions(subId int primary key, userId int, sub_type varchar(30) not null,price float check(price>0),
foreign key (userId) references userInfo(user_id));

insert into userInfo (user_id,name,emailId)
values('198','Appu','appu012@hmail.com')

insert into userInfo (user_id,name,emailId)
values('199','arnold','arnold012@hmail.com')

alter table userInfo Add phonoNo varchar(15);
select *from userInfo

**Drop table **

create table Assignment3(name varchar(30) not null,RollNo int not null,department varchar(30),
age int,phoneno int not null );

insert into Assignment3 (name,RollNo,department,age,phoneno)
values('Alex','1001','IT','21','0987654321')

insert into Assignment3 (name,RollNo,department,age,phoneno)
values('Arun','1002','CSE','21','345672890')
insert into Assignment3 (name,RollNo,department,age,phoneno)
values
('Ravi', 1002, 'CSE', 22, '987643211'),
('Anu', 1003, 'ECE', 20, '987653212'),
('Priya', 1004, 'EEE', 21, '987543213'),
('Karthik', 1005, 'MECH', 23, '976543214');
select *from Assignment3
update Assignment3 set department='BIO' where RollNo=1001;
select *from Assignment3
delete from Assignment3 where name='priya';
select *from Assignment3
