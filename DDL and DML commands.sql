Create database COMPANY_1;

Use COMPANY_1;

Create Table Employees (
ID INT primary Key auto_increment,
Name varchar(100),
Position varchar(100),
Salary decimal(10,2),
Date_of_Joining date
);

Insert into Employees Values(
1,'John Doe', 'Manager', 55000.00, '2020-01-15');

Insert into Employees(Name,Position,Salary,Date_of_Joining) Values
('Jane Smith', 'Developer', 48000.00, '2019-07-10');

Insert into Employees(Name,Position,Salary,Date_of_Joining) Values
('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
('Bob Brown', 'Developer', 50000.00, '2018-11-01');

Select * From Employees
where Position='Developer';

Update Employees 
SET Salary=46000.00
where Name='Alice Johnson';

Set sql_safe_updates=0;

Delete From Employee 
Where Name='Bob Brown';

Select * From Employees 
where Salary > 48000;

Alter Table Employees 
ADD Email varchar(50);

Update Employees 
Set Email='john.doe@company.com' 
where Name='John Doe';

Select Name, Salary From Employees;

Select Count(*) From Employees 
Where Date_of_Joining > '2020-01-01';

Select  * From Employees 
Order BY Salary Desc;

Alter Table Employees 
Drop Email;

Select * From Employees;

Select MAX(Salary) From Employees;





