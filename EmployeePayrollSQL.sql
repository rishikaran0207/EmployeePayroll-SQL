Create database payroll_service;
show databases; 
use payroll_service;

-- UC2
create table employee_payroll
(
id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startdate Date not null,
primary key(id)
);

desc employee_payroll;

-- UC-3

insert into employee_payroll(name,salary,startdate)
values('Rishi',50000,'2022-01-01');

insert into employee_payroll(name,salary,startdate)
values('Vishnu',70000,'2022-09-10');

insert into employee_payroll(name,salary,startdate)
values('Paul',60000,'2021-10-15');

-- UC-4

select * from employee_payroll;

-- UC-5

SELECT salary FROM employee_payroll
WHERE name = 'Gokul';

select * from employee_payroll
WHERE startdate BETWEEN CAST('2021-06-01'AS DATE)
 AND CAST('2022-06-01'AS DATE);
 
-- UC-6

alter table employee_payroll add gender char(1) not null;

UPDATE employee_payroll
set gender = 'M'
WHERE id =1;
    
UPDATE employee_payroll
set gender = 'M'
WHERE id =2;

    select * from employee_payroll;

-- UC-7

SELECT SUM(salary) FROM employee_payroll
WHERE gender = 'M' GROUP BY gender;